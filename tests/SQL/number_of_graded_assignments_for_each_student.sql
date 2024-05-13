select count(id) as graded_assignments from assignments where state = 'GRADED' group by student_id;
