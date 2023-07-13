package ssm.mapper;

import org.apache.ibatis.annotations.Mapper;
import ssm.pojo.Employee;

import java.util.List;
public interface EmployeeMapper {
    List<Employee> getAllEmployee();
}
