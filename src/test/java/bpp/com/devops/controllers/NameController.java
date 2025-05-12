package bpp.com.devops.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NameController {

    @GetMapping("/api/name")
    public String getName() {
        // return exactly the format your NameManager expects
        return "Secret Squirrel";
    }
}
