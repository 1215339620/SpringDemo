package boot.webadmin;

import boot.webadmin.bean.User;
import boot.webadmin.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;

@Slf4j
@SpringBootTest
class WebAdminApplicationTests {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    UserMapper userMapper;

    //    StringRedisTemplate
//    @Autowired
//    StringRedisTemplate redisTemplate;
//    @Autowired
//    RedisConnectionFactory redisConnectionFactory;
//    @Test
//    void testRedis() {
//        ValueOperations<String, String> operations = redisTemplate.opsForValue();
//
//        operations.set("hello", "world");
//
//        String hello = operations.get("hello");
//        System.out.println(hello);
//
//        System.out.println(redisConnectionFactory.getClass());
//    }

    @Test
//用@org.junit.Test会报空指针异常，可能跟JUnit新版本有关
    void contextLoads() {
//        jdbcTemplate.queryForObject("select * from account_tbl")
//        jdbcTemplate.queryForList("select * from account_tbl",)
        Long aLong = jdbcTemplate.queryForObject("select count(*) from account", Long.class);
        log.info("记录总数：{}", aLong);
    }

    @Test
    void testUserMapper() {
        User user = userMapper.selectById(1L);
        log.info("{}", user);
    }

}
