USE [TravelTourist];
GO 
-- Cau 1
CREATE VIEW HuongDanVienInfo AS 
SELECT * FROM [TravelTourist].[dbo].[NHANVIENHDDL];
GO 
-- Cau 2
CREATE VIEW NhungTourDuLich AS 
SELECT TenTour FROM [dbo].[TOUR]
GO
-- Cau 3
CREATE VIEW CacTourTu3NgayTroLen AS 
SELECT * FROM [dbo].[TOUR] WHERE Songay >= 3;
GO
-- Cau 4
CREATE VIEW InfoCacDiemThamQuan AS
SELECT * FROM [dbo].[DIEMTQ];
GO
-- Cau 5 
CREATE VIEW CacTourDiemDenNhaTrang AS 
SELECT DISTINCT TOUR.MaTour, TOUR.TenTour
FROM TOUR
LEFT JOIN LOTRINH_TOUR ON TOUR.MaTour = LOTRINH_TOUR.MaTour
WHERE LOTRINH_TOUR.MaNoiDen IN('DDC01', 'DDC02');
GO

-- Cau 6 




