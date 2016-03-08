package com.intelligrape.linksharing

import LinkSharing.TopicVO
import grails.transaction.Transactional

@Transactional
class TestService {

    def serviceMethod() {

        List<TopicVO> trendingTopics= Topic.getTrendingTopics()
        List concat=[]
        trendingTopics.each{
            concat.add "Id:${it.id},Name:${it.name},CreatedBy:${it.createdBy},Count:${it.count}"
        }

    }
}
