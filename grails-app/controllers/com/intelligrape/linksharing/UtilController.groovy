package com.intelligrape.linksharing

class UtilController {

    protected void renderAsJSON(Closure cl){
        render(contentType: "text/json", encoding: "UTF-8",cl )
    }
}
