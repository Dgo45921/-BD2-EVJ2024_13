USE BD2

CREATE TRIGGER proyecto1.Triger1
ON proyecto1.Course
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacion VARCHAR(20);
    DECLARE @Descripcion VARCHAR(100);

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Course exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Course Assignment exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Course Tutor exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Notification Tutor exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Profile Student exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Roles  exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla TFA  exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Tutor Profile  exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Usuario Role  exitosa';

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

    -- Determinar el tipo de operaci�n
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'UPDATE';
    ELSE IF EXISTS (SELECT * FROM inserted)
        SET @Operacion = 'INSERT';
    ELSE IF EXISTS (SELECT * FROM deleted)
        SET @Operacion = 'DELETE';

    -- Construir la descripci�n de la operaci�n
    SET @Descripcion = 'Operaci�n ' + @Operacion + ' en la tabla Usuarios exitosa';

    -- Insertar el registro en la tabla HistoryLog
    INSERT INTO proyecto1.HistoryLog ([Date], Description)
    VALUES (GETDATE(), @Descripcion);
END;
GO

CREATE PROCEDURE [proyecto1].[PR4]
    @RoleName NVARCHAR(MAX)
AS
BEGIN
    
    BEGIN TRY
        
        IF @RoleName IS NULL OR @RoleName = ''
        BEGIN
            RAISERROR('El nombre del rol no puede estar vac�o.', 16, 1);
            RETURN;
        END
        BEGIN TRANSACTION;
			INSERT INTO [proyecto1].[Roles] (Id, RoleName)
			VALUES (NEWID(), @RoleName);
			COMMIT TRANSACTION;
			PRINT 'Rol insertado con �xito.';
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

CREATE PROCEDURE [proyecto1].[PR5]
    @Name NVARCHAR(MAX),
    @CreditsRequired INT
AS
BEGIN
    -- Manejo de errores
    BEGIN TRY
        -- Verificaci�n de par�metros
        IF @Name IS NULL OR @Name = ''
        BEGIN
            RAISERROR('El nombre del curso no puede estar vac�o.', 16, 1);
            RETURN;
        END
        
        IF @CreditsRequired IS NULL OR @CreditsRequired < 0
        BEGIN
            RAISERROR('Los cr�ditos requeridos deben ser un n�mero entero positivo.', 16, 1);
            RETURN;
        END

        -- Iniciar transacci�n
        BEGIN TRANSACTION;

        -- Inserci�n del nuevo curso
        INSERT INTO [proyecto1].[Course] (CodCourse, Name, CreditsRequired)
        VALUES ((SELECT ISNULL(MAX(CodCourse), 0) + 1 FROM [proyecto1].[Course]), @Name, @CreditsRequired);

        -- Confirmar la transacci�n si todo es correcto
        COMMIT TRANSACTION;

        -- Mensaje de �xito
        PRINT 'Curso insertado con �xito.';
    END TRY
    BEGIN CATCH
        -- Revertir la transacci�n en caso de error
        ROLLBACK TRANSACTION;

        -- Manejo del error
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(), 
            @ErrorSeverity = ERROR_SEVERITY(), 
            @ErrorState = ERROR_STATE();

        -- Propagar el error
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO


EXEC [proyecto1].[PR4] @RoleName = '    ';


EXEC [proyecto1].[PR5] @Name = 'Matematica intermedia 2', @CreditsRequired = 50;

select * from proyecto1.Roles;


select * from proyecto1.Course;