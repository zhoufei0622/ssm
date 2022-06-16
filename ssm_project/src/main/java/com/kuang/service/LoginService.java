package com.kuang.service;

import com.kuang.pojo.Login;

public interface LoginService {
    Login doLogin(Login login);
    int register(Login login);
}
