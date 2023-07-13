package mybayis.test;

import mybatis.mapper.EmpMapper;
import mybatis.pojo.Emp;
import mybatis.pojo.EmpExample;
import mybatis.utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class mbgTest {
    @Test
    public void testMBG() throws IOException {
        SqlSession sqlSession= SqlSessionUtil.getSqlSession();
        EmpMapper mapper = sqlSession.getMapper(EmpMapper.class);
//        Emp emp = mapper.selectByPrimaryKey(1);
//        System.out.println(emp);
        //查询所有数据
//        List<Emp> emps = mapper.selectByExample(null);
//        emps.forEach(System.out::println);
        EmpExample empExample = new EmpExample();
        empExample.createCriteria().andEmpNameLike("%小%");
        List<Emp> emps = mapper.selectByExample(empExample);
        emps.forEach(System.out::println);


    }
}
