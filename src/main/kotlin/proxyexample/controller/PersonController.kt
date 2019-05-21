package proxyexample.controller

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get


@Controller("/persons")
class PersonController {

    @Get("/")
    fun show(): String {
        return "person"
    }
}
