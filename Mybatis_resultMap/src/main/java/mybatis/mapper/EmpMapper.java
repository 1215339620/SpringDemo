package mybatis.mapper;

import mybatis.pojo.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpMapper {
    /**
     * 根据id查询员工信息
     * @param empId
     * @return
     */
    Emp getEmpByEmpId(@Param("empId") int empId);

    /**
     * 根据员工id查询员工以及部门
     * @param empId
     * @return
     */
    Emp getEmpAndDeptByEmpId(@Param("empId") int empId);

    /**
     * 通过分步查询部门，以及该部门有哪些员工第二步
     * @param deptId
     * @return
     */
    List<Emp> getDeptAndEmpStepTwo(@Param("deptId") int deptId);

}
