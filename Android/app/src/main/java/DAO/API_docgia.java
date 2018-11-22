package DAO;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;

import java.io.IOException;

import DTO.docgia;

public class API_docgia {
    String[] nameJson= {"MADG","TAIKHOAN","TENDG","EMAILDG","DIACHIDG","SDTDG","GIOITINHDG","MALOAIDG"};
    public docgia setDocGia(String taikhoan) throws IOException
    {
        docgia dg = new docgia();
        String uri ="docgia/"+taikhoan;
        API api = new API();
        try {
            JSONArray jsonArr = api.getJson(uri);
            dg.setMADG(jsonArr.getJSONObject(0).getString(nameJson[0]));
            dg.setTAIKHOAN(jsonArr.getJSONObject(0).getString(nameJson[1]));
            dg.setTENDG(jsonArr.getJSONObject(0).getString(nameJson[2]));
            dg.setEMAILDG(jsonArr.getJSONObject(0).getString(nameJson[3]));
            dg.setDIACHIDG(jsonArr.getJSONObject(0).getString(nameJson[4]));
            dg.setSDTDG(jsonArr.getJSONObject(0).getString(nameJson[5]));
            dg.setGIOITINHDG(jsonArr.getJSONObject(0).getString(nameJson[6]));
            dg.setLOAIDG(jsonArr.getJSONObject(0).getString(nameJson[7]));
        } catch (JSONException e) {
            Log.e("Loi doc gia",e.getMessage());
        }


        return dg;

    }
}
