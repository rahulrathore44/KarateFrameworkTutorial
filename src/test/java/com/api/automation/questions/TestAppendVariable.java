package com.api.automation.questions;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestAppendVariable {
	@Test
	public Karate runTest() {
		return Karate.run("TestAppendVariable").relativeTo(getClass());
	}

}
