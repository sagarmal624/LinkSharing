import LinkSharing.PasswordConstant
import com.intelligrape.linksharing.Document_Resource
import com.intelligrape.linksharing.Link_Resource
import com.intelligrape.linksharing.ReadingItem
import com.intelligrape.linksharing.Resource
import com.intelligrape.linksharing.Resource_Rating
import Enums.Seriousness
import com.intelligrape.linksharing.Subscription
import com.intelligrape.linksharing.Topic
import com.intelligrape.linksharing.User
import Enums.Visibility
import jline.internal.Log

class BootStrap {
    def grailsApplication
    def init = {
     log.info "boostrap is stared"
        createUser()
        createTopics()
        createResources()
        subscribeTopic()
        createReadingItems()
        createResourceRating()
    }

    void createUser() {

        User user = new User(firstname: "Sagarmal", lastname: "Shankhala", email: "sagar@gmail.com", username: "Sagarmal624", password:"sagar",confirmPassword:"sagar",admin: true,active:true,imagePath:"");
        Log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${user.name}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
        User admin = new User(firstname: "User2", lastname: "User2", email: "user2@gmail.com", username: "User2", password: "admin",confirmPassword: "admin", admin: false,active:false);
        if (User.count() == 0) {
            if (user.validate())
                user.save(flush: true, failOnError: true)
            else
                log.error("Could not Validate")

            if (admin.validate()) {
                User userReturned = admin.save(flush: true, failOnError: true)
                log.info(userReturned)
            } else
                log.error("Could not Validate")
        } else {
            Log.info("Users already Exists")
        }
    }

    void createTopics() {
        User creater = User.findByFirstname("Sagarmal")
        List topicsList = ["Grails","DevOps","AMC","Java","MeanStack"]
        if (Topic.countByCreatedBy(creater) == 0) {
            topicsList.each {
                Topic topic = new Topic(name: it, createdBy: creater, visibility: Visibility.PUBLIC).save()
            }
        } else {
            Log.info("User already has 5 topics")
        }
    }
    void createResources() {
        List topicList = Topic.getAll();
        if (Resource.count() == 0) {
            topicList.each {
                Resource docResource1 = new Document_Resource(description: it.name, topic: it, createdBy: it.createdBy, filePath: "ftp://ftp.funet.fi/pub/standards/RFC/rfc959.txt").save()
                Resource docResource2 = new Document_Resource(description: it.name, topic: it, createdBy: it.createdBy, filePath: "ftp://ftp.funet.fi/pub/standards/RFC/rfc960.txt").save()
                Resource linkResource1 = new Link_Resource(description: it.name, topic: it, createdBy: it.createdBy, url: "https://en.wikipedia.org/wiki/Main_Page").save()
                Resource linkResource2 = new Link_Resource(description: it.name, topic: it, createdBy: it.createdBy, url: "http://www.encyclopedia.com/").save()
            }
        } else {
            Log.info("Resource count greater than zero")
        }
        Log.info("Resource count is"+Resource.count())

    }

    void subscribeTopic() {
        User subscriber = User.findByFirstname("User2")
        List topicsNotCreated = Topic.findAllByCreatedByNotEqual(subscriber)
        topicsNotCreated.each {
            if (Subscription.countByUserAndTopic(subscriber, it) == 0) {
                Subscription subscription = new Subscription(seriousness: Seriousness.VERY_SERIOUS, user: subscriber, topic: it).save()
            } else {
                Log.info("${subscriber.name} is already subscribed to ${it.name}")
            }
        }
    }

    void createReadingItems() {
        User user = User.findByFirstname("User2")
        List resourceNotCreated = Resource.findAllByCreatedByNotEqual(user)

        resourceNotCreated.each {
            if (Subscription.countByUserAndTopic(user, it.topic) > 0) {
                if (ReadingItem.countByUserAndResource(user, it) == 0)
                    ReadingItem readingItem = new ReadingItem(isRead: false, resource: it, user: user).save()
                else
                    Log.info("${user.name} already has this Reading Item in his list")
            } else {
                Log.info("User is not subscribed to this topic")
            }
        }
    }

    void createResourceRating()
    {
        User user = User.findByFirstname("User2")
        List unRead = ReadingItem.findAllByUserAndIsRead(user,false)
        if(unRead.size()>0) {
            unRead.each {
                Resource_Rating rating = new Resource_Rating(score: 5, user:user, resource: it.resource).save()
            }
        }
        else
        {
            Log.info("All the reading item has been read")
        }

    }
    def destroy = {
           }

}
