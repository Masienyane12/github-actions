package com.enviroserveandtech.cicd.githubactions.controller;


import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.web.bind.annotation.RestController
public class RestController {


    /**

     *echo "# github-actions" >> README.md
     * git init
     * git add README.md
     * git commit -m "first commit"
     * git branch -M main
     * git remote add origin https://github.com/Masienyane12/github-actions.git
     * git push -u origin main
     * */

    @GetMapping("/welcome")
    public String welcome(){
        return " Hi there, this is my CICD project using github actions";
    }
}
