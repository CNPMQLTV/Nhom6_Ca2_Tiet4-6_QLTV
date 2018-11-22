/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
INSERT INTO chucvu VALUES('CV01','THỦ KHO'),
('CV02','Nhân Viên'),
('CV03','THỦ THƯ')

/*==============================================================*/
/* Table: THELOAI                                               */
/*==============================================================*/
INSERT INTO theloai VALUES('TL01','KHOA HỌC'),
('TL02','XÃ HỘI'),
('TL03','VĂN HỌC')
/*==============================================================*/
/* Table: VITRI                                                 */
/*==============================================================*/
INSERT INTO vitri VALUES('A1','HÀNG 1'),
('A2','HÀNG 2'),
('C1','CỘT 1'),
('C2','CỘT 2')
/*==============================================================*/
/* Table: NHAXB                                                 */
/*==============================================================*/
INSERT INTO nhaxb VALUES('NXB01','KIM ĐỒNG','TPHCM','028884455'),
('NXB02','THANH NIÊN','TPHCM','028884455'),
('NXB03','GIÁO DỤC','TPHCM','028884455')

/*==============================================================*/
/* Table: TACGIA                                                */
/*==============================================================*/
INSERT INTO tacgia VALUES('TG01','VĂN ĐỨC','03844556','TPHCM'),
('TG02','THÁI BẢO','03845665','TPHCM'),
('TG03','THANH QUANG','03843556','TPHCM'),
('TG04','HỮU HƯỚNG','03824596','TPHCM'),
('TG05','MINH TÂM','03841586','TPHCM')



/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/

INSERT INTO sach
VALUES('S001','TL01','TG01','NXB01','C1','CÔNG NGHỆ WEB','2017','','','','22/10/2018',100000,1),
('S002','TL02','TG02','NXB03','C2','CÔNG NGHỆ PHẦN MỀM','2017','','','','24/10/2018',100000,2),
('S003','TL03','TG03','NXB02','A1','LẬP TRÌNH WINDOWS','2017','','','','23/10/2018',100000,3),
('S004','TL02','TG04','NXB01','A2','LẬP TRÌNH DI ĐỘNG','2017','','','','21/10/2018',100000,4),
('S005','TL01','TG05','NXB03','C1','QUẢN LÝ DỰ ÁN PHẦN MỀM','2017','','','','20/10/2018',900000,5)
	

INSERT INTO loaitaikhoan VALUES ('ML001','Nhân Viên'),
('ML002','Thành Viên')

INSERT INTO taikhoan VALUES('vanduc','ML002',2500591),
('thanhquang','ML001',22222)

CREATE VIEW viewTaiKhoan
AS
SELECT tk.TAIKHOAN,tk.MATKHAU,l.TENLOAI
FROM TAIKHOAN tk , loaitaikhoan l
WHERE tk.MALOAITK = l.MALOAITK

create VIEW sachView
AS SELECT s.masach,s.tensach,tl.tentheloai,tg.tentacgia,nxb.tennxb,s.namxb,s.hinhanhsach,s.mota,s.soluong
FROM sach s, THELOAI tl, TACGIA tg, nhaxb nxb
where s.matheloai = tl.matheloai AND s.matacgia = tg.matacgia AND s.manxb = nxb.manxb

CREATE VIEW viewDocGia
AS
SELECT docgia.MADG
FROM taikhoan,docgia ,phat ,phieumuontra
WHERE taikhoan.TAIKHOAN = docgia.TAIKHOAN
AND (phat.MADG = docgia.MADG or phieumuontra.MADG = docgia.MADG)


create VIEW baivietView
AS SELECT bv.mabaiviet,bv.tieude,bv.noidung,bv.hinhanh,nv.tennv
FROM nhanvien nv,baiviet bv
where nv.manv = bv.manv

CREATE View viewMuon
AS SELECT docgia.MADG,sach.TENSACH
FROM phieumuontra , ct_phieumuontra , sach, docgia 
WHERE phieumuontra.MAPHIEUMUON = ct_phieumuontra.MAPHIEUMUON and ct_phieumuontra.MASACH = sach.MASACH
AND docgia.MADG = phieumuontra.MADG AND ct_phieumuontra.TINHTRANG = "0"

CREATE View viewPhat
AS SELECT phat.MADG,dieukhoanvipham.TENDIEUKHOAN
FROM phat , chitietphat , dieukhoanvipham
WHERE chitietphat.MAPHAT =phat.MAPHAT and dieukhoanvipham.MADIEUKHOAN = chitietphat.MALOAIVIPHAM AND
chitietphat.GHICHU ="0"


CREATE view viewDatSach
AS
SELECT datonline.MADG , sach.TENSACH 
FROM sach , datonline
WHERE sach.MASACH = datonline.MASACH

INSERT INTO `docgia` (`MADG`, `MALOAIDG`, `TENDG`, `EMAILDG`, `DIACHIDG`, `SDTDG`, `GIOITINHDG`, `TAIKHOAN`) VALUES ('DG001', 'LDocG', 'Trần Lê Văn Đức', 'vanduc', 'AAAAAAAAAAAAAAAAAA', '0961260796', 'Nam', 'vanduc');

INSERT INTO `sach` (`MASACH`, `MATHELOAI`, `MATACGIA`, `MANXB`, `MAVT`, `TENSACH`, `NAMXB`, `HINHANHSACH`, `MOTA`, `KHOA`, `THANGNHAP`, `GIA`, `SOLUONG`) VALUES ('S006', 'TL01', 'TG01', 'NXB01', 'A2', 'NodeJS', '2010', 'https://techtalk.vn/wp-content/uploads/2017/04/Node.js_logo.svg_-696x426.png', 'Nói về NodeJS', NULL, NULL, NULL, '10');
INSERT INTO `sach` (`MASACH`, `MATHELOAI`, `MATACGIA`, `MANXB`, `MAVT`, `TENSACH`, `NAMXB`, `HINHANHSACH`, `MOTA`, `KHOA`, `THANGNHAP`, `GIA`, `SOLUONG`) VALUES ('S007', 'TL02', 'TG03', 'NXB03', 'C2', 'NodeJS Nâng cao', '2011', 'https://i0.wp.com/phocode.com/wp-content/uploads/2016/09/nodejsLogo.png?w=300&ssl=1', 'Hướng dẫn tạo Website với NodeJS', NULL, NULL, NULL, '10');


INSERT INTO `nhanvien` (`MANV`, `TENNV`, `MACHUCVU`, `TAIKHOAN`, `NGAYSINH`, `SOCMND`, `DIACHITHUONGTRU`, `SODT`, `EMAIL`) VALUES ('NV001', 'Trần Đức', 'CV01', 'thanhquang', NULL, NULL, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '096126666', 'vanduc3997');


INSERT INTO `phieumuontra` (`MAPHIEUMUON`, `MANV`, `MADG`, `NGAYMUON`, `NGAYDUKIENTRA`, `LOAIMUON`, `PHICOC`) VALUES ('MP001', 'NV001', 'DG001', '2018-11-22', '2018-11-30', 'Về nhà', '1000000');

INSERT INTO `ct_phieumuontra` (`MASACH`, `MAPHIEUMUON`, `NGAYTRA`, `TINHTRANG`) VALUES ('S003', 'MP001', NULL, 'Chưa trả');