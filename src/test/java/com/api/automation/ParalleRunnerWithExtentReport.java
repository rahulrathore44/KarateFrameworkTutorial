package com.api.automation;

import org.junit.jupiter.api.Test;

import com.api.automation.config.report.CustomExtentReport;
import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class ParalleRunnerWithExtentReport {
	@Test
	public void executeKarateTest() {
		Builder aRunner = new Builder();
		aRunner.path("classpath:com/api/automation");
		Results result = aRunner.parallel(5);
		// Extent Report
		CustomExtentReport extentReport = new CustomExtentReport()
				.withKarateResult(result)
				.withReportDir(result.getReportDir())
				.withReportTitle("Karate Test Execution Report");
		extentReport.generateExtentReport();
		
	}
}
