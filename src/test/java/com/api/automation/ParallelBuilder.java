package com.api.automation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner.Builder;

public class ParallelBuilder {
	
	@Test
	public void executeKarateTest() {
		Builder aRunner = new Builder();
		//aRunner.path("classpath:com/api/automation/getrequest");
		aRunner.path("classpath:com/api/automation");
		aRunner.parallel(5);
		
	}

}
