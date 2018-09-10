package com.controller;

import com.model.User;
import com.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping("index")
    @ResponseBody
    public  int index(User user, HttpSession session){
        int flag=loginService.login(user);
        if(flag==0)session.setAttribute("user",user);
        return  flag;
    }
}
