package com.kuang.controller;

import com.kuang.pojo.Login;
import com.kuang.pojo.User;
import com.kuang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginController {
    @Autowired
    LoginService loginService;


    @RequestMapping("/doLogin")
//    @CrossOrigin
    @ResponseBody
    public Login doLogin(Login login){

        return loginService.doLogin(login);

    }




}
