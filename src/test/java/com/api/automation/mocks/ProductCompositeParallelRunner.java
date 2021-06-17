package com.api.automation.mocks;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.mockserver.client.MockServerClient;
import org.mockserver.model.HttpRequest;
import org.mockserver.model.HttpResponse;
import org.mockserver.model.MediaType;
import org.mockserver.model.Parameter;
import org.mockserver.netty.MockServer;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

@TestInstance(Lifecycle.PER_CLASS)
public class ProductCompositeParallelRunner {
	
	// 1. Setup Method -> @BeforeAll --> Mock Server & Mock Client 
	// 2. Tear Down -> @AfterAll --> Shutdown the mock server & Client
	// 3. Test Method -> @Test (junit) --> Parallel runner to run the feature file
	// 4. MockProductService -> Intercpt the request going to product service and respond with mock response
	// 5. MockReviewService -> Intercpt the request going to review service and respond with mock response
	
	private MockServer server;
	private MockServerClient client;
	
	
	@BeforeAll
	public void setUp() {
		server = new MockServer(9092);
		client = new MockServerClient("localhost", server.getLocalPort());
	}
	
	@AfterAll
	public void tearDown() {
		if(server.isRunning())
			server.stop();
		if(!client.hasStopped())
			client.stop();
	}
	
	@Test
	public void runTest() {
		mockProductService();
		mockReviewService();
		Builder aBuilder = new Builder();
		aBuilder.path("classpath:com/api/automation/mocks/ProductCompositServiceTest.feature");
		Results resut = aBuilder.parallel(1);
		Assertions.assertEquals(0, resut.getFailCount());
		
	}
	
	private void mockProductService() {
		String body = "{\r\n" + 
				"    \"name\": \"name-123\",\r\n" + 
				"    \"weight\": 123,\r\n" + 
				"    \"productID\": 123\r\n" + 
				"}";
		// http://localhost:9092/product/123
		HttpRequest interceptReq = HttpRequest.request("/product/{productId}").withPathParameters(Parameter.param("productId", "123"));
		HttpResponse mockResponse = HttpResponse.response(body).withContentType(MediaType.APPLICATION_JSON);
		client.when(interceptReq).respond(mockResponse);
		
	}
	
	private void mockReviewService() {
		String body = "[\r\n" + 
				"    {\r\n" + 
				"        \"productId\": 123,\r\n" + 
				"        \"reviewId\": 456,\r\n" + 
				"        \"author\": \"John\",\r\n" + 
				"        \"subject\": \"Good\",\r\n" + 
				"        \"content\": \"This is a good product\"\r\n" + 
				"    },\r\n" + 
				"    {\r\n" + 
				"        \"productId\": 123,\r\n" + 
				"        \"reviewId\": 741,\r\n" + 
				"        \"author\": \"Todd\",\r\n" + 
				"        \"subject\": \"Very Good\",\r\n" + 
				"        \"content\": \"This is a fantastic product\"\r\n" + 
				"    }\r\n" + 
				"]";
		// http://localhost:9092/review/123
		HttpRequest interceptReq = HttpRequest.request("/review/{productId}").withPathParameters(Parameter.param("productId", "123"));
		HttpResponse mockResponse = HttpResponse.response(body).withContentType(MediaType.APPLICATION_JSON);
		client.when(interceptReq).respond(mockResponse);
		
	}

}
