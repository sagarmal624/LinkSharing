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
import org.springframework.web.multipart.MultipartFile

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
        createResourceFolders();
    }

    void createResourceFolders() {
        def applicationContext = grailsApplication.mainContext
        String basePath = applicationContext.getResource("/").getFile().toString()
        File userImageFolder = new File("${basePath}/userImageFolder")
        if (!userImageFolder.isDirectory()) {
            userImageFolder.mkdir();
        }
        File documentFolder = new File("${basePath}/documentFolder")
        if (!documentFolder.isDirectory()) {
            documentFolder.mkdir();
        }


    }

    void createUser() {
        def applicationContext = grailsApplication.mainContext
        String basePath = applicationContext.getResource("/").getFile().toString()
        File source = new File("${basePath}/images/2.png")

        User user = new User(firstname: "Sagarmal", lastname: "Shankhala", email: "sagar@gmail.com", username: "Sagarmal624", password: "sagar", confirmPassword: "sagar", admin:false, active: true, imagePath: source.absolutePath);
        Log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${user.name}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
        User admin = new User(firstname: "admin_sagar", lastname: "", email: "admin@gmail.com", username: "admin123", password: "admin", confirmPassword: "admin", admin:true, active:true, imagePath: source.absolutePath);
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
        List topicsList = ["Grails", "DevOps", "AMC", "Java", "MeanStack"]
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
        List description = [];
        description.add("Grails is an open source web application framework that uses the Groovy programming language (which is in turn based on the Java platform)")
        description.add("DevOps Tutorials. There is no better way to begin your DevOps education. Check out our Beginner's DevOps Tutorials and streamline your development ")
        description.add("The amc script will automatically organize your media. .... Here's a little tutorial how to set this up with Transmission BitTorrent Client.")
        description.add("Java is a high-level programming language originally developed by Sun Microsystems and released in 1995. Java runs on a variety of UNIX.")
        description.add("The goal of this tutorial is to guide you through the creation of a Reddit/Hacker News clone using the MEAN stack")
        if (Resource.count() == 0) {

            topicList.eachWithIndex {it,index->

              println " -resource createding---------->"+ new Link_Resource(description: description[index],topic:it,createdBy: it.createdBy, url: "https://en.wikipedia.org/wiki/Main_Page").save(flush:true,failOnError:true).properties
                //   Resource linkResource2 = new Link_Resource(description:description+index, topic: it, createdBy: it.createdBy, url: "http://www.encyclopedia.com/").save()
            }
        } else {
            Log.info("Resource count greater than zero")
        }
        Log.info("Resource count is" + Resource.count())

    }

    void subscribeTopic() {
        User subscriber = User.findByFirstname("admin_sagar")
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
        User user = User.findByFirstname("admin_sagar")
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

    void createResourceRating() {
        User user = User.findByFirstname("admin_sagar")
        List unRead = ReadingItem.findAllByUserAndIsRead(user, false)
        if (unRead.size() > 0) {
            unRead.each {
                Resource_Rating rating = new Resource_Rating(score: 5, user: user, resource: it.resource).save()
            }
        } else {
            Log.info("All the reading item has been read")
        }

    }
    def destroy = {
    }

}
