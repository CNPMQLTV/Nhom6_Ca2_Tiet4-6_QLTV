package com.example.duc.myapplication;


import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;

import org.json.JSONException;

import DAO.API_thongtin;


public class ThongTinFragment extends Fragment {

    String madg;
    String tendg;
    EditText edit_Phat,edit_Muon,edit_Dat;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_thong_tin, container, false);
        edit_Dat = view.findViewById(R.id.edt_dat);
        edit_Muon = view.findViewById(R.id.edt_muon);
        edit_Phat = view.findViewById(R.id.edt_phat);

        TextView txt_ten = view.findViewById(R.id.txt_ten_thongtin);
        txt_ten.setText(tendg);
        return  view;
    }
    public  void getDocGia() {
        madg = MainActivity.dg.getMADG();
        tendg = MainActivity.dg.getTENDG();
    }
    public void startASycnc() {
        new getThongTin().execute();
    }
    public class getThongTin extends AsyncTask<Void,Void,Void> {

        String phat;
        String muon;
        String dat;
        @Override
        protected Void doInBackground(Void... voids) {
            getDocGia();
            API_thongtin api_thongtin = new API_thongtin(madg);

            try {
                phat = api_thongtin.setPhat();
            } catch (JSONException e) {
                Log.e("Phat",e.getMessage());
            }
            try {
                muon = api_thongtin.setMuon();
            } catch (JSONException e) {
                Log.e("Muon",e.getMessage());
            }
            try {
                dat = api_thongtin.setDat();
            } catch (JSONException e) {
                Log.e("Dat",e.getMessage());
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            edit_Dat.setText(dat);
            edit_Muon.setText(muon);
            edit_Phat.setText(phat);
            super.onPostExecute(aVoid);
        }
    }
}
