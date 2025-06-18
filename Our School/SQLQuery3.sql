Select Row_NUMBER() over(Order by (Select 1)) as [Sr.No], ts.Id, ts.ClassId, c.ClassName, ts.SubjectId, s.SubjectName, ts.TeacherId, t.Name from TeacherSubject ts inner join Class c on ts.ClassId = c.ClassId inner join Subject s on ts.SubjectId = s.SubjectId inner join Teacher t on ts.TeacherId = t.TeacherId
select * from TeacherSubject
select * from TeacherSubject where ClassId = '1' and SubjectId = '2' or TeacherId = '3'
delete from TeacherSubject where Id = 2