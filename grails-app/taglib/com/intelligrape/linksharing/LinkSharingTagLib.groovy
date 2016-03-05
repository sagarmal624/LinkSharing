package com.intelligrape.linksharing

class LinkSharingTagLib {
static namespace = "ls"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
 def markRead={attrs,body->
     out << "<a href=${attrs.href} ${attrs.isread?:false}>Mark As Read</a>"

 }

}
