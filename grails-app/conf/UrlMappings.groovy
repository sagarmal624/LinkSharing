class UrlMappings {
	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller:"linkSharing",action: "loadmainpage" )
         "500"(view:'/error')

//        "500"(view:'/serverError')
//        "404"(view:'/pageNotFoundError')
	}
}
