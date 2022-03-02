package com.api.automation.config.report.loggers;

import com.intuit.karate.http.HttpLogModifier;

public class MaskLogger implements HttpLogModifier {

	@Override
	public boolean enableForUri(String uri) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String uri(String uri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String header(String header, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String request(String uri, String request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String response(String uri, String response) {
		// TODO Auto-generated method stub
		return null;
	}

}
