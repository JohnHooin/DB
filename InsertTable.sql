USE [TravelTourist];
GO

INSERT INTO [TravelTourist].[dbo].[DIEMTQ](MaDTQ, TenDTQ, Noidung, Ynghia)
VALUES 
    ('VNT', N'Vịnh Nha Trang', N'Tham quan Hòn Mun, bơi, lặn...', N'Khám phá vịnh Nha Trang'),
    ('WDP', N'Wonder Park', N'Vui chơi, giải trí', N'Khám phá Wonder Park'),
    ('NTN', N'Đặc sản Ninh Thuận', N'Mua đặc sản Ninh Thuận', N'Mua quà cho gia đình'),
    ('TTY', N'Thung lũng tình yêu', N'Tham quan Thung lũng Tình yêu, vườn hồng Cam Ly', N'Tham quan'),
    ('DVD', N'Dinh vua Bảo Đại', N'Tham quan vườn hoa, dinh, chụp hình', N'Vị hoàng đế cuối cùng'),
    ('MNE', N'Bùn khoáng nóng Mũi Né', N'Tham quan Trung Tâm Bùn Khoáng Nóng Mũi Né', N'Tham quan'),
    ('BPT', N'Biển Phan Thiết', N'Tắm biển Pha Thiết', N'Tắm biển'),
    ('PHA', N'Phố cổ Hội An', N'Chùa Cầu, Nhà Cổ, Hội quán Phước Kiến, chùa Ông', N'Tham quan phố cổ Hội An'),
    ('HDT', N'Hồ Động Tiên', N'Tham quan khu vụng Dại, vụng Ba Cửa, vụng Cây Táo, hòn Con Vịt', N'Tham quan, tắm biển, nghỉ đêm'),
    ('VHL', N'Vịnh Hạ Long', N'Tham quan', N'Du thuyền'),
    ('CCR', N'Chợ nổi Cái Răng', N'Mua sắm', N'Loại hình mua bán trên sông của người Nam Bộ'),
    ('LMC', N'Lăng Mạc Cửu (Hà Tiên)', N'Tham quan', N'Dòng họ có công khai trấn đất Hà Tiên'),
    ('BBS', N'Biển Bãi Sao', N'Tắm biển', N'Mua hải sản khô tại cảng An Thới'),
    ('BNA', N'Khu du lịch Bà Nà (Đà Nẵng)', N'Cầu dây treo Thuận Phước, khu du lịch bà Nà-Núi Chúa', N'Cầu dây treo võng dài nhất VN'),
    ('NHS', N'Ngũ Hành Sơn (Đà Nẵng)', N'Tham quan Ngũ Hành Sơn, biển', N'Non Nước Tham quan'),
    ('SND', N'Bán đảo Sơn Trà', N'Suối Đá, bãi Bụt (Đà Nẵng) Ngắm cảnh biển Mỹ Khê và cảng Tiên Sa', N'Những hang động huyền bí');

INSERT INTO [TravelTourist].[dbo].[TOUR](MaTour, TenTour, Songay, Sodem)
VALUES 
    ('SNT', N'Sài Gòn-Nha Trang du thuyền khám phá vịnh Nha Trang', 4, 3),
    ('SDL', N'Sài Gòn-Đà Lạt điểm hẹn tình yêu', 4, 3),
    ('SND', N'Sài Gòn-Nha Trang-Đà Lạt con đường nối biển và hoa', 5, 4),
    ('SPQ', N'Sài Gòn-Phú Quốc say đắm cùng thiên nhiên hoang sơ', 3, 2),
    ('SCP', N'Sài Gòn-Cái Bè-Vĩnh Long-Cần Thơ-Châu Đốc-Hà Tiên-Phú Quốc non nước hữu tình, thiên đường rực nắng', 6, 5),
    ('SPT', N'Sài Gòn-Phan Thiết những màu sắc của cát', 2, 1),
    ('SHL', N'Sài Gòn-Đà Nẵng đêm Hạ Long huyền diệu', 3, 2),
    ('SDN', N'Sài Gòn-Hội An lung linh Sông Hàn', 3, 2),
    ('SVT', N'Sài Gòn-Vũng Tàu (Dự kiến)', 2, 1);
	
INSERT INTO [TravelTourist].[dbo].[CT_THAMQUAN](MaTour, MaDTQ, Thoigian)
VALUES 
    ('SNT', 'VNT', 8),
    ('SNT', 'WDP', 5),
    ('SNT', 'NTN', 4),
    ('SDL', 'TTY', 4),
    ('SDL', 'DVD', 2),
    ('SND', 'MNE', 4),
    ('SPQ', 'CCR', 4),
    ('SPQ', 'LMC', 2),
    ('SPQ', 'BBS', 4),
    ('SCP', 'CCR', 2),
    ('SCP', 'LMC', 4),
    ('SCP', 'BBS', 3),
    ('SPT', 'MNE', 2),
    ('SPT', 'BPT', 3),
    ('SHL', 'PHA', 4),
    ('SHL', 'HDT', 10),
    ('SHL', 'VHL', 24),
    ('SDN', 'PHA', 4),
    ('SDN', 'HDT', 8),
    ('SDN', 'VHL', 8),
    ('SDN', 'NHS', 4),
    ('SDN', 'SND', 4);

INSERT INTO [TravelTourist].[dbo].[DOAN] (MADOAN, HOTEN, PHAI, NGAYSINH, DIACHI, DIENTHOAI)
VALUES
    ('DN001', N'Nguyễn Văn A', 'Nam', '1970-07-17', N'Cty Samco', '0918345678'),
    ('DN002', N'Trần Đình Phụng', 'Nam', '1960-07-15', N'ĐH TĐT', '0903123456'),
    ('DN003', N'Nguyễn Thanh Giang', 'Nam', '1970-06-05', N'ĐH KTCN', '0903456789'),
    ('DN004', N'Trần Xuân Hùng', 'Nam', '1958-10-22', N'ĐH KHTN', '35120783'),
    ('DN005', N'Vũ Thụy Bình', N'Nữ', '1976-02-08', N'Tribico', '38405996');

INSERT INTO [TravelTourist].[dbo].[HOPDONG] (SOHD, NGAYLAPHD, NOIDUNGHD, SONGUOIDI, NOIDON, NGAYDIHD, MATOUR, MADOAN)
VALUES
    ('HD001', '2010-06-15', N'Tham quan', 32, 'HCM', '2010-06-19', 'SNT', 'DN001'),
    ('HD002', '2010-07-10', N'Nghỉ dưỡng', 40, 'HCM', '2010-07-15', 'SDL', 'DN002'),
    ('HD003', '2010-07-15', N'Đại hội', 20, 'HCM', '2010-07-20', 'SND', 'DN003'),
    ('HD004', '2010-06-10', N'Họp', 30, 'HCM', '2010-06-15', 'SPQ', 'DN003'),
    ('HD005', '2010-06-20', N'Tham quan', 50, 'HCM', '2010-06-22', 'SCP', 'DN003'),
    ('HD006', '2010-06-10', N'Nghỉ hè', 15, 'HCM', '2010-06-12', 'SPT', 'DN004'),
    ('HD007', '2010-07-01', N'Nghỉ dưỡng', 25, 'HCM', '2010-07-05', 'SHL', 'DN005');

INSERT INTO [TravelTourist].[dbo].[DIEMDUNGCHAN] (MaDDC, TenDDC, Thanhpho)
VALUES
    ('DDC01', N'Khách sạn đường Nguyễn Thiện Thuật', N'Nha Trang'),
    ('DDC02', N'Khách sạn đường Trần Phú', N'Nha Trang'),
    ('DDC03', N'Khách sạn đường Bùi Thị Xuân', N'Đà Lạt'),
    ('DDC04', N'Hội An', N'Đà Nẵng'),
    ('DDC05', N'Hồ Động Tiên', N'Hạ Long'),
    ('DDC06', N'Dinh Cậu', N'Phú Quốc'),
    ('DDC07', N'Bến Ninh Kiều', N'Cần Thơ'),
    ('DDC08', N'Cà Ná-Ninh Chữ', N'Phan Thiết'),
    ('DDC09', N'Mũi Né', N'Phan Thiết'),
    ('DDC10', N'Quận 1, TP.HCM', N'TP.HCM');

INSERT INTO  [TravelTourist].[dbo].[LOTRINH](MaNoiDi, MaNoiDen)
VALUES
    ('DDC10', 'DDC09'),
    ('DDC10', 'DDC08'),
    ('DDC10', 'DDC07'),
    ('DDC10', 'DDC06'),
    ('DDC10', 'DDC05'),
    ('DDC10', 'DDC04'),
    ('DDC10', 'DDC03'),
    ('DDC10', 'DDC02'),
    ('DDC10', 'DDC01'),
    ('DDC09', 'DDC02'),
    ('DDC09', 'DDC01'),
    ('DDC08', 'DDC02'),
    ('DDC08', 'DDC01'),
    ('DDC07', 'DDC10'),
    ('DDC07', 'DDC06'),
    ('DDC06', 'DDC10'),
    ('DDC05', 'DDC02'),
    ('DDC05', 'DDC01'),
    ('DDC04', 'DDC02'),
    ('DDC04', 'DDC01'),
    ('DDC03', 'DDC10'),
    ('DDC02', 'DDC10'),
    ('DDC01', 'DDC10');

INSERT INTO [TravelTourist].[DBO].[LOTRINH_TOUR] (MaTour, MaNoiDi, MaNoiDen, SongayO, SongaydicuaPT, LoaiPhuongtien, LoaiKhachsan)
VALUES
    ('SNT', 'DDC10', 'DDC08', 1, 1, N'Ô tô', '2 sao'),
    ('SNT', 'DDC10', 'DDC09', 1, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC10', 'DDC01', 1, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC10', 'DDC02', 1, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC08', 'DDC01', 0, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC08', 'DDC02', 0, 1, N'Ô tô', '3 sao'),
	('SNT', 'DDC09', 'DDC01', 0, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC09', 'DDC02', 0, 1, N'Ô tô', '3 sao'),
    ('SNT', 'DDC01', 'DDC10', 0, 1, N'Ô tô', NULL),
    ('SNT', 'DDC02', 'DDC10', 0, 1, N'Ô tô', NULL),
    ('SDL', 'DDC10', 'DDC03', 1, 1, N'Ô tô', '2 sao'),
    ('SDL', 'DDC03', 'DDC10', 0, 1, N'Ô tô', NULL),
    ('SND', 'DDC10', 'DDC04', 2, 1, N'Máy bay', '3 sao'),
    ('SND', 'DDC10', 'DDC05', 2, 1, N'Tàu lửa', '3 sao'),
    ('SND', 'DDC04', 'DDC01', 1, 1, N'Ô tô', '3 sao'),
    ('SND', 'DDC04', 'DDC02', 1, 1, N'Tàu lửa', '3 sao'),
    ('SND', 'DDC05', 'DDC01', 1, 1, N'Ô tô', '3 sao'),
    ('SND', 'DDC05', 'DDC02', 1, 1, N'Tàu lửa', '3 sao'),
    ('SPQ', 'DDC10', 'DDC06', 2, 1, N'Máy bay', '2 sao'),
    ('SPQ', 'DDC10', 'DDC07', 1, 1, N'Ô tô', '2 sao'),
    ('SPQ', 'DDC07', 'DDC06', 2, 1, N'Tàu cao tốc', '2 sao'),
    ('SPQ', 'DDC06', 'DDC10', 0, 1, N'Máy bay', NULL),
    ('SPQ', 'DDC07', 'DDC10', 1, 1, N'Ô tô', NULL);

INSERT INTO [TravelTourist].[dbo].[NHANVIENHDDL] (MANVHDDL, TENNV, NGAYSINHNV, PHAINV, DIACHINV, DIENTHOAINV)
VALUES
    ('NV001', N'Lưu Diệc Phi', '1980-11-01', N'Nữ', N'TP.HCM', '01266123124'),
    ('NV002', N'Trần Hải Nam', '1984-10-22', N'Nam', N'TP.HCM', '01238611622'),
    ('NV003', N'Lê Thụy Hằng', '1988-08-07', N'Nữ', N'Khánh Hòa', '0908987654'),
    ('NV004', N'Võ Minh Phi', '1983-04-25', N'Nam', N'Tây Ninh', '0932405406'),
    ('NV005', N'Thái Thành Công', '1986-10-10', N'Nam', N'Long An', '0905321322'),
    ('NV006', N'Diệp Bích Hằng', '1987-10-12', N'Nữ', N'TP.HCM', NULL),
    ('NV007', N'Tạ Công Minh', '1976-07-06', N'Nam', N'TP.HCM', NULL);

INSERT INTO [TravelTourist].[dbo].[HOPDONG_NV] (SoHD, MaNVHDDL, NoidungHD_NV)
VALUES
    ('HD001', 'NV001', N'Hướng dẫn tham quan'),
    ('HD002', 'NV002', N'Hướng dẫn tham quan'),
    ('HD003', 'NV003', N'Hướng dẫn tham quan'),
    ('HD004', 'NV001', N'Hướng dẫn tham quan'),
    ('HD005', 'NV002', N'Hướng dẫn tham quan'),
    ('HD006', 'NV004', N'Hướng dẫn tham quan'),
    ('HD007', 'NV005', N'Hướng dẫn tham quan');

INSERT INTO [TravelTourist].[dbo].[CHUYEN] (MaChuyen, Tenchuyen, NgaydiCuaChuyen, MaNVHDDL, MaTour)
VALUES
    ('CH001', N'Sài Gòn-Nha Trang', '2010-06-01', 'NV003', 'SNT'),
    ('CH002', N'Sài Gòn-Đà Lạt', '2010-06-10', 'NV001', 'SDL'),
    ('CH003', N'Sài Gòn-Phú Quốc', '2010-06-05', 'NV002', 'SPQ'),
    ('CH004', N'Sài Gòn-Cần Thơ-Phú Quốc', '2010-06-20', 'NV004', 'SCP'),
    ('CH005', N'Sài Gòn-Phan Thiết', '2010-07-01', 'NV005', 'SPT'),
    ('CH006', N'Sài Gòn-Hạ Long', '2010-07-10', 'NV006', 'SHL'),
    ('CH007', N'Sài Gòn-Đà Nẵng', '2010-08-10', 'NV007', 'SDN'),
    ('CH008', N'Sài Gòn-Hạ Long', '2010-08-31', 'NV001', 'SHL'),
    ('CH009', N'Sài Gòn-Nha Trang', '2010-08-31', 'NV003', 'SNT'),
    ('CH010', N'Sài Gòn-Nha Trang', '2010-09-01', 'NV003', 'SNT');

