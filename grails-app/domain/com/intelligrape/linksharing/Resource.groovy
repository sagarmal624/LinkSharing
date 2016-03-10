package com.intelligrape.linksharing

import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCO
import LinkSharing.TopPostVO

abstract class Resource {
    String description;
    Date dateCreated;
    Date lastUpdated;
    static  transients=['ratingInfo']
    static belongsTo = [createdBy:User,topic:Topic]
    static hasMany = [resource_ratings:Resource_Rating,readingItems:ReadingItem]
    static constraints = {

        description(nullable: false,blank: false,validator:{val,obj->!(val.isInteger())})
        dateCreated(nullable:true)
        lastUpdated(nullable:true)
        createdBy(nullable:false)
        topic(nullable:false)
        resource_ratings(nullable:true)
        readingItems(nullable:true)
    }
    RatingInfoVO getRatingInfo(long id) {
        List result = Resource_Rating.createCriteria().get {
            projections {
                count('id')
                sum('score')
                avg('score')
                property('score')
            }
            eq('topic',Topic.get(id))
            eq('user', User.get(id))
        }
        new RatingInfoVO(totalVotes: result[0], totalScore: result[1],averageScore: result[2])
    }

    static namedQueries = {

        search { ResourceSearchCO co ->
            if (co.topicId) {
                eq('topic_id', co.topicId)

            }
            if(co.description){

                    or{
                      'topic'{
                          ilike("name","%${co.description}%")
                          eq("visibility",co.visibility)
                         }
                      ilike("description","%${co.description}%")

                  }



            }
           }
    }
    public static List<Resource>getRecentResources()
    {
        List<Resource>resources=Resource.createCriteria().list(max:3) {
            projections{
                property('id')
                property('url')
                property('filepath')
                property('topic')
                property('createdBy')
                property('description')
            }
            order('dateCreated','desc')
        }
        return resources
    }
    String whichResource()
    {
        if(this instanceof Link_Resource) {
            return "Link"
        }
        else if(this instanceof Document_Resource)
        {
            return "Document"
        }
    }
    public static List<TopPostVO> getToppost(){
        List<Resource_Rating> resources=Resource_Rating.createCriteria().list(max:5){
            projections{
                groupProperty('resource')
                avg('score','avgScore')
            }
            'resource'{

                property('createdBy')
                'topic'{property('name')}
                property('description')
                property('url')
                property('filepath')
                property('id')

            }
            order('avgScore','desc')
        }

        List toppostList=[];
     resources.each {
         toppostList.add(new TopPostVO(createdBy: it[2], topicname: it[3], description: it[4],url:it[5],filepath:it[6] ,id:it[7]))

     }
        return toppostList;
    }

    public static List<TopPostVO> getToppost(Date today,Date before){
        List<Resource_Rating> resources=Resource_Rating.createCriteria().list(max:5){
            projections{
                groupProperty('resource')
                avg('score','avgScore')
            }
            'resource'{

                property('createdBy')
                'topic'{property('name')}
                property('description')
                property('url')
                property('filepath')
                property('id')

                between('lastUpdated',before,today)
            }
            order('avgScore','desc')
        }

        List toppostList=[];
        resources.each {
            toppostList.add(new TopPostVO(createdBy: it[2], topicname: it[3], description: it[4],url:it[5],filepath:it[6],id:it[7] ))

        }
        return toppostList;
    }

}