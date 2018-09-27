/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     9/27/2018 4:56:18 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BI') and o.name = 'FK_BI_BI_SINHVIEN')
alter table BI
   drop constraint FK_BI_BI_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BI') and o.name = 'FK_BI_BI2_BIENBANV')
alter table BI
   drop constraint FK_BI_BI2_BIENBANV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO_NHANVIEN')
alter table CO
   drop constraint FK_CO_CO_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO2_THANNHAN')
alter table CO
   drop constraint FK_CO_CO2_THANNHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO_1') and o.name = 'FK_CO_1_CO_1_SACH')
alter table CO_1
   drop constraint FK_CO_1_CO_1_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO_1') and o.name = 'FK_CO_1_CO_2_PHIEUNHA')
alter table CO_1
   drop constraint FK_CO_1_CO_2_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO_NGON_NGU') and o.name = 'FK_CO_NGON__CO_NGON_N_LOAINGON')
alter table CO_NGON_NGU
   drop constraint FK_CO_NGON__CO_NGON_N_LOAINGON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO_NGON_NGU') and o.name = 'FK_CO_NGON__CO_NGON_N_SACH')
alter table CO_NGON_NGU
   drop constraint FK_CO_NGON__CO_NGON_N_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CUNG_CAP') and o.name = 'FK_CUNG_CAP_CUNG_CAP_NHACC')
alter table CUNG_CAP
   drop constraint FK_CUNG_CAP_CUNG_CAP_NHACC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CUNG_CAP') and o.name = 'FK_CUNG_CAP_CUNG_CAP2_SACH')
alter table CUNG_CAP
   drop constraint FK_CUNG_CAP_CUNG_CAP2_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DANHMUC') and o.name = 'FK_DANHMUC_THUOC_3_SACH')
alter table DANHMUC
   drop constraint FK_DANHMUC_THUOC_3_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HANG') and o.name = 'FK_HANG_CHUA_1_OKE')
alter table HANG
   drop constraint FK_HANG_CHUA_1_OKE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHOA') and o.name = 'FK_KHOA_THUOC_2_LOP')
alter table KHOA
   drop constraint FK_KHOA_THUOC_2_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOAILUUTRU') and o.name = 'FK_LOAILUUT_THUOC_LUU_SACH')
alter table LOAILUUTRU
   drop constraint FK_LOAILUUT_THUOC_LUU_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOAITHE') and o.name = 'FK_LOAITHE_CO_4_THETV')
alter table LOAITHE
   drop constraint FK_LOAITHE_CO_4_THETV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOP') and o.name = 'FK_LOP_THUOC_1_SINHVIEN')
alter table LOP
   drop constraint FK_LOP_THUOC_1_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_LAP_RA_PHIEUMUO')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_LAP_RA_PHIEUMUO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_NHAP_PHIEUNHA')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_NHAP_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_TAO_RA_HOADONCA')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_TAO_RA_HOADONCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_VIET_RA_BIENBANV')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_VIET_RA_BIENBANV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OKE') and o.name = 'FK_OKE_CO_VI_TRI_SACH')
alter table OKE
   drop constraint FK_OKE_CO_VI_TRI_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUMUON') and o.name = 'FK_PHIEUMUO_BAO_GOM_SACH')
alter table PHIEUMUON
   drop constraint FK_PHIEUMUO_BAO_GOM_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SINHVIEN') and o.name = 'FK_SINHVIEN_THUOC_VE_PHIEUMUO')
alter table SINHVIEN
   drop constraint FK_SINHVIEN_THUOC_VE_PHIEUMUO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THELOAI') and o.name = 'FK_THELOAI_THUOC_SACH')
alter table THELOAI
   drop constraint FK_THELOAI_THUOC_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THETV') and o.name = 'FK_THETV__UOC_CAP_SINHVIEN')
alter table THETV
   drop constraint FK_THETV__UOC_CAP_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VIET') and o.name = 'FK_VIET_VIET_TACGIA')
alter table VIET
   drop constraint FK_VIET_VIET_TACGIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VIET') and o.name = 'FK_VIET_VIET2_SACH')
alter table VIET
   drop constraint FK_VIET_VIET2_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('_AM_NHIEM') and o.name = 'FK__AM_NHIE__AM_NHIEM_NHANVIEN')
alter table _AM_NHIEM
   drop constraint FK__AM_NHIE__AM_NHIEM_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('_AM_NHIEM') and o.name = 'FK__AM_NHIE__AM_NHIEM_CHUCVU')
alter table _AM_NHIEM
   drop constraint FK__AM_NHIE__AM_NHIEM_CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BI')
            and   name  = 'BI2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BI.BI2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BI')
            and   name  = 'BI_FK'
            and   indid > 0
            and   indid < 255)
   drop index BI.BI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BI')
            and   type = 'U')
   drop table BI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BIENBANVIPHAM')
            and   type = 'U')
   drop table BIENBANVIPHAM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO')
            and   type = 'U')
   drop table CO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO_1')
            and   name  = 'CO_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO_1.CO_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO_1')
            and   name  = 'CO_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO_1.CO_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO_1')
            and   type = 'U')
   drop table CO_1
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO_NGON_NGU')
            and   name  = 'CO_NGON_NGU2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO_NGON_NGU.CO_NGON_NGU2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO_NGON_NGU')
            and   name  = 'CO_NGON_NGU_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO_NGON_NGU.CO_NGON_NGU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO_NGON_NGU')
            and   type = 'U')
   drop table CO_NGON_NGU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CUNG_CAP')
            and   name  = 'CUNG_CAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CUNG_CAP.CUNG_CAP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CUNG_CAP')
            and   name  = 'CUNG_CAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index CUNG_CAP.CUNG_CAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CUNG_CAP')
            and   type = 'U')
   drop table CUNG_CAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DANHMUC')
            and   name  = 'THUOC_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index DANHMUC.THUOC_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANHMUC')
            and   type = 'U')
   drop table DANHMUC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HANG')
            and   name  = 'CHUA_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index HANG.CHUA_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HANG')
            and   type = 'U')
   drop table HANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADONCAPTHE')
            and   type = 'U')
   drop table HOADONCAPTHE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHOA')
            and   name  = 'THUOC_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHOA.THUOC_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHOA')
            and   type = 'U')
   drop table KHOA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOAILUUTRU')
            and   name  = 'THUOC_LUU_TRU_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOAILUUTRU.THUOC_LUU_TRU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAILUUTRU')
            and   type = 'U')
   drop table LOAILUUTRU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAINGONNGU')
            and   type = 'U')
   drop table LOAINGONNGU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOAITHE')
            and   name  = 'CO_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOAITHE.CO_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAITHE')
            and   type = 'U')
   drop table LOAITHE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOP')
            and   name  = 'THUOC_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOP.THUOC_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP')
            and   type = 'U')
   drop table LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHACC')
            and   type = 'U')
   drop table NHACC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'VIET_RA_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.VIET_RA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'TAO_RA_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.TAO_RA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'LAP_RA_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.LAP_RA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'NHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.NHAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OKE')
            and   name  = 'CO_VI_TRI_FK'
            and   indid > 0
            and   indid < 255)
   drop index OKE.CO_VI_TRI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OKE')
            and   type = 'U')
   drop table OKE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUMUON')
            and   name  = 'BAO_GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUMUON.BAO_GOM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUMUON')
            and   type = 'U')
   drop table PHIEUMUON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAP')
            and   type = 'U')
   drop table PHIEUNHAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SACH')
            and   type = 'U')
   drop table SACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SINHVIEN')
            and   name  = 'THUOC_VE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SINHVIEN.THUOC_VE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SINHVIEN')
            and   type = 'U')
   drop table SINHVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TACGIA')
            and   type = 'U')
   drop table TACGIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THANNHAN')
            and   type = 'U')
   drop table THANNHAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THELOAI')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index THELOAI.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THELOAI')
            and   type = 'U')
   drop table THELOAI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THETV')
            and   name  = '_UOC_CAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index THETV._UOC_CAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THETV')
            and   type = 'U')
   drop table THETV
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VIET')
            and   name  = 'VIET2_FK'
            and   indid > 0
            and   indid < 255)
   drop index VIET.VIET2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VIET')
            and   name  = 'VIET_FK'
            and   indid > 0
            and   indid < 255)
   drop index VIET.VIET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VIET')
            and   type = 'U')
   drop table VIET
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('_AM_NHIEM')
            and   name  = '_AM_NHIEM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index _AM_NHIEM._AM_NHIEM2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('_AM_NHIEM')
            and   name  = '_AM_NHIEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index _AM_NHIEM._AM_NHIEM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('_AM_NHIEM')
            and   type = 'U')
   drop table _AM_NHIEM
go

/*==============================================================*/
/* Table: BI                                                    */
/*==============================================================*/
create table BI (
   MASINHVIEN           char(50)             not null,
   MAVIPHAM             char(50)             not null,
   constraint PK_BI primary key (MASINHVIEN, MAVIPHAM)
)
go

/*==============================================================*/
/* Index: BI_FK                                                 */
/*==============================================================*/
create index BI_FK on BI (
MASINHVIEN ASC
)
go

/*==============================================================*/
/* Index: BI2_FK                                                */
/*==============================================================*/
create index BI2_FK on BI (
MAVIPHAM ASC
)
go

/*==============================================================*/
/* Table: BIENBANVIPHAM                                         */
/*==============================================================*/
create table BIENBANVIPHAM (
   MAVIPHAM             char(50)             not null,
   MOTAVIPHAM           varchar(1500)        null,
   HUONGXULY            varchar(100)         null,
   GHICHU_VP            varchar(1000)        null,
   NGAYTHUCTHI          datetime             null,
   constraint PK_BIENBANVIPHAM primary key nonclustered (MAVIPHAM)
)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   MACHUCVU             char(50)             not null,
   TENCHUCVU            varchar(150)         null,
   constraint PK_CHUCVU primary key nonclustered (MACHUCVU)
)
go

/*==============================================================*/
/* Table: CO                                                    */
/*==============================================================*/
create table CO (
   MANV                 char(50)             not null,
   MATHANNHAN           char(10)             not null,
   constraint PK_CO primary key (MANV, MATHANNHAN)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on CO (
MANV ASC
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on CO (
MATHANNHAN ASC
)
go

/*==============================================================*/
/* Table: CO_1                                                  */
/*==============================================================*/
create table CO_1 (
   MASACH               char(50)             not null,
   MAPHIEUNHAP          char(50)             not null,
   constraint PK_CO_1 primary key (MASACH, MAPHIEUNHAP)
)
go

/*==============================================================*/
/* Index: CO_1_FK                                               */
/*==============================================================*/
create index CO_1_FK on CO_1 (
MASACH ASC
)
go

/*==============================================================*/
/* Index: CO_7_FK                                               */
/*==============================================================*/
create index CO_7_FK on CO_1 (
MAPHIEUNHAP ASC
)
go

/*==============================================================*/
/* Table: CO_NGON_NGU                                           */
/*==============================================================*/
create table CO_NGON_NGU (
   MANGONNGU            char(50)             not null,
   MASACH               char(50)             not null,
   constraint PK_CO_NGON_NGU primary key (MANGONNGU, MASACH)
)
go

/*==============================================================*/
/* Index: CO_NGON_NGU_FK                                        */
/*==============================================================*/
create index CO_NGON_NGU_FK on CO_NGON_NGU (
MANGONNGU ASC
)
go

/*==============================================================*/
/* Index: CO_NGON_NGU2_FK                                       */
/*==============================================================*/
create index CO_NGON_NGU2_FK on CO_NGON_NGU (
MASACH ASC
)
go

/*==============================================================*/
/* Table: CUNG_CAP                                              */
/*==============================================================*/
create table CUNG_CAP (
   MANCC                char(10)             not null,
   MASACH               char(50)             not null,
   constraint PK_CUNG_CAP primary key (MANCC, MASACH)
)
go

/*==============================================================*/
/* Index: CUNG_CAP_FK                                           */
/*==============================================================*/
create index CUNG_CAP_FK on CUNG_CAP (
MANCC ASC
)
go

/*==============================================================*/
/* Index: CUNG_CAP2_FK                                          */
/*==============================================================*/
create index CUNG_CAP2_FK on CUNG_CAP (
MASACH ASC
)
go

/*==============================================================*/
/* Table: DANHMUC                                               */
/*==============================================================*/
create table DANHMUC (
   MADANHMUC            char(50)             not null,
   MASACH               char(50)             not null,
   TENDANHMUC           varchar(200)         null,
   constraint PK_DANHMUC primary key nonclustered (MADANHMUC)
)
go

/*==============================================================*/
/* Index: THUOC_3_FK                                            */
/*==============================================================*/
create index THUOC_3_FK on DANHMUC (
MASACH ASC
)
go

/*==============================================================*/
/* Table: HANG                                                  */
/*==============================================================*/
create table HANG (
   MAHANG               char(50)             not null,
   STT_OKE              char(50)             not null,
   GHICHU_HANG          varchar(500)         null,
   constraint PK_HANG primary key nonclustered (MAHANG)
)
go

/*==============================================================*/
/* Index: CHUA_1_FK                                             */
/*==============================================================*/
create index CHUA_1_FK on HANG (
STT_OKE ASC
)
go

/*==============================================================*/
/* Table: HOADONCAPTHE                                          */
/*==============================================================*/
create table HOADONCAPTHE (
   MAHOADON             char(50)             not null,
   NGAYLAPHD            datetime             null,
   SOTIEN               decimal              null,
   GHICHU_HD            varchar(500)         null,
   NGAYDUKIENCOTHE      datetime             null,
   constraint PK_HOADONCAPTHE primary key nonclustered (MAHOADON)
)
go

/*==============================================================*/
/* Table: KHOA                                                  */
/*==============================================================*/
create table KHOA (
   MAKHOA               char(50)             not null,
   MALOP                varchar(50)          not null,
   TENKHOA              varchar(100)         null,
   constraint PK_KHOA primary key nonclustered (MAKHOA)
)
go

/*==============================================================*/
/* Index: THUOC_2_FK                                            */
/*==============================================================*/
create index THUOC_2_FK on KHOA (
MALOP ASC
)
go

/*==============================================================*/
/* Table: LOAILUUTRU                                            */
/*==============================================================*/
create table LOAILUUTRU (
   MASACH               char(50)             not null,
   TENLOAILUUTRU        varchar(100)         null
)
go

/*==============================================================*/
/* Index: THUOC_LUU_TRU_FK                                      */
/*==============================================================*/
create index THUOC_LUU_TRU_FK on LOAILUUTRU (
MASACH ASC
)
go

/*==============================================================*/
/* Table: LOAINGONNGU                                           */
/*==============================================================*/
create table LOAINGONNGU (
   MANGONNGU            char(50)             not null,
   TENNGONNGU           varchar(100)         null,
   TENNUOC              varchar(100)         null,
   constraint PK_LOAINGONNGU primary key nonclustered (MANGONNGU)
)
go

/*==============================================================*/
/* Table: LOAITHE                                               */
/*==============================================================*/
create table LOAITHE (
   MALOAITHE            char(50)             not null,
   MATHE                char(50)             not null,
   TENLOAITHE           varchar(50)          null,
   SOSACHQUIDINH        int                  null,
   constraint PK_LOAITHE primary key nonclustered (MALOAITHE)
)
go

/*==============================================================*/
/* Index: CO_6_FK                                               */
/*==============================================================*/
create index CO_6_FK on LOAITHE (
MATHE ASC
)
go

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create table LOP (
   MALOP                varchar(50)          not null,
   MASINHVIEN           char(50)             not null,
   TENLOP               varchar(50)          null,
   constraint PK_LOP primary key nonclustered (MALOP)
)
go

/*==============================================================*/
/* Index: THUOC_1_FK                                            */
/*==============================================================*/
create index THUOC_1_FK on LOP (
MASINHVIEN ASC
)
go

/*==============================================================*/
/* Table: NHACC                                                 */
/*==============================================================*/
create table NHACC (
   MANCC                char(10)             not null,
   TENNCC               char(10)             null,
   DC_NCC               char(10)             null,
   DT_NCC               char(10)             null,
   constraint PK_NHACC primary key nonclustered (MANCC)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 char(50)             not null,
   MAPHIEUMUON          char(50)             not null,
   MAVIPHAM             char(50)             not null,
   MAHOADON             char(50)             not null,
   MAPHIEUNHAP          char(50)             not null,
   TENNV                varchar(150)         null,
   GIOITINH             varchar(10)          null,
   NGAYSINH             datetime             null,
   SOCMND               char(15)             null,
   DIACHITHUONGTRU      varchar(250)         null,
   SODT                 char(15)             null,
   HINNV                varchar(500)         null,
   EMAIL                varchar(150)         null,
   GHICHU_NV            varchar(500)         null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Index: NHAP_FK                                               */
/*==============================================================*/
create index NHAP_FK on NHANVIEN (
MAPHIEUNHAP ASC
)
go

/*==============================================================*/
/* Index: LAP_RA_FK                                             */
/*==============================================================*/
create index LAP_RA_FK on NHANVIEN (
MAPHIEUMUON ASC
)
go

/*==============================================================*/
/* Index: TAO_RA_FK                                             */
/*==============================================================*/
create index TAO_RA_FK on NHANVIEN (
MAHOADON ASC
)
go

/*==============================================================*/
/* Index: VIET_RA_FK                                            */
/*==============================================================*/
create index VIET_RA_FK on NHANVIEN (
MAVIPHAM ASC
)
go

/*==============================================================*/
/* Table: OKE                                                   */
/*==============================================================*/
create table OKE (
   STT_OKE              char(50)             not null,
   MASACH               char(50)             not null,
   MOTA_OKE             varchar(300)         null,
   constraint PK_OKE primary key nonclustered (STT_OKE)
)
go

/*==============================================================*/
/* Index: CO_VI_TRI_FK                                          */
/*==============================================================*/
create index CO_VI_TRI_FK on OKE (
MASACH ASC
)
go

/*==============================================================*/
/* Table: PHIEUMUON                                             */
/*==============================================================*/
create table PHIEUMUON (
   MAPHIEUMUON          char(50)             not null,
   MASACH               char(50)             not null,
   SOLUONGSACH          int                  null,
   NGAYMUON             datetime             null,
   NGAYDUKIENTRA        datetime             null,
   LOAIDOC              varchar(50)          null,
   constraint PK_PHIEUMUON primary key nonclustered (MAPHIEUMUON)
)
go

/*==============================================================*/
/* Index: BAO_GOM_FK                                            */
/*==============================================================*/
create index BAO_GOM_FK on PHIEUMUON (
MASACH ASC
)
go

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create table PHIEUNHAP (
   MAPHIEUNHAP          char(50)             not null,
   NGAYNHAP             datetime             null,
   constraint PK_PHIEUNHAP primary key nonclustered (MAPHIEUNHAP)
)
go

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create table SACH (
   MASACH               char(50)             not null,
   TENSACH              varchar(250)         null,
   NAMXB                int                  null,
   HINHANHSACH          varchar(500)         null,
   SOTRANG              int                  null,
   GIABIA               decimal              null,
   GIATHUCTE            decimal              null,
   TRONGLUONG           decimal              null,
   MAVACH               varchar(500)         null,
   MOTA                 varchar(1500)        null,
   PHIENBAN             int                  null,
   GHICHU_HANG          varchar(500)         null,
   constraint PK_SACH primary key nonclustered (MASACH)
)
go

/*==============================================================*/
/* Table: SINHVIEN                                              */
/*==============================================================*/
create table SINHVIEN (
   MASINHVIEN           char(50)             not null,
   MAPHIEUMUON          char(50)             not null,
   TENSINHVIEN          varchar(200)         null,
   NGAYSINH_SV          datetime             null,
   SOCMND_SV            char(20)             null,
   EMAIL_SV             varchar(200)         null,
   DIACHI_SV            varchar(500)         null,
   SDT_SV               char(20)             null,
   TRINHDO              varchar(50)          null,
   GHICHU_SV            varchar(500)         null,
   NAMVAOTRUONG         int                  null,
   constraint PK_SINHVIEN primary key nonclustered (MASINHVIEN)
)
go

/*==============================================================*/
/* Index: THUOC_VE_FK                                           */
/*==============================================================*/
create index THUOC_VE_FK on SINHVIEN (
MAPHIEUMUON ASC
)
go

/*==============================================================*/
/* Table: TACGIA                                                */
/*==============================================================*/
create table TACGIA (
   MATACGIA             char(10)             not null,
   TENTACGIA            char(10)             null,
   DTTACGIA             char(10)             null,
   DCTACGIA             char(10)             null,
   constraint PK_TACGIA primary key nonclustered (MATACGIA)
)
go

/*==============================================================*/
/* Table: THANNHAN                                              */
/*==============================================================*/
create table THANNHAN (
   MATHANNHAN           char(10)             not null,
   TENTHANNHAN          char(10)             null,
   DC_THANNHAN          char(10)             null,
   SDT_THANNHAN         char(10)             null,
   constraint PK_THANNHAN primary key nonclustered (MATHANNHAN)
)
go

/*==============================================================*/
/* Table: THELOAI                                               */
/*==============================================================*/
create table THELOAI (
   MATHELOAI            char(50)             not null,
   MASACH               char(50)             not null,
   TENTHELOAI           varchar(150)         null,
   MOTATHELOAI          varchar(200)         null,
   constraint PK_THELOAI primary key nonclustered (MATHELOAI)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on THELOAI (
MASACH ASC
)
go

/*==============================================================*/
/* Table: THETV                                                 */
/*==============================================================*/
create table THETV (
   MATHE                char(50)             not null,
   MASINHVIEN           char(50)             not null,
   NGAYCAP              datetime             null,
   NGAYDUKIENHETHAN     datetime             null,
   constraint PK_THETV primary key nonclustered (MATHE)
)
go

/*==============================================================*/
/* Index: _UOC_CAP_FK                                           */
/*==============================================================*/
create index _UOC_CAP_FK on THETV (
MASINHVIEN ASC
)
go

/*==============================================================*/
/* Table: VIET                                                  */
/*==============================================================*/
create table VIET (
   MATACGIA             char(10)             not null,
   MASACH               char(50)             not null,
   constraint PK_VIET primary key (MATACGIA, MASACH)
)
go

/*==============================================================*/
/* Index: VIET_FK                                               */
/*==============================================================*/
create index VIET_FK on VIET (
MATACGIA ASC
)
go

/*==============================================================*/
/* Index: VIET2_FK                                              */
/*==============================================================*/
create index VIET2_FK on VIET (
MASACH ASC
)
go

/*==============================================================*/
/* Table: _AM_NHIEM                                             */
/*==============================================================*/
create table _AM_NHIEM (
   MANV                 char(50)             not null,
   MACHUCVU             char(50)             not null,
   constraint PK__AM_NHIEM primary key (MANV, MACHUCVU)
)
go

/*==============================================================*/
/* Index: _AM_NHIEM_FK                                          */
/*==============================================================*/
create index _AM_NHIEM_FK on _AM_NHIEM (
MANV ASC
)
go

/*==============================================================*/
/* Index: _AM_NHIEM2_FK                                         */
/*==============================================================*/
create index _AM_NHIEM2_FK on _AM_NHIEM (
MACHUCVU ASC
)
go

alter table BI
   add constraint FK_BI_BI_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
go

alter table BI
   add constraint FK_BI_BI2_BIENBANV foreign key (MAVIPHAM)
      references BIENBANVIPHAM (MAVIPHAM)
go

alter table CO
   add constraint FK_CO_CO_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table CO
   add constraint FK_CO_CO2_THANNHAN foreign key (MATHANNHAN)
      references THANNHAN (MATHANNHAN)
go

alter table CO_1
   add constraint FK_CO_1_CO_1_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table CO_1
   add constraint FK_CO_1_CO_2_PHIEUNHA foreign key (MAPHIEUNHAP)
      references PHIEUNHAP (MAPHIEUNHAP)
go

alter table CO_NGON_NGU
   add constraint FK_CO_NGON__CO_NGON_N_LOAINGON foreign key (MANGONNGU)
      references LOAINGONNGU (MANGONNGU)
go

alter table CO_NGON_NGU
   add constraint FK_CO_NGON__CO_NGON_N_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table CUNG_CAP
   add constraint FK_CUNG_CAP_CUNG_CAP_NHACC foreign key (MANCC)
      references NHACC (MANCC)
go

alter table CUNG_CAP
   add constraint FK_CUNG_CAP_CUNG_CAP2_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table DANHMUC
   add constraint FK_DANHMUC_THUOC_3_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table HANG
   add constraint FK_HANG_CHUA_1_OKE foreign key (STT_OKE)
      references OKE (STT_OKE)
go

alter table KHOA
   add constraint FK_KHOA_THUOC_2_LOP foreign key (MALOP)
      references LOP (MALOP)
go

alter table LOAILUUTRU
   add constraint FK_LOAILUUT_THUOC_LUU_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table LOAITHE
   add constraint FK_LOAITHE_CO_4_THETV foreign key (MATHE)
      references THETV (MATHE)
go

alter table LOP
   add constraint FK_LOP_THUOC_1_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_LAP_RA_PHIEUMUO foreign key (MAPHIEUMUON)
      references PHIEUMUON (MAPHIEUMUON)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_NHAP_PHIEUNHA foreign key (MAPHIEUNHAP)
      references PHIEUNHAP (MAPHIEUNHAP)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_TAO_RA_HOADONCA foreign key (MAHOADON)
      references HOADONCAPTHE (MAHOADON)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_VIET_RA_BIENBANV foreign key (MAVIPHAM)
      references BIENBANVIPHAM (MAVIPHAM)
go

alter table OKE
   add constraint FK_OKE_CO_VI_TRI_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table PHIEUMUON
   add constraint FK_PHIEUMUO_BAO_GOM_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table SINHVIEN
   add constraint FK_SINHVIEN_THUOC_VE_PHIEUMUO foreign key (MAPHIEUMUON)
      references PHIEUMUON (MAPHIEUMUON)
go

alter table THELOAI
   add constraint FK_THELOAI_THUOC_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table THETV
   add constraint FK_THETV__UOC_CAP_SINHVIEN foreign key (MASINHVIEN)
      references SINHVIEN (MASINHVIEN)
go

alter table VIET
   add constraint FK_VIET_VIET_TACGIA foreign key (MATACGIA)
      references TACGIA (MATACGIA)
go

alter table VIET
   add constraint FK_VIET_VIET2_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table _AM_NHIEM
   add constraint FK__AM_NHIE__AM_NHIEM_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table _AM_NHIEM
   add constraint FK__AM_NHIE__AM_NHIEM_CHUCVU foreign key (MACHUCVU)
      references CHUCVU (MACHUCVU)
go

