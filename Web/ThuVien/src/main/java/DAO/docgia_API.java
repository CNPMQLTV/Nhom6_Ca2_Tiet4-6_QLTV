package DAO;

import java.io.IOException;
import java.util.ArrayList;

import org.json.JSONArray;

import DTO.docgia;

public class docgia_API {
	String[] nameJson= {"MADG","TAIKHOAN","TENDG","EMAILDG","DIACHIDG","SDTDG","GIOITINHDG","MALOAIDG"};
	
	public docgia setDocGia(String taikhoan) throws IOException
	{
		String uri ="docgia/"+taikhoan;
		JSONArray jsonArr = API.getJson(uri);
		docgia dg = new docgia();
			dg.setMADG(jsonArr.getJSONObject(0).getString(nameJson[0]));
			
			dg.setTAIKHOAN(jsonArr.getJSONObject(0).getString(nameJson[1]));
			dg.setTENDG(jsonArr.getJSONObject(0).getString(nameJson[2]));
			dg.setEMAILDG(jsonArr.getJSONObject(0).getString(nameJson[3]));
			dg.setDIACHIDG(jsonArr.getJSONObject(0).getString(nameJson[4]));
			dg.setSDTDG(jsonArr.getJSONObject(0).getString(nameJson[5]));
			dg.setGIOITINHDG(jsonArr.getJSONObject(0).getString(nameJson[6]));
			dg.setLOAIDG(jsonArr.getJSONObject(0).getString(nameJson[7]));
			
		return dg;
		
	}
}
