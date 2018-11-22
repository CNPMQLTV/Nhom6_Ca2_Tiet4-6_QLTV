package DAO;

import java.io.IOException;
import java.net.URL;
import java.util.Scanner;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.JSONArray;
import org.json.JSONObject;

public class API {
	static String  server = "http://localhost:3000/";
	public static JSONArray getJson(String uri) throws IOException{
				String path = server + uri;
				
				URL url = new URL(path);
				Scanner scan = new Scanner(url.openStream());
				String json = "";
				while(scan.hasNext())
				{
					json = json + scan.nextLine();
				}
				scan.close();
				System.out.println(json);
				
				JSONArray jsonarr = new JSONArray(json);
				return  jsonarr;
				
			}
	
	public static JSONObject postJson(JSONObject request,String uri) throws ClientProtocolException, IOException
	{
		CloseableHttpClient httpClient = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(server +uri);
		StringEntity params = new StringEntity(request.toString());
		post.addHeader("content-type", "application/json");
		post.setEntity(params);
		HttpResponse response = httpClient.execute(post);
		ResponseHandler<String> responseHandler = new BasicResponseHandler();
		String responseBody = responseHandler.handleResponse(response);
		httpClient.close();
		JSONObject jsoObject = new JSONObject(responseBody);
		System.out.println(jsoObject.toString());
		return jsoObject;	
	}
}
