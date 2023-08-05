package com.api.automation.questions.tables.secure.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesSecureGet {
	@Test
	public Karate runTest() {
		return Karate.run("secureget.feature").relativeTo(getClass());
	}
}
