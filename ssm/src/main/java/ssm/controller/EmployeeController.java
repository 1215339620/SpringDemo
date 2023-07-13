package ssm.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ssm.pojo.Employee;
import ssm.service.EmployeeService;

import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    public EmployeeService employeeService;
    @RequestMapping(value = "/employee/page/{pageNum}",method = RequestMethod.GET)
    public String getEmployeePage(@PathVariable("pageNum") Integer pageNum,Model model){
        //获取员工的分页信息
        PageInfo<Employee> page=employeeService.getEmployeepage(pageNum);
        model.addAttribute("page",page);
        return "employee_list";
    }
//    查询所有员工信息-->/employee-->get
    @RequestMapping(value = "/employee",method = RequestMethod.GET)
    public String getAllEmployee(Model model){
        List<Employee> list=employeeService.getAllEmployee();
        model.addAttribute("list",list);
        return "employee_list";
    }
}
