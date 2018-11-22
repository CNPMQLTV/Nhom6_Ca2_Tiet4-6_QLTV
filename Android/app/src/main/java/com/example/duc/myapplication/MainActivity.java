package com.example.duc.myapplication;


import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

import java.io.IOException;

import DAO.API_docgia;
import DTO.docgia;


public class MainActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {
    String taikhoan;
    TextView txt_ten,txt_taikhoan;
    NavigationView navigationView;
    public static docgia dg = new docgia();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);


        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        navigationView = (NavigationView) findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
        BottomNavigationView bottomNav = findViewById(R.id.bottom_navigation);
        bottomNav.setOnNavigationItemSelectedListener(navListener);


           AnhXa();
            getTaiKhoan();
            new getDocGia(taikhoan).execute();

        //I added this if statement to keep the selected fragment when rotating the device
        if (savedInstanceState == null) {
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                    new HomeFragment()).commit();
        }
    }
    public  void AnhXa() {
        View header = navigationView.getHeaderView(0);
        txt_ten = header.findViewById(R.id.txt_ten);
        txt_taikhoan = header.findViewById(R.id.txt_taikhoan);

    }
    private BottomNavigationView.OnNavigationItemSelectedListener navListener =
            new BottomNavigationView.OnNavigationItemSelectedListener() {
                @Override
                public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                    Fragment selectedFragment = null;

                    switch (item.getItemId()) {
                        case R.id.nav_home:
                            //selectedFragment = new HomeFragment();
                            HomeFragment homeFragment = new HomeFragment();
                            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,homeFragment).commit();

                            break;
                        case R.id.nav_book:
                           // selectedFragment = new BookFragment();
                            BookFragment bookFragment = new BookFragment();
                            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,bookFragment).commit();
                            bookFragment.startASycnc();
                            break;
                        case R.id.nav_newss:
//                           selectedFragment = new NewsFragment();
                            NewsFragment newsFragment = new NewsFragment();
                            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,newsFragment).commit();
                            break;
                    }

//                    getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
//                            selectedFragment).commit();

                    return true;
                }
            };
    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();

        if (id == R.id.nav_info) {
            ThongTinFragment thongTinFragment = new ThongTinFragment();
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,thongTinFragment).commit();
            thongTinFragment.startASycnc();

        } else if (id == R.id.nav_manage) {

        } else  if(id== R.id.nav_req){

        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    public String getTaiKhoan() {


        taikhoan = LoginActivity.taikhoan;
        Log.e("Intent",taikhoan);
        return taikhoan;
    }
    public  class  getDocGia extends AsyncTask<Void,String,String> {

        String taikhoan;

        public getDocGia(String taikhoan) {
            this.taikhoan = taikhoan;

        }
        @Override
        protected String doInBackground(Void... voids) {
            API_docgia docgia = new API_docgia();
            try {
                dg = docgia.setDocGia(taikhoan);
                return dg.getTENDG();
            } catch (IOException e) {
                Log.e("Loi MainActiviDocGia",e.getMessage());
            }
            return  null;
        }

        @Override
        protected void onPostExecute(String s) {
            if(s != null) {
                Log.e("S",s);
                Log.e("Tai khoan",taikhoan);
                Log.e("Txt ", String.valueOf(txt_taikhoan.getText()));
                txt_taikhoan.setText(taikhoan);
                txt_ten.setText(s);

            }
            super.onPostExecute(s);
        }
    }
}
