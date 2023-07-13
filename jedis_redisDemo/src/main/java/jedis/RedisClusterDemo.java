package jedis;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

public class RedisClusterDemo {
    public static void main(String[] args) {
        HostAndPort hostAndPort = new HostAndPort("192.168.36.128",6379);
        JedisCluster jedisCluster = new JedisCluster(hostAndPort);
        jedisCluster.set("a1","v1");
        String a1 = jedisCluster.get("a1");
        System.out.println(a1);
        jedisCluster.close();
    }
}
