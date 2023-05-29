CREATE TABLE LoaiPhim
(
  MaLP CHAR (10) NOT NULL,
  LoaiPhim CHAR (20) NOT NULL,
  PRIMARY KEY (MaLP),
);
CREATE TABLE KhachHang
(
  MaKH CHAR (10) NOT NULL,
  HoTen NVARCHAR (30) NOT NULL,
  DiaChi NVARCHAR (30),
  Ngaysinh DATE,
  SDT CHAR (10),
  PRIMARY KEY (MaKH),
);
CREATE TABLE NhanVien
(
  MaNV CHAR (10) NOT NULL,
  HoTen NVARCHAR (30) NOT NULL,
  DiaChi NVARCHAR (30) NOT NULL,
  Ngaysinh DATE,
  SDT CHAR (10),
  PRIMARY KEY (MaNV),
);
CREATE TABLE LoaiVe
(
  MaLV CHAR (10) NOT NULL,
  TenLV CHAR (10) NOT NULL,
  DonGia MONEY NOT NULL,
  PRIMARY KEY (MaLV),
);
CREATE TABLE PhongChieu
(
  TenPhong CHAR (10) NOT NULL,
  MaPhong CHAR (10) NOT NULL,
  PRIMARY KEY (MaPhong),
);
CREATE TABLE DinhDangPhim
(
  MaDP CHAR (10) NOT NULL,
  DangPhim CHAR (10) NOT NULL,
  PRIMARY KEY (MaDP),
);
CREATE TABLE Ve
(
  MaVe CHAR (10) NOT NULL,
  MaLV CHAR (10) NOT NULL,
  Ghe CHAR (10) NOT NULL,
  NgayBanVe DATE NOT NULL,
  MaNV CHAR (10) NOT NULL,
  MaKH CHAR (10) NOT NULL,
  PRIMARY KEY (MaVe),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
  FOREIGN KEY (MaLV) REFERENCES LoaiVe(MaLV),
  
);
CREATE TABLE Phim
(
  MaPhim CHAR (10) NOT NULL,
  TenPhim NVARCHAR (10) NOT NULL,
  NhaSanXuat CHAR (30) NOT NULL,
  MaLP CHAR (10) NOT NULL,
  MaDP CHAR (10) NOT NULL,
  PRIMARY KEY (MaPhim),
  FOREIGN KEY (MaLP) REFERENCES LoaiPhim(MaLP),
  FOREIGN KEY (MaDP) REFERENCES DinhDangPhim(MaDP),
);
CREATE TABLE ThongTinVe
(
  SuatChieu CHAR (10) NOT NULL,
  MaPhong CHAR (10) NOT NULL,
  MaVe CHAR (10) NOT NULL,
  MaPhim CHAR (10) NOT NULL,
  FOREIGN KEY (MaPhong) REFERENCES PhongChieu(MaPhong),
  FOREIGN KEY (MaVe) REFERENCES Ve(MaVe),
  FOREIGN KEY (MaPhim) REFERENCES Phim(MaPhim),
  PRIMARY KEY (MaVe, MaPhong, MaPhim),
);



    INSERT INTO NhanVien VALUES ('1', N'NGUYENVANTHANH',N'BACNINH','2000/11/20','0383195942')
    INSERT INTO NhanVien VALUES ('2', N'DAUTHANH',N'THANHHOA','2000/11/21','0365982595')
    INSERT INTO NhanVien VALUES ('3', N'THACHTHANG',N'NGHEAN','2000/11/02','0826599406')
    INSERT INTO NhanVien VALUES ('4', N'TRANTIEN',N'NAMDINH','2000/11/03','0862256102')
    INSERT INTO NhanVien VALUES ('5', N'MINHTHIEN',N'HANOI','2000/11/15','0862256188')
	INSERT INTO NhanVien VALUES ('6', N'DONGQUAN',N'HANOI','2002/08/26','0862256088')
	INSERT INTO NhanVien VALUES ('7', N'VIETXUAN',N'HANOI','2002/10/15','0862256888')
	INSERT INTO NhanVien VALUES ('8', N'VIETXUAN',N'HANOI','2002/10/03','0862256388')
	INSERT INTO NhanVien VALUES ('9', N'VANTHANH',N'HANOI','2004/03/30','0862233388')
	INSERT INTO NhanVien VALUES ('10', N'VANTHANH',N'HANOI','2002/02/02','0868365233')



    INSERT INTO KhachHang VALUES ('01A', N'NGUYENVANNAM',N'HANOI','2002/01/02', '0129312551')
    INSERT INTO KhachHang VALUES ('02A', N'NGUYENVANHAI',N'HANOI','2002/01/03', '0129362551')
    INSERT INTO KhachHang VALUES ('03A', N'NGUYENVANTHA',N'HANOI','2002/02/02', '0129372551')
    INSERT INTO KhachHang VALUES ('04A', N'NGUYENVANTHIEM',N'HANOI','2002/04/02', '0129302551')
    INSERT INTO KhachHang VALUES ('05A', N'NGUYENVANTHO',N'HANOI','2002/09/02', '0129313551')
	INSERT INTO KhachHang VALUES ('06A', N'NGUYENVANTHOM',N'HANOI','2004/10/02', '0901236555')
	INSERT INTO KhachHang VALUES ('07A', N'NGUYENTHANHTHU',N'BACNINH','2004/09/10', '0862931355')
	INSERT INTO KhachHang VALUES ('08A', N'NGUYENTHUTRANG',N'HANOI','2002/08/02', '0923313551')
	INSERT INTO KhachHang VALUES ('09A', N'NGUYENTHIHUONG',N'HANOI','2004/11/02', '0931213551')
	INSERT INTO KhachHang VALUES ('10A', N'NGUYENNGOCKHANH',N'BACNINH','2002/01/02', '0933313551')

	INSERT INTO LoaiPhim VALUES ('LP00', 'CHINHKICH')
	INSERT INTO LoaiPhim VALUES ('LP01', 'HINHSU')
	INSERT INTO LoaiPhim VALUES ('LP02', 'TAILIEU')
    INSERT INTO LoaiPhim VALUES ('LP03', 'HANHDONG')
    INSERT INTO LoaiPhim VALUES ('LP04', 'TINHCAM')
    INSERT INTO LoaiPhim VALUES ('LP05', 'HAI')
    INSERT INTO LoaiPhim VALUES ('LP06', 'KINHDI')
    INSERT INTO LoaiPhim VALUES ('LP07', 'VIENTUONG')

    INSERT INTO LoaiVe VALUES ('LV04', 'VIP', '99')
    INSERT INTO LoaiVe VALUES ('LV05', 'VIP', '99')
    INSERT INTO LoaiVe VALUES ('LV06', 'THUONG', '59')
    INSERT INTO LoaiVe VALUES ('LV07', 'SIEUCAP', '299')
    INSERT INTO LoaiVe VALUES ('LV08', 'VIP', '99')

    INSERT INTO DinhDangPhim VALUES ('DP1', '2D')
    INSERT INTO DinhDangPhim VALUES ('DP2', '3D')
  
    INSERT INTO PhongChieu VALUES ('PC01', 'T01')
    INSERT INTO PhongChieu VALUES ('PC02', 'T02')
    INSERT INTO PhongChieu VALUES ('PC03', 'T03')
    INSERT INTO PhongChieu VALUES ('PC04', 'T04')
    INSERT INTO PhongChieu VALUES ('PC05', 'T05')

    INSERT INTO Ve VALUES ('V01', 'LV04','A04','2022-11-02', '1', '01A')
    INSERT INTO Ve VALUES ('V02', 'LV05','N05','2022/05/11', '2', '02A')
    INSERT INTO Ve VALUES ('V03', 'LV06','N06','2022/06/11', '3', '03A')
    INSERT INTO Ve VALUES ('V04', 'LV07','N07','2022/07/11', '4', '04A')
    INSERT INTO Ve VALUES ('V05', 'LV08','N08','2022/08/11', '5', '05A')

	
    INSERT INTO Phim VALUES ('P01', N'BANDAO','EURO','LP03', 'DP1')
    INSERT INTO Phim VALUES ('P02', N'ITAEWON','KOREA','LP04', 'DP2')
    INSERT INTO Phim VALUES ('P03', N'DAIGIA','VIETNAM','LP05','DP1')
    INSERT INTO Phim VALUES ('P04', N'CODAUMA','USA','LP06', 'DP1')
    INSERT INTO Phim VALUES ('P05', N'OPTIMUS','USA','LP07', 'DP2')

    INSERT INTO ThongTinVe VALUES ('SANG', 'T01', 'V01', 'P01')
    INSERT INTO ThongTinVe VALUES ('SANG', 'T02', 'V02', 'P02')
    INSERT INTO ThongTinVe VALUES ('CHIEU', 'T03', 'V03', 'P03')
    INSERT INTO ThongTinVe VALUES ('SANG', 'T01', 'V04', 'P04')
    INSERT INTO ThongTinVe VALUES ('CHIEU','T05', 'V05','P05')

--15 CAU TRUY VAN 
-- 1.Hiển thị ra thông tin nhân viên
    SELECT MaNV,HoTen,DiaChi,SDT from NhanVien


--2.Hiển thị thông tin phim và nhà sản suất
    SELECT MaPhim,TenPhim,NhaSanXuat from Phim


--3.Hiển thị ra những khách sinh năm 2002 và có địa chỉ Bắc Ninh
    SELECT HoTen, DiaChi, Ngaysinh
    FROM NhanVien
    WHERE Ngaysinh = '2002' OR DiaChi = 'HANOI'


--4.Hiển thị ra thông tin các nhân viên có tuổi từ 18 đến 30
   SELECT MaNV, HoTen, YEAR (getdate()) -YEAR(Ngaysinh) AS Tuoi
   FROM NhanVien  
   WHERE YEAR (getdate()) -YEAR(Ngaysinh) >18 and YEAR(getdate()) -YEAR(Ngaysinh) < 30;


--5.Đưa ra khách hàng mua vé có địa chỉ ở hà nội mua vé vào buổi sáng
   SELECT HoTen, DiaChi, NgayBanVe FROM KhachHang, Ve
   WHERE DiaChi = 'HANOI' AND NgayBanVe = '2022-11-02'


--6.Đưa ra tên KH mua vé ngày 02/11/2022
   SELECT HoTen, DiaChi, NgayBanVe FROM KhachHang, Ve
   WHERE  NgayBanVe = '2022-11-02'


--7.Đưa tên phòng sử dụng vé SIEUCAP vào buổi sáng
   SELECT TenPhong, SuatChieu, TenLV
   FROM PhongChieu, ThongTinVe,  LoaiVe
   WHERE TenLV = 'SIEUCAP' AND SuatChieu= 'SANG' AND PhongChieu.MaPhong = ThongTinVe.MaPhong


--8.
   SELECT  *  
   FROM DinhDangPhim RIGHT JOIN Phim  ON DinhDangPhim.MaDP = Phim.MaDP;


--9.Sắp xếp tên phòng và mã phòng theo thứu tự tăng dần
   SELECT * FROM PhongChieu
   ORDER BY MaPhong ASC


--10.Tìm mã phim, tên phim, nhà sản xuất mà thể loại phim là kinh dị
  SELECT MAPHIM, TENPHIM, NhaSanXuat,TenPhong
  FROM Phim P, LoaiPhim T, PhongChieu 
  WHERE P.MaLP=T.MaLP AND T.LoaiPhim= N'KINHDI'
	

--11.Đưa ra tên loại vé có giá  cao nhất
  SELECT TenLV, DonGia FROM LoaiVe
  WHERE	DonGia = ( SELECT MAX (DonGia) FROM LoaiVe)


--12.Đếm xem có bao nhiêu giá trị không trùng lặp
  SELECT COUNT (DISTINCT HoTen) AS ThongTinKhachHangKhongtrunglap
  FROM  Khachhang



--13.Hiển thị ra các bộ phim có nhà sản xuất là Việt Nam
  SELECT * FROM Phim 
  WHERE NhaSanXuat = N'VIETNAM' 


--14.Cho biết tên phòng chiếu chiếu phim kinh dị
  SELECT TenPhong  FROM PhongChieu PC, THONGTINVE TTV, PHIM P, LoaiPhim LP 
  WHERE LP.LoaiPhim =  N'KINHDI' AND LP.MALP = P.MALP AND P.MAPHIM = TTV.MAPHIM AND TTV.MAPHONG = PC.MaPhong


--15.Tìm tên loại vé, số ghế, mã vé mà đơn giá lớn hơn 30.00
  SELECT TenLV,Ghe, MaVe FROM Ve V, LoaiVe L WHERE V.MaLV=L.MaLV AND DonGia > 30.00