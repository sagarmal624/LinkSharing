package com.intelligrape.linksharing

class LinkSharingTagLib {
static namespace = "ls"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
 def markRead={attrs,body->
     out << "<a href=${attrs.href} ${attrs.isread?:false}>Mark As Read</a>"

 }
def toppost={attrs,body->
     out<<body("<g:each in=${com.intelligrape.linksharing.Resource.getToppost()}>"+
            "<div class=row>"+
         "<div class=col-lg-2>"+
            "<span>"+
            "<asset:image src=1.png  style=border:1px solid></asset:image>"+


            "</span>"+
            "</div>"+
            "<div class=col-lg-10>"+
            "<div class=row>"+
            "<div class=col-lg-4>"+
            "SagarMalShankhala"+
            "</div>"+
            "<div class=col-lg-3>@ ${session?.user } </div>"+
            "<div class=col-lg-2> 5min</div>"+
            "<div class=col-lg-3>"+
            "<span style=color:blue>${it[2]}</span>"+
            "</div>"+
            "</div>"+
            "${it[0]}"+
            "<div class='row'>"+
            "<div class='col-lg-9>"+
            "<asset:image src=facebook.png></asset:image>"+
            "<asset:image src=twtr.png></asset:image>"+
            "<asset:image src=google.png></asset:image>"+
            "</div>"+
            "<div class=col-lg-3>'"+
            "<a href=#><u>View Post</u></a>"+
            "</div>"+
            "</div>"+
            " </div>"+
            "</div>"+
            "</g:each>")
         }
    def canDeleteResouce = {attr,body->
        User loggedInUser = session.uesr
        Resource resource = attr.resource
        if(loggedInUser.canDeleteResource(resource))
        {

        }
    }


    def recentshares={attrs,body->
        out<<body("<g:each in=${com.intelligrape.linksharing.Resource.getRecentResources()} var=resource>"+
                "<div class=row style=border-bottom: 1px solid gray;padding-bottom:10px>"+
                "  <div class='col-lg-2 col-md-2 col-sm-2'>"+
        "  <span>"+
        " <asset:image src=1.png  style=border:1px solid></asset:image>"+
                " </span>"+
        " </div>"+
                              "  <div class=col-lg-10 col-md-10 col-sm-10>"+
                                  "  <div class=row>"+
                                       " <div class=col-lg-4>"+
                                       "${com.intelligrape.linksharing.User.findByUsername(resource[3])?.name}"+
                                      "</div>"+
        " <div class=col-lg-3>@ ${resource[3]}</div>"+
                                    "    <div class=col-lg-2> 5min</div>"+
        "  <div class=col-lg-3>"+
        "  <span style=color:blue>${resource[2]}</span>"+
                                      "  </div>"+
        " </div>"+
                                 "<g:if test=${resource[0]}>"+
                                   "<span><a href=${resource[0]}>${resource[0]}</a></span>"+
                               "</g:if>"+
        " <g:else>"+
        "  <span><a href=${resource[1]}>${resource[1]}</a></span>"+
        "</g:else>"+
                                    "<div class=row>"+
                                       " <div class=col-lg-9>"+
                                          "  <asset:image src=facebook.png></asset:image>"+
        "<asset:image src='twtr.png'></asset:image>"+
                                            "<asset:image src=google.png></asset:image>"+
         "</div>"+
                   "<div class=col-lg-3>"+
                  "<a href='#'><u>View Post</u></a>"+
                 "</div>"+
        "</div>"+
                "</div>"+
        " </div>"+
                            "<br>"+
                        "</g:each>")

    }

}
