package DAO;

import android.os.Handler;
import android.util.Log;

import org.json.JSONException;

import DTO.taikhoan;

public class API_taikhoan {
    taikhoan tk = new taikhoan();
    String[] name= {"taikhoan","matkhau"};
    String[] values ;
    public void setTK(String taikhoan,String matkhau) {
        tk.setTaikhoan(taikhoan);
        tk.setMatkhau(matkhau);
        values = new String[]{tk.getTaikhoan(), tk.getMatkhau()};
    }

    public boolean check() throws JSONException {
        API api = new API();
        api.postJson(name,values,"taikhoan/acount");


        boolean test = api.getJson().getBoolean("message");
        Log.e("Mess",test+"");
       return  test;
    }
}
