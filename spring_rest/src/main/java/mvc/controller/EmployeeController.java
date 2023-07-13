package mvc.controller;

import mvc.dao.EmployeeDao;
import mvc.pojo.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeDao employeeDao;
    @GetMapping("/employee")
    public String getAllEmployee(Model model){
        Collection<Employee> all = employeeDao.getAll();
        model.addAttribute("allEmployee",all);
        return "employeeList";
     }
     @PostMapping("/employee")
    public String addEmployee(Employee employee){
        employeeDao.save(employee);
         return "redirect:/employee";
     }
     @GetMapping("/employee/{id}")
    public String updateEmployee(@PathVariable("id") Integer id,Model model){
         Employee employee = employeeDao.get(id);
         model.addAttribute("emp",employee);
         return "employUpdate";
    }
    @PutMapping("/employee")
    public String toUpdate(Employee employee){
        employeeDao.save(employee);
        return "redirect:/employee";
    }
    @DeleteMapping("/employee/{id}")
    public String deleteEmployee(@PathVariable("id") Integer id){
        employeeDao.delete(id);
        return "redirect:/employee";
    }
}
