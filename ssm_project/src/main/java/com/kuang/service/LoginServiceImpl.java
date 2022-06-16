package com.kuang.service;

import com.kuang.dao.LoginMapper;
import com.kuang.pojo.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    LoginMapper loginMapper;

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    @Override
    public Login doLogin(Login login) {
        return loginMapper.doLogin(login);
    }
    @Override
    public int register(Login login) {
        return loginMapper.register(login);
    }

}
