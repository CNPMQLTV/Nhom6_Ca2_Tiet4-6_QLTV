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
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;

import org.json.JSONException;

import java.io.IOException;
import java.util.ArrayList;

import DAO.API_Sach;
import DTO.sach;


public class BookFragment extends Fragment {

    @Nullable

    ArrayList<sach> list = new ArrayList<sach>();
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_book, container, false);

    }

    public void startASycnc() {

        new loadSach().execute();

    }
    public class  loadSach extends AsyncTask<Void,Void,ArrayList<sach>>{
        API_Sach api_sach = new API_Sach();
        @Override
        protected ArrayList<sach> doInBackground(Void... voids) {

            try {
                api_sach.setSach();
                list =  api_sach.getList();
                return  list;
            } catch (IOException e) {
                Log.e("IO",e.getMessage());
            } catch (JSONException e) {
                Log.e("Json",e.getMessage());
            }
            return null;
        }

        @Override
        protected void onPostExecute(ArrayList<sach> saches) {

            ListView mListView = (ListView)getActivity().findViewById(R.id._list);
            ListAdapter listAdapter = new UI.ListAdapter(getActivity(),R.layout.layout_row,saches);
            mListView.setAdapter(listAdapter);

                mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        if(list.get(position).getSoLuong() > 0){
                            InfoFragment infoFragment = new InfoFragment(list.get(position));
                            getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,infoFragment).commit();
                        }
                        else Toast.makeText(getContext(),"Số lượng sách đã hết ",Toast.LENGTH_LONG).show();
                    }
                });
            super.onPostExecute(saches);
        }
    }




}