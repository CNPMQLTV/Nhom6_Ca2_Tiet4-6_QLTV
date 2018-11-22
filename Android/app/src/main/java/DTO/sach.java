package DTO;

public class sach {
    int id;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    String MaSach;
    String TenSach;
    String TenTheLoai;
    String TenTacGia;
    String TenNXB;
    String Mota;
    int SoLuong;

    public int getSoLuong() {
        return SoLuong;
    }
    public void setSoLuong(int soLuong) {
        SoLuong = soLuong;
    }
    int namxb;
    String img;
    public String getMaSach() {
        return MaSach;
    }
    public void setMaSach(String maSach) {
        MaSach = maSach;
    }
    public String getTenSach() {
        return TenSach;
    }
    public void setTenSach(String tenSach) {
        TenSach = tenSach;
    }
    public String getTenTheLoai() {
        return TenTheLoai;
    }
    public void setTenTheLoai(String tenTheLoai) {
        TenTheLoai = tenTheLoai;
    }
    public String getTenTacGia() {
        return TenTacGia;
    }
    public void setTenTacGia(String tenTacGia) {
        TenTacGia = tenTacGia;
    }
    public String getTenNXB() {
        return TenNXB;
    }
    public void setTenNXB(String tenNXB) {
        TenNXB = tenNXB;
    }
    public String getMota() {
        return Mota;
    }
    public void setMota(String mota) {
        Mota = mota;
    }
    public int getNamxb() {
        return namxb;
    }
    public void setNamxb(int namxb) {
        this.namxb = namxb;
    }
    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }

    public sach(String maSach, String tenSach, String tenTheLoai, String tenTacGia, String tenNXB, String mota,int namxb, String img) {
        super();
        MaSach = maSach;
        TenSach = tenSach;
        TenTheLoai = tenTheLoai;
        TenTacGia = tenTacGia;
        TenNXB = tenNXB;
        Mota = mota;
        this.namxb = namxb;
        this.img = img;
    }
    public sach() {
        super();
    }



}
