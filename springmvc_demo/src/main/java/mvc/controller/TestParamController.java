package mvc.controller;

import mvc.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TestParamController {
@RequestMapping("/test/param")
    public String getParamByAPI(HttpServletRequest request){
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println(username+"\n"+password);
    return "success";
    }
    @RequestMapping("/param")
    public String Param(String username,String password){
        System.out.println(username);
        System.out.println(password);
        return "success";
    }
    @RequestMapping("/pojo")
    public String TestPojo(User user){
        System.out.println(user);
        return "success";
    }
}
