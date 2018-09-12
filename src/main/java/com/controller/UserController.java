package com.controller;

import com.model.Tour;
import com.model.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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

    @RequestMapping("preAdd")
    public  String preAdd(){
        return  "user_add";
    }
    @RequestMapping("add")
    public  String add(User user, HttpSession session){
        this.userService.add(user);
        return "redirect:/user/list";
    }

    @RequestMapping("del")
    public  String del(Integer id){
        this.userService.del(id);
        return "redirect:/tour/list";
    }

    @RequestMapping("preUpdate")
    public String preUpdate(Integer id,Model model){
        model.addAttribute("user",this.userService.getById(id));
        return "user_update";
    }

    @RequestMapping("update")
    public  String update(User user){
        this.userService.update(user);
        return "redirect:/user/list";
    }
}
