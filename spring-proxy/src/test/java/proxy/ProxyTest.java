package proxy;

import org.junit.Test;
import spring.proxy.Calculator;
import spring.proxy.CalculatorImpl;
import spring.proxy.CalculatorStaticProxy;
import spring.proxy.ProxyFactory;

public class ProxyTest {
    @Test
    public void TestProxy(){
//        CalculatorStaticProxy proxy=new CalculatorStaticProxy(new CalculatorImpl());
//        proxy.add(1,2);
        ProxyFactory proxyFactory=new ProxyFactory(new CalculatorImpl());
        Calculator proxy = (Calculator) proxyFactory.getProxy();
        proxy.div(0,1);

    }
}
