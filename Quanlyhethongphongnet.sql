CREATE DATABASE QUANLYQUANNET1;
GO
USE QUANLYQUANNET1;
GO

CREATE TABLE NHANVIEN
(TEN NVARCHAR(10) NOT NULL,
 MANV NVARCHAR(10) NOT NULL,
 NGAYSINH DATETIME NOT NULL,
 QUEQUAN NVARCHAR(255),
 DIACHI NVARCHAR(255),
 DIENTHOAI NVARCHAR(10),
 CONSTRAINT PK_NHANVIEN PRIMARY KEY(MANV),
 )
 CREATE TABLE KHACHHANG
 (MAKH NVARCHAR(10) NOT NULL,
  TENKH NVARCHAR(10) NOT NULL,
  HODEM NVARCHAR(255),
  SODT NVARCHAR(10),
  DIACHI NVARCHAR(255),
  CCCD NVARCHAR(12),
  NGAYSINH DATETIME,
  CONSTRAINT PK_KHACHHANG PRIMARY KEY(MAKH),
  )
  CREATE TABLE PHONGNET
   (MAPHONGNET NVARCHAR(10) NOT NULL,
    MASOTHUE NVARCHAR(10),
	DIACHI NVARCHAR(255),
	SODT NVARCHAR(10),
	NGAYGHOATDONG DATETIME,
	CONSTRAINT PK_PHONGNET PRIMARY KEY(MAPHONGNET),
	)
  CREATE TABLE MAY
  (MAMAY NVARCHAR(10) NOT NULL,
   SODK NVARCHAR(10) NOT NULL,
   CAUHINH BIT,
   VITRI NVARCHAR(10),
   LOAIMAY NVARCHAR(10),
   HANG NVARCHAR(10),
   MAPHONGNET NVARCHAR(10),
   CONSTRAINT PK_MAY PRIMARY KEY(MAMAY),
   CONSTRAINT FK_MAY_MAPHONGNET FOREIGN KEY(MAPHONGNET)
   REFERENCES PHONGNET(MAPHONGNET),
   )
   CREATE TABLE HOADON
   (MAHOADON NVARCHAR(10) NOT NULL,
    MAKH NVARCHAR(10),
	NGAYXUATHOADON DATETIME NOT NULL,
	THANHTIEN MONEY NOT NULL,
	MANV NVARCHAR(10),
	MAMAY NVARCHAR(10),
	LOAIDV NVARCHAR(10) NOT NULL,
	MAPHONGNET NVARCHAR(10),
	CONSTRAINT PK_HOADON PRIMARY KEY(MAHOADON),
	CONSTRAINT FK_HOADON_MAKH FOREIGN KEY(MAKH)
	REFERENCES dbo.KHACHHANG(MAKH),
	CONSTRAINT FK_HOADON_MANV FOREIGN KEY(MANV)
	REFERENCES dbo.NHANVIEN(MANV)
	)
	CREATE TABLE DICHVU
	(LOAIDV NVARCHAR(10) NOT NULL,
	 MADV NVARCHAR(10) NOT NULL,
	 MANV NVARCHAR(10) NOT NULL,
	 THANHTIEN MONEY,
	 CONSTRAINT PK_DICHVU PRIMARY KEY(MADV),
	 )
	 
	 ALTER TABLE dbo.HOADON
	 ADD MAPHONGNET NVARCHAR(10);
	 
	 ALTER TABLE dbo.HOADON
	 ADD CONSTRAINT FK_HOADON_MAPHONGNET FOREIGN KEY(MAPHONGNET)
	 REFERENCES dbo.PHONGNET(MAPHONGNET);
	 ALTER TABLE dbo.HOADON
	 ADD MADV NVARCHAR(10);

	 ALTER TABLE dbo.DICHVU
	 ADD CONSTRAINT FK_DICHVU_MANV FOREIGN KEY(MANV)
	 REFERENCES dbo.NHANVIEN(MANV);

	 INSERT INTO dbo.KHACHHANG
	 (
	     MAKH,
	     TENKH,
	     HODEM,
	     SODT,
	     DIACHI,
	     CCCD,
	     NGAYSINH
	 )
	 VALUES
	 (   N'QUAND3',      -- MAKH - nvarchar(10)
	     N'QUAN',      -- TENKH - nvarchar(10)
	     N'NGUYENTRIEU',      -- HODEM - nvarchar(255)
	     N'1900',      -- SODT - nvarchar(10)
	     N'HAIPHONG',      -- DIACHI - nvarchar(255)
	     N'201404068',      -- CCCD - nvarchar(12)
	     GETDATE() -- NGAYSINH - datetime
	     )
	 INSERT INTO dbo.KHACHHANG
	 (
	     MAKH,
	     TENKH,
	     HODEM,
	     SODT,
	     DIACHI,
	     CCCD,
	     NGAYSINH
	 )
	 VALUES
	 (   N'THONG3',      -- MAKH - nvarchar(10)
	     N'THONG',      -- TENKH - nvarchar(10)
	     N'VOQUANG',      -- HODEM - nvarchar(255)
	     N'1900556',      -- SODT - nvarchar(10)
	     N'HATINH',      -- DIACHI - nvarchar(255)
	     N'913818391',      -- CCCD - nvarchar(12)
	     GETDATE() -- NGAYSINH - datetime
	     )
		 INSERT INTO dbo.KHACHHANG
		 (
		     MAKH,
		     TENKH,
		     HODEM,
		     SODT,
		     DIACHI,
		     CCCD,
		     NGAYSINH
		 )
		 VALUES
		 (   N'MANH12323',      -- MAKH - nvarchar(10)
		     N'MANH',      -- TENKH - nvarchar(10)
		     N'VUDUC',      -- HODEM - nvarchar(255)
		     N'4032940',      -- SODT - nvarchar(10)
		     N'THAIBINH',      -- DIACHI - nvarchar(255)
		     N'8773223',      -- CCCD - nvarchar(12)
		     GETDATE() -- NGAYSINH - datetime
		     )
			 INSERT INTO dbo.KHACHHANG
			 (
			     MAKH,
			     TENKH,
			     HODEM,
			     SODT,
			     DIACHI,
			     CCCD,
			     NGAYSINH
			 )
			 VALUES
			 (   N'LONG999',      -- MAKH - nvarchar(10)
			     N'LONG',      -- TENKH - nvarchar(10)
			     N'DOANDUC',      -- HODEM - nvarchar(255)
			     N'9696969',      -- SODT - nvarchar(10)
			     N'THANHHOA',      -- DIACHI - nvarchar(255)
			     N'87878787',      -- CCCD - nvarchar(12)
			     GETDATE() -- NGAYSINH - datetime
			     )
				 INSERT INTO dbo.KHACHHANG
				 (
				     MAKH,
				     TENKH,
				     HODEM,
				     SODT,
				     DIACHI,
				     CCCD,
				     NGAYSINH
				 )
				 VALUES
				 (   N'HUYNH222',      -- MAKH - nvarchar(10)
				     N'HUYNH',      -- TENKH - nvarchar(10)
				     N'HOANGNHAM',      -- HODEM - nvarchar(255)
				     N'878787879',      -- SODT - nvarchar(10)
				     N'HUNGYEN',      -- DIACHI - nvarchar(255)
				     N'08080808',      -- CCCD - nvarchar(12)
				     GETDATE() -- NGAYSINH - datetime
				     )
INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'QUAN',       -- TEN - nvarchar(10)
    N'A1',       -- MANV - nvarchar(10)
    GETDATE(), -- NGAYSINH - datetime
    N'HAIPHONG',       -- QUEQUAN - nvarchar(255)
    N'HAIAN',       -- DIACHI - nvarchar(255)
    N'1900'        -- DIENTHOAI - nvarchar(10)
    )
	INSERT INTO dbo.NHANVIEN
	(
	    TEN,
	    MANV,
	    NGAYSINH,
	    QUEQUAN,
	    DIACHI,
	    DIENTHOAI
	)
	VALUES
	(   N'THONG',       -- TEN - nvarchar(10)
	    N'THONG1',       -- MANV - nvarchar(10)
	    GETDATE(), -- NGAYSINH - datetime
	    N'THANHHOA',       -- QUEQUAN - nvarchar(255)
	    N'HANOI',       -- DIACHI - nvarchar(255)
	    N'19001'        -- DIENTHOAI - nvarchar(10)
	    )
INSERT INTO dbo.DICHVU
(
    LOAIDV,
    MADV,
    MANV,
    THANHTIEN
)
VALUES
(   N'ANUONG1', -- LOAIDV - nvarchar(10)
    N'AU1', -- MADV - nvarchar(10)
    N'THONG1', -- MANV - nvarchar(10)
    N'12000' -- THANHTIEN - money
    )
	INSERT INTO dbo.PHONGNET
	(
	    MAPHONGNET,
	    MASOTHUE,
	    DIACHI,
	    SODT,
	    NGAYGHOATDONG
	)
	VALUES
	(   N'A01',      -- MAPHONGNET - nvarchar(10)
	    N'18181',      -- MASOTHUE - nvarchar(10)
	    N'HANOI',      -- DIACHI - nvarchar(255)
	    N'5555',      -- SODT - nvarchar(10)
	    GETDATE() -- NGAYGHOATDONG - datetime
	    )
		INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'1',  -- MAMAY - nvarchar(10)
		    N'11',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'123',  -- VITRI - nvarchar(10)
		    N'GAMING',  -- LOAIMAY - nvarchar(10)
		    N'APPLE',  -- HANG - nvarchar(10)
		    N'A01'   -- MAPHONGNET - nvarchar(10)
		    )
			INSERT INTO dbo.PHONGNET
			(
			    MAPHONGNET,
			    MASOTHUE,
			    DIACHI,
			    SODT,
			    NGAYGHOATDONG
			)
			VALUES
			(   N'A02',      -- MAPHONGNET - nvarchar(10)
			    N'15151',      -- MASOTHUE - nvarchar(10)
			    N'HANOI',      -- DIACHI - nvarchar(255)
			    N'151513',      -- SODT - nvarchar(10)
			    GETDATE() -- NGAYGHOATDONG - datetime
			    )
			INSERT INTO dbo.HOADON
			(
			    MAHOADON,
			    MAKH,
			    NGAYXUATHOADON,
			    THANHTIEN,
			    MANV,
			    MAMAY,
			    LOAIDV,
			    MAPHONGNET,
			    MADV
			)
			VALUES
			(   N'12102022',       -- MAHOADON - nvarchar(10)
			    N'THONG3',       -- MAKH - nvarchar(10)
			    GETDATE(), -- NGAYXUATHOADON - datetime
			    N'12000',      -- THANHTIEN - money
			    N'THONG1',       -- MANV - nvarchar(10)
			    N'1',       -- MAMAY - nvarchar(10)
			    N'ANUONG1',       -- LOAIDV - nvarchar(10)
			    N'A02',       -- MAPHONGNET - nvarchar(10)
			    N'AU1'        -- MADV - nvarchar(10)
			    )
				INSERT INTO dbo.HOADON
				(
				    MAHOADON,
				    MAKH,
				    NGAYXUATHOADON,
				    THANHTIEN,
				    MANV,
				    MAMAY,
				    LOAIDV,
				    MAPHONGNET,
				    MADV
				)
				VALUES
				(   N'12112021',       -- MAHOADON - nvarchar(10)
				    N'QUANDZ123',       -- MAKH - nvarchar(10)
				    GETDATE(), -- NGAYXUATHOADON - datetime
				    N'100000',      -- THANHTIEN - money
				    N'A1',       -- MANV - nvarchar(10)
				    N'1',       -- MAMAY - nvarchar(10)
				    N'ANUONG1',       -- LOAIDV - nvarchar(10)
				    N'A02',       -- MAPHONGNET - nvarchar(10)
				    N'AU1'        -- MADV - nvarchar(10)
				    )
INSERT INTO dbo.HOADON
				(
				    MAHOADON,
				    MAKH,
				    NGAYXUATHOADON,
				    THANHTIEN,
				    MANV,
				    MAMAY,
				    LOAIDV,
				    MAPHONGNET,
				    MADV
				)
				VALUES
				(   N'12112023',       -- MAHOADON - nvarchar(10)
				    N'LONG999',       -- MAKH - nvarchar(10)
				    GETDATE(), -- NGAYXUATHOADON - datetime
				    N'200000',      -- THANHTIEN - money
				    N'THONG1',       -- MANV - nvarchar(10)
				    N'1',       -- MAMAY - nvarchar(10)
				    N'ANUONG1',       -- LOAIDV - nvarchar(10)
				    N'A02',       -- MAPHONGNET - nvarchar(10)
				    N'AU1'        -- MADV - nvarchar(10)
				    )
INSERT INTO dbo.HOADON
				(
				    MAHOADON,
				    MAKH,
				    NGAYXUATHOADON,
				    THANHTIEN,
				    MANV,
				    MAMAY,
				    LOAIDV,
				    MAPHONGNET,
				    MADV
				)
				VALUES
				(   N'13112091',       -- MAHOADON - nvarchar(10)
				    N'MANH12323',       -- MAKH - nvarchar(10)
				    GETDATE(), -- NGAYXUATHOADON - datetime
				    N'50000',      -- THANHTIEN - money
				    N'THONG1',       -- MANV - nvarchar(10)
				    N'1',       -- MAMAY - nvarchar(10)
				    N'MATXA',       -- LOAIDV - nvarchar(10)
				    N'A02',       -- MAPHONGNET - nvarchar(10)
				    N'MX1'        -- MADV - nvarchar(10)
				    )
					INSERT INTO dbo.DICHVU
					(
					    LOAIDV,
					    MADV,
					    MANV,
					    THANHTIEN
					)
					VALUES
					(   N'MATXA', -- LOAIDV - nvarchar(10)
					    N'MX1', -- MADV - nvarchar(10)
					    N'THONG1', -- MANV - nvarchar(10)
					    NULL -- THANHTIEN - money
					    )
		INSERT INTO dbo.HOADON
				(
				    MAHOADON,
				    MAKH,
				    NGAYXUATHOADON,
				    THANHTIEN,
				    MANV,
				    MAMAY,
				    LOAIDV,
				    MAPHONGNET,
				    MADV
				)
				VALUES
				(   N'12112065',       -- MAHOADON - nvarchar(10)
				    N'HUYNH222',       -- MAKH - nvarchar(10)
				    GETDATE(), -- NGAYXUATHOADON - datetime
				    N'1000000',      -- THANHTIEN - money
				    N'A1',       -- MANV - nvarchar(10)
				    N'1',       -- MAMAY - nvarchar(10)
				    N'MATXA',       -- LOAIDV - nvarchar(10)
				    N'A02',       -- MAPHONGNET - nvarchar(10)
				    N'MX1'        -- MADV - nvarchar(10)
				    )

INSERT INTO dbo.DICHVU
					(
					    LOAIDV,
					    MADV,
					    MANV,
					    THANHTIEN
					)
					VALUES
					(   N'NAPTHE50K', -- LOAIDV - nvarchar(10)
					    N'NT50', -- MADV - nvarchar(10)
					    N'THONG1', -- MANV - nvarchar(10)
					    N'50000' -- THANHTIEN - money
					    )
INSERT INTO dbo.DICHVU
					(
					    LOAIDV,
					    MADV,
					    MANV,
					    THANHTIEN
					)
					VALUES
					(   N'NAPTHE100', -- LOAIDV - nvarchar(10)
					    N'NT100', -- MADV - nvarchar(10)
					    N'THONG1', -- MANV - nvarchar(10)
					    N'100000'-- THANHTIEN - money
					    )




INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'HUYNHBAKA',       -- TEN - nvarchar(10)
    N'201403977',       -- MANV - nvarchar(10)
    '2002-06-01', -- NGAYSINH - datetime
    N'HUNGYEN',       -- QUEQUAN - nvarchar(255)
    N'TIEN LU',       -- DIACHI - nvarchar(255)
    N'0343732329'        -- DIENTHOAI - nvarchar(10)
    )
INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'LONG KE',       -- TEN - nvarchar(10)
    N'201404005',       -- MANV - nvarchar(10)
    '2002-08-19', -- NGAYSINH - datetime
    N'THANH HOA',       -- QUEQUAN - nvarchar(255)
    N'YEN DINH',       -- DIACHI - nvarchar(255)
    N'0395001923'        -- DIENTHOAI - nvarchar(10)
    )
	INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'LONG DA',       -- TEN - nvarchar(10)
    N'2014040051',       -- MANV - nvarchar(10)
    '2002-08-19', -- NGAYSINH - datetime
    N'THANHHOA',       -- QUEQUAN - nvarchar(255)
    N'YEN DINH',       -- DIACHI - nvarchar(255)
    N'0395001921'        -- DIENTHOAI - nvarchar(10)
    )

INSERT INTO dbo.HOADON
				(
				    MAHOADON,
				    MAKH,
				    NGAYXUATHOADON,
				    THANHTIEN,
				    MANV,
				    MAMAY,
				    LOAIDV,
				    MAPHONGNET,
				    MADV
				)
				VALUES
				(   N'12112066',       -- MAHOADON - nvarchar(10)
				    N'HUYNH222',       -- MAKH - nvarchar(10)
				    GETDATE(), -- NGAYXUATHOADON - datetime
				    N'1000000',      -- THANHTIEN - money
				    N'A1',       -- MANV - nvarchar(10)
				    N'1',       -- MAMAY - nvarchar(10)
				    N'NAPTHE100',       -- LOAIDV - nvarchar(10)
				    N'A02',       -- MAPHONGNET - nvarchar(10)
				    N'NT100'        -- MADV - nvarchar(10)
				    )

					INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'2',  -- MAMAY - nvarchar(10)
		    N'111',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'122',  -- VITRI - nvarchar(10)
		    N'GAMING',  -- LOAIMAY - nvarchar(10)
		    N'APPLE',  -- HANG - nvarchar(10)
		    N'A02'   -- MAPHONGNET - nvarchar(10)
		    )
			INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'3',  -- MAMAY - nvarchar(10)
		    N'112',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'122',  -- VITRI - nvarchar(10)
		    N'GAMING',  -- LOAIMAY - nvarchar(10)
		    N'HENTAI',  -- HANG - nvarchar(10)
		    N'A01'   -- MAPHONGNET - nvarchar(10)
		    )

INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'5',  -- MAMAY - nvarchar(10)
		    N'101',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'127',  -- VITRI - nvarchar(10)
		    N'GAMING',  -- LOAIMAY - nvarchar(10)
		    N'SOLY',  -- HANG - nvarchar(10)
		    N'A01'   -- MAPHONGNET - nvarchar(10)
		    )
	INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'8',  -- MAMAY - nvarchar(10)
		    N'131',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'131',  -- VITRI - nvarchar(10)
		    N'VANPHONG',  -- LOAIMAY - nvarchar(10)
		    N'CHILLING',  -- HANG - nvarchar(10)
		    N'A01'   -- MAPHONGNET - nvarchar(10)
		    )
INSERT INTO dbo.MAY
		(
		    MAMAY,
		    SODK,
		    CAUHINH,
		    VITRI,
		    LOAIMAY,
		    HANG,
		    MAPHONGNET
		)
		VALUES
		(   N'7',  -- MAMAY - nvarchar(10)
		    N'101',  -- SODK - nvarchar(10)
		    NULL, -- CAUHINH - bit
		    N'130',  -- VITRI - nvarchar(10)
		    N'GAMING',  -- LOAIMAY - nvarchar(10)
		    N'BING',  -- HANG - nvarchar(10)
		    N'A02'   -- MAPHONGNET - nvarchar(10)
		    )
INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'NAM',       -- TEN - nvarchar(10)
    N'666',       -- MANV - nvarchar(10)
    '2002-09-11', -- NGAYSINH - datetime
    N'HANOI',       -- QUEQUAN - nvarchar(255)
    N'NGHIA TRANG VAN DIEN',       -- DIACHI - nvarchar(255)
    N'18001008'        -- DIENTHOAI - nvarchar(10)
    )

	INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'NAM',       -- TEN - nvarchar(10)
    N'999',       -- MANV - nvarchar(10)
    '2002-09-11', -- NGAYSINH - datetime
    N'HANOI',       -- QUEQUAN - nvarchar(255)
    N'NGHIA TRANG MAI DICH',       -- DIACHI - nvarchar(255)
    N'80011008'        -- DIENTHOAI - nvarchar(10)
    )
	

	INSERT INTO dbo.NHANVIEN
(
    TEN,
    MANV,
    NGAYSINH,
    QUEQUAN,
    DIACHI,
    DIENTHOAI
)
VALUES
(   N'MANH',       -- TEN - nvarchar(10)
    N'MANH1',       -- MANV - nvarchar(10)
    '2002-1-1', -- NGAYSINH - datetime
    N'THAIBINH',       -- QUEQUAN - nvarchar(255)
    N'DOBIETDAY',       -- DIACHI - nvarchar(255)
    N'1900 KKK'        -- DIENTHOAI - nvarchar(10)
    )


--cau1
SELECT HOADON.MADV,KHACHHANG.TENKH
FROM HOADON
INNER JOIN KHACHHANG ON HOADON.MAKH = KHACHHANG.MAKH;


--cau2				
INSERT INTO dbo.DICHVU
					(
					    LOAIDV,
					    MADV,
					    MANV,
					    THANHTIEN
					)
					VALUES
					(   N'UUDAI', -- LOAIDV - nvarchar(10)
					    N'COMBO1', -- MADV - nvarchar(10)
					    N'A1', -- MANV - nvarchar(10)
					    N'200000'-- THANHTIEN - money
					    )


--cau3
SELECT NHANVIEN.TEN,NHANVIEN.QUEQUAN
FROM NHANVIEN
WHERE NHANVIEN.QUEQUAN='THANHHOA'


--cau4
SELECT KHACHHANG.TENKH,HOADON.MAHOADON,HOADON.THANHTIEN
FROM HOADON
INNER JOIN KHACHHANG ON HOADON.MAKH = KHACHHANG.MAKH
WHERE HOADON.THANHTIEN>'200000'



--cau5
SELECT *
FROM HOADON
WHERE HOADON.MAKH='HUYNH222'



--cau6
SELECT *
FROM MAY
WHERE MAY.HANG='APPLE'		


--CAU7
select HOADON.MAKH AS MAKHACHHANG , SUM (THANHTIEN) AS TỔNG 
FROM HOADON 
GROUP BY MAKH 
ORDER BY SUM (THANHTIEN)

--CAU8
SELECT KHACHHANG.MAKH,KHACHHANG.TENKH , HOADON.NGAYXUATHOADON , MAY. HANG , HOADON.THANHTIEN  AS DATHANHTOAN 
FROM (KHACHHANG INNER JOIN HOADON ON KHACHHANG.MAKH=HOADON.MAKH )
JOIN MAY ON HOADON.MAMAY=MAY.MAMAY 
WHERE KHACHHANG.MAKH= 'LONG999' AND HOADON.NGAYXUATHOADON = '2022-11-08'

--CAU9
SELECT DICHVU.LOAIDV , DICHVU.THANHTIEN 
FROM DICHVU
ORDER BY DICHVU.THANHTIEN

--CAU10
SELECT HOADON.MAHOADON , NHANVIEN.TEN AS TENNHANVIEN  , HOADON.THANHTIEN ,  HOADON.NGAYXUATHOADON 
FROM NHANVIEN  INNER JOIN HOADON ON NHANVIEN.MANV=HOADON.MANV 
WHERE HOADON.MAHOADON ='12112065'

--CAU11
SELECT KHACHHANG.TENKH, SUM (HOADON.THANHTIEN) AS TỔNG  
FROM KHACHHANG INNER JOIN HOADON ON KHACHHANG.MAKH=HOADON.MAKH 
GROUP BY KHACHHANG.TENKH 
HAVING  SUM (HOADON.THANHTIEN)>'60000'

--CAU12
SELECT HOADON.MAHOADON,NHANVIEN.TEN AS TENNHANVIEN ,HOADON.THANHTIEN
FROM NHANVIEN INNER JOIN HOADON ON NHANVIEN.MANV=HOADON.MANV 
WHERE HOADON.THANHTIEN > (SELECT HOADON.THANHTIEN
                          FROM HOADON
						  WHERE HOADON.MAHOADON = '13112091' )
ORDER BY HOADON.THANHTIEN


--CAU13
SELECT *
FROM HOADON
WHERE HOADON.THANHTIEN BETWEEN 20000 AND 500000

ALTER TABLE NHANVIEN
ADD LUONG MONEY

ALTER TABLE NHANVIEN
ADD NGAYVAOLAM DATE


UPDATE NHANVIEN
SET LUONG= '55000', NGAYVAOLAM='2022-9-11'
WHERE MANV='201403977'

UPDATE NHANVIEN
SET LUONG= '300000', NGAYVAOLAM='2022-9-21'
WHERE MANV='201404005'

UPDATE NHANVIEN
SET LUONG= '200000', NGAYVAOLAM='2022-10-11'
WHERE MANV='2014040051'

UPDATE NHANVIEN
SET LUONG= '500000', NGAYVAOLAM='2022-7-11'
WHERE MANV='A1'

UPDATE NHANVIEN
SET LUONG= '350000', NGAYVAOLAM='2022-2-13'
WHERE MANV='MANH1'

alter table HOADON
ALTER COLUMN NGAYXUATHOADON DATE 
    
ALTER TABLE HOADON 
ADD TGBATDAU SMALLDATETIME


ALTER TABLE HOADON
ADD TGKETTHUC SMALLDATETIME



UPDATE HOADON
SET TGBATDAU= '2022-10-12 14:21:00', TGKETTHUC='2022-10-12 19:45:00',MAMAY='2',MAPHONGNET='A02'
WHERE MAHOADON='13112091'

UPDATE HOADON
SET MAPHONGNET='A01'
WHERE MAMAY='5' 

ALTER TABLE MAY
ADD TRANGTHAI BIT

UPDATE MAY
SET TRANGTHAI='0'
WHERE MAMAY='8'




ALTER TABLE NHANVIEN
ADD TRANGTHAILAMVIEC BIT





UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1'
WHERE MANV='MANH1'

ALTER TABLE NHANVIEN
DROP COLUMN CHUCVU

ALTER TABLE NHANVIEN
ADD  CHUCVU NVARCHAR(10)

UPDATE NHANVIEN
SET CHUCVU='MATXAER'
WHERE MANV='THONG1'

--CAU14
SELECT * FROM NHANVIEN
WHERE LUONG=(SELECT MAX(LUONG) FROM NHANVIEN) 
ORDER BY TEN

--CAU15
DELETE FROM NHANVIEN 
WHERE TRANGTHAILAMVIEC='0'


UPDATE HOADON
SET TGBATDAU='2022-10-12 02:20:00' ,TGKETTHUC='2022-10-12 04:50:00'
WHERE MAHOADON='12102022'
UPDATE HOADON
SET TGBATDAU='2022-10-12 02:21:00' ,TGKETTHUC='2022-10-12 02:21:00'
WHERE MAHOADON='12112021'
UPDATE HOADON
SET TGBATDAU='2022-10-11 17:21:00' ,TGKETTHUC='2022-10-12 06:45:00'
WHERE MAHOADON='12112023'
UPDATE HOADON
SET TGBATDAU='2022-10-11 21:21:00' ,TGKETTHUC='2022-10-12 06:45:00'
WHERE MAHOADON='12112065'
UPDATE HOADON
SET TGBATDAU='2022-11-06 21:21:00' ,TGKETTHUC='2022-11-07 03:45:00'
WHERE MAHOADON='12112066'
UPDATE HOADON
SET TGBATDAU='2022-10-12 21:21:00' ,TGKETTHUC='2022-10-12 23:45:00'
WHERE MAHOADON='13112021'





UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='BAOTRI'
WHERE MANV='201403977'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='NAUAN'
WHERE MANV='201404005'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='PHACHE'
WHERE MANV='2014040051'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='QUANLY'
WHERE MANV='A1'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='MATXAER'
WHERE MANV='MANH1'

UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='1', CHUCVU='MATXAER',LUONG='350000.00',NGAYVAOLAM='2022-02-11'
WHERE MANV='THONG1'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='0'
WHERE MANV='666'
UPDATE NHANVIEN
SET TRANGTHAILAMVIEC='0'
WHERE MANV='999'



UPDATE MAY
SET TRANGTHAI='1'
WHERE MAMAY='1'
UPDATE MAY
SET TRANGTHAI='1'
WHERE MAMAY='2'
UPDATE MAY
SET TRANGTHAI='1'
WHERE MAMAY='3'
UPDATE MAY
SET TRANGTHAI='1'
WHERE MAMAY='5'
UPDATE MAY
SET TRANGTHAI='0'
WHERE MAMAY='7'