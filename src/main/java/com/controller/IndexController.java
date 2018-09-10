package com.controller;

import com.service.TourService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value="/")
public class IndexController {
    @Resource
    private TourService tourService;

    @RequestMapping("index")
    public  String index(Model model){
        //查询限时特价
        model.addAttribute("list",this.tourService.queryTour(6));
        System.out.println("---------------");
        //查询热门旅游
        //...
        model.addAttribute("list2",this.tourService.queryTour2(6));

        return  "tour";
    }
}
