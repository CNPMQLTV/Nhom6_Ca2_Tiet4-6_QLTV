package DAO;

import java.io.IOException;


import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;

public class datsach_API {
	JSONObject request = new JSONObject();
	String uri = "datonline";
	public JSONObject createDatSach(String masach,String madg) throws ClientProtocolException, IOException
	{
		request.put("masach",masach);
		request.put("madg", madg);
		JSONObject response = API.postJson(request, uri);
		return response;
	}
}
