package spring_ioc.factory;

import org.springframework.beans.factory.FactoryBean;
import spring_ioc.pojo.User;

public class UserFactoryBean implements FactoryBean<User> {
    @Override
    public User getObject() throws Exception {
        return new User();
    }

    @Override
    public Class<?> getObjectType() {
        return User.class;
    }
}
