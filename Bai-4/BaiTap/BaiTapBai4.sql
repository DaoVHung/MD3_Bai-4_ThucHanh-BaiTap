use bai_2_thuchanh2;
--  Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất. 
select *
from subjects s
group by s.Credit;

--  Hiển thị các thông tin môn học có điểm thi lớn nhất. 
select s.SubName as CR_LonNhat , max(m.mark)
from subjects s inner join mark m on s.SubId = m.SubId
group by s.SubId;
--  Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên,
-- xếp hạng theo thứ tự điểm giảm dần 
select s.StudentName, avg(m.mark) as DTB
from student s inner join mark m on s.StudentId = m.StudentId
group by s.StudentId




