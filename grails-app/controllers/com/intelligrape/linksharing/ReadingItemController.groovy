package com.intelligrape.linksharing

class ReadingItemController {

    //TODO: Remove used actions.
    def index() { }


    //TODO: All bussiness logic should exist in services.
    def changeIsRead(Long id,Boolean isRead)
    {
        int result=ReadingItem.executeUpdate("update ReadingItem set isRead=${isRead} where id=${id}")//+"Row Updated"
        if(!result){
            render "Error"
        }else {
            render "Success"
        }


    }
}
