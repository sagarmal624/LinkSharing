class BootStrap {
    def grailsApplication
    def init={
    def userHome = grailsApplication.config.userHome
    def appName = grailsApplication.config.appName
//    def externalConfigFile = "${userHome}/${appName}/${appName}-Config.properties"
//        def externalConfigFil=  "/home/sagar/LinkSharing/LinkSharingconfig.groovy"
        println("Bootstrap started...")
        def prop = grailsApplication.config.myname
        log.info"external file content="+prop
        log.error("change external file path")
//        if(new File(externalConfigFile).exists())
    /*{
        println("External File exists...")
        log.error "External configuration file found at" ${externalConfigFile}
    }*/

    }
    def destroy = {
    }
}
