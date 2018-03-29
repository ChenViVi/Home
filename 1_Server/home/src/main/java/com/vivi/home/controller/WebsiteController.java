package com.vivi.home.controller;

import com.vivi.home.repository.SiteRepository;
import com.vivi.home.repository.TypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * Created by Administrator on 2017/7/27.
 */
@Controller
public class WebsiteController {

    @Autowired
    private SiteRepository siteRepository;

    @Autowired
    private TypeRepository typeRepository;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.addAttribute("typeList", typeRepository.findAll());
        modelMap.addAttribute("siteList", siteRepository.findAll());
        return "index";
    }
}
