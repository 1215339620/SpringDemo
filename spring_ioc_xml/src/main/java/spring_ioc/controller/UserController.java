package spring_ioc.controller;

import spring_ioc.service.UserService;
import spring_ioc.service.impl.UserServiceImpl;

public class UserController {
    private UserService userService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    public void saveUser(){
        userService.saveUser();
    }
}
