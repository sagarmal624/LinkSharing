package com.intelligrape.linksharing

class DocumentResource extends Resource {
   String filepath;
    static constraints = {
    filepath(nullable:false ,blank:false,validator:{val,obj->!(val.isInteger())})

    }
    public String toString() {
        return filepath
    }
}
