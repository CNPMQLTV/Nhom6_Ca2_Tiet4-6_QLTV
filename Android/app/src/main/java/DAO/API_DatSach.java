package DAO;

import org.json.JSONException;
import org.json.JSONObject;

public class API_DatSach {
    JSONObject request = new JSONObject();
    String uri = "datonline";
    public JSONObject createDatSach(String masach,String madg) throws JSONException {
        request.put("masach",masach);
        String[] name = {"masach","madg"};
        String [] value = {masach,madg};
        API api = new API();
         api.postJson(name,value, uri);
        JSONObject response = api.getJson();
        return  response;
    }
}
