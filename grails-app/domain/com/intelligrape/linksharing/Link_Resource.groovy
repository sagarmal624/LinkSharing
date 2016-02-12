package com.intelligrape.linksharing

class Link_Resource extends Resource {
    String url;
    static constraints = {
        url(nullable:false ,blank: false,url:true,validator:{val,obj->!(val.isInteger())})

    }
}
