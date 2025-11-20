create database Bai2;
use Bai2;
create table sach (
id INT PRIMARY KEY,
tieu_de VARCHAR(255),
tac_gia VARCHAR(255),
the_loai VARCHAR(100),
nam_xuat_ban INT,
trang_thai VARCHAR(50)
);

insert into sach
values (1, 'Dế Mèn phiêu lưu ký', 'Tô Hoài', 'Văn học', 1941, 'Có sẵn'),
(2, 'Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'Văn học', 2008, 'Đã mượn'),
(3, 'Số đỏ', 'Vũ Trọng Phụng', 'Tiểu thuyết', 1936, 'Có sẵn'),
(4, 'Nhà giả kim', 'Paulo Coelho', 'Tiểu thuyết', 1988, 'Có sẵn'),
(5, 'Mắt biếc', 'Nguyễn Nhật Ánh', 'Văn học', 1990, 'Đã mượn'),
(6, 'Trên đường băng', 'Tony Buổi Sáng', 'Kỹ năng sống', 2015, 'Có sẵn'),
(7, 'Đắc nhân tâm', 'Dale Carnegie', 'Kỹ năng sống', 1936, 'Có sẵn');
select * from sach;
-- cau 1
select tieu_de
from sach
where tac_gia = 'Nguyễn Nhật Ánh';
-- cau 2
select tieu_de
from sach
where the_loai in( 'Văn học' ,'Tiểu thuyết');
-- cau 3
select count(*) as sach_da_muon from sach
where trang_thai = 'Đã mượn';
-- cau 4
select tieu_de,(nam_xuat_ban),id
from sach
order by (nam_xuat_ban) ASC
limit 2;

