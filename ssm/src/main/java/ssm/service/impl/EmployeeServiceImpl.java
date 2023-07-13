package ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.mapper.EmployeeMapper;
import ssm.pojo.Employee;
import ssm.service.EmployeeService;

import java.util.List;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> getAllEmployee() {
        return employeeMapper.getAllEmployee();
    }

    @Override
    public PageInfo<Employee> getEmployeepage(Integer pageNum) {
        PageHelper.startPage(pageNum,4);
        List<Employee> l = employeeMapper.getAllEmployee();
        PageInfo<Employee> page=new PageInfo<>(l,5);
        return page;
    }
}
