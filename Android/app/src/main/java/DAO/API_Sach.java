package DAO;

import org.json.JSONArray;
import org.json.JSONException;

import java.io.IOException;
import java.util.ArrayList;

import DTO.sach;

public class API_Sach {
    String[] nameJson = {"masach","tensach","tentheloai","tentacgia","tennxb","soluong","namxb","hinhanhsach","mota"};
    //
//		{"MASACH","TENSACH","TENTHELOAI","TENTACGIA","TENNXB","SOLUONG","NAMXB","HINHANHSACH","MOTA"};
    ArrayList<sach> list = new ArrayList<sach>();
    public ArrayList<sach> getList() {
        return list;
    }
    public void setList(ArrayList<sach> list) {
        this.list = list;
    }
    public void setSach() throws IOException, JSONException {
        API api = new API();
        JSONArray jsonArr = api.getJson("sach");

        for(int i = 0 ; i < jsonArr.length() ; i++){
            sach sach = new sach();
            sach.setMaSach(jsonArr.getJSONObject(i).getString(nameJson[0]));
            sach.setId(i);
            sach.setTenSach(jsonArr.getJSONObject(i).getString(nameJson[1]));
            sach.setTenTheLoai(jsonArr.getJSONObject(i).getString(nameJson[2]));
            sach.setTenTacGia(jsonArr.getJSONObject(i).getString(nameJson[3]));
            sach.setTenNXB(jsonArr.getJSONObject(i).getString(nameJson[4]));
            sach.setSoLuong(jsonArr.getJSONObject(i).getInt(nameJson[5]));
            sach.setNamxb(jsonArr.getJSONObject(i).getInt(nameJson[6]));
            sach.setImg(jsonArr.getJSONObject(i).getString(nameJson[7]));
            sach.setMota(jsonArr.getJSONObject(i).getString(nameJson[8]));
            this.list.add(sach);
        }
    }
}
