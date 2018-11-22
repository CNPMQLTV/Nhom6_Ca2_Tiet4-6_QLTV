package DAO;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;

public class taikhoan_API {
	JSONObject request = new JSONObject();
	String uri = "taikhoan/acount";
	public Boolean checkAcount(String taikhoan,String matkhau) throws ClientProtocolException, IOException
	{
		
		request.put("taikhoan",taikhoan);
		request.put("matkhau",matkhau);
		
		JSONObject response = API.postJson(request, uri);
	
			return response.getBoolean("message");
		
		
	}
}
