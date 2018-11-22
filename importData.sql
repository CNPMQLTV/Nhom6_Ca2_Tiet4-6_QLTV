
insert into NHAXB
values('XB001',N'NXB Trẻ','11111111','090009900'),
('XB002',N'NXB Thanh Niên','112111','090033900'),
('XB003',N'NXB Vị Thành Niên','111211','09012100')
insert into TACGIA
values('TG001',N'Trần Lê Văn Đức','0900552312','1212121'),
('TG002',N'Nguyễn Thái Bảo','0900532312','12312121'),
('TG003',N'Nguyễn Thanh Quang','09252312','121312321121')
insert into VITRI
values('VT001','A1'),
('VT002','A2'),
('VT003','A3')
insert into THELOAI
values('TL001',N'Công Nghệ'),
('TL002',N'Khoa Học'),
('TL003',N'Thực Phẩm')
insert into Khoa 
values ('CNTT',N'Công Nghệ Thông Tin')
insert into SINHVIEN
values('SV001','CNTT',N'Trần Lê Văn Đức','09/03/1997','20011222','vanduc3997@gmail.com',N'Quận 12,TP.HCM','0961260796',2015)
insert into SINHVIEN
values('SV002','CNTT',N'Nguyễn Thanh Quang','09/03/1997','20011222','vanduc3997@gmail.com',N'Quận 12,TP.HCM','0961260796',2015)
insert into CHUCVU
values ('CV001',N'Thủ Kho')
select * from taikhoan
insert into TAIKHOAN 
values ('sa011','aaaaa',1)
insert into NHANVIEN
values('NV001','CV001','sa011',N'Nguyễn Thái Bảo','12/04/1997','201122312',N'Quận Tân Phú,TP.HCM','08081508','thaigiam@gmail.com')




CREATE VIEW sachView
as select s.*,TENTACGIA,TENNXB,TENTHELOAI
from Sach s, TACGIA tg, VITRI vt, NHAXB nxb, THELOAI tl
where s.MANXB = nxb.MANXB and s.MATACGIA = tg.MATACGIA and s.MATHELOAI = tl.MATHELOAI and s.MAVITRI = vt.MAVITRI;
select *  from sachView

create View ViewCT
as select pm.MAPHIEUMUON ,ct.MASACH,pm.MANV,pm.MASINHVIEN,pm.NGAYMUON,pm.NGAYDUKIENTRA,pm.PHIMUON,pm.PHICOC,ct.TINHTRANG
from CHITIETMUONTRA ct, PHIEUMUONTRA pm
where ct.MAPHIEUMUON = pm.MAPHIEUMUON

alter table PHAT
Alter column SOTIENPHAT float

create View viewDoanhThu
as
select sum(p.SOTIENPHAT) as tienphat,
		sum(pm.PHIMUON) as tienmuon,
		sum(pm.PHIMUON) +sum(p.SOTIENPHAT) as tongcong
from PHAT p ,PHIEUMUONTRA pm
select * from viewDoanhThu

/*Chay ngay day*/
EXEC sp_RENAME 'VITTRI.VITRI', 'TenViTri', 'COLUMN'
ALTER TABLE Sach
ADD Gia float