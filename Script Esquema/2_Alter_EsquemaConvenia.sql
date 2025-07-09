-- Alter Cl03Personas

-- ALTER para agregar el campo Nacionalidad a la tabla Cl03Personas
IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Cl03Personas' 
    AND COLUMN_NAME = 'Nacionalidad'
)
BEGIN
    ALTER TABLE Cl03Personas
    ADD Nacionalidad VARCHAR(100);  -- Ajusta el tipo de dato según tus necesidades
    PRINT 'Campo Nacionalidad añadido a la tabla Cl03Personas.';
END
ELSE
BEGIN
    PRINT 'El campo Nacionalidad ya existe en la tabla Cl03Personas.';
END
GO

-- Alter Co02CatalogoEspecialidades

-- Verificar si la columna CategoriaEspecialidad ya existe en la tabla Co02CatalogoEspecialidades
IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co02CatalogoEspecialidades' 
    AND COLUMN_NAME = 'CategoriaEspecialidad'
)
BEGIN
    -- Agregar la columna CategoriaEspecialidad
    ALTER TABLE Co02CatalogoEspecialidades
    ADD CategoriaEspecialidad INT;  -- Tipo INTEGER ajustado a INT
    PRINT 'Campo CategoriaEspecialidad añadido a la tabla Co02CatalogoEspecialidades.';
END
ELSE
BEGIN
    PRINT 'El campo CategoriaEspecialidad ya existe en la tabla Co02CatalogoEspecialidades.';
END
GO

-- Alter Co03ConvenioAdicional

-- Verificar si los campos ya existen antes de agregarlos a la tabla
IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'IdCatalogoTipoSociedad'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD IdCatalogoTipoSociedad INTEGER;
    PRINT 'Campo IdCatalogoTipoSociedad añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'IdCatalogoSector'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD IdCatalogoSector INTEGER;
    PRINT 'Campo IdCatalogoSector añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'IdCatalogoTpa'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD IdCatalogoTpa INTEGER;
    PRINT 'Campo IdCatalogoTpa añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'CodigoMsp'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD CodigoMsp VARCHAR(20);
    PRINT 'Campo CodigoMsp añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'FechaRegistroMsp'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD FechaRegistroMsp DATE;
    PRINT 'Campo FechaRegistroMsp añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'Calificacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD Calificacion VARCHAR(10);
    PRINT 'Campo Calificacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'CostoEficiencia'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD CostoEficiencia VARCHAR(10);
    PRINT 'Campo CostoEficiencia añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'NumeroPais'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD NumeroPais INTEGER;
    PRINT 'Campo NumeroPais añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'NumeroProvincia'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD NumeroProvincia INTEGER;
    PRINT 'Campo NumeroProvincia añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'CodigoCiudad'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD CodigoCiudad INTEGER;
    PRINT 'Campo CodigoCiudad añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'IdCatalogoCategorizacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD IdCatalogoCategorizacion INTEGER;
    PRINT 'Campo IdCatalogoCategorizacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'Rct'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD Rct BIT;
    PRINT 'Campo Rct añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'CargoDestacado'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD CargoDestacado VARCHAR(4000);
    PRINT 'Campo CargoDestacado añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'Opera'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD Opera BIT;
    PRINT 'Campo Opera añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'StaffMedico'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD StaffMedico BIT;
    PRINT 'Campo StaffMedico añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'UsuarioCreacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD UsuarioCreacion VARCHAR(40);
    PRINT 'Campo UsuarioCreacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'UsuarioModificacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD UsuarioModificacion VARCHAR(40);
    PRINT 'Campo UsuarioModificacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'FechaCreacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD FechaCreacion DATE;
    PRINT 'Campo FechaCreacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'HoraCreacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD HoraCreacion VARCHAR(16);
    PRINT 'Campo HoraCreacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'FechaModificacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD FechaModificacion DATE;
    PRINT 'Campo FechaModificacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'HoraModificacion'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD HoraModificacion VARCHAR(16);
    PRINT 'Campo HoraModificacion añadido.';
END;

IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co03ConvenioAdicional' 
    AND COLUMN_NAME = 'Estado'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional
    ADD Estado INTEGER;
    PRINT 'Campo Estado añadido.';
END;


-- Alter Co27Garantia

-- Verificar si la columna no existe antes de agregarla
IF COL_LENGTH('Co27Garantia', 'IdCatalogoTipoGarantia') IS NULL
BEGIN
    ALTER TABLE Co27Garantia
    ADD IdCatalogoTipoGarantia INT;
    PRINT 'Columna IdCatalogoTipoGarantia agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoTipoGarantia ya existe.';
END;

IF COL_LENGTH('Co27Garantia', 'IdCatalogoCobroAlta') IS NULL
BEGIN
    ALTER TABLE Co27Garantia
    ADD IdCatalogoCobroAlta INT;
    PRINT 'Columna IdCatalogoCobroAlta agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoCobroAlta ya existe.';
END;

--CreditoFinSemana
IF COL_LENGTH('Co27Garantia', 'IdCatalogoCreditoFinSemana') IS NULL
BEGIN
    ALTER TABLE Co27Garantia
    ADD IdCatalogoCreditoFinSemana INT;
    PRINT 'Columna IdCatalogoCreditoFinSemana agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoCreditoFinSemana ya existe.';
END;

--PrestadorLlamada
IF COL_LENGTH('Co27Garantia', 'IdCatalogoPrestadorLlamada') IS NULL
BEGIN
    ALTER TABLE Co27Garantia
    ADD IdCatalogoPrestadorLlamada INT;
    PRINT 'Columna IdCatalogoPrestadorLlamada agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoPrestadorLlamada ya existe.';
END;

-- UsuarioCreacion
IF COL_LENGTH('Co27Garantia', 'UsuarioCreacion') IS NULL
BEGIN
    ALTER TABLE Co27Garantia ADD UsuarioCreacion VARCHAR(40);
    PRINT 'Columna UsuarioCreacion agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna UsuarioCreacion ya existe.';
END;

-- UsuarioModificacion
IF COL_LENGTH('Co27Garantia', 'UsuarioModificacion') IS NULL
BEGIN
    ALTER TABLE Co27Garantia ADD UsuarioModificacion VARCHAR(40);
    PRINT 'Columna UsuarioModificacion agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna UsuarioModificacion ya existe.';
END;

-- HoraCreacion
IF COL_LENGTH('Co27Garantia', 'HoraCreacion') IS NULL
BEGIN
    ALTER TABLE Co27Garantia ADD HoraCreacion VARCHAR(16);
    PRINT 'Columna HoraCreacion agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna HoraCreacion ya existe.';
END;

-- FechaModificacion
IF COL_LENGTH('Co27Garantia', 'FechaModificacion') IS NULL
BEGIN
    ALTER TABLE Co27Garantia ADD FechaModificacion DATE;
    PRINT 'Columna FechaModificacion agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna FechaModificacion ya existe.';
END;

-- HoraModificacion
IF COL_LENGTH('Co27Garantia', 'HoraModificacion') IS NULL
BEGIN
    ALTER TABLE Co27Garantia ADD HoraModificacion VARCHAR(16);
    PRINT 'Columna HoraModificacion agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna HoraModificacion ya existe.';
END;

-- Alter Co14SucursalesConvenioTipos

IF EXISTS (SELECT 1 FROM Co14SucursalesConvenioTipos)
BEGIN
    DELETE FROM Co14SucursalesConvenioTipos;
    PRINT 'Registros eliminados correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co14SucursalesConvenioTipos no contiene registros.';
END

-- IdCatalogoTipoPrestador
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'IdCatalogoTipoPrestador') IS NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos ADD IdCatalogoTipoPrestador INT NOT NULL;   
    PRINT 'Columna IdCatalogoTipoPrestador agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoTipoPrestador ya existe.';
END;

-- IdCatalogoTipoSucursal
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'IdCatalogoTipoSucursal') IS NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos ADD IdCatalogoTipoSucursal INT NOT NULL;
    PRINT 'Columna IdCatalogoTipoSucursal agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna IdCatalogoTipoSucursal ya existe.';
END;

-- Estado
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'Estado') IS NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos ADD Estado INT;
    PRINT 'Columna Estado agregada correctamente.';
END
ELSE
BEGIN
    PRINT 'La columna Estado ya existe.';
END;

-- Verificar y eliminar la constraint si existe
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
           WHERE CONSTRAINT_NAME = 'PkCo14' 
           AND TABLE_NAME = 'Co14SucursalesConvenioTipos')
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos DROP CONSTRAINT PkCo14;
END

-- Verificar si la nueva constraint ya existe antes de agregarla
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
               WHERE CONSTRAINT_NAME = 'Co14SucursalesConvenioTiposPk' 
               AND TABLE_NAME = 'Co14SucursalesConvenioTipos')
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos 
    ADD CONSTRAINT Co14SucursalesConvenioTiposPk 
    PRIMARY KEY (NumeroConvenio, NumeroSucursal, IdCatalogoTipoPrestador, IdCatalogoTipoSucursal);
END


-- Alter Co13SucursalesConvenio

-- NumeroPais
IF COL_LENGTH('Co13SucursalesConvenio', 'NumeroPais') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD NumeroPais INT;
    PRINT 'Columna NumeroPais agregada correctamente.';
END

-- NumeroProvincia
IF COL_LENGTH('Co13SucursalesConvenio', 'NumeroProvincia') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD NumeroProvincia INT;
    PRINT 'Columna NumeroProvincia agregada correctamente.';
END

-- CodigoCiudad
IF COL_LENGTH('Co13SucursalesConvenio', 'CodigoCiudad') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD CodigoCiudad INT;
    PRINT 'Columna CodigoCiudad agregada correctamente.';
END

-- IdCatalogoSector
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoSector') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD IdCatalogoSector INT;
    PRINT 'Columna IdCatalogoSector agregada correctamente.';
END

-- FechaCadPermFunc
IF COL_LENGTH('Co13SucursalesConvenio', 'FechaCadPermFunc') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD FechaCadPermFunc DATE;
    PRINT 'Columna FechaCadPermFunc agregada correctamente.';
END

-- IdCatalogoCategorizacion
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoCategorizacion') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD IdCatalogoCategorizacion INT;
    PRINT 'Columna IdCatalogoCategorizacion agregada correctamente.';
END

-- IdCatalogoTpa
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoTpa') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD IdCatalogoTpa INT;
    PRINT 'Columna IdCatalogoTpa agregada correctamente.';
END

-- IdCatalgoNivelCatalogo
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalgoNivelCatalogo') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD IdCatalgoNivelCatalogo INT;
    PRINT 'Columna IdCatalgoNivelCatalogo agregada correctamente.';
END

-- FranquiciaFarmacia
IF COL_LENGTH('Co13SucursalesConvenio', 'FranquiciaFarmacia') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD FranquiciaFarmacia BIT;
    PRINT 'Columna FranquiciaFarmacia agregada correctamente.';
END

-- RucFranquicia
IF COL_LENGTH('Co13SucursalesConvenio', 'RucFranquicia') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD RucFranquicia VARCHAR(30);
    PRINT 'Columna RucFranquicia agregada correctamente.';
END

-- RazonSocialFranquicia
IF COL_LENGTH('Co13SucursalesConvenio', 'RazonSocialFranquicia') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD RazonSocialFranquicia VARCHAR(255);
    PRINT 'Columna RazonSocialFranquicia agregada correctamente.';
END

-- Estado
IF COL_LENGTH('Co13SucursalesConvenio', 'Estado') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD Estado INT;
    PRINT 'Columna Estado agregada correctamente.';
END

-- NivelComplejidad
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoNivelComplejidad') IS NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio ADD IdCatalogoNivelComplejidad INT;
    PRINT 'Columna IdCatalogoNivelComplejidad agregada correctamente.';
END

-- Alter Co17ContactoConvenio

-- NumeroSucursal
IF COL_LENGTH('Co17ContactoConvenio', 'NumeroSucursal') IS NULL
BEGIN
    ALTER TABLE Co17ContactoConvenio ADD NumeroSucursal INT;
    PRINT 'Columna NumeroSucursal agregada correctamente.';
END

-- Direccion
IF COL_LENGTH('Co17ContactoConvenio', 'Direccion') IS NULL
BEGIN
    ALTER TABLE Co17ContactoConvenio ADD Direccion VARCHAR(400);
    PRINT 'Columna Direccion agregada correctamente.';
END

-- Alter Co19DetalleRed

-- Agregar NumeroSucursal
IF COL_LENGTH('Co19DetalleRed', 'NumeroSucursal') IS NULL
BEGIN
    ALTER TABLE Co19DetalleRed ADD NumeroSucursal INT;
    PRINT 'Columna NumeroSucursal agregada correctamente.';
END

-- Agregar Estado
IF COL_LENGTH('Co19DetalleRed', 'Estado') IS NULL
BEGIN
    ALTER TABLE Co19DetalleRed ADD Estado INT;
    PRINT 'Columna Estado agregada correctamente.';
END

-- Creacion de Forein Key para la tabla Co03ConvenioAdicional

-- FK: Co03ConvenioAdicional -> Tg04Ciudades
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg04CiudadesFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalTg04CiudadesFk FOREIGN KEY (CodigoCiudad)
    REFERENCES Tg04Ciudades (CodigoCiudad)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalTg04CiudadesFk creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalTg04CiudadesFk ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Tg11Provincias
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg11ProvinciasFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalTg11ProvinciasFk FOREIGN KEY (NumeroPais,NumeroProvincia)
    REFERENCES Tg11Provincias (NumeroPais,NumeroProvincia)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalTg11ProvinciasFk creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalTg11ProvinciasFk ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Tg10Paises
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg10PaisesFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalTg10PaisesFk FOREIGN KEY (NumeroPais)
    REFERENCES Tg10Paises (NumeroPais)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalTg10PaisesFk creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalTg10PaisesFk ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Co33Catalogo (TipoSociedad)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFk FOREIGN KEY (IdCatalogoTipoSociedad)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFk (TipoSociedad) creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFk (TipoSociedad) ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Co33Catalogo (Sector)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv2 FOREIGN KEY (IdCatalogoSector)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv2 (Sector) creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv2 (Sector) ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Co33Catalogo (TPA)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv3'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv3 FOREIGN KEY (IdCatalogoTpa)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv3 (TPA) creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv3 (TPA) ya existe.';
END
GO

-- FK: Co03ConvenioAdicional -> Co33Catalogo (Categorización)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv5'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    ADD CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv5 FOREIGN KEY (IdCatalogoCategorizacion)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv5 (Categorización) creada.';
END
ELSE
BEGIN
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv5 (Categorización) ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co13SucursalesConvenio

-- FK: Co13SucursalesConvenio -> Tg04Ciudades
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg04CiudadesFk'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Tg04Ciudades';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioTg04CiudadesFk 
    FOREIGN KEY (CodigoCiudad)
    REFERENCES Tg04Ciudades (CodigoCiudad)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Tg11Provincias
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg11ProvinciasFk'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Tg11Provincias';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioTg11ProvinciasFk 
    FOREIGN KEY (NumeroPais,NumeroProvincia)
    REFERENCES Tg11Provincias (NumeroPais,NumeroProvincia)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Tg10Paises
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg10PaisesFk'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Tg10Paises';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioTg10PaisesFk 
    FOREIGN KEY (NumeroPais)
    REFERENCES Tg10Paises (NumeroPais)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Co33Catalogo (Sector)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFk'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Co33Catalogo (Sector)';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioCo33CatalogoFk 
    FOREIGN KEY (IdCatalogoSector)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Co33Catalogo (Categorización)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv2'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Co33Catalogo (Categorización)';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv2 
    FOREIGN KEY (IdCatalogoCategorizacion)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Co33Catalogo (TPA)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv3'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Co33Catalogo (TPA)';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv3 
    FOREIGN KEY (IdCatalogoTpa)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO

-- FK: Co13SucursalesConvenio -> Co33Catalogo (NivelComplejidad)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv4'
)
BEGIN
    PRINT 'Agregando FK: Co13SucursalesConvenio -> Co33Catalogo (NivelComplejidad)';
    ALTER TABLE Co13SucursalesConvenio 
    ADD CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv4 
    FOREIGN KEY (IdCatalogoNivelComplejidad)
    REFERENCES Co33Catalogo (IdCatalogo)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
GO


-- Creacion de Forein Key para la tabla Co14SucursalesConvenioTipos

-- FK: Co14SucursalesConvenioTipos -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    ADD CONSTRAINT Co14SucursalesConvenioTiposCo13SucursalesConvenioFk FOREIGN KEY (
        NumeroConvenio, 
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio, 
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co14SucursalesConvenioTiposCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co14SucursalesConvenioTiposCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK: Co14SucursalesConvenioTipos -> Co33Catalogo (IdCatalogoTipoSucursal)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    ADD CONSTRAINT Co14SucursalesConvenioTiposCo33CatalogoFk FOREIGN KEY (
        IdCatalogoTipoSucursal
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co14SucursalesConvenioTiposCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co14SucursalesConvenioTiposCo33CatalogoFk ya existe.';
END
GO

-- FK: Co14SucursalesConvenioTipos -> Tg79Catalogo (IdCatalogoTipoPrestador)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    ADD CONSTRAINT Co14SucursalesConvenioTiposCo33CatalogoFkv2 FOREIGN KEY (
        IdCatalogoTipoPrestador
    )
    REFERENCES Tg79Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co14SucursalesConvenioTiposCo33CatalogoFkv2 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co14SucursalesConvenioTiposCo33CatalogoFkv2 ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co17ContactoConvenio

-- FK: Co17ContactoConvenio -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co17ContactoConvenioCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co17ContactoConvenio 
    ADD CONSTRAINT Co17ContactoConvenioCo13SucursalesConvenioFk 
    FOREIGN KEY 
    ( 
        NumeroConvenio, 
        NumeroSucursal
    ) 
    REFERENCES Co13SucursalesConvenio 
    ( 
        NumeroConvenio , 
        NumeroSucursal 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co17ContactoConvenioCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co17ContactoConvenioCo13SucursalesConvenioFk ya existe.';
END
GO


-- Creacion de Forein Key para la tabla Co19DetalleRed

-- FK: Co19DetalleRed -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co19DetalleRed_Co13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co19DetalleRed 
    ADD CONSTRAINT Co19DetalleRed_Co13SucursalesConvenioFk 
    FOREIGN KEY 
    ( 
        NumeroConvenio, 
        NumeroSucursal
    ) 
    REFERENCES Co13SucursalesConvenio 
    ( 
        NumeroConvenio , 
        NumeroSucursal 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co19DetalleRed_Co13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co19DetalleRed_Co13SucursalesConvenioFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co27Garantia

-- FK: Co27Garantia -> Co33Catalogo (TipoGarantia)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co27GarantiaCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co27Garantia 
    ADD CONSTRAINT Co27GarantiaCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoGarantia
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co27GarantiaCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co27GarantiaCo33CatalogoFk ya existe.';
END
GO

-- FK: Co27Garantia -> Co33Catalogo (CobroAlta)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co27GarantiaCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co27Garantia 
    ADD CONSTRAINT Co27GarantiaCo33CatalogoFkv2 FOREIGN KEY 
    ( 
        IdCatalogoCobroAlta
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv2 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co27GarantiaCo33CatalogoFkv2 ya existe.';
END
GO

-- FK: Co27Garantia -> Co33Catalogo (CreditoFinSemana)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co27GarantiaCo33CatalogoFkv3'
)
BEGIN
    ALTER TABLE Co27Garantia 
    ADD CONSTRAINT Co27GarantiaCo33CatalogoFkv3 FOREIGN KEY 
    ( 
        IdCatalogoCreditoFinSemana
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv3 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co27GarantiaCo33CatalogoFkv3 ya existe.';
END
GO

-- FK: Co27Garantia -> Co33Catalogo (PrestadorLLamada)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co27GarantiaCo33CatalogoFkv4'
)
BEGIN
    ALTER TABLE Co27Garantia 
    ADD CONSTRAINT Co27GarantiaCo33CatalogoFkv4 FOREIGN KEY 
    ( 
        IdCatalogoPrestadorLlamada
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv4 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co27GarantiaCo33CatalogoFkv4 ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co28ConvenioCataloEspecialidad

-- FK: Co28ConvenioCataloEspecialidad -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co28ConvenioCataloEspecialidadCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co28ConvenioCataloEspecialidad 
    ADD CONSTRAINT Co28ConvenioCataloEspecialidadCo03ConvenioFk FOREIGN KEY 
    ( 
        NumeroConvenio
    ) 
    REFERENCES Co03Convenio
    ( 
        NumeroConvenio 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co28ConvenioCataloEspecialidadCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co28ConvenioCataloEspecialidadCo03ConvenioFk ya existe.';
END
GO

-- FK: Co28ConvenioCataloEspecialidad -> Co32TipoPrestadorEspecialidad
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk'
)
BEGIN
    ALTER TABLE Co28ConvenioCataloEspecialidad 
    ADD CONSTRAINT Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk FOREIGN KEY 
    ( 
        IdCatalogoTipoPrestador, 
        CodigoEspecialidad
    ) 
    REFERENCES Co32TipoPrestadorEspecialidad 
    ( 
        IdCatalogoTipoPrestador , 
        CodigoEspecialidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co32TipoPrestadorEspecialidad

-- FK: Co32TipoPrestadorEspecialidad -> Co02CatalogoEspecialidades
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk'
)
BEGIN
    ALTER TABLE Co32TipoPrestadorEspecialidad 
    ADD CONSTRAINT Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk FOREIGN KEY 
    ( 
        CodigoEspecialidad
    ) 
    REFERENCES Co02CatalogoEspecialidades 
    ( 
        CodigoEspecialidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk ya existe.';
END
GO

-- FK: Co32TipoPrestadorEspecialidad -> Tg79Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co32TipoPrestadorEspecialidadTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co32TipoPrestadorEspecialidad 
    ADD CONSTRAINT Co32TipoPrestadorEspecialidadTg79CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Tg79Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co32TipoPrestadorEspecialidadTg79CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co32TipoPrestadorEspecialidadTg79CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co52TipPrestdrArqTipPrestdr

-- FK: Co52TipPrestdrArqTipPrestdr -> Co51TArquetipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk'
)
BEGIN
    PRINT 'Agregando FK: Co52TipPrestdrArqTipPrestdr -> Co51TArquetipoPrestador';
    ALTER TABLE Co52TipPrestdrArqTipPrestdr 
    ADD CONSTRAINT Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk FOREIGN KEY 
    ( 
        IdArquetipoPrestador
    ) 
    REFERENCES Co51TArquetipoPrestador 
    ( 
        IdArquetipoPrestador 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk ya existe.';
END
GO

-- FK: Co52TipPrestdrArqTipPrestdr -> Tg79Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co35TipPrestdrArqTipPrestdrTg79CatalogoFk'
)
BEGIN
    PRINT 'Agregando FK: Co52TipPrestdrArqTipPrestdr -> Tg79Catalogo';
    ALTER TABLE Co52TipPrestdrArqTipPrestdr 
    ADD CONSTRAINT Co35TipPrestdrArqTipPrestdrTg79CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Tg79Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co35TipPrestdrArqTipPrestdrTg79CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co35TipPrestdrArqTipPrestdrTg79CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co35TipPrestdrSubTipPrestdr

-- FK: Co35TipPrestdrSubTipPrestdr -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co35TipPrestdrSubTipPrestdrCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr 
    ADD CONSTRAINT Co35TipPrestdrSubTipPrestdrCo03ConvenioFk FOREIGN KEY 
    ( 
        NumeroConvenio
    ) 
    REFERENCES Co03Convenio
    ( 
        NumeroConvenio 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co35TipPrestdrSubTipPrestdrCo03ConvenioFk ya existe.';
END
GO

-- FK: Co35TipPrestdrSubTipPrestdr -> Co34SubTipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr 
    ADD CONSTRAINT Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk FOREIGN KEY 
    ( 
        IdSubTipoPrestador
    ) 
    REFERENCES Co34SubTipoPrestador 
    ( 
        IdSubTipoPrestador 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk ya existe.';
END
GO

-- FK: Co35TipPrestdrSubTipPrestdr -> Tg79Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co35TipPrestdrSubTipPrestdrTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr 
    ADD CONSTRAINT Co35TipPrestdrSubTipPrestdrTg79CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Tg79Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrTg79CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co35TipPrestdrSubTipPrestdrTg79CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co36HorarioAtencion

-- FK: Co36HorarioAtencion -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co36HorarioAtencionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion 
    ADD CONSTRAINT Co36HorarioAtencionCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co36HorarioAtencionCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co36HorarioAtencionCo03ConvenioFk ya existe.';
END
GO

-- FK: Co36HorarioAtencion -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co36HorarioAtencionCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion 
    ADD CONSTRAINT Co36HorarioAtencionCo13SucursalesConvenioFk FOREIGN KEY 
    (
        NumeroConvenio, 
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio, 
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co36HorarioAtencionCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co36HorarioAtencionCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK: Co36HorarioAtencion -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co36HorarioAtencionCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion 
    ADD CONSTRAINT Co36HorarioAtencionCo33CatalogoFk FOREIGN KEY 
    (
        IdCatalogoDiasSemana
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co36HorarioAtencionCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co36HorarioAtencionCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co37Imagen

-- FK: Co37Imagen -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co37ImagenCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co37Imagen 
    ADD CONSTRAINT Co37ImagenCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03ConvenioAdicional (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co37ImagenCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co37ImagenCo03ConvenioFk ya existe.';
END
GO

-- FK: Co37Imagen -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co37ImagenCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co37Imagen 
    ADD CONSTRAINT Co37ImagenCo13SucursalesConvenioFk FOREIGN KEY 
    (
        NumeroConvenio, 
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio, 
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co37ImagenCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co37ImagenCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK: Co37Imagen -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co37ImagenCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co37Imagen 
    ADD CONSTRAINT Co37ImagenCo33CatalogoFk FOREIGN KEY 
    (
        IdCatalogoTipoImagen
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co37ImagenCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co37ImagenCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co39ConvenioTipoPrestador

-- FK: Co39ConvenioTipoPrestador -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co39ConvenioTipoPrestadorCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co39ConvenioTipoPrestador 
    ADD CONSTRAINT Co39ConvenioTipoPrestadorCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co39ConvenioTipoPrestadorCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co39ConvenioTipoPrestadorCo03ConvenioFk ya existe.';
END
GO

-- FK: Co39ConvenioTipoPrestador -> Tg79Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co39ConvenioTipoPrestadorTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co39ConvenioTipoPrestador 
    ADD CONSTRAINT Co39ConvenioTipoPrestadorTg79CatalogoFk FOREIGN KEY 
    (
        IdCatalogoTipoPrestador
    )
    REFERENCES Tg79Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co39ConvenioTipoPrestadorTg79CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co39ConvenioTipoPrestadorTg79CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co41ConvenTipPrestdrConfigurcn

-- FK: Co41ConvenTipPrestdrConfigurcn -> Co39ConvenioTipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co41ConvenTipPrestdrConfigurcn 
    ADD CONSTRAINT Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk FOREIGN KEY 
    (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    )
    REFERENCES Co39ConvenioTipoPrestador (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk ya existe.';
END
GO

-- FK: Co41ConvenTipPrestdrConfigurcn -> Co40Configuracion
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk'
)
BEGIN
    ALTER TABLE Co41ConvenTipPrestdrConfigurcn 
    ADD CONSTRAINT Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk FOREIGN KEY 
    (
        IdConfiguracion
    )
    REFERENCES Co40Configuracion (
        IdConfiguracion
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co42Estudio

-- FK: Co42Estudio -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co42EstudioCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co42Estudio 
    ADD CONSTRAINT Co42EstudioCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co42EstudioCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co42EstudioCo03ConvenioFk ya existe.';
END
GO

-- FK: Co42Estudio -> Cl03Personas
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co43TituloCl03PersonasFk'
)
BEGIN
    ALTER TABLE Co42Estudio 
    ADD CONSTRAINT Co43TituloCl03PersonasFk FOREIGN KEY 
    (
        PersonaNumero
    )
    REFERENCES Cl03Personas (
        PersonaNumero
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co43TituloCl03PersonasFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co43TituloCl03PersonasFk ya existe.';
END
GO

-- FK: Co42Estudio -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co43TituloCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co42Estudio 
    ADD CONSTRAINT Co43TituloCo33CatalogoFk FOREIGN KEY 
    (
        IdCatalogoTipoTitulo
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co43TituloCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co43TituloCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co70Perfil

-- FK: Co70Perfil -> Co48Sistema
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co44Perfil_Co48Sitema_FK'
)
BEGIN
    ALTER TABLE Co70Perfil 
    ADD CONSTRAINT Co44Perfil_Co48Sitema_FK FOREIGN KEY 
    (
        IdSistema
    )
    REFERENCES Co48Sistema (
        IdSistema
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co44Perfil_Co48Sitema_FK creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co44Perfil_Co48Sitema_FK ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co45SucuCovServiAdic

-- FK: Co45SucuCovServiAdic -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co45SucuCovServiAdicCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic 
    ADD CONSTRAINT Co45SucuCovServiAdicCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co45SucuCovServiAdicCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co45SucuCovServiAdicCo03ConvenioFk ya existe.';
END
GO

-- FK: Co45SucuCovServiAdic -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co45SucuCovServiAdicCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic 
    ADD CONSTRAINT Co45SucuCovServiAdicCo13SucursalesConvenioFk FOREIGN KEY 
    (
        NumeroConvenio,
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio,
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co45SucuCovServiAdicCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co45SucuCovServiAdicCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK: Co45SucuCovServiAdic -> Co44ServicioAdicional
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co45SucuCovServiAdicCo44ServicioAdicionalFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic 
    ADD CONSTRAINT Co45SucuCovServiAdicCo44ServicioAdicionalFk FOREIGN KEY 
    (
        IdServicioAdicional
    )
    REFERENCES Co44ServicioAdicional (
        IdServicioAdicional
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co45SucuCovServiAdicCo44ServicioAdicionalFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co45SucuCovServiAdicCo44ServicioAdicionalFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co46SucuConvTipoSucuPres

-- FK 1: Co46SucuConvTipoSucuPres -> Co14SucursalesConvenioTipos
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres 
    ADD CONSTRAINT Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk FOREIGN KEY 
    (
        NumeroConvenio,
        NumeroSucursal,
        IdCatalogoTipoPrestador,
        IdCatalogoTipoSucursal
    )
    REFERENCES Co14SucursalesConvenioTipos (
        NumeroConvenio,
        NumeroSucursal,
        IdCatalogoTipoPrestador,
        IdCatalogoTipoSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk ya existe.';
END
GO

-- FK 2: Co46SucuConvTipoSucuPres -> Co33Catalogo (TipoFinanciamiento)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co46SucuConvTipoSucuPresCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres 
    ADD CONSTRAINT Co46SucuConvTipoSucuPresCo33CatalogoFk FOREIGN KEY 
    (
        IdCatalogoTipoFinanciamiento
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co46SucuConvTipoSucuPresCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co46SucuConvTipoSucuPresCo33CatalogoFk ya existe.';
END
GO

-- FK 3: Co46SucuConvTipoSucuPres -> Co33Catalogo (TipoDescuento)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co46SucuConvTipoSucuPresCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres 
    ADD CONSTRAINT Co46SucuConvTipoSucuPresCo33CatalogoFkv2 FOREIGN KEY 
    (
        IdCatalogoTipoDescuento
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co46SucuConvTipoSucuPresCo33CatalogoFkv2 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co46SucuConvTipoSucuPresCo33CatalogoFkv2 ya existe.';
END
GO

-- FK 4: Co46SucuConvTipoSucuPres -> PrestadorTarifario
/*IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co46SucuConvTipoSucuPres_PrestadorTarifario_FK'
)
BEGIN
    PRINT 'Agregando FK: Co46SucuConvTipoSucuPres -> PrestadorTarifario';
    ALTER TABLE Co46SucuConvTipoSucuPres 
    ADD CONSTRAINT Co46SucuConvTipoSucuPres_PrestadorTarifario_FK FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES PrestadorTarifario (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
ELSE
BEGIN
    PRINT 'La FK Co46SucuConvTipoSucuPres_PrestadorTarifario_FK ya existe.';
END
GO*/

-- FK 5: Co46SucuConvTipoSucuPres -> TipoServicio
/*IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co46SucuConvTipoSucuPres_TipoServicio_FK'
)
BEGIN
    PRINT 'Agregando FK: Co46SucuConvTipoSucuPres -> TipoServicio';
    ALTER TABLE Co46SucuConvTipoSucuPres 
    ADD CONSTRAINT Co46SucuConvTipoSucuPres_TipoServicio_FK FOREIGN KEY 
    (
        IdentServicio
    )
    REFERENCES TipoServicio (
        IdentServicio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
END
ELSE
BEGIN
    PRINT 'La FK Co46SucuConvTipoSucuPres_TipoServicio_FK ya existe.';
END
GO*/

-- Creacion de Forein Key para la tabla Co47FormaPagoSucursal

-- FK 1: Co47FormaPagoSucursal -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co47FormaPagoSucursalCo13SucursalesConvenioFk'
)
BEGIN
    PRINT 'Agregando FK: Co47FormaPagoSucursal -> Co13SucursalesConvenio';
    ALTER TABLE Co47FormaPagoSucursal 
    ADD CONSTRAINT Co47FormaPagoSucursalCo13SucursalesConvenioFk FOREIGN KEY 
    (
        NumeroConvenio,
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio,
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co47FormaPagoSucursalCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co47FormaPagoSucursalCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK 2: Co47FormaPagoSucursal -> Co33Catalogo (Forma de Pago)
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co47FormaPagoSucursalCo33CatalogoFk'
)
BEGIN
    PRINT 'Agregando FK: Co47FormaPagoSucursal -> Co33Catalogo';
    ALTER TABLE Co47FormaPagoSucursal 
    ADD CONSTRAINT Co47FormaPagoSucursalCo33CatalogoFk FOREIGN KEY 
    (
        IdCatalogoFormaPago
    )
    REFERENCES Co33Catalogo (
        IdCatalogo
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co47FormaPagoSucursalCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co47FormaPagoSucursalCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co49MotivoAnulacion

-- FK: Co49MotivoAnulacion -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co49MotivoAnulacionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co49MotivoAnulacion 
    ADD CONSTRAINT Co49MotivoAnulacionCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co49MotivoAnulacionCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co49MotivoAnulacionCo03ConvenioFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co76ControlInformacion

-- FK: Co76ControlInformacion -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co76ControlnformacionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion 
    ADD CONSTRAINT Co76ControlnformacionCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co76ControlnformacionCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co76ControlnformacionCo03ConvenioFk ya existe.';
END
GO

-- FK: Co76ControlInformacion -> Co13SucursalesConvenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co76ControlnformacionCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion 
    ADD CONSTRAINT Co76ControlnformacionCo13SucursalesConvenioFk FOREIGN KEY 
    (
        NumeroConvenio, 
        NumeroSucursal
    )
    REFERENCES Co13SucursalesConvenio (
        NumeroConvenio, 
        NumeroSucursal
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co76ControlnformacionCo13SucursalesConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co76ControlnformacionCo13SucursalesConvenioFk ya existe.';
END
GO

-- FK: Co76ControlInformacion -> Co48Sistema
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co76ControlnformacionCo48SistemaFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion 
    ADD CONSTRAINT Co76ControlnformacionCo48SistemaFk FOREIGN KEY 
    (
        IdSistema
    )
    REFERENCES Co48Sistema (
        IdSistema
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co76ControlnformacionCo48SistemaFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co76ControlnformacionCo48SistemaFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co50HistoricoAnulacnConven

-- FK: Co50HistoricoAnulacnConven -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co50HistoricoAnulacnConvenCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co50HistoricoAnulacnConven 
    ADD CONSTRAINT Co50HistoricoAnulacnConvenCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co50HistoricoAnulacnConvenCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co50HistoricoAnulacnConvenCo03ConvenioFk ya existe.';
END
GO

-- FK: Co50HistoricoAnulacnConven -> Co49MotivoAnulacion
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk'
)
BEGIN
    ALTER TABLE Co50HistoricoAnulacnConven 
    ADD CONSTRAINT Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk FOREIGN KEY 
    (
        IdMotivoAnulacion
    )
    REFERENCES Co49MotivoAnulacion (
        IdMotivoAnulacion
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co52TipPrestdrArqTipPrestdr

-- FK: Co52TipPrestdrArqTipPrestdr -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co52TipPrestdrArqTipPrestdrCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co52TipPrestdrArqTipPrestdr 
    ADD CONSTRAINT Co52TipPrestdrArqTipPrestdrCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co52TipPrestdrArqTipPrestdrCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co52TipPrestdrArqTipPrestdrCo03ConvenioFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co54ConvenioProcedimiento

-- FK: Co54ConvenioProcedimiento -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co54ConvenioProcedimientoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co54ConvenioProcedimiento 
    ADD CONSTRAINT Co54ConvenioProcedimientoCo03ConvenioFk FOREIGN KEY 
    (
        NumeroConvenio
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co54ConvenioProcedimientoCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co54ConvenioProcedimientoCo03ConvenioFk ya existe.';
END
GO

-- FK: Co54ConvenioProcedimiento -> Co53Procedimiento
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co54ConvenioProcedimientoCo53ProcedimientoFk'
)
BEGIN
    ALTER TABLE Co54ConvenioProcedimiento 
    ADD CONSTRAINT Co54ConvenioProcedimientoCo53ProcedimientoFk FOREIGN KEY 
    (
        IdProcedimiento
    )
    REFERENCES Co53Procedimiento (
        IdProcedimiento
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co54ConvenioProcedimientoCo53ProcedimientoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co54ConvenioProcedimientoCo53ProcedimientoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co55ConvenioOperacion

-- FK: Co55ConvenioOperacion -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co55ConvenioHospitalCo03ConvenioFkv2'
)
BEGIN
    ALTER TABLE Co55ConvenioOperacion 
    ADD CONSTRAINT Co55ConvenioHospitalCo03ConvenioFkv2 FOREIGN KEY 
    (
        NumeroConvenioOperacion
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co55ConvenioHospitalCo03ConvenioFkv2 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co55ConvenioHospitalCo03ConvenioFkv2 ya existe.';
END
GO

-- FK: Co55ConvenioOperacion -> Co39ConvenioTipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co55ConvenioOperacion 
    ADD CONSTRAINT Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk FOREIGN KEY 
    (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    )
    REFERENCES Co39ConvenioTipoPrestador (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co57NegociacionEspecial

-- FK: Co57NegociacionEspecialCo33CatalogoFk
IF NOT EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    ADD CONSTRAINT Co57NegociacionEspecialCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoPeriodoCalculo
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    
    PRINT 'FK Co57NegociacionEspecialCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co57NegociacionEspecialCo33CatalogoFk ya existe.';
END
GO

-- FK: Co57NegociacionEspecialCo33CatalogoFkv2
IF NOT EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    ADD CONSTRAINT Co57NegociacionEspecialCo33CatalogoFkv2 FOREIGN KEY 
    ( 
        IdCatalogoPrestaciones
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    
    PRINT 'FK Co57NegociacionEspecialCo33CatalogoFkv2 creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co57NegociacionEspecialCo33CatalogoFkv2 ya existe.';
END
GO

-- FK: Co57NegociacionEspecialCo56TipoNegociacionEspecialFk
IF NOT EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo56TipoNegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    ADD CONSTRAINT Co57NegociacionEspecialCo56TipoNegociacionEspecialFk FOREIGN KEY 
    ( 
        IdTipoNegociacionEspecial
    ) 
    REFERENCES Co56TipoNegociacionEspecial 
    ( 
        IdTipoNegociacionEspecial 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;

    PRINT 'FK Co57NegociacionEspecialCo56TipoNegociacionEspecialFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co57NegociacionEspecialCo56TipoNegociacionEspecialFk ya existe.';
END
GO

-- FK: Co57NegociacionEspecial_TipoServicio_FK
/*IF NOT EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecial_TipoServicio_FK'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    ADD CONSTRAINT Co57NegociacionEspecial_TipoServicio_FK FOREIGN KEY 
    ( 
        IdentServicio
    ) 
    REFERENCES TipoServicio 
    ( 
        IdentServicio 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;

    PRINT 'FK Co57NegociacionEspecial_TipoServicio_FK creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co57NegociacionEspecial_TipoServicio_FK ya existe.';
END
GO*/

-- Creacion de Forein Key para la tabla Co58ConvenNegociacnEspecl

-- FK: Co58ConvenNegociacnEspecl -> Co39ConvenioTipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co58ConvenNegociacnEspecl 
    ADD CONSTRAINT Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk FOREIGN KEY 
    (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Co39ConvenioTipoPrestador (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk ya existe.';
END
GO

-- FK: Co58ConvenNegociacnEspecl -> Co57NegociacionEspecial
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co58ConvenNegociacnEspecl 
    ADD CONSTRAINT Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk FOREIGN KEY 
    (
        IdNegociacionEspecial, 
        IdTipoNegociacionEspecial
    ) 
    REFERENCES Co57NegociacionEspecial (
        IdNegociacionEspecial, 
        IdTipoNegociacionEspecial
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co60CargaDocumento

-- FK: Co60CargaDocumento -> Co14SucursalesConvenioTipos
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co60CargaDocumentoCo14SucursalesConvenioTiposFk'
)
BEGIN
    ALTER TABLE Co60CargaDocumento 
    ADD CONSTRAINT Co60CargaDocumentoCo14SucursalesConvenioTiposFk FOREIGN KEY 
    (
        NumeroConvenio, 
        NumeroSucursal, 
        IdCatalogoTipoPrestador,
        IdCatalogoTipoSucursal
    ) 
    REFERENCES Co14SucursalesConvenioTipos (
        NumeroConvenio, 
        NumeroSucursal, 
        IdCatalogoTipoPrestador, 
        IdCatalogoTipoSucursal
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co60CargaDocumentoCo14SucursalesConvenioTiposFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co60CargaDocumentoCo14SucursalesConvenioTiposFk ya existe.';
END
GO

-- FK: Co60CargaDocumento -> Co39ConvenioTipoPrestador
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co60CargaDocumentoCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co60CargaDocumento 
    ADD CONSTRAINT Co60CargaDocumentoCo39ConvenioTipoPrestadorFk FOREIGN KEY 
    (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Co39ConvenioTipoPrestador (
        NumeroConvenio, 
        IdCatalogoTipoPrestador
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co60CargaDocumentoCo39ConvenioTipoPrestadorFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co60CargaDocumentoCo39ConvenioTipoPrestadorFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co61TipoPrestadorDocumento

-- FK: Co61TipoPrestadorDocumento -> Co59TipoDocumento
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co61TipoPrestadorDocumentoCo59TipoDocumentoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    ADD CONSTRAINT Co61TipoPrestadorDocumentoCo59TipoDocumentoFk FOREIGN KEY 
    (
        IdTipoDocumento
    ) 
    REFERENCES Co59TipoDocumento (
        IdTipoDocumento
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co61TipoPrestadorDocumentoCo59TipoDocumentoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co61TipoPrestadorDocumentoCo59TipoDocumentoFk ya existe.';
END
GO

-- FK: Co61TipoPrestadorDocumento -> Co60CargaDocumento
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co61TipoPrestadorDocumentoCo60CargaDocumentoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    ADD CONSTRAINT Co61TipoPrestadorDocumentoCo60CargaDocumentoFk FOREIGN KEY 
    (
        IdCargaDocumento
    ) 
    REFERENCES Co60CargaDocumento (
        IdCargaDocumento
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co61TipoPrestadorDocumentoCo60CargaDocumentoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co61TipoPrestadorDocumentoCo60CargaDocumentoFk ya existe.';
END
GO

-- FK: Co61TipoPrestadorDocumento -> Tg79Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co61TipoPrestadorDocumentoTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    ADD CONSTRAINT Co61TipoPrestadorDocumentoTg79CatalogoFk FOREIGN KEY 
    (
        IdCatalogoTipoPrestador
    ) 
    REFERENCES Tg79Catalogo (
        IdCatalogo
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co61TipoPrestadorDocumentoTg79CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co61TipoPrestadorDocumentoTg79CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co62HistorialCargaDocumento

-- FK: Co62HistorialCargaDocumento -> Co60CargaDocumento
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co62HistorialCargaDocumentoCo60CargaDocumentoFk'
)
BEGIN
    ALTER TABLE Co62HistorialCargaDocumento 
    ADD CONSTRAINT Co62HistorialCargaDocumentoCo60CargaDocumentoFk FOREIGN KEY 
    ( 
        IdCargaDocumento
    ) 
    REFERENCES Co60CargaDocumento 
    ( 
        IdCargaDocumento 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co62HistorialCargaDocumentoCo60CargaDocumentoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co62HistorialCargaDocumentoCo60CargaDocumentoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co77HistoricNegociacnEspecl

-- FK: Co77HistoricNegociacnEspecl -> Co57NegociacionEspecial
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co77HistoricNegociacnEspecl 
    ADD CONSTRAINT Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk FOREIGN KEY 
    ( 
        IdNegociacionEspecial, 
        IdTipoNegociacionEspecial
    ) 
    REFERENCES Co57NegociacionEspecial 
    ( 
        IdNegociacionEspecial, 
        IdTipoNegociacionEspecial 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co63ConvenioTipoPago

-- FK: Co63ConvenioTipoPago -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co63ConvenioTipoPagoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co63ConvenioTipoPago 
    ADD CONSTRAINT Co63ConvenioTipoPagoCo03ConvenioFk FOREIGN KEY 
    ( 
        NumeroConvenio
    ) 
    REFERENCES Co03Convenio
    ( 
        NumeroConvenio 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co63ConvenioTipoPagoCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co63ConvenioTipoPagoCo03ConvenioFk ya existe.';
END
GO

-- FK: Co63ConvenioTipoPago -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co63ConvenioTipoPagoCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co63ConvenioTipoPago 
    ADD CONSTRAINT Co63ConvenioTipoPagoCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoPago
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co63ConvenioTipoPagoCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co63ConvenioTipoPagoCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co64ConvenioFormaPago

-- FK: Co64ConvenioFormaPago -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co64ConvenioFormaPagoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co64ConvenioFormaPago 
    ADD CONSTRAINT Co64ConvenioFormaPagoCo03ConvenioFk FOREIGN KEY 
    ( 
        NumeroConvenio
    ) 
    REFERENCES Co03Convenio
    ( 
        NumeroConvenio 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co64ConvenioFormaPagoCo03ConvenioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co64ConvenioFormaPagoCo03ConvenioFk ya existe.';
END
GO

-- FK: Co64ConvenioFormaPago -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co64ConvenioFormaPagoCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co64ConvenioFormaPago 
    ADD CONSTRAINT Co64ConvenioFormaPagoCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoFormaPago
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co64ConvenioFormaPagoCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co64ConvenioFormaPagoCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co65EstructuraNegociacnEspecl

-- FK: Co65EstructuraNegociacnEspecl -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co65EstructuraNegociacnEspeclCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co65EstructuraNegociacnEspecl 
    ADD CONSTRAINT Co65EstructuraNegociacnEspeclCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoTipoConsultaMedica
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co65EstructuraNegociacnEspeclCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co65EstructuraNegociacnEspeclCo33CatalogoFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co66DetalleNegociacionEspecial

-- FK: Co66DetalleNegociacionEspecial -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co66DetalleNegociacionEspecialCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co66DetalleNegociacionEspecial 
    ADD CONSTRAINT Co66DetalleNegociacionEspecialCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoDetalleNegociacion
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co66DetalleNegociacionEspecialCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co66DetalleNegociacionEspecialCo33CatalogoFk ya existe.';
END
GO

-- FK: Co66DetalleNegociacionEspecial -> Co57NegociacionEspecial
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co66DetalleNegociacionEspecial 
    ADD CONSTRAINT Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk FOREIGN KEY 
    ( 
        IdNegociacionEspecial, 
        IdTipoNegociacionEspecial
    ) 
    REFERENCES Co57NegociacionEspecial 
    ( 
        IdNegociacionEspecial , 
        IdTipoNegociacionEspecial 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co67DetallNegocicnEspeclNivel

-- FK: Co67DetallNegocicnEspeclNivel -> Co33Catalogo
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co67DetallNegocicnEspeclNivelCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co67DetallNegocicnEspeclNivel 
    ADD CONSTRAINT Co67DetallNegocicnEspeclNivelCo33CatalogoFk FOREIGN KEY 
    ( 
        IdCatalogoNivel
    ) 
    REFERENCES Co33Catalogo 
    ( 
        IdCatalogo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co67DetallNegocicnEspeclNivelCo33CatalogoFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co67DetallNegocicnEspeclNivelCo33CatalogoFk ya existe.';
END
GO

-- FK: Co67DetallNegocicnEspeclNivel -> Co66DetalleNegociacionEspecial
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co67DetallNegocicnEspeclNivel 
    ADD CONSTRAINT Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk FOREIGN KEY 
    ( 
        IdDetalleNegociacionEspecial
    ) 
    REFERENCES Co66DetalleNegociacionEspecial 
    ( 
        IdDetalleNegociacionEspecial 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co69EspecialidadZonaCuerpo

-- FK: Co69EspecialidadZonaCuerpo -> Co28ConvenioCataloEspecialidad
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk'
)
BEGIN
    ALTER TABLE Co69EspecialidadZonaCuerpo 
    ADD CONSTRAINT Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk FOREIGN KEY 
    ( 
        NumeroConvenio, 
        IdCatalogoTipoPrestador, 
        CodigoEspecialidad
    ) 
    REFERENCES Co28ConvenioCataloEspecialidad 
    ( 
        NumeroConvenio , 
        IdCatalogoTipoPrestador , 
        CodigoEspecialidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk ya existe.';
END
GO

-- FK: Co69EspecialidadZonaCuerpo -> Co68ZonaCuerpoEspecializacion
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk'
)
BEGIN
    ALTER TABLE Co69EspecialidadZonaCuerpo 
    ADD CONSTRAINT Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk FOREIGN KEY 
    ( 
        IdZonaCuerpoEspecializacion
    ) 
    REFERENCES Co68ZonaCuerpoEspecializacion 
    ( 
        IdZonaCuerpoEspecializacion 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co71UsuarioPerfil

-- FK: Co71UsuarioPerfil -> Co43Usuario
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co71UsuarioPerfilCo43UsuarioFk'
)
BEGIN
    ALTER TABLE Co71UsuarioPerfil 
    ADD CONSTRAINT Co71UsuarioPerfilCo43UsuarioFk FOREIGN KEY 
    ( 
        IdUsuario
    ) 
    REFERENCES Co43Usuario 
    ( 
        IdUsuario 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co71UsuarioPerfilCo43UsuarioFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co71UsuarioPerfilCo43UsuarioFk ya existe.';
END
GO

-- FK: Co71UsuarioPerfil -> Co70Perfil
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co71UsuarioPerfilCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co71UsuarioPerfil 
    ADD CONSTRAINT Co71UsuarioPerfilCo70PerfilFk FOREIGN KEY 
    ( 
        IdPerfil
    ) 
    REFERENCES Co70Perfil 
    ( 
        IdPerfil 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co71UsuarioPerfilCo70PerfilFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co71UsuarioPerfilCo70PerfilFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co72Menu

-- FK: Co72Menu -> Co48Sistema
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co72MenuCo48SitemaFk'
)
BEGIN
    ALTER TABLE Co72Menu 
    ADD CONSTRAINT Co72MenuCo48SitemaFk FOREIGN KEY 
    ( 
        IdSistema
    ) 
    REFERENCES Co48Sistema 
    ( 
        IdSistema 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co72MenuCo48SitemaFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co72MenuCo48SitemaFk ya existe.';
END
GO

-- FK: Co72Menu -> Co72Menu
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co72MenuCo72MenuFk'
)
BEGIN
    ALTER TABLE Co72Menu 
    ADD CONSTRAINT Co72MenuCo72MenuFk FOREIGN KEY 
    ( 
        IdMenuPadre
    ) 
    REFERENCES Co72Menu 
    ( 
        IdMenu 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co72MenuCo72MenuFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co72MenuCo72MenuFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co73Funcionalidad

-- FK: Co73Funcionalidad -> Co48Sistema
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co73FuncionalidadCo48SitemaFk'
)
BEGIN
    ALTER TABLE Co73Funcionalidad 
    ADD CONSTRAINT Co73FuncionalidadCo48SitemaFk FOREIGN KEY 
    ( 
        IdSistema
    ) 
    REFERENCES Co48Sistema 
    ( 
        IdSistema 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co73FuncionalidadCo48SitemaFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co73FuncionalidadCo48SitemaFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co74PerfilMenu

-- FK: Co74PerfilMenu -> Co70Perfil
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co74PerfilMenuCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co74PerfilMenu 
    ADD CONSTRAINT Co74PerfilMenuCo70PerfilFk FOREIGN KEY 
    ( 
        IdPerfil
    ) 
    REFERENCES Co70Perfil 
    ( 
        IdPerfil 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co74PerfilMenuCo70PerfilFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co74PerfilMenuCo70PerfilFk ya existe.';
END
GO

-- FK: Co74PerfilMenu -> Co72Menu
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co74PerfilMenuCo72MenuFk'
)
BEGIN
    ALTER TABLE Co74PerfilMenu 
    ADD CONSTRAINT Co74PerfilMenuCo72MenuFk FOREIGN KEY 
    ( 
        IdMenu
    ) 
    REFERENCES Co72Menu 
    ( 
        IdMenu 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co74PerfilMenuCo72MenuFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co74PerfilMenuCo72MenuFk ya existe.';
END
GO

-- Creacion de Forein Key para la tabla Co75PerfilFuncionalidad

-- FK: Co75PerfilFuncionalidad -> Co70Perfil
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co75PerfilFuncionalidadCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co75PerfilFuncionalidad 
    ADD CONSTRAINT Co75PerfilFuncionalidadCo70PerfilFk FOREIGN KEY 
    ( 
        IdPerfil
    ) 
    REFERENCES Co70Perfil 
    ( 
        IdPerfil 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co75PerfilFuncionalidadCo70PerfilFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co75PerfilFuncionalidadCo70PerfilFk ya existe.';
END
GO

-- FK: Co75PerfilFuncionalidad -> Co73Funcionalidad
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co75PerfilFuncionalidadCo73FuncionalidadFk'
)
BEGIN
    ALTER TABLE Co75PerfilFuncionalidad 
    ADD CONSTRAINT Co75PerfilFuncionalidadCo73FuncionalidadFk FOREIGN KEY 
    ( 
        IdFuncionalidad
    ) 
    REFERENCES Co73Funcionalidad 
    ( 
        IdFuncionalidad 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co75PerfilFuncionalidadCo73FuncionalidadFk creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co75PerfilFuncionalidadCo73FuncionalidadFk ya existe.';
END
GO


-- FK: Co78EmpresaConvenioStaffMedico -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co78EmpresaCo03ConvenioEmpresaFkv'
)
BEGIN
   ALTER TABLE Co78EmpresaConvenioStaffMedico
    ADD CONSTRAINT Co78EmpresaCo03ConvenioEmpresaFkv FOREIGN KEY 
    (
        NumeroConvenioEmpresa
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co78EmpresaCo03ConvenioEmpresaFkv creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co78EmpresaCo03ConvenioEmpresaFkv ya existe.';
END
GO


-- FK: Co78EmpresaConvenioStaffMedico -> Co03Convenio
IF NOT EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co78EmpresaCo03ConvenioMedicoFkv'
)
BEGIN
   ALTER TABLE Co78EmpresaConvenioStaffMedico
    ADD CONSTRAINT Co78EmpresaCo03ConvenioMedicoFkv FOREIGN KEY 
    (
        NumeroConvenioMedico
    )
    REFERENCES Co03Convenio (
        NumeroConvenio
    )
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;
    PRINT 'FK Co78EmpresaCo03ConvenioMedicoFkv creada.';
END
ELSE
BEGIN
    PRINT 'La FK Co78EmpresaCo03ConvenioMedicoFkv ya existe.';
END
GO