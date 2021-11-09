package kh.teamproject.apton.common.service;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Service
@Aspect
public class AroundLog {

//	public void beforeLog(JoinPoint jp) {
//		System.out.println("beforeLog 메소드 진입 " +jp.getThis() + ", target name : " + jp.getSignature().getName());
//		Object[] args = jp.getArgs();
//		for(int i=0; i<args.length; i++) {
//			System.out.println("target args : " + args[i]);
//		}
//		
//	}
//	public void afaterReturningLog(JoinPoint jp, Object ro) {
//		System.out.println("afaterReturningLog 메소드 진입 " +jp.getThis() + ", target name : " + jp.getSignature().getName());
//		if(ro!=null) System.out.println("target args : " + ro.toString());
//	}
	
	@Pointcut("execution(public * kh.teamproject.apton..*(..))")
	public void commonServicePointcut() {
		//아무것도 작성할 필요 없다.
	}
	
	@Around("commonServicePointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("aroundLog : " + pjp.getThis()+ ". " + pjp.getSignature().getName());
		Object[] args = pjp.getArgs();
		for(int i=0; i<args.length; i++) {
			System.out.print("args["+i+"]: " + args[i]+",\t");
		}
		StopWatch sw = new StopWatch();
		sw.start();
		
		Object ro = pjp.proceed(); // 가서 동작해야하는 원래의 타겟 메소드 실행 구문, 실행하다 오류 발생하면 받아들일 만한 게 필요함.
		// 타겟 메소드에 throws가 걸려있을 수 있으므로 여기도 thorws Throwable 작성해주어야함.
		sw.stop();
		System.out.print(sw.getTotalTimeMillis()+"ms");
		if(ro != null) {
			System.out.println(" target return : "+ ro.toString());
		}
		System.out.println();
		//로그 많으면 보기 불편함
		return ro;
	}

}
