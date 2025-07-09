-- Rollback del esquema Tarifario
-- Elimina la columna 'NumeroSucursal' si existe en la tabla 'PrestadorTarifario'
IF COL_LENGTH('PrestadorTarifario', 'NumeroSucursal') IS NOT NULL
BEGIN
    ALTER TABLE PrestadorTarifario DROP COLUMN NumeroSucursal;
    PRINT 'Columna NumeroSucursal eliminada de PrestadorTarifario.';
END
ELSE
BEGIN
    PRINT 'La columna NumeroSucursal no existe en PrestadorTarifario.';
END;

-- Elimina la columna 'NumeroSucursal' si existe en la tabla 'PrestacionPrestador'
IF COL_LENGTH('PrestacionPrestador', 'NumeroSucursal') IS NOT NULL
BEGIN
    ALTER TABLE PrestacionPrestador DROP COLUMN NumeroSucursal;
    PRINT 'Columna NumeroSucursal eliminada de PrestacionPrestador.';
END
ELSE
BEGIN
    PRINT 'La columna NumeroSucursal no existe en PrestacionPrestador.';
END;

-- Elimina la columna 'CategoriaServicio' si existe en la tabla 'TipoServicio'
IF COL_LENGTH('TipoServicio', 'CategoriaServicio') IS NOT NULL
BEGIN
    ALTER TABLE TipoServicio DROP COLUMN CategoriaServicio;
    PRINT 'Columna CategoriaServicio eliminada de TipoServicio.';
END
ELSE
BEGIN
    PRINT 'La columna CategoriaServicio no existe en TipoServicio.';
END;
