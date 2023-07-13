package mybatis.mapper;

import mybatis.pojo.Dept;
import org.apache.ibatis.annotations.Param;

public interface DeptMapper {

    /**
     * 查询部门，以及该部门有哪些员工
     * @param deptId
     * @return
     */
    Dept getDeptAndEmpByDeptId(@Param("deptId") int deptId);

    /**
     * 通过分步查询部门，以及该部门有哪些员工第一步
     * @param deptId
     * @return
     */
    Dept getDeptAndEmpByStepOne(@Param("deptId") int deptId);

}
