import com.intelligrape.linksharing.LinkResource
import com.intelligrape.linksharing.ReadingItem
import com.intelligrape.linksharing.Resource
import com.intelligrape.linksharing.ResourceRating
import Enums.Seriousness
import com.intelligrape.linksharing.Role
import com.intelligrape.linksharing.Subscription
import com.intelligrape.linksharing.Topic
import com.intelligrape.linksharing.User
import Enums.Visibility
import com.intelligrape.linksharing.UserRole
import jline.internal.Log

class BootStrap {
    def grailsApplication
    def init = {servletContext ->
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
        User admin = new User(username:'admin', password:'sagar',firstname:'admin_sagar',lastname:'shankhala',email:'sagar@gmail.com',admin:true,active:true,imagePath:source.absolutePath)
        User user = new User(username:'sagar', password:'sagar',firstname:'Sagarmal',lastname:'shankhala',email:'sagarmal@gmail.com',admin:false,active:true,imagePath:source.absolutePath)
        Role royalty = new Role(authority: 'ROLE_ROYALTY').save()
        Role common = new Role(authority: 'ROLE_COMMON').save()
        if (User.count() == 0) {
            if (user.validate()) {
                user=user.save(flush: true, failOnError: true)
                UserRole.create(user, common)

            }else
                log.error("Could not Validate")

            if (admin.validate()) {
                admin = admin.save(flush: true, failOnError: true)
                UserRole.create(admin, royalty)
                UserRole.create(admin, common)

                log.info(admin)
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

              println " -resource createding---------->"+ new LinkResource(description: description[index],topic:it,createdBy: it.createdBy, url: "https://en.wikipedia.org/wiki/Main_Page").save(flush:true,failOnError:true).properties
                //   Resource linkResource2 = new LinkResource(description:description+index, topic: it, createdBy: it.createdBy, url: "http://www.encyclopedia.com/").save()
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
                ResourceRating rating = new ResourceRating(score: 5, user: user, resource: it.resource).save()
            }
        } else {
            Log.info("All the reading item has been read")
        }

    }
    def destroy = {
    }

}
