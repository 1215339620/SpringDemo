package mvc.controller;

import mvc.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TestAjaxController {
    @RequestMapping("/test/ajax")
    public void testAjax(Integer id, @RequestBody String requestBody, HttpServletResponse response) throws IOException {
        System.out.println(requestBody);
        System.out.println(id);
        response.getWriter().write("hello");
    }
    @RequestMapping("/test/requestBody/json")
    public void testRequestBody(HttpServletResponse response, @RequestBody Map<String,Object> map) throws IOException {
        System.out.println(map);
        response.getWriter().write("hello,requestBody");
    }
//    @RequestMapping("/test/requestBody/json")
//    public void testRequestBody(HttpServletResponse response,@RequestBody User user) throws IOException {
//        System.out.println(user);
//        response.getWriter().write("hello,requestBody");
//    }
    @RequestMapping("/test/ResponseBody")
    @ResponseBody
    public String testResponseBody(){
        return "succ";
    }
//    //响应浏览器list集合
//    @RequestMapping("/test/ResponseBody/json")
//    @ResponseBody
//    public List<User> testResponseBodyJson(){
//        User user1 = new User("admin1","123456",23);
//        User user2 = new User("admin2","123456",23);
//        User user3 = new User("admin3","123456",23);
//        List<User> list = Arrays.asList(user1, user2, user3);
//        return list;
//    }
    //响应浏览器map集合
    @RequestMapping("/test/ResponseBody/json")
    @ResponseBody
    public Map<String, Object> testResponseBodyJson2(){
        User user1 = new User("admin1","123456",23);
        User user2 = new User("admin2","123456",23);
        User user3 = new User("admin3","123456",23);
        Map<String, Object> map = new HashMap<>();
        map.put("1001", user1);
        map.put("1002", user2);
        map.put("1003", user3);
        return map;
    }
//    //响应浏览器实体类对象
//    @RequestMapping("/test/ResponseBody/json")
//    @ResponseBody
//    public User testResponseBodyJson3(){
//        User user1 = new User("admin1","123456",23);
//        return user1;
//    }

}
