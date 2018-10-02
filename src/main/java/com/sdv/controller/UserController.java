package com.sdv.controller;

import com.sdv.entity.User;
import com.sdv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    public UserService userService;

    @GetMapping("/usersList")
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.getAll());
        return "usersList";
    }

    @GetMapping("")
    public String addUser(){
        return "/add";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/usersList";
    }
}
