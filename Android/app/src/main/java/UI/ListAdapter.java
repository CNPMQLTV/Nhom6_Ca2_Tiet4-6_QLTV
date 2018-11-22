package UI;

import android.content.ClipData;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.example.duc.myapplication.R;

import java.util.ArrayList;

import DTO.docgia;
import DTO.sach;

public class ListAdapter extends ArrayAdapter<sach> {

    private int resourceLayout;
    private Context mContext;

    public ListAdapter(Context context, int resource, ArrayList<sach> items) {
        super(context, resource, items);
        this.resourceLayout = resource;
        this.mContext = context;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        View v = convertView;

        if (v == null) {
            LayoutInflater vi;
            vi = LayoutInflater.from(mContext);
            v = vi.inflate(resourceLayout, null);
        }

        sach s = getItem(position);

        if (s != null) {


            TextView txt_tensach = v.findViewById(R.id.txt_tensach);
            TextView txt_soluong = v.findViewById(R.id.txt_soluong);

            txt_soluong.setText("Số lượng : " +s.getSoLuong()+"");
            txt_tensach.setText( s.getTenSach());
        }

        return v;
    }

}
