package com.api.automation;

import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner.Builder;

public class ParallelRunnerWithTags {

	private static final String CLASS_PATH = "classpath:";

	@Test
	public void executeKarateTests() {
		// Runner.parallel(getClass(), 5);
		Builder aRunner = new Builder();
		aRunner.path(getLocation());
		// aRunner.tags("@Smoke","@Regression");
		aRunner.tags(getTags());
		aRunner.parallel(5);
		// Runner.parallel(aRunner);
	}

	private List<String> getTags() {
		String aTags = System.getProperty("tags", "@Confidence");
		List<String> aTagList = Arrays.asList(aTags);
		return aTagList;
	}

	private List<String> getLocation() {
		String aLocation = System.getProperty("location", "com/api/automation");
		List<String> aLocationList = Arrays.asList(CLASS_PATH + aLocation);
		return aLocationList;
	}
}
