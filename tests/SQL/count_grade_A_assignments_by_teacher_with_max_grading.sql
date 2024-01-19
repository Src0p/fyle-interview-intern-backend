-- Write query to find the number of grade A's given by the teacher who has graded the most assignments

select count(*) from assignments where teacher_id in (select teacher_id from assignments where teacher_id is not null group by teacher_id order by count(*) desc limit 1) and grade = 'A';   

-- select teacher_id, count(*) as assignments_count from assignments where teacher_id is not null group by teacher_id order by assignments_count desc limit 1 ;
