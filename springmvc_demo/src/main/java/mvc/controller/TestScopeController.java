package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

@Controller
public class TestScopeController {
    @RequestMapping("/test/mav")
    public ModelAndView MAV(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("testRequest","hello,mgy");
        modelAndView.setViewName("success");
        return modelAndView;
    }
    @RequestMapping("/test/model")
    public String testModel(Model model){
        model.addAttribute("testRequest","hello,model");
        return "success";
    }
    @RequestMapping("/test/map")
    public String testModelMap(ModelMap modelMap){
        modelMap.addAttribute("testRequest","hello,modelMap");
        return "success";
    }
    @RequestMapping("/test/session")
    public String testSession(HttpSession session){
        session.setAttribute("testSessionScope", "hello,session");
        return "success";
    }
    @RequestMapping("/test/application")
    public String testApplication(HttpSession session){
        ServletContext application = session.getServletContext();
        application.setAttribute("testApplicationScope", "hello,application");
        return "success";
    }

}
