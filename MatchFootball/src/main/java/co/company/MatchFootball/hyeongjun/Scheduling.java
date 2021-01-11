package co.company.MatchFootball.hyeongjun;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import co.company.MatchFootball.mapper.HyeongjunMapper;

@Component
public class Scheduling {
	@Autowired HyeongjunMapper hyeongjunmapper;
	@Scheduled(fixedRate=50000)
	public void doSomething() {
		
	    hyeongjunmapper.deleteinvite();
	    System.out.println("안녕하세요");
	}
}
