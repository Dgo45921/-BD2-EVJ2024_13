-- FUNCIONES

-- ● Func_course_usuarios: Función que retornará el listado completo de alumnos que están asignados a un determinado curso.
CREATE FUNCTION proyecto1.F1 (@CodCourse int)
RETURNS TABLE
AS 
RETURN(
    SELECT CONCAT( u.Firstname, ' ', u.Lastname ) AS Alumno -- Selecciona las columnas necesarias
    FROM proyecto1.Usuarios u
    INNER JOIN proyecto1.CourseAssignment ca ON u.id = ca.StudentId
    WHERE ca.CourseCodCourse = @CodCourse -- Filtra por el código del curso
);

DROP FUNCTION proyecto1.F1;

select * from proyecto1.F1(283);

-- ● Func_tutor_course: Función que retornará la lista de cursos a los cuales los tutores estén designados para dar clase.
CREATE FUNCTION proyecto1.F2 (@Id uniqueidentifier) -- TutorProfile
RETURNS TABLE
AS 
RETURN (
    SELECT c.Name as Cursos_asignados 
    FROM proyecto1.Usuarios u
    INNER JOIN proyecto1.CourseTutor ct
        ON u.Id = ct.TutorId
    INNER JOIN proyecto1.Course c
        ON ct.CourseCodCourse = c.CodCourse
    WHERE ct.TutorId = @Id
);
DROP FUNCTION proyecto1.F2;

SELECT * FROM proyecto1.F2('A6F60DCF-FF3E-48B3-9058-4F0E7F0861F8');

-- ● Func_notification_usuarios: Función que retornará la lista de notificaciones que hayan sido enviadas a un usuario.
CREATE FUNCTION proyecto1.F3(@Id uniqueidentifier) -- Usuarios
RETURNS TABLE
AS 
RETURN(
	select n.Id, n.Message, n.Date from proyecto1.Usuarios u
	inner join proyecto1.Notification n
		on u.Id = n.UserId
	where u.Id = @Id
);
DROP FUNCTION proyecto1.F3;

SELECT * FROM proyecto1.F3('A6F60DCF-FF3E-48B3-9058-4F0E7F0861F8');

-- ● Func_logger: Función que retornará la información almacenada en la tabla HistoryLog.
CREATE FUNCTION proyecto1.F4() 
RETURNS TABLE
AS 
RETURN(
	select * from proyecto1.HistoryLog
);

DROP FUNCTION proyecto1.F4;

SELECT * FROM proyecto1.F4();

-- ● Func_usuarios: Función que retornará el expediente de un alumno, que incluye los siguientes campos
CREATE FUNCTION proyecto1.F5(@Id uniqueidentifier) -- Usuarios
RETURNS TABLE
AS 
RETURN(
	SELECT u.Firstname, u.LastChanges, u.Email, u.DateOfBirth, ps.Credits, r.RoleName
	FROM proyecto1.Usuarios u
	INNER JOIN proyecto1.ProfileStudent ps ON u.Id = ps.UserId
	INNER JOIN proyecto1.UsuarioRole ur ON u.Id = ur.UserId
	INNER JOIN proyecto1.Roles r ON ur.RoleId = r.Id
	where u.Id = @Id
);

DROP FUNCTION proyecto1.F5;

SELECT * FROM proyecto1.F5('F7C20121-2B56-4C35-82D0-9D06A82E3C92');

-- ● Func_usuarios: Función que retornará el expediente de cada alumno, que incluye los siguientes campos
CREATE FUNCTION proyecto1.F6() -- Usuarios
RETURNS TABLE
AS 
RETURN(
	SELECT u.Firstname, u.LastChanges, u.Email, u.DateOfBirth, ps.Credits, r.RoleName
	FROM proyecto1.Usuarios u
	INNER JOIN proyecto1.ProfileStudent ps ON u.Id = ps.UserId
	INNER JOIN proyecto1.UsuarioRole ur ON u.Id = ur.UserId
	INNER JOIN proyecto1.Roles r ON ur.RoleId = r.Id
);

DROP FUNCTION proyecto1.F6;

SELECT * FROM proyecto1.F6();