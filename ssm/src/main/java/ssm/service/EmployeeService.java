package ssm.service;


import com.github.pagehelper.PageInfo;
import ssm.pojo.Employee;

import java.util.List;

public interface EmployeeService {

    List<Employee> getAllEmployee();

    /**
     * 获取员工的分页信息
     * @param pageNum
     * @return
     */
    PageInfo<Employee> getEmployeepage(Integer pageNum);
}
