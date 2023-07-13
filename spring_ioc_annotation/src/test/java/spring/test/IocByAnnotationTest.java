package spring.test;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import spring.controller.UserController;
import spring.dao.UserDao;
import spring.service.UserService;

public class IocByAnnotationTest {
    @Test
    public void  test(){
        ApplicationContext ioc=new ClassPathXmlApplicationContext("spring-ioc-annotation.xml");
        UserController userController = ioc.getBean("controller",UserController.class);
       userController.saveUser();
    }

}
