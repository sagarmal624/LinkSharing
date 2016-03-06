package com.intelligrape.linksharing

import LinkSharing.RatingInfoVO
import LinkSharing.ResourceSearchCO

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
        createdBy(nullable:true)
        topic(nullable:true)
        resource_ratings(nullable:true)
        readingItems(nullable:true)
    }
    RatingInfoVO getRatingInfo() {
        List result = Resource_Rating.createCriteria().get {
            projections {
                count('id')
                sum('score')
                avg('score')
            }
            eq('user', User.get(1))
        }
        new RatingInfoVO(totalVotes: result[0], totalScore: result[1],averageScore: result[2])
    }

    static namedQueries = {

        search { ResourceSearchCO co ->
            if (co.topicId) {
                eq('topic_id', co.topicId)

            }
            if(co.description){
             'topic'{
                 eq('name',co.description)
                 eq("visibility",co.visibility)
             }

            }
           }
    }
    public static List<Resource>getRecentResources()
    {
        List<Resource>resources=Resource.createCriteria().list(max:3) {
            projections{

                property('url')
                property('filepath')
                property('topic')
                property('createdBy')
            }
            order('dateCreated','desc')
        }
        return resources
    }
    public static List<Resource_Rating> getToppost(){
        List<Resource_Rating> resources=Resource_Rating.createCriteria().list(max:5){
            projections{
                groupProperty('resource')
                avg('score','avgScore')
            }
            'resource'{
                'topic'{property('name')}
            }
            order('avgScore','desc')
        }
        return resources;
    }

}