package spring.proxy;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect


public class ValidateAspect {
//    @Before("execution(* spring.proxy.CalculatorImpl.*(..))")
    @Before("spring.proxy.LoggerAspect.pointCut()")
    public void beforeMethod(){

    }

}
