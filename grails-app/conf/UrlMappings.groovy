class UrlMappings {
	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller:"linkSharing",action: "loadmainpage" )
        "500"(view:'/500')
        "404"(view:'/404')
	}
}
