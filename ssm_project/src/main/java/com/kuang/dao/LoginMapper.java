package com.kuang.dao;

import com.kuang.pojo.Login;

public interface LoginMapper {
    public Login doLogin(Login login);
    public int register(Login login);
}
