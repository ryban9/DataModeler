-- Verifica si la secuencia existe
IF EXISTS (
    SELECT 1
    FROM sys.sequences
    WHERE name = 'SeqCo44ServicioAdicional' AND schema_id = SCHEMA_ID('dbo')
)
BEGIN
    PRINT 'La secuencia "SeqCo44ServicioAdicional" existe.';

    -- Verifica si el código TIEPA ya existe
    IF NOT EXISTS (
        SELECT 1
        FROM Salud.dbo.Co44ServicioAdicional
        WHERE Codigo = 'TIEPA'
    )
    BEGIN
        -- Inserta el registro
        INSERT INTO Salud.dbo.Co44ServicioAdicional (
            IdServicioAdicional, Codigo, Nombre, Tipo, ValorUno,
            ValorDos, ValorTres, ValorCuatro,
            UsuarioCreacion, UsuarioModificacion,
            FechaCreacion, HoraCreacion,
            FechaModificacion, HoraModificacion, Estado
        )
        VALUES (
            NEXT VALUE FOR dbo.SeqCo44ServicioAdicional,
            'TIEPA', '¿Tiene parqueo?', 'Seleccion', N'["SI", "NO"]',
            NULL, NULL, NULL,
            NULL, NULL,
            GETDATE(), GETDATE(),
            NULL, NULL, 1
        );

        PRINT 'Registro insertado correctamente con el código "TIEPA".';
    END
    ELSE
    BEGIN
        PRINT 'El código "TIEPA" ya existe. No se realizó el insert.';
    END
END
ELSE
BEGIN
    PRINT 'La secuencia "SeqCo44ServicioAdicional" no existe. No se puede insertar el registro.';
END

IF EXISTS (
    SELECT 1
    FROM sys.sequences
    WHERE name = 'SeqCo44ServicioAdicional' AND schema_id = SCHEMA_ID('dbo')
)
BEGIN
    PRINT 'La secuencia "SeqCo44ServicioAdicional" existe.';

    -- Verifica si el código TIEPA ya existe
    IF NOT EXISTS (
        SELECT 1
        FROM Salud.dbo.Co44ServicioAdicional
        WHERE Codigo = 'TIEPA'
    )
    BEGIN
        -- Inserta el registro
        INSERT INTO Salud.dbo.Co44ServicioAdicional (
            IdServicioAdicional, Codigo, Nombre, Tipo, ValorUno,
            ValorDos, ValorTres, ValorCuatro,
            UsuarioCreacion, UsuarioModificacion,
            FechaCreacion, HoraCreacion,
            FechaModificacion, HoraModificacion, Estado
        )
        VALUES (
            NEXT VALUE FOR dbo.SeqCo44ServicioAdicional,
            'TIEPA', '¿Tiene parqueo?', 'Seleccion', N'["SI", "NO"]',
            NULL, NULL, NULL,
            NULL, NULL,
            GETDATE(), GETDATE(),
            NULL, NULL, 1
        );

        PRINT 'Registro insertado correctamente con el código "TIEPA".';
    END
    ELSE
    BEGIN
        PRINT 'El código "TIEPA" ya existe. No se realizó el insert.';
    END
END
ELSE
BEGIN
    PRINT 'La secuencia "SeqCo44ServicioAdicional" no existe. No se puede insertar el registro.';
END





INSERT INTO Salud.dbo.Co44ServicioAdicional (IdServicioAdicional,codigo, Nombre, ValorUno,FechaCreacion, Estado)
values 
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPOATEN','TIPATECON','Consulta', GETDATE(),1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPOATEN','TIPATEIN','Interconsulta', GETDATE(),1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPOATEN','TIPATEQUI','Quirúrgica', GETDATE(),1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPOATEN','TIPATEPC','Procedimientos en consultorio', GETDATE(),1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPOATEN','TIPATETC','Tratamiento clínico', GETDATE(),1)
