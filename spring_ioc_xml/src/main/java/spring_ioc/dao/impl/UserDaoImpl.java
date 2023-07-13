package spring_ioc.dao.impl;

import spring_ioc.dao.UserDao;

public class UserDaoImpl implements UserDao {
    @Override
    public void saveUser() {
        System.out.println("成功！");
    }
}
