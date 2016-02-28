package com.intelligrape.linksharing

import org.codehaus.groovy.grails.plugins.web.taglib.ApplicationTagLib

class DemoTagTagLib {
  static namespace = "ls"
    static defaultEncodeAs = [taglib:'html']
def showAdmin={attrs,body->
    Boolean isAdmin=Boolean.valueOf(attrs.isAdmin)
    if(isAdmin){
        out<<body()
    }

}

    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
}
