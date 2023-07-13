package jedis;

import redis.clients.jedis.Jedis;

import java.util.Random;

public class PhoneCode {
    public static void main(String[] args) {
        code("16692310624");
//        getRedisCode("16692310624","55");
    }
//    生成6位验证码
    public static String getCode(){
        Random random=new Random();
        String code="";
        for (int i = 0; i < 6; i++) {
            int rand=random.nextInt(10);
            code+=rand;
        }
        return code;
    }
//    每个手机只能发送三次，验证码收到Redis中，设置过期时间
    public static void code(String phone){
//        创建Jedis对象
        Jedis jedis=new Jedis("192.168.36.128",6379);
//手机发送次数
        String countKey=phone+":count";
//        验证码key
        String codeKey=phone+":code";

        String s = jedis.get(countKey);
        if (s==null){
//            没有次数，设置次数为一
            jedis.setex(countKey,24*60*60,"1");
        }else if (Integer.parseInt(s)<=2){
//            发送次数加一
            jedis.incr(countKey);
        }else if (Integer.parseInt(s)>2){
//            发送三次，不得在发送
            System.out.println("今天发送超过三次，不得发送");
            jedis.close();
            return;
        }
//        发送验证码放到redis里
        String s1 = getCode();
        jedis.setex(codeKey,120,s1);
        jedis.close();
    }
//    校验
    public static void getRedisCode(String phone,String code){
//        获取验证码
        Jedis jedis=new Jedis("192.168.36.128",6379);
        String redisCode = jedis.get(phone + ":code");
        if (redisCode.equals(code)){
            System.out.println("success");
        }else {
            System.out.println("fail");
        }
        jedis.close();
    }
}
