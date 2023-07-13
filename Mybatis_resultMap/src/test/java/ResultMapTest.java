import mybatis.mapper.DeptMapper;
import mybatis.mapper.EmpMapper;
import mybatis.pojo.Dept;
import mybatis.pojo.Emp;
import mybatis.utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.io.IOException;


public class ResultMapTest {
    @Test
    public void testGetEmpByEmpId() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        EmpMapper mapper = sqlSession.getMapper(EmpMapper.class);
        Emp empByEmpId = mapper.getEmpByEmpId(1);
        System.out.println(empByEmpId);
        sqlSession.close();
    }
    @Test
    public void testGetEmpAndDeptByEmpId() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        EmpMapper mapper = sqlSession.getMapper(EmpMapper.class);
        Emp empByEmpId = mapper.getEmpAndDeptByEmpId(1);
        System.out.println(empByEmpId);
        sqlSession.close();
    }
    @Test
    public void getDeptAndEmpByDeptId() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        DeptMapper deptMapper = sqlSession.getMapper(DeptMapper.class);
        Dept dept = deptMapper.getDeptAndEmpByDeptId(1);
        System.out.println(dept);
        sqlSession.close();
    }
    @Test
    public void getDeptAndEmpByStep() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        DeptMapper deptMapper = sqlSession.getMapper(DeptMapper.class);
        Dept dept = deptMapper.getDeptAndEmpByStepOne(1);
        System.out.println(dept);
        sqlSession.close();
    }
}

