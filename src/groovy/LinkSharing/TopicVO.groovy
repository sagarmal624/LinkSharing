package LinkSharing

import com.intelligrape.linksharing.Topic
import com.intelligrape.linksharing.User

/**
 * Created by sagar on 2/24/16.
 */
class TopicVO {
    long id
    String name
    String visibility
    Integer countPost
    Integer countSubscription
    User createdBy
    String seriousness
    long resourceId
    Date createdDate
    Topic topic
}
