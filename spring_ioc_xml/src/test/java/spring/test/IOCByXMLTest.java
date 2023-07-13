package spring.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import spring_ioc.pojo.Clazz;
import spring_ioc.pojo.Student;

public class IOCByXMLTest {
    /*
    获取bean三种方式
    1. 根据id获取
    2. 根据类型获取
    3. 根据id和类型
     */
    @Test
    public void testStudentOne() {
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //获取bean，id
//        Student studentOne = (Student) ioc.getBean("studentOne");
        //类型
//        Student student = ioc.getBean(Student.class);
        //id和类型
        Student student = ioc.getBean("studentOne", Student.class);
        System.out.println(student);
    }
    @Test
    public void testDI() {
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //获取bean，id
        Student student = (Student) ioc.getBean("studentTwo");
        System.out.println(student);
    }
    @Test
    public void testClazz() {
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //获取bean，id
        Student student = (Student) ioc.getBean("studentThree");
        System.out.println(student);
//        Clazz clazz = ioc.getBean("clazzOne", Clazz.class);
//        System.out.println(clazz);

    }
}
