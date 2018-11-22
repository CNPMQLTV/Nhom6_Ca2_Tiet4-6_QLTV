package DAO;

import org.json.JSONArray;
import org.json.JSONException;

import java.io.IOException;


public class API_thongtin {
    String phat = "";
    String datonline = "";
    String muon = "";
    String maDg ;
    public API_thongtin(String docgia)
    {
        this.maDg = docgia;
    }
    public String setPhat() throws  JSONException {
        API api = new API();
        String url = "chitiet/phat/"+maDg;
        JSONArray jsonArr = api.getJson(url);
        try {
            if (jsonArr.getJSONObject(0).getBoolean("message")){
                phat = "Không có vi phạm";
            }
        }
        catch (Exception ex) {
            for(int i = 0 ; i < jsonArr.length() ; i++) {
                phat+= jsonArr.getJSONObject(0).getString("tendieukhoan")+" ";

            }
        }
        return  phat;
    }
    public String setMuon() throws  JSONException {
        API api = new API();
        String url = "chitiet/muon/"+maDg;
        JSONArray jsonArr = api.getJson(url);
        try {
            if (jsonArr.getJSONObject(0).getBoolean("message")){
                muon = "Không có sách nào được mượn";
            }
        }
        catch (Exception ex) {
            for(int i = 0 ; i < jsonArr.length() ; i++) {
                if(i == jsonArr.length() -1) {
                    muon+="Sách " +jsonArr.getJSONObject(0).getString("TENSACH");
                }
                else{
                    muon+="Sách " +jsonArr.getJSONObject(0).getString("TENSACH")+"\n";
                }



            }
        }
        return  muon;
    }
    public String setDat() throws  JSONException {
        API api = new API();
        String url = "chitiet/dat/"+maDg;
        JSONArray jsonArr = api.getJson(url);
        try {
            if (jsonArr.getJSONObject(0).getBoolean("message")){
                datonline = "Không có sách nào được đặt";
            }
        }
        catch (Exception ex) {
            for(int i = 0 ; i < jsonArr.length() ; i++) {
                if(i == jsonArr.length() -1 ) {
                    datonline+="Sách " +jsonArr.getJSONObject(0).getString("TENSACH");
                }
                else
                    datonline+="Sách " +jsonArr.getJSONObject(0).getString("TENSACH")+"\n";

            }
        }
        return  datonline;
    }
}
