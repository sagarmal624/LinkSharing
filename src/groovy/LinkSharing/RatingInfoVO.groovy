package LinkSharing

import com.intelligrape.linksharing.Resource

/**
 * Created by sagar on 2/24/16.
 */
class RatingInfoVO {
        Resource resource
        Integer totalVotes, averageScore, totalScore,score
        String toString(){
            "Total Votes:${totalVotes} ,TotalScore: ${totalScore} ,AverageScore: ${averageScore},score:${score}"
        }


}
