package com.example.duc.myapplication;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import DAO.API_DatSach;
import DTO.docgia;
import DTO.sach;


@SuppressLint("ValidFragment")
public class InfoFragment extends Fragment {

    sach s = new sach();
    docgia dg = new docgia();
    @SuppressLint("ValidFragment")
    public InfoFragment(sach s) {
        this.s = s;
    }
    TextView txt_tensach,txt_mota,txt_nhaxb,txt_namxb,txt_soluong,txt_tacgia,txt_theloai;
    Button btn;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.fragment_info, container, false);
        getDocGia();

        txt_tensach = view.findViewById(R.id.txt_tenInfo);
        txt_mota = view.findViewById(R.id.txt_mota);
        txt_namxb = view.findViewById(R.id.txt_namxb);
        txt_nhaxb = view.findViewById(R.id.txt_nxb);
        txt_tacgia = view.findViewById(R.id.txt_tacgia);
        txt_theloai = view.findViewById(R.id.txt_theloai);
        txt_soluong = view.findViewById(R.id.txt_soluong_info);

        btn = view.findViewById(R.id.btn_datsach);

        txt_tensach.setText(s.getTenSach());
        txt_mota.setText(s.getMota());
        txt_nhaxb.setText("Nhà xuất bản : "+s.getTenNXB());
        txt_theloai.setText("Thể loại : "+s.getTenTheLoai());

        txt_namxb.setText("Năm xuất bản : "+s.getNamxb());

        txt_soluong.setText("Số lượng : "+ s.getSoLuong());
        txt_tacgia.setText("Tác giả : "+s.getTenTacGia());

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new postDatSach().execute();
            }

        });

        return view;
    }
    public  void getDocGia() {
        dg = MainActivity.dg;
    }
    public class  postDatSach extends AsyncTask<Void, String, JSONObject> {

        @Override
        protected JSONObject doInBackground(Void... voids) {
            API_DatSach datSach = new API_DatSach();
            try {
                Log.e("Ma",s.getMaSach()+" " +dg.getMADG());
                 return  datSach.createDatSach(s.getMaSach(),dg.getMADG());

            } catch (JSONException e) {
                Log.e("Dat sach Json",e.getMessage());
            }
            return null;
        }

        @Override
        protected void onProgressUpdate(String... values) {
            super.onProgressUpdate(values);
        }

        @Override
        protected void onPostExecute(JSONObject s) {
            try {
                String json = s.getString("message");
                String mess ;
                if(json.equals("true")){
                   Toast.makeText(getContext(),"Đặt sách thành công",Toast.LENGTH_LONG).show();
                }
                else
                    Toast.makeText(getContext(),"Đặt sách không  thành công: "+ json,Toast.LENGTH_LONG).show();

            } catch (JSONException e) {
                Log.e("Dat sach Boolean Json",e.getMessage());
            }
            super.onPostExecute(s);
        }
    }
}

