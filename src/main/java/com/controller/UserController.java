package com.controller;

import com.model.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
@Autowired
    UserService userService;
    @RequestMapping("list")
    public  String list(User user, Model model){
        model.addAttribute("list",userService.queryAll(user));
        return "user_list";
    }
}
