package DAO;

import java.io.IOException;
import java.util.ArrayList;

import org.json.JSONArray;


import DTO.baiviet;

public class baiviet_API {
	String[] nameJson = {"mabaiviet","tennv","tieude","noidung","hinhanh"};
	ArrayList<baiviet> list = new ArrayList<baiviet>();
	public ArrayList<baiviet> getList() {
		return list;
	}
	public void setList(ArrayList<baiviet> list) {
		this.list = list;
	}
	public void setSach() throws IOException{
	JSONArray jsonArr = API.getJson("baiviet");
	
	for(int i = 0 ; i < jsonArr.length() ; i++){
		baiviet bv = new baiviet();	
		bv.setMabaiviet(jsonArr.getJSONObject(i).getString(nameJson[0]));
		bv.setTennv(jsonArr.getJSONObject(i).getString(nameJson[1]));
		bv.setTieude(jsonArr.getJSONObject(i).getString(nameJson[2]));
		bv.setNoidung(jsonArr.getJSONObject(i).getString(nameJson[3]));
		bv.setHinhanh(jsonArr.getJSONObject(i).getString(nameJson[4]));
		
		this.list.add(bv);
		}
	}
}
