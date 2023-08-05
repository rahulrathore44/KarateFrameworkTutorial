package com.api.automation.mocks.karatemocks;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesSecureGetIWithKarateMock {

	@Test
	public Karate runTest() {
		return Karate.run("secureget.feature").relativeTo(getClass());
	}
}
