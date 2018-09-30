/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 17                          */
/* Created on:     9/30/2018 9:35:22 PM                         */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_BI_BI_SINHVIEN') then
    alter table BI
       delete foreign key FK_BI_BI_SINHVIEN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_BI_BI2_BIENBANV') then
    alter table BI
       delete foreign key FK_BI_BI2_BIENBANV
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CUNG_CAP_CUNG_CAP_NHAXB') then
    alter table CUNG_CAP
       delete foreign key FK_CUNG_CAP_CUNG_CAP_NHAXB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CUNG_CAP_CUNG_CAP2_SACH') then
    alter table CUNG_CAP
       delete foreign key FK_CUNG_CAP_CUNG_CAP2_SACH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HANG_CHUA_1_OKE') then
    alter table HANG
       delete foreign key FK_HANG_CHUA_1_OKE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KHOA_THUOC_2_LOP') then
    alter table KHOA
       delete foreign key FK_KHOA_THUOC_2_LOP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LOP_THUOC_1_SINHVIEN') then
    alter table LOP
       delete foreign key FK_LOP_THUOC_1_SINHVIEN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_NHANVIEN_LAP_RA_PHIEUMUO') then
    alter table NHANVIEN
       delete foreign key FK_NHANVIEN_LAP_RA_PHIEUMUO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_NHANVIEN_NHAP_PHIEUNHA') then
    alter table NHANVIEN
       delete foreign key FK_NHANVIEN_NHAP_PHIEUNHA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_NHANVIEN_VIET_RA_BIENBANV') then
    alter table NHANVIEN
       delete foreign key FK_NHANVIEN_VIET_RA_BIENBANV
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OKE_CO_VI_TRI_SACH') then
    alter table OKE
       delete foreign key FK_OKE_CO_VI_TRI_SACH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PHIEUMUO_BAO_GOM_SACH') then
    alter table PHIEUMUON
       delete foreign key FK_PHIEUMUO_BAO_GOM_SACH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SINHVIEN_THUOC_VE_PHIEUMUO') then
    alter table SINHVIEN
       delete foreign key FK_SINHVIEN_THUOC_VE_PHIEUMUO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_THELOAI_THUOC_SACH') then
    alter table THELOAI
       delete foreign key FK_THELOAI_THUOC_SACH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_THETV__UOC_CAP_SINHVIEN') then
    alter table THETV
       delete foreign key FK_THETV__UOC_CAP_SINHVIEN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VIET_VIET_TACGIA') then
    alter table VIET
       delete foreign key FK_VIET_VIET_TACGIA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VIET_VIET2_SACH') then
    alter table VIET
       delete foreign key FK_VIET_VIET2_SACH
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VITRI_CHUA_HANG') then
    alter table VITRI
       delete foreign key FK_VITRI_CHUA_HANG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK__AM_NHIE__AM_NHIEM_NHANVIEN') then
    alter table _AM_NHIEM
       delete foreign key FK__AM_NHIE__AM_NHIEM_NHANVIEN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK__AM_NHIE__AM_NHIEM_CHUCVU') then
    alter table _AM_NHIEM
       delete foreign key FK__AM_NHIE__AM_NHIEM_CHUCVU
end if;

drop index if exists BI.BI2_FK;

drop index if exists BI.BI_FK;

drop index if exists BI.BI_PK;

drop table if exists BI;

drop index if exists BIENBANVIPHAM.BIENBANVIPHAM_PK;

drop table if exists BIENBANVIPHAM;

drop index if exists CHUCVU.CHUCVU_PK;

drop table if exists CHUCVU;

drop index if exists CUNG_CAP.CUNG_CAP2_FK;

drop index if exists CUNG_CAP.CUNG_CAP_FK;

drop index if exists CUNG_CAP.CUNG_CAP_PK;

drop table if exists CUNG_CAP;

drop index if exists HANG.CHUA_1_FK;

drop index if exists HANG.HANG_PK;

drop table if exists HANG;

drop index if exists KHOA.THUOC_2_FK;

drop index if exists KHOA.KHOA_PK;

drop table if exists KHOA;

drop index if exists LOP.THUOC_1_FK;

drop index if exists LOP.LOP_PK;

drop table if exists LOP;

drop index if exists NHANVIEN.VIET_RA_FK;

drop index if exists NHANVIEN.LAP_RA_FK;

drop index if exists NHANVIEN.NHAP_FK;

drop index if exists NHANVIEN.NHANVIEN_PK;

drop table if exists NHANVIEN;

drop index if exists NHAXB.NHAXB_PK;

drop table if exists NHAXB;

drop index if exists OKE.CO_VI_TRI_FK;

drop index if exists OKE.OKE_PK;

drop table if exists OKE;

drop index if exists PHIEUMUON.BAO_GOM_FK;

drop index if exists PHIEUMUON.PHIEUMUON_PK;

drop table if exists PHIEUMUON;

drop index if exists PHIEUNHAP.PHIEUNHAP_PK;

drop table if exists PHIEUNHAP;

drop index if exists SACH.SACH_PK;

drop table if exists SACH;

drop index if exists SINHVIEN.THUOC_VE_FK;

drop index if exists SINHVIEN.SINHVIEN_PK;

drop table if exists SINHVIEN;

drop index if exists TACGIA.TACGIA_PK;

drop table if exists TACGIA;

drop index if exists THELOAI.THUOC_FK;

drop index if exists THELOAI.THELOAI_PK;

drop table if exists THELOAI;

drop index if exists THETV._UOC_CAP_FK;

drop index if exists THETV.THETV_PK;

drop table if exists THETV;

drop index if exists VIET.VIET2_FK;

drop index if exists VIET.VIET_FK;

drop index if exists VIET.VIET_PK;

drop table if exists VIET;

drop index if exists VITRI.CHUA_FK;

drop table if exists VITRI;

drop index if exists _AM_NHIEM._AM_NHIEM2_FK;

drop index if exists _AM_NHIEM._AM_NHIEM_FK;

drop index if exists _AM_NHIEM._AM_NHIEM_PK;

drop table if exists _AM_NHIEM;

/*==============================================================*/
/* Table: BI                                                    */
/*==============================================================*/
create or replace table BI 
(
   MASINHVIEN           char(50)                       not null,
   MAVIPHAM             char(50)                       not null,
   constraint PK_BI primary key clustered (MASINHVIEN, MAVIPHAM)
);

/*==============================================================*/
/* Index: BI_PK                                                 */
/*==============================================================*/
create unique clustered index BI_PK on BI (
MASINHVIEN ASC,
MAVIPHAM ASC
);

/*==============================================================*/
/* Index: BI_FK                                                 */
/*==============================================================*/
create index BI_FK on BI (
MASINHVIEN ASC
);

/*==============================================================*/
/* Index: BI2_FK                                                */
/*==============================================================*/
create index BI2_FK on BI (
MAVIPHAM ASC
);

/*==============================================================*/
/* Table: BIENBANVIPHAM                                         */
/*==============================================================*/
create or replace table BIENBANVIPHAM 
(
   MAVIPHAM             char(50)                       not null,
   MOTAVIPHAM           varchar(1500)                  null,
   HUONGXULY            varchar(100)                   null,
   GHICHU_VP            varchar(1000)                  null,
   NGAYTHUCTHI          date                           null,
   constraint PK_BIENBANVIPHAM primary key clustered (MAVIPHAM)
);

/*==============================================================*/
/* Index: BIENBANVIPHAM_PK                                      */
/*==============================================================*/
create unique clustered index BIENBANVIPHAM_PK on BIENBANVIPHAM (
MAVIPHAM ASC
);

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create or replace table CHUCVU 
(
   MACHUCVU             char(50)                       not null,
   TENCHUCVU            varchar(150)                   null,
   constraint PK_CHUCVU primary key clustered (MACHUCVU)
);

/*==============================================================*/
/* Index: CHUCVU_PK                                             */
/*==============================================================*/
create unique clustered index CHUCVU_PK on CHUCVU (
MACHUCVU ASC
);

/*==============================================================*/
/* Table: CUNG_CAP                                              */
/*==============================================================*/
create or replace table CUNG_CAP 
(
   MANXB                char(10)                       not null,
   MASACH               char(50)                       not null,
   constraint PK_CUNG_CAP primary key clustered (MANXB, MASACH)
);

/*==============================================================*/
/* Index: CUNG_CAP_PK                                           */
/*==============================================================*/
create unique clustered index CUNG_CAP_PK on CUNG_CAP (
MANXB ASC,
MASACH ASC
);

/*==============================================================*/
/* Index: CUNG_CAP_FK                                           */
/*==============================================================*/
create index CUNG_CAP_FK on CUNG_CAP (
MANXB ASC
);

/*==============================================================*/
/* Index: CUNG_CAP2_FK                                          */
/*==============================================================*/
create index CUNG_CAP2_FK on CUNG_CAP (
MASACH ASC
);

/*==============================================================*/
/* Table: HANG                                                  */
/*==============================================================*/
create or replace table HANG 
(
   MAHANG               char(50)                       not null,
   STT_OKE              char(50)                       not null,
   GHICHU_HANG          varchar(500)                   null,
   constraint PK_HANG primary key clustered (MAHANG)
);

/*==============================================================*/
/* Index: HANG_PK                                               */
/*==============================================================*/
create unique clustered index HANG_PK on HANG (
MAHANG ASC
);

/*==============================================================*/
/* Index: CHUA_1_FK                                             */
/*==============================================================*/
create index CHUA_1_FK on HANG (
STT_OKE ASC
);

/*==============================================================*/
/* Table: KHOA                                                  */
/*==============================================================*/
create or replace table KHOA 
(
   MAKHOA               char(50)                       not null,
   MALOP                varchar(50)                    not null,
   TENKHOA              varchar(100)                   null,
   constraint PK_KHOA primary key clustered (MAKHOA)
);

/*==============================================================*/
/* Index: KHOA_PK                                               */
/*==============================================================*/
create unique clustered index KHOA_PK on KHOA (
MAKHOA ASC
);

/*==============================================================*/
/* Index: THUOC_2_FK                                            */
/*==============================================================*/
create index THUOC_2_FK on KHOA (
MALOP ASC
);

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create or replace table LOP 
(
   MALOP                varchar(50)                    not null,
   MASINHVIEN           char(50)                       not null,
   TENLOP               varchar(50)                    null,
   constraint PK_LOP primary key clustered (MALOP)
);

/*==============================================================*/
/* Index: LOP_PK                                                */
/*==============================================================*/
create unique clustered index LOP_PK on LOP (
MALOP ASC
);

/*==============================================================*/
/* Index: THUOC_1_FK                                            */
/*==============================================================*/
create index THUOC_1_FK on LOP (
MASINHVIEN ASC
);

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create or replace table NHANVIEN 
(
   MANV                 char(50)                       not null,
   MAPHIEUMUON          char(50)                       not null,
   MAVIPHAM             char(50)                       not null,
   MAPHIEUNHAP          char(50)                       not null,
   TENNV                varchar(150)                   null,
   GIOITINH             varchar(10)                    null,
   NGAYSINH             date                           null,
   SOCMND               char(15)                       null,
   DIACHITHUONGTRU      varchar(250)                   null,
   SODT                 char(15)                       null,
   HINNV                varchar(500)                   null,
   EMAIL                varchar(150)                   null,
   GHICHU_NV            varchar(500)                   null,
   constraint PK_NHANVIEN primary key clustered (MANV)
);

/*==============================================================*/
/* Index: NHANVIEN_PK                                           */
/*==============================================================*/
create unique clustered index NHANVIEN_PK on NHANVIEN (
MANV ASC
);

/*==============================================================*/
/* Index: NHAP_FK                                               */
/*==============================================================*/
create index NHAP_FK on NHANVIEN (
MAPHIEUNHAP ASC
);

/*==============================================================*/
/* Index: LAP_RA_FK                                             */
/*==============================================================*/
create index LAP_RA_FK on NHANVIEN (
MAPHIEUMUON ASC
);

/*==============================================================*/
/* Index: VIET_RA_FK                                            */
/*==============================================================*/
create index VIET_RA_FK on NHANVIEN (
MAVIPHAM ASC
);

/*==============================================================*/
/* Table: NHAXB                                                 */
/*==============================================================*/
create or replace table NHAXB 
(
   MANXB                char(10)                       not null,
   TENNXB               char(10)                       null,
   DC_NXB               char(10)                       null,
   DT_NXB               char(10)                       null,
   constraint PK_NHAXB primary key clustered (MANXB)
);

/*==============================================================*/
/* Index: NHAXB_PK                                              */
/*==============================================================*/
create unique clustered index NHAXB_PK on NHAXB (
MANXB ASC
);

/*==============================================================*/
/* Table: OKE                                                   */
/*==============================================================*/
create or replace table OKE 
(
   STT_OKE              char(50)                       not null,
   MASACH               char(50)                       not null,
   MOTA_OKE             varchar(300)                   null,
   constraint PK_OKE primary key clustered (STT_OKE)
);

/*==============================================================*/
/* Index: OKE_PK                                                */
/*==============================================================*/
create unique clustered index OKE_PK on OKE (
STT_OKE ASC
);

/*==============================================================*/
/* Index: CO_VI_TRI_FK                                          */
/*==============================================================*/
create index CO_VI_TRI_FK on OKE (
MASACH ASC
);

/*==============================================================*/
/* Table: PHIEUMUON                                             */
/*==============================================================*/
create or replace table PHIEUMUON 
(
   MAPHIEUMUON          char(50)                       not null,
   MASACH               char(50)                       not null,
   SOLUONGSACH          integer                        null,
   NGAYMUON             date                           null,
   NGAYDUKIENTRA        date                           null,
   LOAIDOC              varchar(50)                    null,
   constraint PK_PHIEUMUON primary key clustered (MAPHIEUMUON)
);

/*==============================================================*/
/* Index: PHIEUMUON_PK                                          */
/*==============================================================*/
create unique clustered index PHIEUMUON_PK on PHIEUMUON (
MAPHIEUMUON ASC
);

/*==============================================================*/
/* Index: BAO_GOM_FK                                            */
/*==============================================================*/
create index BAO_GOM_FK on PHIEUMUON (
MASACH ASC
);

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create or replace table PHIEUNHAP 
(
   MAPHIEUNHAP          char(50)                       not null,
   NGAYNHAP             date                           null,
   constraint PK_PHIEUNHAP primary key clustered (MAPHIEUNHAP)
);

/*==============================================================*/
/* Index: PHIEUNHAP_PK                                          */
/*==============================================================*/
create unique clustered index PHIEUNHAP_PK on PHIEUNHAP (
MAPHIEUNHAP ASC
);

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create or replace table SACH 
(
   MASACH               char(50)                       not null,
   TENSACH              varchar(250)                   null,
   NAMXB                integer                        null,
   HINHANHSACH          varchar(500)                   null,
   SOTRANG              integer                        null,
   GIABIA               decimal                        null,
   GIATHUCTE            decimal                        null,
   TRONGLUONG           decimal                        null,
   MAVACH               varchar(500)                   null,
   MOTA                 varchar(1500)                  null,
   constraint PK_SACH primary key clustered (MASACH)
);

/*==============================================================*/
/* Index: SACH_PK                                               */
/*==============================================================*/
create unique clustered index SACH_PK on SACH (
MASACH ASC
);

/*==============================================================*/
/* Table: SINHVIEN                                              */
/*==============================================================*/
create or replace table SINHVIEN 
(
   MASINHVIEN           char(50)                       not null,
   MAPHIEUMUON          char(50)                       not null,
   TENSINHVIEN          varchar(200)                   null,
   NGAYSINH_SV          date                           null,
   SOCMND_SV            char(20)                       null,
   EMAIL_SV             varchar(200)                   null,
   DIACHI_SV            varchar(500)                   null,
   SDT_SV               char(20)                       null,
   NAMVAOTRUONG         integer                        null,
   constraint PK_SINHVIEN primary key clustered (MASINHVIEN)
);

/*==============================================================*/
/* Index: SINHVIEN_PK                                           */
/*==============================================================*/
create unique clustered index SINHVIEN_PK on SINHVIEN (
MASINHVIEN ASC
);

/*==============================================================*/
/* Index: THUOC_VE_FK                                           */
/*==============================================================*/
create index THUOC_VE_FK on SINHVIEN (
MAPHIEUMUON ASC
);

/*==============================================================*/
/* Table: TACGIA                                                */
/*==============================================================*/
create or replace table TACGIA 
(
   MATACGIA             char(10)                       not null,
   TENTACGIA            char(10)                       null,
   DTTACGIA             char(10)                       null,
   DCTACGIA             char(10)                       null,
   constraint PK_TACGIA primary key clustered (MATACGIA)
);

/*==============================================================*/
/* Index: TACGIA_PK                                             */
/*==============================================================*/
create unique clustered index TACGIA_PK on TACGIA (
MATACGIA ASC
);

/*==============================================================*/
/* Table: THELOAI                                               */
/*==============================================================*/
create or replace table THELOAI 
(
   MATHELOAI            char(50)                       not null,
   MASACH               char(50)                       not null,
   TENTHELOAI           varchar(150)                   null,
   MOTATHELOAI          varchar(200)                   null,
   constraint PK_THELOAI primary key clustered (MATHELOAI)
);

/*==============================================================*/
/* Index: THELOAI_PK                                            */
/*==============================================================*/
create unique clustered index THELOAI_PK on THELOAI (
MATHELOAI ASC
);

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on THELOAI (
MASACH ASC
);

/*==============================================================*/
/* Table: THETV                                                 */
/*==============================================================*/
create or replace table THETV 
(
   MATHE                char(50)                       not null,
   MASINHVIEN           char(50)                       not null,
   NGAYCAP              date                           null,
   NGAYDUKIENHETHAN     date                           null,
   constraint PK_THETV primary key clustered (MATHE)
);

/*==============================================================*/
/* Index: THETV_PK                                              */
/*==============================================================*/
create unique clustered index THETV_PK on THETV (
MATHE ASC
);

/*==============================================================*/
/* Index: _UOC_CAP_FK                                           */
/*==============================================================*/
create index _UOC_CAP_FK on THETV (
MASINHVIEN ASC
);

/*==============================================================*/
/* Table: VIET                                                  */
/*==============================================================*/
create or replace table VIET 
(
   MATACGIA             char(10)                       not null,
   MASACH               char(50)                       not null,
   constraint PK_VIET primary key clustered (MATACGIA, MASACH)
);

/*==============================================================*/
/* Index: VIET_PK                                               */
/*==============================================================*/
create unique clustered index VIET_PK on VIET (
MATACGIA ASC,
MASACH ASC
);

/*==============================================================*/
/* Index: VIET_FK                                               */
/*==============================================================*/
create index VIET_FK on VIET (
MATACGIA ASC
);

/*==============================================================*/
/* Index: VIET2_FK                                              */
/*==============================================================*/
create index VIET2_FK on VIET (
MASACH ASC
);

/*==============================================================*/
/* Table: VITRI                                                 */
/*==============================================================*/
create or replace table VITRI 
(
   MAHANG               char(50)                       not null,
   MAVT                 char(10)                       null
);

/*==============================================================*/
/* Index: CHUA_FK                                               */
/*==============================================================*/
create index CHUA_FK on VITRI (
MAHANG ASC
);

/*==============================================================*/
/* Table: _AM_NHIEM                                             */
/*==============================================================*/
create or replace table _AM_NHIEM 
(
   MANV                 char(50)                       not null,
   MACHUCVU             char(50)                       not null,
   constraint PK__AM_NHIEM primary key clustered (MANV, MACHUCVU)
);

/*==============================================================*/
/* Index: _AM_NHIEM_PK                                          */
/*==============================================================*/
create unique clustered index _AM_NHIEM_PK on _AM_NHIEM (
MANV ASC,
MACHUCVU ASC
);

/*==============================================================*/
/* Index: _AM_NHIEM_FK                                          */
/*==============================================================*/
create index _AM_NHIEM_FK on _AM_NHIEM (
MANV ASC
);

/*==============================================================*/
/* Index: _AM_NHIEM2_FK                                         */
/*==============================================================*/
create index _AM_NHIEM2_FK on _AM_NHIEM (
MACHUCVU ASC
);

alter table BI
   add constraint FK_BI_BI_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
      on update restrict
      on delete restrict;

alter table BI
   add constraint FK_BI_BI2_BIENBANV foreign key (MAVIPHAM)
      references BIENBANVIPHAM (MAVIPHAM)
      on update restrict
      on delete restrict;

alter table CUNG_CAP
   add constraint FK_CUNG_CAP_CUNG_CAP_NHAXB foreign key (MANXB)
      references NHAXB (MANXB)
      on update restrict
      on delete restrict;

alter table CUNG_CAP
   add constraint FK_CUNG_CAP_CUNG_CAP2_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update restrict
      on delete restrict;

alter table HANG
   add constraint FK_HANG_CHUA_1_OKE foreign key (STT_OKE)
      references OKE (STT_OKE)
      on update restrict
      on delete restrict;

alter table KHOA
   add constraint FK_KHOA_THUOC_2_LOP foreign key (MALOP)
      references LOP (MALOP)
      on update restrict
      on delete restrict;

alter table LOP
   add constraint FK_LOP_THUOC_1_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
      on update restrict
      on delete restrict;

alter table NHANVIEN
   add constraint FK_NHANVIEN_LAP_RA_PHIEUMUO foreign key (MAPHIEUMUON)
      references PHIEUMUON (MAPHIEUMUON)
      on update restrict
      on delete restrict;

alter table NHANVIEN
   add constraint FK_NHANVIEN_NHAP_PHIEUNHA foreign key (MAPHIEUNHAP)
      references PHIEUNHAP (MAPHIEUNHAP)
      on update restrict
      on delete restrict;

alter table NHANVIEN
   add constraint FK_NHANVIEN_VIET_RA_BIENBANV foreign key (MAVIPHAM)
      references BIENBANVIPHAM (MAVIPHAM)
      on update restrict
      on delete restrict;

alter table OKE
   add constraint FK_OKE_CO_VI_TRI_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update restrict
      on delete restrict;

alter table PHIEUMUON
   add constraint FK_PHIEUMUO_BAO_GOM_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update restrict
      on delete restrict;

alter table SINHVIEN
   add constraint FK_SINHVIEN_THUOC_VE_PHIEUMUO foreign key (MAPHIEUMUON)
      references PHIEUMUON (MAPHIEUMUON)
      on update restrict
      on delete restrict;

alter table THELOAI
   add constraint FK_THELOAI_THUOC_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update restrict
      on delete restrict;

alter table THETV
   add constraint FK_THETV__UOC_CAP_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
      on update restrict
      on delete restrict;

alter table VIET
   add constraint FK_VIET_VIET_TACGIA foreign key (MATACGIA)
      references TACGIA (MATACGIA)
      on update restrict
      on delete restrict;

alter table VIET
   add constraint FK_VIET_VIET2_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update restrict
      on delete restrict;

alter table VITRI
   add constraint FK_VITRI_CHUA_HANG foreign key (MAHANG)
      references HANG (MAHANG)
      on update restrict
      on delete restrict;

alter table _AM_NHIEM
   add constraint FK__AM_NHIE__AM_NHIEM_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
      on update restrict
      on delete restrict;

alter table _AM_NHIEM
   add constraint FK__AM_NHIE__AM_NHIEM_CHUCVU foreign key (MACHUCVU)
      references CHUCVU (MACHUCVU)
      on update restrict
      on delete restrict;

