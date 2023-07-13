package mybatis;

import mybatis.mapper.DynamicSQLMapper;
import mybatis.pojo.Emp;
import mybatis.utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class DynamicTest{
    @Test
    public void testGetEmpByCondition() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        DynamicSQLMapper dynamicSQLMapper = sqlSession.getMapper(DynamicSQLMapper.class);
        Emp emp=new Emp(null,"",null,"男");
        List<Emp> emps = dynamicSQLMapper.getEmpByCondition(emp);
        emps.forEach(System.out::println);
    }
    @Test
    public void testinsertMoreEmp() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        DynamicSQLMapper dynamicSQLMapper = sqlSession.getMapper(DynamicSQLMapper.class);
        Emp emp1=new Emp(null,"小明",20,"男");
        Emp emp2=new Emp(null,"小美",22,"女");
        Emp emp3=new Emp(null,"小亮",21,"男");
        List<Emp> emps = Arrays.asList(emp1, emp2, emp3);
        dynamicSQLMapper.insertMoreEmp(emps);
    }
}
