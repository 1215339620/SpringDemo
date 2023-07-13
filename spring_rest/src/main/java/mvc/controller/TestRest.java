package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestRest {
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public String getAllUser(){
        System.out.println("查询所有的员工信息");
        return "success";
    }
    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    public String getUserById(@PathVariable("id") Integer id){
        System.out.println("查询员工id为"+id+"的信息");
        return "success";
    }
    @RequestMapping(value = "/user",method = RequestMethod.POST)
    public String addUser(){
        System.out.println("添加员工信息");
        return "success";
    }
    @RequestMapping(value = "/user",method = RequestMethod.PUT)
    public String updateUser(){
        System.out.println("修改员工信息");
        return "success";
    }
    @RequestMapping(value = "/user/{id}",method = RequestMethod.DELETE)
    public String deleteUser(@PathVariable("id")Integer id){
        System.out.println("删除员工id为"+id+"的信息");
        return "success";
    }
}
