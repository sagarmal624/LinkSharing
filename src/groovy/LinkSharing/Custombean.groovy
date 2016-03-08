package LinkSharing
class Custombean {
 String name;
    Custombean(){}
    Custombean(String name){
        println("calling constructor:"+name)
        this.name=name;
    }
    String getName() {
        println("getter is called"+name)
        return name
    }

    void setName(String name) {
        println("setter is called"+name)
        this.name = name
    }
}
