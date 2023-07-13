package mybayis.test;

import com.github.pagehelper.PageHelper;
import mybatis.mapper.EmpMapper;
import mybatis.pojo.Emp;
import mybatis.utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class PageTest {
    @Test
    public void testPage() throws IOException {
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        EmpMapper mapper = sqlSession.getMapper(EmpMapper.class);
        PageHelper.startPage(1,4);
        List<Emp> emps = mapper.selectByExample(null);
        emps.forEach(System.out::println);


    }
}
