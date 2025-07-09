-- Rollback para eliminar Foreign Keys en la tabla Co03ConvenioAdicional

-- Eliminar FK: Co03ConvenioAdicional -> Tg04Ciudades
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg04CiudadesFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalTg04CiudadesFk;
    PRINT 'FK Co03ConvenioAdicionalTg04CiudadesFk eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Tg11Provincias
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg11ProvinciasFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalTg11ProvinciasFk;
    PRINT 'FK Co03ConvenioAdicionalTg11ProvinciasFk eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Tg10Paises
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalTg10PaisesFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalTg10PaisesFk;
    PRINT 'FK Co03ConvenioAdicionalTg10PaisesFk eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Co33Catalogo (TipoSociedad)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFk;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFk (TipoSociedad) eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Co33Catalogo (Sector)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv2;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv2 (Sector) eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Co33Catalogo (TPA)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv3'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv3;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv3 (TPA) eliminada correctamente.';
END

-- Eliminar FK: Co03ConvenioAdicional -> Co33Catalogo (Categorización)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co03ConvenioAdicionalCo33CatalogoFkv5'
)
BEGIN
    ALTER TABLE Co03ConvenioAdicional 
    DROP CONSTRAINT Co03ConvenioAdicionalCo33CatalogoFkv5;
    PRINT 'FK Co03ConvenioAdicionalCo33CatalogoFkv5 (Categorización) eliminada correctamente.';
END

-- Rollback para eliminar Foreign Keys en la tabla Co13SucursalesConvenio

-- Eliminar FK: Co13SucursalesConvenio -> Tg04Ciudades
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg04CiudadesFk'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioTg04CiudadesFk;
    PRINT 'FK Co13SucursalesConvenioTg04CiudadesFk eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Tg11Provincias
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg11ProvinciasFk'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioTg11ProvinciasFk;
    PRINT 'FK Co13SucursalesConvenioTg11ProvinciasFk eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Tg10Paises
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioTg10PaisesFk'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioTg10PaisesFk;
    PRINT 'FK Co13SucursalesConvenioTg10PaisesFk eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Co33Catalogo (Sector)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioCo33CatalogoFk;
    PRINT 'FK Co13SucursalesConvenioCo33CatalogoFk (Sector) eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Co33Catalogo (Categorización)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv2;
    PRINT 'FK Co13SucursalesConvenioCo33CatalogoFkv2 (Categorización) eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Co33Catalogo (TPA)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv3'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv3;
    PRINT 'FK Co13SucursalesConvenioCo33CatalogoFkv3 (TPA) eliminada correctamente.';
END

-- Eliminar FK: Co13SucursalesConvenio -> Co33Catalogo (NivelComplejidad)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys WHERE name = 'Co13SucursalesConvenioCo33CatalogoFkv4'
)
BEGIN
    ALTER TABLE Co13SucursalesConvenio 
    DROP CONSTRAINT Co13SucursalesConvenioCo33CatalogoFkv4;
    PRINT 'FK Co13SucursalesConvenioCo33CatalogoFkv4 (NivelComplejidad) eliminada correctamente.';
END

-- Rollback para eliminar Foreign Keys en la tabla Co14SucursalesConvenioTipos

-- Eliminar FK: Co14SucursalesConvenioTipos -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    DROP CONSTRAINT Co14SucursalesConvenioTiposCo13SucursalesConvenioFk;
    PRINT 'FK Co14SucursalesConvenioTiposCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co14SucursalesConvenioTipos -> Co33Catalogo (IdCatalogoTipoSucursal)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    DROP CONSTRAINT Co14SucursalesConvenioTiposCo33CatalogoFk;
    PRINT 'FK Co14SucursalesConvenioTiposCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co14SucursalesConvenioTipos -> Tg79Catalogo (IdCatalogoTipoPrestador)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co14SucursalesConvenioTiposCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos
    DROP CONSTRAINT Co14SucursalesConvenioTiposCo33CatalogoFkv2;
    PRINT 'FK Co14SucursalesConvenioTiposCo33CatalogoFkv2 eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co17ContactoConvenio

-- Eliminar FK: Co17ContactoConvenio -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co17ContactoConvenioCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co17ContactoConvenio
    DROP CONSTRAINT Co17ContactoConvenioCo13SucursalesConvenioFk;
    PRINT 'FK Co17ContactoConvenioCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co19DetalleRed

-- Eliminar FK: Co19DetalleRed -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co19DetalleRed_Co13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co19DetalleRed
    DROP CONSTRAINT Co19DetalleRed_Co13SucursalesConvenioFk;
    PRINT 'FK Co19DetalleRed_Co13SucursalesConvenioFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co27Garantia

-- Eliminar FK: Co27Garantia -> Co33Catalogo (TipoGarantia)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co27GarantiaCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co27Garantia
    DROP CONSTRAINT Co27GarantiaCo33CatalogoFk;
    PRINT 'FK Co27GarantiaCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co27Garantia -> Co33Catalogo (CobroAlta)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co27GarantiaCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co27Garantia
    DROP CONSTRAINT Co27GarantiaCo33CatalogoFkv2;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv2 eliminada correctamente.';
END

-- Eliminar FK: Co27Garantia -> Co33Catalogo (CreditoFinSemana)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co27GarantiaCo33CatalogoFkv3'
)
BEGIN
    ALTER TABLE Co27Garantia
    DROP CONSTRAINT Co27GarantiaCo33CatalogoFkv3;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv3 eliminada correctamente.';
END

-- Eliminar FK: Co27Garantia -> Co33Catalogo (PrestadorLLamada)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co27GarantiaCo33CatalogoFkv4'
)
BEGIN
    ALTER TABLE Co27Garantia
    DROP CONSTRAINT Co27GarantiaCo33CatalogoFkv4;
    PRINT 'FK Co27GarantiaCo33CatalogoFkv4 eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co28ConvenioCataloEspecialidad

-- Eliminar FK: Co28ConvenioCataloEspecialidad -> Co03ConvenioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co28ConvenioCataloEspecialidadCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co28ConvenioCataloEspecialidad
    DROP CONSTRAINT Co28ConvenioCataloEspecialidadCo03ConvenioFk;
    PRINT 'FK Co28ConvenioCataloEspecialidadCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co28ConvenioCataloEspecialidad -> Co32TipoPrestadorEspecialidad
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk'
)
BEGIN
    ALTER TABLE Co28ConvenioCataloEspecialidad
    DROP CONSTRAINT Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk;
    PRINT 'FK Co28ConvenioCataloEspecialidadCo32TipoPrestadorEspecialidadFk eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co32TipoPrestadorEspecialidad

-- Eliminar FK: Co32TipoPrestadorEspecialidad -> Co02CatalogoEspecialidades
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk'
)
BEGIN
    ALTER TABLE Co32TipoPrestadorEspecialidad
    DROP CONSTRAINT Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk;
    PRINT 'FK Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co32TipoPrestadorEspecialidad

-- Eliminar FK: Co32TipoPrestadorEspecialidad -> Co02CatalogoEspecialidades
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk'
)
BEGIN
    ALTER TABLE Co32TipoPrestadorEspecialidad
    DROP CONSTRAINT Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk;
    PRINT 'FK Co32TipoPrestadorEspecialidadCo02CatalogoEspecialidadesFk eliminada correctamente.';
END

-- Eliminar FK: Co32TipoPrestadorEspecialidad -> Tg79Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co32TipoPrestadorEspecialidadTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co32TipoPrestadorEspecialidad
    DROP CONSTRAINT Co32TipoPrestadorEspecialidadTg79CatalogoFk;
    PRINT 'FK Co32TipoPrestadorEspecialidadTg79CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co52TipPrestdrArqTipPrestdr

-- Eliminar FK: Co52TipPrestdrArqTipPrestdr -> Co51TArquetipoPrestador
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co52TipPrestdrArqTipPrestdr
    DROP CONSTRAINT Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk;
    PRINT 'FK Co35TipPrestdrArqTipPrestdrCo51TArquetipoPrestadorFk eliminada correctamente.';
END

-- Eliminar FK: Co52TipPrestdrArqTipPrestdr -> Tg79Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co35TipPrestdrArqTipPrestdrTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co52TipPrestdrArqTipPrestdr
    DROP CONSTRAINT Co35TipPrestdrArqTipPrestdrTg79CatalogoFk;
    PRINT 'FK Co35TipPrestdrArqTipPrestdrTg79CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co35TipPrestdrSubTipPrestdr

-- Eliminar FK: Co35TipPrestdrSubTipPrestdr -> Co03ConvenioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co35TipPrestdrSubTipPrestdrCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr
    DROP CONSTRAINT Co35TipPrestdrSubTipPrestdrCo03ConvenioFk;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co35TipPrestdrSubTipPrestdr -> Co34SubTipoPrestador
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr
    DROP CONSTRAINT Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrCo34SubTipoPrestadorFk eliminada correctamente.';
END

-- Eliminar FK: Co35TipPrestdrSubTipPrestdr -> Tg79Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co35TipPrestdrSubTipPrestdrTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co35TipPrestdrSubTipPrestdr
    DROP CONSTRAINT Co35TipPrestdrSubTipPrestdrTg79CatalogoFk;
    PRINT 'FK Co35TipPrestdrSubTipPrestdrTg79CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co36HorarioAtencion

-- Eliminar FK: Co36HorarioAtencion -> Co03ConvenioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co36HorarioAtencionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion
    DROP CONSTRAINT Co36HorarioAtencionCo03ConvenioFk;
    PRINT 'FK Co36HorarioAtencionCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co36HorarioAtencion -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co36HorarioAtencionCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion
    DROP CONSTRAINT Co36HorarioAtencionCo13SucursalesConvenioFk;
    PRINT 'FK Co36HorarioAtencionCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co36HorarioAtencion -> Co33Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co36HorarioAtencionCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co36HorarioAtencion
    DROP CONSTRAINT Co36HorarioAtencionCo33CatalogoFk;
    PRINT 'FK Co36HorarioAtencionCo33CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co37Imagen

-- Eliminar FK: Co37Imagen -> Co03ConvenioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co37ImagenCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co37Imagen
    DROP CONSTRAINT Co37ImagenCo03ConvenioFk;
    PRINT 'FK Co37ImagenCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co37Imagen -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co37ImagenCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co37Imagen
    DROP CONSTRAINT Co37ImagenCo13SucursalesConvenioFk;
    PRINT 'FK Co37ImagenCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co37Imagen -> Co33Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co37ImagenCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co37Imagen
    DROP CONSTRAINT Co37ImagenCo33CatalogoFk;
    PRINT 'FK Co37ImagenCo33CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co39ConvenioTipoPrestador

-- Eliminar FK: Co39ConvenioTipoPrestador -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co39ConvenioTipoPrestadorCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co39ConvenioTipoPrestador
    DROP CONSTRAINT Co39ConvenioTipoPrestadorCo03ConvenioFk;
    PRINT 'FK Co39ConvenioTipoPrestadorCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co39ConvenioTipoPrestador -> Tg79Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co39ConvenioTipoPrestadorTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co39ConvenioTipoPrestador
    DROP CONSTRAINT Co39ConvenioTipoPrestadorTg79CatalogoFk;
    PRINT 'FK Co39ConvenioTipoPrestadorTg79CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co41ConvenTipPrestdrConfigurcn

-- Eliminar FK: Co41ConvenTipPrestdrConfigurcn -> Co39ConvenioTipoPrestador
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co41ConvenTipPrestdrConfigurcn
    DROP CONSTRAINT Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk;
    PRINT 'FK Co41ConvenTipPrestdrConfigurcnCo39ConvenioTipoPrestadorFk eliminada correctamente.';
END

-- Eliminar FK: Co41ConvenTipPrestdrConfigurcn -> Co40Configuracion
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk'
)
BEGIN
    ALTER TABLE Co41ConvenTipPrestdrConfigurcn
    DROP CONSTRAINT Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk;
    PRINT 'FK Co41ConvenTipPrestdrConfigurcnCo40ConfiguracionFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co42Estudio

-- Eliminar FK: Co42Estudio -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co42EstudioCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co42Estudio
    DROP CONSTRAINT Co42EstudioCo03ConvenioFk;
    PRINT 'FK Co42EstudioCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co42Estudio -> Cl03Personas
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co43TituloCl03PersonasFk'
)
BEGIN
    ALTER TABLE Co42Estudio
    DROP CONSTRAINT Co43TituloCl03PersonasFk;
    PRINT 'FK Co43TituloCl03PersonasFk eliminada correctamente.';
END

-- Eliminar FK: Co42Estudio -> Co33Catalogo
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co43TituloCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co42Estudio
    DROP CONSTRAINT Co43TituloCo33CatalogoFk;
    PRINT 'FK Co43TituloCo33CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co70Perfil

-- Eliminar FK: Co70Perfil -> Co48Sistema
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co44Perfil_Co48Sitema_FK'
)
BEGIN
    ALTER TABLE Co70Perfil
    DROP CONSTRAINT Co44Perfil_Co48Sitema_FK;
    PRINT 'FK Co44Perfil_Co48Sitema_FK eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co45SucuCovServiAdic

-- Eliminar FK: Co45SucuCovServiAdic -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co45SucuCovServiAdicCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic
    DROP CONSTRAINT Co45SucuCovServiAdicCo03ConvenioFk;
    PRINT 'FK Co45SucuCovServiAdicCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co45SucuCovServiAdic -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co45SucuCovServiAdicCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic
    DROP CONSTRAINT Co45SucuCovServiAdicCo13SucursalesConvenioFk;
    PRINT 'FK Co45SucuCovServiAdicCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co45SucuCovServiAdic -> Co44ServicioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co45SucuCovServiAdicCo44ServicioAdicionalFk'
)
BEGIN
    ALTER TABLE Co45SucuCovServiAdic
    DROP CONSTRAINT Co45SucuCovServiAdicCo44ServicioAdicionalFk;
    PRINT 'FK Co45SucuCovServiAdicCo44ServicioAdicionalFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co46SucuConvTipoSucuPres

-- Eliminar FK: Co46SucuConvTipoSucuPres -> Co14SucursalesConvenioTipos
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres
    DROP CONSTRAINT Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk;
    PRINT 'FK Co46SucuConvTipoSucuPresCo14SucursalesConvenioTiposFk eliminada correctamente.';
END

-- Eliminar FK: Co46SucuConvTipoSucuPres -> Co33Catalogo (TipoFinanciamiento)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co46SucuConvTipoSucuPresCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres
    DROP CONSTRAINT Co46SucuConvTipoSucuPresCo33CatalogoFk;
    PRINT 'FK Co46SucuConvTipoSucuPresCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co46SucuConvTipoSucuPres -> Co33Catalogo (TipoDescuento)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co46SucuConvTipoSucuPresCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co46SucuConvTipoSucuPres
    DROP CONSTRAINT Co46SucuConvTipoSucuPresCo33CatalogoFkv2;
    PRINT 'FK Co46SucuConvTipoSucuPresCo33CatalogoFkv2 eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co47FormaPagoSucursal

-- Eliminar FK: Co47FormaPagoSucursal -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co47FormaPagoSucursalCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co47FormaPagoSucursal
    DROP CONSTRAINT Co47FormaPagoSucursalCo13SucursalesConvenioFk;
    PRINT 'FK Co47FormaPagoSucursalCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co47FormaPagoSucursal -> Co33Catalogo (Forma de Pago)
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co47FormaPagoSucursalCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co47FormaPagoSucursal
    DROP CONSTRAINT Co47FormaPagoSucursalCo33CatalogoFk;
    PRINT 'FK Co47FormaPagoSucursalCo33CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co49MotivoAnulacion

-- Eliminar FK: Co49MotivoAnulacion -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co49MotivoAnulacionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co49MotivoAnulacion
    DROP CONSTRAINT Co49MotivoAnulacionCo03ConvenioFk;
    PRINT 'FK Co49MotivoAnulacionCo03ConvenioFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co76ControlInformacion

-- Eliminar FK: Co76ControlInformacion -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co76ControlnformacionCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion
    DROP CONSTRAINT Co76ControlnformacionCo03ConvenioFk;
    PRINT 'FK Co76ControlnformacionCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co76ControlInformacion -> Co13SucursalesConvenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co76ControlnformacionCo13SucursalesConvenioFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion
    DROP CONSTRAINT Co76ControlnformacionCo13SucursalesConvenioFk;
    PRINT 'FK Co76ControlnformacionCo13SucursalesConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co76ControlInformacion -> Co48Sistema
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co76ControlnformacionCo48SistemaFk'
)
BEGIN
    ALTER TABLE Co76ControlInformacion
    DROP CONSTRAINT Co76ControlnformacionCo48SistemaFk;
    PRINT 'FK Co76ControlnformacionCo48SistemaFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co50HistoricoAnulacnConven

-- Eliminar FK: Co50HistoricoAnulacnConven -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co50HistoricoAnulacnConvenCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co50HistoricoAnulacnConven
    DROP CONSTRAINT Co50HistoricoAnulacnConvenCo03ConvenioFk;
    PRINT 'FK Co50HistoricoAnulacnConvenCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co50HistoricoAnulacnConven -> Co49MotivoAnulacion
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk'
)
BEGIN
    ALTER TABLE Co50HistoricoAnulacnConven
    DROP CONSTRAINT Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk;
    PRINT 'FK Co50HistoricoAnulacnConvenCo49MotivoAnulacionFk eliminada correctamente.';
END

-- Rollback para eliminar la Foreign Key en la tabla Co52TipPrestdrArqTipPrestdr

-- Eliminar FK: Co52TipPrestdrArqTipPrestdr -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co52TipPrestdrArqTipPrestdrCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co52TipPrestdrArqTipPrestdr
    DROP CONSTRAINT Co52TipPrestdrArqTipPrestdrCo03ConvenioFk;
    PRINT 'FK Co52TipPrestdrArqTipPrestdrCo03ConvenioFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co54ConvenioProcedimiento

-- Eliminar FK: Co54ConvenioProcedimiento -> Co03ConvenioAdicional
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co54ConvenioProcedimientoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co54ConvenioProcedimiento
    DROP CONSTRAINT Co54ConvenioProcedimientoCo03ConvenioFk;
    PRINT 'FK Co54ConvenioProcedimientoCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co54ConvenioProcedimiento -> Co53Procedimiento
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co54ConvenioProcedimientoCo53ProcedimientoFk'
)
BEGIN
    ALTER TABLE Co54ConvenioProcedimiento
    DROP CONSTRAINT Co54ConvenioProcedimientoCo53ProcedimientoFk;
    PRINT 'FK Co54ConvenioProcedimientoCo53ProcedimientoFk eliminada correctamente.';
END


-- Rollback para eliminar las Foreign Keys en la tabla Co55ConvenioOperacion

-- Eliminar FK: Co55ConvenioOperacion -> Co03Convenio
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co55ConvenioHospitalCo03ConvenioFkv2'
)
BEGIN
    ALTER TABLE Co55ConvenioOperacion
    DROP CONSTRAINT Co55ConvenioHospitalCo03ConvenioFkv2;
    PRINT 'FK Co55ConvenioHospitalCo03ConvenioFkv2 eliminada correctamente.';
END

-- Eliminar FK: Co55ConvenioOperacion -> Co39ConvenioTipoPrestador
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co55ConvenioOperacion
    DROP CONSTRAINT Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk;
    PRINT 'FK Co55ConvenioHospitalCo39ConvenioTipoPrestadorFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co57NegociacionEspecial

-- Eliminar FK: Co57NegociacionEspecialCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    DROP CONSTRAINT Co57NegociacionEspecialCo33CatalogoFk;
    PRINT 'FK Co57NegociacionEspecialCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co57NegociacionEspecialCo33CatalogoFkv2
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo33CatalogoFkv2'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    DROP CONSTRAINT Co57NegociacionEspecialCo33CatalogoFkv2;
    PRINT 'FK Co57NegociacionEspecialCo33CatalogoFkv2 eliminada correctamente.';
END

-- Eliminar FK: Co57NegociacionEspecialCo56TipoNegociacionEspecialFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co57NegociacionEspecialCo56TipoNegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co57NegociacionEspecial 
    DROP CONSTRAINT Co57NegociacionEspecialCo56TipoNegociacionEspecialFk;
    PRINT 'FK Co57NegociacionEspecialCo56TipoNegociacionEspecialFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co58ConvenNegociacnEspecl

-- Eliminar FK: Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co58ConvenNegociacnEspecl 
    DROP CONSTRAINT Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk;
    PRINT 'FK Co58ConvenNegociacnEspeclCo39ConvenioTipoPrestadorFk eliminada correctamente.';
END

-- Eliminar FK: Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co58ConvenNegociacnEspecl 
    DROP CONSTRAINT Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk;
    PRINT 'FK Co58ConvenNegociacnEspeclCo57NegociacionEspecialFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co60CargaDocumento

-- Eliminar FK: Co60CargaDocumentoCo14SucursalesConvenioTiposFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co60CargaDocumentoCo14SucursalesConvenioTiposFk'
)
BEGIN
    ALTER TABLE Co60CargaDocumento 
    DROP CONSTRAINT Co60CargaDocumentoCo14SucursalesConvenioTiposFk;
    PRINT 'FK Co60CargaDocumentoCo14SucursalesConvenioTiposFk eliminada correctamente.';
END

-- Eliminar FK: Co60CargaDocumentoCo39ConvenioTipoPrestadorFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co60CargaDocumentoCo39ConvenioTipoPrestadorFk'
)
BEGIN
    ALTER TABLE Co60CargaDocumento 
    DROP CONSTRAINT Co60CargaDocumentoCo39ConvenioTipoPrestadorFk;
    PRINT 'FK Co60CargaDocumentoCo39ConvenioTipoPrestadorFk eliminada correctamente.';
END


-- Rollback para eliminar las Foreign Keys en la tabla Co61TipoPrestadorDocumento

-- Eliminar FK: Co61TipoPrestadorDocumentoCo59TipoDocumentoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co61TipoPrestadorDocumentoCo59TipoDocumentoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    DROP CONSTRAINT Co61TipoPrestadorDocumentoCo59TipoDocumentoFk;
    PRINT 'FK Co61TipoPrestadorDocumentoCo59TipoDocumentoFk eliminada correctamente.';
END

-- Eliminar FK: Co61TipoPrestadorDocumentoCo60CargaDocumentoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co61TipoPrestadorDocumentoCo60CargaDocumentoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    DROP CONSTRAINT Co61TipoPrestadorDocumentoCo60CargaDocumentoFk;
    PRINT 'FK Co61TipoPrestadorDocumentoCo60CargaDocumentoFk eliminada correctamente.';
END

-- Eliminar FK: Co61TipoPrestadorDocumentoTg79CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co61TipoPrestadorDocumentoTg79CatalogoFk'
)
BEGIN
    ALTER TABLE Co61TipoPrestadorDocumento 
    DROP CONSTRAINT Co61TipoPrestadorDocumentoTg79CatalogoFk;
    PRINT 'FK Co61TipoPrestadorDocumentoTg79CatalogoFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en las tablas mencionadas

-- Eliminar FK: Co62HistorialCargaDocumentoCo60CargaDocumentoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co62HistorialCargaDocumentoCo60CargaDocumentoFk'
)
BEGIN
    ALTER TABLE Co62HistorialCargaDocumento 
    DROP CONSTRAINT Co62HistorialCargaDocumentoCo60CargaDocumentoFk;
    PRINT 'FK Co62HistorialCargaDocumentoCo60CargaDocumentoFk eliminada correctamente.';
END

-- Eliminar FK: Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co77HistoricNegociacnEspecl 
    DROP CONSTRAINT Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk;
    PRINT 'FK Co62HistoricNegociacnEspeclCo57NegociacionEspecialFk eliminada correctamente.';
END

-- Eliminar FK: Co63ConvenioTipoPagoCo03ConvenioFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co63ConvenioTipoPagoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co63ConvenioTipoPago 
    DROP CONSTRAINT Co63ConvenioTipoPagoCo03ConvenioFk;
    PRINT 'FK Co63ConvenioTipoPagoCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co63ConvenioTipoPagoCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co63ConvenioTipoPagoCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co63ConvenioTipoPago 
    DROP CONSTRAINT Co63ConvenioTipoPagoCo33CatalogoFk;
    PRINT 'FK Co63ConvenioTipoPagoCo33CatalogoFk eliminada correctamente.';
END


-- Rollback para eliminar las Foreign Keys en las tablas mencionadas

-- Eliminar FK: Co64ConvenioFormaPagoCo03ConvenioFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co64ConvenioFormaPagoCo03ConvenioFk'
)
BEGIN
    ALTER TABLE Co64ConvenioFormaPago 
    DROP CONSTRAINT Co64ConvenioFormaPagoCo03ConvenioFk;
    PRINT 'FK Co64ConvenioFormaPagoCo03ConvenioFk eliminada correctamente.';
END

-- Eliminar FK: Co64ConvenioFormaPagoCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co64ConvenioFormaPagoCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co64ConvenioFormaPago 
    DROP CONSTRAINT Co64ConvenioFormaPagoCo33CatalogoFk;
    PRINT 'FK Co64ConvenioFormaPagoCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co65EstructuraNegociacnEspeclCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co65EstructuraNegociacnEspeclCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co65EstructuraNegociacnEspecl 
    DROP CONSTRAINT Co65EstructuraNegociacnEspeclCo33CatalogoFk;
    PRINT 'FK Co65EstructuraNegociacnEspeclCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co66DetalleNegociacionEspecialCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co66DetalleNegociacionEspecialCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co66DetalleNegociacionEspecial 
    DROP CONSTRAINT Co66DetalleNegociacionEspecialCo33CatalogoFk;
    PRINT 'FK Co66DetalleNegociacionEspecialCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co66DetalleNegociacionEspecial 
    DROP CONSTRAINT Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk;
    PRINT 'FK Co66DetalleNegociacionEspecialCo57NegociacionEspecialFk eliminada correctamente.';
END


-- Rollback para eliminar las Foreign Keys en las tablas mencionadas

-- Eliminar FK: Co67DetallNegocicnEspeclNivelCo33CatalogoFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co67DetallNegocicnEspeclNivelCo33CatalogoFk'
)
BEGIN
    ALTER TABLE Co67DetallNegocicnEspeclNivel 
    DROP CONSTRAINT Co67DetallNegocicnEspeclNivelCo33CatalogoFk;
    PRINT 'FK Co67DetallNegocicnEspeclNivelCo33CatalogoFk eliminada correctamente.';
END

-- Eliminar FK: Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk'
)
BEGIN
    ALTER TABLE Co67DetallNegocicnEspeclNivel 
    DROP CONSTRAINT Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk;
    PRINT 'FK Co67DetallNegocicnEspeclNivelCo66DetalleNegociacionEspecialFk eliminada correctamente.';
END

-- Eliminar FK: Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk'
)
BEGIN
    ALTER TABLE Co69EspecialidadZonaCuerpo 
    DROP CONSTRAINT Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk;
    PRINT 'FK Co69EspecialidadZonaCuerpoCo28ConvenioCataloEspecialidadFk eliminada correctamente.';
END

-- Eliminar FK: Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk'
)
BEGIN
    ALTER TABLE Co69EspecialidadZonaCuerpo 
    DROP CONSTRAINT Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk;
    PRINT 'FK Co69EspecialidadZonaCuerpoCo68ZonaCuerpoEspecializacionFk eliminada correctamente.';
END

-- Eliminar FK: Co71UsuarioPerfilCo43UsuarioFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co71UsuarioPerfilCo43UsuarioFk'
)
BEGIN
    ALTER TABLE Co71UsuarioPerfil 
    DROP CONSTRAINT Co71UsuarioPerfilCo43UsuarioFk;
    PRINT 'FK Co71UsuarioPerfilCo43UsuarioFk eliminada correctamente.';
END

-- Eliminar FK: Co71UsuarioPerfilCo70PerfilFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co71UsuarioPerfilCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co71UsuarioPerfil 
    DROP CONSTRAINT Co71UsuarioPerfilCo70PerfilFk;
    PRINT 'FK Co71UsuarioPerfilCo70PerfilFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en las tablas mencionadas

-- Eliminar FK: Co72MenuCo48SitemaFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co72MenuCo48SitemaFk'
)
BEGIN
    ALTER TABLE Co72Menu 
    DROP CONSTRAINT Co72MenuCo48SitemaFk;
    PRINT 'FK Co72MenuCo48SitemaFk eliminada correctamente.';
END

-- Eliminar FK: Co72MenuCo72MenuFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co72MenuCo72MenuFk'
)
BEGIN
    ALTER TABLE Co72Menu 
    DROP CONSTRAINT Co72MenuCo72MenuFk;
    PRINT 'FK Co72MenuCo72MenuFk eliminada correctamente.';
END

-- Eliminar FK: Co73FuncionalidadCo48SitemaFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co73FuncionalidadCo48SitemaFk'
)
BEGIN
    ALTER TABLE Co73Funcionalidad 
    DROP CONSTRAINT Co73FuncionalidadCo48SitemaFk;
    PRINT 'FK Co73FuncionalidadCo48SitemaFk eliminada correctamente.';
END

-- Eliminar FK: Co74PerfilMenuCo70PerfilFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co74PerfilMenuCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co74PerfilMenu 
    DROP CONSTRAINT Co74PerfilMenuCo70PerfilFk;
    PRINT 'FK Co74PerfilMenuCo70PerfilFk eliminada correctamente.';
END

-- Eliminar FK: Co74PerfilMenuCo72MenuFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co74PerfilMenuCo72MenuFk'
)
BEGIN
    ALTER TABLE Co74PerfilMenu 
    DROP CONSTRAINT Co74PerfilMenuCo72MenuFk;
    PRINT 'FK Co74PerfilMenuCo72MenuFk eliminada correctamente.';
END

-- Rollback para eliminar las Foreign Keys en la tabla Co75PerfilFuncionalidad

-- Eliminar FK: Co75PerfilFuncionalidadCo70PerfilFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co75PerfilFuncionalidadCo70PerfilFk'
)
BEGIN
    ALTER TABLE Co75PerfilFuncionalidad 
    DROP CONSTRAINT Co75PerfilFuncionalidadCo70PerfilFk;
    PRINT 'FK Co75PerfilFuncionalidadCo70PerfilFk eliminada correctamente.';
END

-- Eliminar FK: Co75PerfilFuncionalidadCo73FuncionalidadFk
IF EXISTS (
    SELECT 1 
    FROM sys.foreign_keys 
    WHERE name = 'Co75PerfilFuncionalidadCo73FuncionalidadFk'
)
BEGIN
    ALTER TABLE Co75PerfilFuncionalidad 
    DROP CONSTRAINT Co75PerfilFuncionalidadCo73FuncionalidadFk;
    PRINT 'FK Co75PerfilFuncionalidadCo73FuncionalidadFk eliminada correctamente.';
END

-----
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co78EmpresaCo03ConvenioEmpresaFkv'
)
BEGIN
    ALTER TABLE Co78EmpresaConvenioStaffMedico
    DROP CONSTRAINT Co78EmpresaCo03ConvenioEmpresaFkv;
    PRINT 'FK Co78EmpresaCo03ConvenioEmpresaFkv eliminada correctamente.';
END

---
IF EXISTS (
    SELECT 1 FROM sys.foreign_keys 
    WHERE name = 'Co78EmpresaCo03ConvenioMedicoFkv'
)
BEGIN
    ALTER TABLE Co78EmpresaConvenioStaffMedico
    DROP CONSTRAINT Co78EmpresaCo03ConvenioMedicoFkv;
    PRINT 'FK Co78EmpresaCo03ConvenioMedicoFkv eliminada correctamente.';
END


-- Rollback: Eliminar la columna 'Nacionalidad' de la tabla 'Cl03Personas' si existe
IF EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Cl03Personas' 
    AND COLUMN_NAME = 'Nacionalidad'
)
BEGIN
    ALTER TABLE Cl03Personas
    DROP COLUMN Nacionalidad;
    PRINT 'Campo Nacionalidad eliminado de la tabla Cl03Personas.';
END
ELSE
BEGIN
    PRINT 'El campo Nacionalidad no existe en la tabla Cl03Personas.';
END
GO

-- Rollback: Eliminar la columna 'CategoriaEspecialidad' de la tabla 'Co02CatalogoEspecialidades' si existe
IF EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Co02CatalogoEspecialidades' 
    AND COLUMN_NAME = 'CategoriaEspecialidad'
)
BEGIN
    ALTER TABLE Co02CatalogoEspecialidades
    DROP COLUMN CategoriaEspecialidad;
    PRINT 'Campo CategoriaEspecialidad eliminado de la tabla Co02CatalogoEspecialidades.';
END
ELSE
BEGIN
    PRINT 'El campo CategoriaEspecialidad no existe en la tabla Co02CatalogoEspecialidades.';
END
GO



-- Rollback: Eliminar columnas añadidas a la tabla Co03ConvenioAdicional si existen
-- ROLLBACK: Eliminar columnas añadidas en Co03ConvenioAdicional

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'IdCatalogoTipoSociedad')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN IdCatalogoTipoSociedad;
    PRINT 'Columna IdCatalogoTipoSociedad eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'IdCatalogoSector')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN IdCatalogoSector;
    PRINT 'Columna IdCatalogoSector eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'IdCatalogoTpa')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN IdCatalogoTpa;
    PRINT 'Columna IdCatalogoTpa eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'CodigoMsp')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN CodigoMsp;
    PRINT 'Columna CodigoMsp eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'FechaRegistroMsp')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN FechaRegistroMsp;
    PRINT 'Columna FechaRegistroMsp eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'Calificacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN Calificacion;
    PRINT 'Columna Calificacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'CostoEficiencia')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN CostoEficiencia;
    PRINT 'Columna CostoEficiencia eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'NumeroPais')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN NumeroPais;
    PRINT 'Columna NumeroPais eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'NumeroProvincia')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN NumeroProvincia;
    PRINT 'Columna NumeroProvincia eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'CodigoCiudad')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN CodigoCiudad;
    PRINT 'Columna CodigoCiudad eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'IdCatalogoCategorizacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN IdCatalogoCategorizacion;
    PRINT 'Columna IdCatalogoCategorizacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'Rct')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN Rct;
    PRINT 'Columna Rct eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'CargoDestacado')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN CargoDestacado;
    PRINT 'Columna CargoDestacado eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'Opera')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN Opera;
    PRINT 'Columna Opera eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'StaffMedico')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN StaffMedico;
    PRINT 'Columna StaffMedico eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'UsuarioCreacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN UsuarioCreacion;
    PRINT 'Columna UsuarioCreacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'UsuarioModificacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN UsuarioModificacion;
    PRINT 'Columna UsuarioModificacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'FechaCreacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN FechaCreacion;
    PRINT 'Columna FechaCreacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'HoraCreacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN HoraCreacion;
    PRINT 'Columna HoraCreacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'FechaModificacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN FechaModificacion;
    PRINT 'Columna FechaModificacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'HoraModificacion')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN HoraModificacion;
    PRINT 'Columna HoraModificacion eliminada.';
END;

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Co03ConvenioAdicional' AND COLUMN_NAME = 'Estado')
BEGIN
    ALTER TABLE Co03ConvenioAdicional DROP COLUMN Estado;
    PRINT 'Columna Estado eliminada.';
END;
GO


-- ROLLBACK - Quitar columnas si existen
-- ================================================

-- IdCatalogoTipoGarantia
IF COL_LENGTH('Co27Garantia', 'IdCatalogoTipoGarantia') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN IdCatalogoTipoGarantia;
    PRINT 'Columna IdCatalogoTipoGarantia eliminada correctamente.';
END

-- IdCatalogoCobroAlta
IF COL_LENGTH('Co27Garantia', 'IdCatalogoCobroAlta') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN IdCatalogoCobroAlta;
    PRINT 'Columna IdCatalogoCobroAlta eliminada correctamente.';
END

-- IdCatalogoCreditoFinSemana
IF COL_LENGTH('Co27Garantia', 'IdCatalogoCreditoFinSemana') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN IdCatalogoCreditoFinSemana;
    PRINT 'Columna IdCatalogoCreditoFinSemana eliminada correctamente.';
END

-- IdCatalogoPrestadorLlamada
IF COL_LENGTH('Co27Garantia', 'IdCatalogoPrestadorLlamada') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN IdCatalogoPrestadorLlamada;
    PRINT 'Columna IdCatalogoPrestadorLlamada eliminada correctamente.';
END

-- UsuarioCreacion
IF COL_LENGTH('Co27Garantia', 'UsuarioCreacion') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN UsuarioCreacion;
    PRINT 'Columna UsuarioCreacion eliminada correctamente.';
END

-- UsuarioModificacion
IF COL_LENGTH('Co27Garantia', 'UsuarioModificacion') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN UsuarioModificacion;
    PRINT 'Columna UsuarioModificacion eliminada correctamente.';
END

-- HoraCreacion
IF COL_LENGTH('Co27Garantia', 'HoraCreacion') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN HoraCreacion;
    PRINT 'Columna HoraCreacion eliminada correctamente.';
END

-- FechaModificacion
IF COL_LENGTH('Co27Garantia', 'FechaModificacion') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN FechaModificacion;
    PRINT 'Columna FechaModificacion eliminada correctamente.';
END

-- HoraModificacion
IF COL_LENGTH('Co27Garantia', 'HoraModificacion') IS NOT NULL
BEGIN
    ALTER TABLE Co27Garantia DROP COLUMN HoraModificacion;
    PRINT 'Columna HoraModificacion eliminada correctamente.';
END

-- ROLLBACK - Quitar columnas si existen
-- ================================================

-- Verificar y eliminar la constraint si existe
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
           WHERE CONSTRAINT_NAME = 'Co14SucursalesConvenioTiposPk' 
           AND TABLE_NAME = 'Co14SucursalesConvenioTipos')
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos DROP CONSTRAINT Co14SucursalesConvenioTiposPk;
END

-- Verificar si la nueva constraint ya existe antes de agregarla
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
               WHERE CONSTRAINT_NAME = 'PkCo14' 
               AND TABLE_NAME = 'Co14SucursalesConvenioTipos')
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos 
    ADD CONSTRAINT PkCo14 
    PRIMARY KEY (CodigoTipoPrestador, NumeroConvenio, NumeroSucursal);
END

-- IdCatalogoTipoPrestador
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'IdCatalogoTipoPrestador') IS NOT NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos DROP COLUMN IdCatalogoTipoPrestador;
    PRINT 'Columna IdCatalogoTipoPrestador eliminada correctamente.';
END

-- IdCatalogoTipoSucursal
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'IdCatalogoTipoSucursal') IS NOT NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos DROP COLUMN IdCatalogoTipoSucursal;
    PRINT 'Columna IdCatalogoTipoSucursal eliminada correctamente.';
END

-- Estado
IF COL_LENGTH('Co14SucursalesConvenioTipos', 'Estado') IS NOT NULL
BEGIN
    ALTER TABLE Co14SucursalesConvenioTipos DROP COLUMN Estado;
    PRINT 'Columna Estado eliminada correctamente.';
END


-- ROLLBACK Co13SucursalesConvenio

-- NumeroPais
IF COL_LENGTH('Co13SucursalesConvenio', 'NumeroPais') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN NumeroPais;
    PRINT 'Columna NumeroPais eliminada correctamente.';
END

-- NumeroProvincia
IF COL_LENGTH('Co13SucursalesConvenio', 'NumeroProvincia') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN NumeroProvincia;
    PRINT 'Columna NumeroProvincia eliminada correctamente.';
END

-- IdCatalogoSector
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoSector') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN IdCatalogoSector;
    PRINT 'Columna IdCatalogoSector eliminada correctamente.';
END

-- FechaCadPermFunc
IF COL_LENGTH('Co13SucursalesConvenio', 'FechaCadPermFunc') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN FechaCadPermFunc;
    PRINT 'Columna FechaCadPermFunc eliminada correctamente.';
END

-- IdCatalogoCategorizacion
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoCategorizacion') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN IdCatalogoCategorizacion;
    PRINT 'Columna IdCatalogoCategorizacion eliminada correctamente.';
END

-- IdCatalogoTpa
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoTpa') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN IdCatalogoTpa;
    PRINT 'Columna IdCatalogoTpa eliminada correctamente.';
END

-- FranquiciaFarmacia
IF COL_LENGTH('Co13SucursalesConvenio', 'FranquiciaFarmacia') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN FranquiciaFarmacia;
    PRINT 'Columna FranquiciaFarmacia eliminada correctamente.';
END

-- RucFranquicia
IF COL_LENGTH('Co13SucursalesConvenio', 'RucFranquicia') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN RucFranquicia;
    PRINT 'Columna RucFranquicia eliminada correctamente.';
END

-- RazonSocialFranquicia
IF COL_LENGTH('Co13SucursalesConvenio', 'RazonSocialFranquicia') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN RazonSocialFranquicia;
    PRINT 'Columna RazonSocialFranquicia eliminada correctamente.';
END

-- Estado
IF COL_LENGTH('Co13SucursalesConvenio', 'Estado') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN Estado;
    PRINT 'Columna Estado eliminada correctamente.';
END

-- NivelComplejidad
IF COL_LENGTH('Co13SucursalesConvenio', 'IdCatalogoNivelComplejidad') IS NOT NULL
BEGIN
    ALTER TABLE Co13SucursalesConvenio DROP COLUMN IdCatalogoNivelComplejidad;
    PRINT 'Columna IdCatalogoNivelComplejidad eliminada correctamente.';
END

-- Rollback para la tabla Co17ContactoConvenio

-- NumeroSucursal
IF COL_LENGTH('Co17ContactoConvenio', 'NumeroSucursal') IS NOT NULL
BEGIN
    ALTER TABLE Co17ContactoConvenio DROP COLUMN NumeroSucursal;
    PRINT 'Columna NumeroSucursal eliminada correctamente.';
END

-- Direccion
IF COL_LENGTH('Co17ContactoConvenio', 'Direccion') IS NOT NULL
BEGIN
    ALTER TABLE Co17ContactoConvenio DROP COLUMN Direccion;
    PRINT 'Columna Direccion eliminada correctamente.';
END

-- Rollback para la tabla Co19DetalleRed

-- Eliminar NumeroSucursal
IF COL_LENGTH('Co19DetalleRed', 'NumeroSucursal') IS NOT NULL
BEGIN
    ALTER TABLE Co19DetalleRed DROP COLUMN NumeroSucursal;
    PRINT 'Columna NumeroSucursal eliminada correctamente.';
END

-- Eliminar Estado
IF COL_LENGTH('Co19DetalleRed', 'Estado') IS NOT NULL
BEGIN
    ALTER TABLE Co19DetalleRed DROP COLUMN Estado;
    PRINT 'Columna Estado eliminada correctamente.';
END


-- Insertar datos en Co14SucursalesConvenioTipos

-- Registro 1
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 1 AND CodigoTipoPrestador = 33
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    (NumeroConvenio, NumeroSucursal, CodigoTipoPrestador, FechaCreacion, UsuarioCreacion, FechaModificacion, UsuarioModificacion, FechaInsercion, HoraInsercion, FechaActualizacion, HoraActualizacion)
    VALUES (11715, 1, 33, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 2
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 2 AND CodigoTipoPrestador = 33
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 2, 33, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 3
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 3 AND CodigoTipoPrestador = 33
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 3, 33, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 4
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 1 AND CodigoTipoPrestador = 34
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 1, 34, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 5
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 2 AND CodigoTipoPrestador = 34
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 2, 34, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 6
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 3 AND CodigoTipoPrestador = 34
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 3, 34, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 7
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 1 AND CodigoTipoPrestador = 35
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 1, 35, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 8
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 2 AND CodigoTipoPrestador = 35
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 2, 35, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;

-- Registro 9
IF NOT EXISTS (
    SELECT 1 FROM Salud.dbo.Co14SucursalesConvenioTipos 
    WHERE NumeroConvenio = 11715 AND NumeroSucursal = 3 AND CodigoTipoPrestador = 35
)
BEGIN
    INSERT INTO Salud.dbo.Co14SucursalesConvenioTipos
    VALUES (11715, 3, 35, '2018-01-18', N'sistemas', NULL, N'', NULL, N'', '2024-01-13', N'00:25:22');
END;
