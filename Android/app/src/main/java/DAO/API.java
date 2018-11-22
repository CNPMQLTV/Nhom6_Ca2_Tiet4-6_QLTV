package DAO;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class API {
    String url = "http://192.168.1.108:3000/";
    String result;
    JSONObject request;
    public String getResult() {
        return result;
    }


    public void setResult(String result) {
        this.result = result;
        try {
            request = new JSONObject(result);
            Log.e("JSON",request.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Log.e("Thong bao res",result);
    }
    public JSONObject getJson() throws JSONException {
        Log.e("JSONGet",new JSONObject(result).toString());
        return new JSONObject(result);
    }
    public  JSONArray getJson(String param) throws JSONException {
        String ul = url + param;
        Request.Builder builder = new Request.Builder();
        OkHttpClient okHttpClient = new OkHttpClient.Builder()
                .retryOnConnectionFailure(true)
                .build();
        builder.url(ul);
        Request request = builder.build();
        Log.e("GetJsonUrl",ul);
        try {
            Response response = okHttpClient.newCall(request).execute();
            result =  response.body().string();
            Log.e("Result",result);
        } catch (IOException e) {
            e.printStackTrace();
            Log.e("Loi","Loi");
        }
        return new JSONArray(result);
    }
    public  void postJson(String[] name,String[] value,String param) throws JSONException{
        url += param;
        JSONObject requestjson = new JSONObject();
        for(int i = 0 ;i<name.length;i++)
            requestjson.put(name[i],value[i]);
        Log.e("URL",url);
        Log.e("Request",requestjson.toString());
        try {

            OkHttpClient okHttpClient = new OkHttpClient();

            MediaType JSON = MediaType.parse("application/json; charset=utf-8");

            RequestBody body = RequestBody.create(JSON,requestjson.toString());

            Request request = new Request.Builder()
                    .url(url)
                    .post(body)
                    .header("Content-Type","application/x-www-form-urlencoded")
                    .build();
            Response response =  okHttpClient.newCall(request).execute();

            result =  response.body().string();
        } catch (IOException e) {
            e.printStackTrace();
            Log.e("Loi",e.getMessage());
        }
    }
}
