package com.intelligrape.linksharing

class UtilController {

    def index() {

        log.error("this log shows error")
        log.fatal("fatal logging ")
        log.debug("debug logging");
        log.info("info level logging")
        log.trace("tracing logging level");

    }
}
