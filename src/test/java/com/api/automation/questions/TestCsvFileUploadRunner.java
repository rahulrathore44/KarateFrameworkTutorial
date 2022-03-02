package com.api.automation.questions;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestCsvFileUploadRunner {
	@Test
	public Karate runTest() {
		return Karate.run("TestCsvFileUpload.feature").relativeTo(getClass());
	}
}
