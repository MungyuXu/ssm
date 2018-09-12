package com.controller;

import com.model.Tour;
import com.service.TourService;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/tour")
public class TourController {
    @Resource
    private TourService tourService;
    @RequestMapping("list")
    public  String list(Tour tour, Model model){
        model.addAttribute("list",tourService.queryAll(tour));
        return "admin/tour_list";
    }
    @RequestMapping("add")
    public  String add(@RequestParam("myFile")MultipartFile file, Tour tour, HttpSession session){
        System.out.println(file);
        String fileName=file.getOriginalFilename();
        if(!fileName.equals("")){
            String newFileName= UUID.randomUUID()+fileName.substring(fileName.lastIndexOf("."));
            String path = session.getServletContext().getRealPath("upload") + "\\" + newFileName;
            try {
                FileUtils.copyInputStreamToFile(file.getInputStream(),new File(path));
                tour.setPhoto(newFileName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.tourService.add(tour);
        return   "redirect:/tour/list.do";
    }

    @RequestMapping("del")
    public String del(Integer id){
        this.tourService.del(id);
        return "redirect:/tour/list.do";
    }

    @RequestMapping("preUpdate")
    public  String preUpdate(Integer id,Model model){
        model.addAttribute("tour",this.tourService.getById(id));
        return "admin/tour_update";
    }

    @RequestMapping("update")
    public  String update(Tour tour){
        this.tourService.update(tour);
        return "redirect:/tour/list.do";
    }
}
