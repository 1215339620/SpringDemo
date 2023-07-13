package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestRequestMapping {
    @RequestMapping(
            value = {"/testRequestMapping", "/test"}
            ,method = {RequestMethod.GET, RequestMethod.POST}
            ,params = {"username","password!=123456"}
    )
    public String testRequestMapping(){
        return "success";
    }
    @RequestMapping("/a?c/ant")
    public String testAnt(){
        return "success";
    }
    @RequestMapping("/test/rest/{username}/{id}")
    public String testRest(@PathVariable("id") Integer id,@PathVariable("username") String username){
        System.out.println(id);
        System.out.println(username);
        return "success";
    }

}
