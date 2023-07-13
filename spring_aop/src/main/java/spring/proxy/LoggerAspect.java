package spring.proxy;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Aspect//将当前组件标识为切面
@Component
public class LoggerAspect {
    @Pointcut("execution(* spring.proxy.CalculatorImpl.*(..))")
    public void pointCut() {

    }

    //    @Before("execution(public int spring.proxy.CalculatorImpl.add(int ,int ))")
//    @Before("execution(* spring.proxy.CalculatorImpl.*(..))")
    @Before("pointCut()")
    public void beforeAdviceMethod(JoinPoint joinPoint) {
        //获取方法名
        Signature signature = joinPoint.getSignature();
        //获取参数
        Object[] args = joinPoint.getArgs();
        System.out.println("方法：" + signature.getName() + "，参数：" + Arrays.toString(args));
    }

    @After("pointCut()")
    public void afterAdviceMethod(JoinPoint joinPoint) {
        //获取连接点的签名信息
        String methodName = joinPoint.getSignature().getName();
        //获取目标方法到的实参信息
        String args = Arrays.toString(joinPoint.getArgs());
        System.out.println("后置通知，方法名：" + methodName + "，参数：" + args);
    }
    @AfterReturning(value = "pointCut()",returning = "result")
    public void afterReturningAdviceMethod(JoinPoint joinPoint,Object result){
        System.out.println("返回通知,结果为："+result);
    }
@AfterThrowing(value = "pointCut()",throwing = "ex")
    public void afterThrowingAdviceMethod(JoinPoint joinPoint,Exception ex){
    Signature signature = joinPoint.getSignature();
    System.out.println("异常通知,方法："+signature.getName()+"异常为："+ex);
    }

}
