-- TRIGGERS =================================================================================================
CREATE TRIGGER proyecto1.Triger1
ON proyecto1.Course
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Course exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger2
ON proyecto1.CourseAssignment
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Course Assignment exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger3
ON proyecto1.CourseTutor
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Course Tutor exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger4
ON proyecto1.Notification
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Notification Tutor exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger5
ON proyecto1.ProfileStudent
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Profile Student exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger6
ON proyecto1.Roles
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Roles  exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger7
ON proyecto1.TFA
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla TFA  exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger8
ON proyecto1.TutorProfile
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Tutor Profile  exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger9
ON proyecto1.UsuarioRole
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Usuario Role  exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE TRIGGER proyecto1.Triger10
ON proyecto1.Usuarios
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operación
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripción de la operación
    SET @Descripcion = 'Operación ' + @Operacion + ' en la tabla Usuarios exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO


-- PROCEDIMIENTO 1 =====================================================================================
CREATE PROCEDURE proyecto1.PR1
    @Firstname VARCHAR(max),
    @Lastname VARCHAR(max),
    @Email VARCHAR(max),
    @DateOfBirth datetime2(7),
    @Password VARCHAR(max),
    @Credits INT
AS
BEGIN
    DECLARE @UserId uniqueidentifier;
    DECLARE @RolId uniqueidentifier;
    DECLARE @ErrorMessage NVARCHAR(250);
    DECLARE @ErrorSeverity INT;

    -- Validaciones de cada campo
    -- Firtsname vacio
    IF (@Firstname IS NULL OR @Firstname = '')
    BEGIN
        SET @ErrorMessage = 'Error, El nombre no puede ir vacio';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    -- apellido vacio
    IF (@Lastname IS NULL OR @Lastname = '')
    BEGIN
        SET @ErrorMessage = 'Error, El apellido no puede ir vacio';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    -- correo vacio
    IF (@Email IS NULL OR @Email = '')
    BEGIN
        SET @ErrorMessage = 'Error, El campo correo no puede ir vacio';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    -- fecha vacia
    IF (@DateOfBirth IS NULL)
    BEGIN
        SET @ErrorMessage = 'Error, La fecha de nacimiento no puede ir vacia';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    -- contase�a vacia
    IF (@Password IS NULL OR @Password = '')
    BEGIN
        SET @ErrorMessage = 'Error, El password no puede estar vacio';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    -- creditos con valor negativo
    IF (@Credits < 0)
    BEGIN
        SET @ErrorMessage = 'Error, No puede ingresar una cantidad de creditos negativa';
        SET @ErrorSeverity = 16;
        RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
        RETURN;
    END

    BEGIN TRY
    	-- Inicio de transacci�n
        BEGIN TRANSACTION;

    	-- Validaci�n de datos utilizando el procedimiento PR6
        DECLARE @IsValid BIT;
        EXEC proyecto1.PR6 'Usuarios', @Firstname, @Lastname, NULL, NULL, @IsValid OUTPUT;
        IF(@IsValid = 0)
        BEGIN
            SET @ErrorMessage = 'Los campos son incorrectos, solo deben contener letras';
            SET @ErrorSeverity = 16;
            RAISERROR(@ErrorMessage,@ErrorSeverity,1);
            RETURN;
        END

        -- Validar si el que el email no est� asociado con ninguna otra cuenta dentro del sistema
        IF EXISTS (SELECT * FROM proyecto1.Usuarios WHERE Email = @Email)
        BEGIN
            SET @ErrorMessage = 'Ya hay un usuario asociado con el correo indicado';
            SET @ErrorSeverity = 16;
            RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
            RETURN;
        END

        -- Creaci�n de rol estudiante
        SET @RolId = (SELECT Id FROM proyecto1.Roles WHERE RoleName = 'Student');
        IF @RolId IS NULL
        BEGIN
            SET @ErrorMessage = 'El rol del estudiante no existe';
            SET @ErrorSeverity = 16;
            RAISERROR(@ErrorMessage, @ErrorSeverity, 1);
            RETURN;
        END

        -- Insert tabla Usuarios
        SET @UserId = NEWID();
        INSERT INTO proyecto1.Usuarios(Id, Firstname, Lastname, Email, DateOfBirth, Password, LastChanges, EmailConfirmed)
        VALUES (@UserId, @Firstname, @Lastname, @Email, @DateOfBirth, @Password, GETDATE(), 1);

        -- Insert tabla UsuarioRole
        INSERT INTO proyecto1.UsuarioRole (RoleId, UserId, IsLatestVersion)
        VALUES (@RolId, @UserId, 1);

        -- Insert tabla ProfileStudent
        INSERT INTO proyecto1.ProfileStudent (UserId, Credits)
        VALUES (@UserId, @Credits);

        -- Insert tabla TFA
        INSERT INTO proyecto1.TFA (UserId, Status, LastUpdate)
        VALUES (@UserId, 1, GETDATE());

        -- Insert tabla Notification
        INSERT INTO proyecto1.Notification (UserId, Message, Date)
        VALUES (@UserId, 'Se ha registrado satisfactoriamente', GETDATE());
		PRINT 'El estudiante ha sido registrado satisfactoriamente';

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
          -- Error - cancelar transacci�n
        ROLLBACK;
        SELECT @ErrorMessage = ERROR_MESSAGE();
		-- Registro del error en la tabla HistoryLog
        INSERT INTO proyecto1.HistoryLog (Date, Description)
        VALUES (GETDATE(), 'Error Regristro - ' + @ErrorMessage);
       	PRINT 'Registro instatisfactorio'
        RAISERROR (@ErrorMessage, 16, 1);
    END CATCH;
END;

/* call ////////////////////////////////////////////////////////
DECLARE @FirstName VARCHAR(max) = 'John';
DECLARE @LastName VARCHAR(max) = 'Doe';
DECLARE @Email VARCHAR(max) = 'john.doe@example.com';
DECLARE @DateOfBirth DATETIME2(7) = '1990-01-01';
DECLARE @Password VARCHAR(max) = 'securePassword';
DECLARE @Credits INT = 100;

EXEC proyecto1.PR1
    @Firstname = @FirstName,
    @Lastname = @LastName,
    @Email = @Email,
    @DateOfBirth = @DateOfBirth,
    @Password = @Password,
    @Credits = @Credits;
*/

-- PROCEDIMIENTO 2 ============================================

CREATE PROCEDURE proyecto1.PR2
    @Email NVARCHAR(255),
    @CodCourse INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId UNIQUEIDENTIFIER;
    DECLARE @RoleId UNIQUEIDENTIFIER;
    DECLARE @NotificationMessage NVARCHAR(MAX);

    -- Obtener el UserId del usuario con el Email proporcionado
    SELECT @UserId = u.Id
    FROM proyecto1.[Usuarios] u
    WHERE u.Email = @Email;

    IF @UserId IS NOT NULL
    BEGIN
        -- Actualizar el registro anterior en UsuarioRole
        UPDATE proyecto1.UsuarioRole
        SET IsLatestVersion = 0
        WHERE UserId = @UserId
        AND IsLatestVersion = 1;

        -- Obtener el RoleId correspondiente al rol de tutor
        SELECT @RoleId = Id FROM proyecto1.Roles WHERE RoleName = 'Tutor';

        -- Insertar nuevo registro en UsuarioRole para asignar rol de tutor al usuario
        INSERT INTO proyecto1.UsuarioRole (RoleId, UserId, IsLatestVersion)
        VALUES (@RoleId, @UserId, 1);

        -- Insertar registro en TutorProfile para asignar perfil de tutor al usuario
        INSERT INTO proyecto1.TutorProfile (UserId, TutorCode)
        VALUES (@UserId, 'TUTOR_' + CONVERT(NVARCHAR(36), NEWID()));

        -- Insertar registro en CourseTutor para asignar curso al tutor
        INSERT INTO proyecto1.CourseTutor (TutorId, CourseCodCourse)
        VALUES (@UserId, @CodCourse);

        -- Preparar mensaje de notificación
        SET @NotificationMessage = N'Usted ha sido promovido a Tutor para el curso con código ' + CONVERT(NVARCHAR(10), @CodCourse);

        -- Insertar notificación para el usuario
        INSERT INTO proyecto1.Notification (UserId, Message, Date)
        VALUES (@UserId, @NotificationMessage, GETDATE());



        PRINT 'Proceso completado correctamente.';
    END
    ELSE
    BEGIN
        PRINT N'No se encontró un usuario con el Email proporcionado.';
    END
END;

/* call //////////////////////////////////////////////////////////////////////
EXEC proyecto1.PR2
    @Email = 'john.doe@example.com',
    @CodCourse = 970;
*/

-- PROCEDIMIENTO 3 =====================================================
CREATE PROCEDURE proyecto1.PR3
    @email varchar(max),
    @CodCourse int
AS
BEGIN
    SET NOCOUNT ON;
	-- Variables Curso
    DECLARE @CreditsRequired int;
	DECLARE @CourseName nvarchar(max)
	--Variables Estudiante
    DECLARE @Credits int;
    DECLARE @IdStudent uniqueidentifier;
	-- Variables Tutor
    DECLARE @IdTutor uniqueidentifier;
    DECLARE @EmailTutor nvarchar(max);

	-- Inicio transaccion
	BEGIN TRY
        BEGIN TRANSACTION;
			-- Buscar el usuario y sus datos relacionados
			SELECT @Credits = ps.Credits,
				   @IdStudent = u.Id
			FROM proyecto1.Usuarios u
			INNER JOIN proyecto1.ProfileStudent ps ON u.Id = ps.UserId
			INNER JOIN proyecto1.UsuarioRole ur ON u.Id = ur.UserId
			INNER JOIN proyecto1.Roles r ON ur.RoleId = r.Id
			WHERE u.Email = @Email AND r.RoleName = 'Student';

			-- 1. Verificar si se encontró un usuario con el correo y rol adecuados
			IF @@ROWCOUNT = 0
			BEGIN
				-- Si no se encontró ningún registro, arrojar un mensaje de error
				RAISERROR('No se encontró ningún usuario con el correo especificado y rol de "Student".', 16, 1);
				RETURN; -- Salir del procedimiento
			END

			-- Buscar si el estudiante ya se encuentra asignado
			SELECT * FROM proyecto1.CourseAssignment ca 
				WHERE ca.CourseCodCourse = @CodCourse and ca.StudentId = @IdStudent;

			-- 2. Verificar que no se encontraron coincidencias
			IF @@ROWCOUNT != 0
			BEGIN
				-- Si no se encontró el curso, arrojar un mensaje de error
				RAISERROR('El estudiante con el codigo ingresado ya se encuentra asignado al curso', 16, 1);
				RETURN; -- Salir del procedimiento
			END

			-- Buscar los créditos requeridos del curso y al tutor
			SELECT TOP 1
				   @CreditsRequired = c.CreditsRequired,
				   @CourseName = c.Name,
				   @EmailTutor = u.Email,
				   @IdTutor = ct.TutorId
			FROM proyecto1.Course c
			INNER JOIN proyecto1.CourseTutor ct ON c.CodCourse = ct.CourseCodCourse
			INNER JOIN proyecto1.Usuarios u ON ct.TutorId = u.Id
			WHERE c.CodCourse = @CodCourse;

			-- 3. Verificar si se encontró el curso
			IF @@ROWCOUNT = 0
			BEGIN
				-- Si no se encontró el curso, arrojar un mensaje de error
				RAISERROR('No se encontró ningún curso con el código especificado.', 16, 1);
				RETURN; -- Salir del procedimiento
			END

			-- Verificar si los créditos del usuario son mayores o iguales a los requeridos por el curso
			IF @Credits >= @CreditsRequired
			BEGIN
				PRINT 'Asignando al usuario...';
				-- Insertar la asignación del curso al estudiante
				INSERT INTO proyecto1.CourseAssignment (StudentId, CourseCodCourse) 
				VALUES (@IdStudent, @CodCourse);

				-- Enviar mensaje de notificación al tutor y al estudiante
				INSERT INTO proyecto1.Notification (UserId, Message, Date)
				VALUES (@IdTutor, CONCAT('Un nuevo estudiante se ha asignado a su curso. Estudiante: ', @Email, ', Curso: ', @CourseName ), GETDATE()),
					   (@IdStudent, CONCAT('Te has asignado correctamente al Curso: ', @CourseName, ', Codigo: ', @CodCourse), GETDATE());
				PRINT 'Usuario Asignado';
			END
			ELSE
			BEGIN
				-- Si los créditos no son suficientes, arrojar un mensaje de error
				RAISERROR('Los créditos del usuario no son suficientes para inscribirse en este curso.', 16, 1);
				RETURN; -- Salir del procedimiento
			END
			-- Commit de la transacción si todo fue exitoso
				COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback de la transacción en caso de error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Capturar y manejar el error
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;

/* CALL //////////////////////////////////////////////////////////////////////
EXEC proyecto1.PR3
	@email = 'juan.perez@example.com',
	@CodCourse = 283;
*/

-- PROCEDIMIENTO 4 ======================================================
CREATE PROCEDURE [proyecto1].[PR4]
    @RoleName NVARCHAR(MAX)
AS
BEGIN
    
    BEGIN TRY
        
        IF @RoleName IS NULL OR @RoleName = ''
        BEGIN
            RAISERROR('El nombre del rol no puede estar vacío.', 16, 1);
            RETURN;
        END
        BEGIN TRANSACTION;
			INSERT INTO [proyecto1].[Roles] (Id, RoleName)
			VALUES (NEWID(), @RoleName);
			COMMIT TRANSACTION;
			PRINT 'Rol insertado con éxito.';
    END TRY
    BEGIN CATCH

        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(), 
            @ErrorSeverity = ERROR_SEVERITY(), 
            @ErrorState = ERROR_STATE();
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO

-- PROCEDIMIENTO 5 =====================================================
CREATE PROCEDURE proyecto1.PR5 (@CodCourse int, @Name nvarchar(max), @CreditsRequired int)
AS BEGIN
	Declare @Description nvarchar(max);
	Declare @IsValid BIT;
	EXEC proyecto1.PR6 'Course',NULL,NULL, @Name, @CreditsRequired, @IsValid OUTPUT ;
	IF @IsValid = 0
		BEGIN
			-- MARCAR ERROR
			SET @Description = N'Insercion de Curso Fallida Nombre o Creditos Incorrectos';
			INSERT INTO proyecto1.HistoryLog ([Date], Description)
    		VALUES (GETDATE(), @Description);
			SELECT @Description AS 'Error';
			ROLLBACK TRANSACTION;
			RETURN;
		END
    IF @CreditsRequired < 0
		BEGIN
			-- MARCAR ERROR
			SET @Description = N'Insercion de Curso Fallida Creditos no pueden ser negativos';
			INSERT INTO proyecto1.HistoryLog ([Date], Description)
    		VALUES (GETDATE(), @Description);
			SELECT @Description AS 'Error';
			ROLLBACK TRANSACTION;
			RETURN;
		END --FUNCIONA COMO UN RETURN O BREAK
    IF @CodCourse < 0
		BEGIN
			-- MARCAR ERROR
			SET @Description = N'Insercion de Curso Fallida Codigo de Curso no puede ser negativo';
			INSERT INTO proyecto1.HistoryLog ([Date], Description)
    		VALUES (GETDATE(), @Description);
			SELECT @Description AS 'Error';
			ROLLBACK TRANSACTION;
			RETURN;
		END --FUNCIONA COMO UN RETURN O BREAK


	BEGIN TRY
		BEGIN TRANSACTION;
		INSERT INTO proyecto1.Course(CodCourse, Name, CreditsRequired) VALUES
		(@CodCourse, @Name, @CreditsRequired);
		SELECT N'Insercion de Curso exitosa' AS Mensaje;
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		SET @Description = 'Insercion de Curso Fallida'+ ERROR_MESSAGE();
		SELECT @Description AS 'Error';
		ROLLBACK TRANSACTION;
	END CATCH;
END;

/* CALL ////////////////////////////////////////////////////////////////////////////
EXEC proyecto1.PR5
    @CodCourse = 123,
    @Name = N'Compiladores 1',
    @CreditsRequired = 4;
*/

-- PROCEDIMIENTO 6 =====================================================================================

CREATE PROCEDURE proyecto1.PR6
    @EntityName NVARCHAR(50),
    @FirstName NVARCHAR(MAX) = NULL,
    @LastName NVARCHAR(MAX) = NULL,
    @Name NVARCHAR(MAX) = NULL,
    @CreditsRequired INT = NULL,
    @IsValid BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
	-- Validaciones de Usuario
    IF @EntityName = 'Usuarios'
    BEGIN
        IF ISNULL(@FirstName, '') NOT LIKE '%[^a-zA-Z ]%' AND ISNULL(@LastName, '') NOT LIKE '%[^a-zA-Z ]%'
            SET @IsValid = 1;
        ELSE
            SET @IsValid = 0;
    END
    -- Validacion de Curso
    ELSE IF @EntityName = 'Course'
    BEGIN
        IF ISNULL(@Name, '') NOT LIKE '%[^a-zA-Z ]%' AND ISNUMERIC(@CreditsRequired) = 1
            SET @IsValid = 1;
        ELSE
            SET @IsValid = 0;
    END
    ELSE
    BEGIN
        -- No valida
        SET @IsValid = 0;
    END;
END;


