--Modificar el esquema Tarifario
-- Agrega la columna 'NumeroSucursal' si no existe en la tabla 'PrestadorTarifario'
IF COL_LENGTH('PrestadorTarifario', 'NumeroSucursal') IS NULL
BEGIN
    ALTER TABLE PrestadorTarifario ADD NumeroSucursal INT;
    PRINT 'Columna NumeroSucursal agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna NumeroSucursal ya existe.';
END;

-- Agrega la columna 'NumeroSucursal' si no existe en la tabla 'PrestacionPrestador'
IF COL_LENGTH('PrestacionPrestador', 'NumeroSucursal') IS NULL
BEGIN
    ALTER TABLE PrestacionPrestador ADD NumeroSucursal INT;
    PRINT 'Columna NumeroSucursal agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna NumeroSucursal ya existe.';
END;

-- Agrega la columna 'CategoriaServicio' si no existe en la tabla 'TipoServicio'
IF COL_LENGTH('TipoServicio', 'CategoriaServicio') IS NULL
BEGIN
    ALTER TABLE TipoServicio ADD CategoriaServicio INT;
    PRINT 'Columna CategoriaServicio agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna CategoriaServicio ya existe.';
END;
