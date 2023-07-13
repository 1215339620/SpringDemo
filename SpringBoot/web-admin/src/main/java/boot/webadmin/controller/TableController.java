package boot.webadmin.controller;
import boot.webadmin.bean.User;
import boot.webadmin.service.UserService;
import boot.webadmin.service.impl.UserServiceImpl;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Arrays;
import java.util.List;

@Controller
public class TableController {
    @Autowired
    UserService userService;
    @GetMapping("basic_table")
    public String basic_table() {
        return "table/basic_table";
    }
    @GetMapping("/user/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id,
                             @RequestParam(value = "pn",defaultValue = "1")Integer pn,
                             RedirectAttributes ra){

        userService.removeById(id);

        ra.addAttribute("pn",pn);
        return "redirect:/dynamic_table";
    }
    @GetMapping("/dynamic_table")
    public String dynamic_table(@RequestParam(value="pn",defaultValue = "1") Integer pn, Model model){
 //构造分页参数
        Page<User> page = new Page<>(pn, 2);
        //调用page进行分页
        Page<User> userPage = userService.page(page, null);

        model.addAttribute("users",userPage);
        return "table/dynamic_table";
    }

    @GetMapping("responsive_table")
    public String responsive_table() {
        return "table/responsive_table";
    }

    @GetMapping("editable_table")
    public String editable_table() {
        return "table/editable_table";
    }

}
