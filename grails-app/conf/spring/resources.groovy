// Place your Spring DSL code here
beans = {

    myBean(LinkSharing.Custombean)
            {
                name = "sagar"

            }
    myBeanUsingConstructor(LinkSharing.Custombean, "sagar")
            {}
    springConfig.addAlias "linkSharingService", "linkSharingService"

    springConfig.addAlias "userService", "userService"

}
