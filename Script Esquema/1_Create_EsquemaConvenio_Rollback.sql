-- Eliminar tabla Co28ConvenioCataloEspecialidad si existe

IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co28ConvenioCataloEspecialidad' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co28ConvenioCataloEspecialidad;
    PRINT 'Tabla Co28ConvenioCataloEspecialidad eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co28ConvenioCataloEspecialidad no existe. No se requiere rollback.';
END
GO

-- Eliminar la tabla Co32TipoPrestadorEspecialidad si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co32TipoPrestadorEspecialidad' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co32TipoPrestadorEspecialidad;
    PRINT 'Tabla Co32TipoPrestadorEspecialidad eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co32TipoPrestadorEspecialidad no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo32TipoPrestadorEspecialidad si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo32TipoPrestadorEspecialidad'
)
BEGIN
    DROP SEQUENCE SeqCo32TipoPrestadorEspecialidad;
    PRINT 'Secuencia SeqCo32TipoPrestadorEspecialidad eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo32TipoPrestadorEspecialidad no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co33Catalogo si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co33Catalogo' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co33Catalogo;
    PRINT 'Tabla Co33Catalogo eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co33Catalogo no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo33Catalogo si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo33Catalogo'
)
BEGIN
    DROP SEQUENCE SeqCo33Catalogo;
    PRINT 'Secuencia SeqCo33Catalogo eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo33Catalogo no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co34SubTipoPrestador si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co34SubTipoPrestador' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co34SubTipoPrestador;
    PRINT 'Tabla Co34SubTipoPrestador eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co34SubTipoPrestador no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo34SubTipoPrestador si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo34SubTipoPrestador'
)
BEGIN
    DROP SEQUENCE SeqCo34SubTipoPrestador;
    PRINT 'Secuencia SeqCo34SubTipoPrestador eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo34SubTipoPrestador no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co35TipPrestdrSubTipPrestdr si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co35TipPrestdrSubTipPrestdr' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co35TipPrestdrSubTipPrestdr;
    PRINT 'Tabla Co35TipPrestdrSubTipPrestdr eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co35TipPrestdrSubTipPrestdr no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co36HorarioAtencion si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co36HorarioAtencion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co36HorarioAtencion;
    PRINT 'Tabla Co36HorarioAtencion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co36HorarioAtencion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo36HorarioAtencion si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo36HorarioAtencion'
)
BEGIN
    DROP SEQUENCE SeqCo36HorarioAtencion;
    PRINT 'Secuencia SeqCo36HorarioAtencion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo36HorarioAtencion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co37Imagen si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co37Imagen' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co37Imagen;
    PRINT 'Tabla Co37Imagen eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co37Imagen no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo37Imagen si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo37Imagen'
)
BEGIN
    DROP SEQUENCE SeqCo37Imagen;
    PRINT 'Secuencia SeqCo37Imagen eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo37Imagen no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co38Log si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co38Log' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co38Log;
    PRINT 'Tabla Co38Log eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co38Log no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo38Log si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo38Log'
)
BEGIN
    DROP SEQUENCE SeqCo38Log;
    PRINT 'Secuencia SeqCo38Log eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo38Log no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co39ConvenioTipoPrestador si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co39ConvenioTipoPrestador' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co39ConvenioTipoPrestador;
    PRINT 'Tabla Co39ConvenioTipoPrestador eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co39ConvenioTipoPrestador no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo40Configuracion si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo40Configuracion'
)
BEGIN
    DROP SEQUENCE SeqCo40Configuracion;
    PRINT 'Secuencia SeqCo40Configuracion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo40Configuracion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co40Configuracion si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co40Configuracion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co40Configuracion;
    PRINT 'Tabla Co40Configuracion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co40Configuracion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co41ConvenTipPrestdrConfigurcn si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co41ConvenTipPrestdrConfigurcn' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co41ConvenTipPrestdrConfigurcn;
    PRINT 'Tabla Co41ConvenTipPrestdrConfigurcn eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co41ConvenTipPrestdrConfigurcn no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo42Estudio si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo42Estudio'
)
BEGIN
    DROP SEQUENCE SeqCo42Estudio;
    PRINT 'Secuencia SeqCo42Estudio eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo42Estudio no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co42Estudio si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co42Estudio' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co42Estudio;
    PRINT 'Tabla Co42Estudio eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co42Estudio no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo43Usuario si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo43Usuario'
)
BEGIN
    DROP SEQUENCE SeqCo43Usuario;
    PRINT 'Secuencia SeqCo43Usuario eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo43Usuario no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co43Usuario si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co43Usuario' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co43Usuario;
    PRINT 'Tabla Co43Usuario eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co43Usuario no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo44ServicioAdicional si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo44ServicioAdicional'
)
BEGIN
    DROP SEQUENCE SeqCo44ServicioAdicional;
    PRINT 'Secuencia SeqCo44ServicioAdicional eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo44ServicioAdicional no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co44ServicioAdicional si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co44ServicioAdicional' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co44ServicioAdicional;
    PRINT 'Tabla Co44ServicioAdicional eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co44ServicioAdicional no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo45SucuCovServiAdic si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo45SucuCovServiAdic'
)
BEGIN
    DROP SEQUENCE SeqCo45SucuCovServiAdic;
    PRINT 'Secuencia SeqCo45SucuCovServiAdic eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo45SucuCovServiAdic no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co45SucuCovServiAdic si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co45SucuCovServiAdic' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co45SucuCovServiAdic;
    PRINT 'Tabla Co45SucuCovServiAdic eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co45SucuCovServiAdic no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo46SucuConvTipoSucuPres si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo46SucuConvTipoSucuPres'
)
BEGIN
    DROP SEQUENCE SeqCo46SucuConvTipoSucuPres;
    PRINT 'Secuencia SeqCo46SucuConvTipoSucuPres eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo46SucuConvTipoSucuPres no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co46SucuConvTipoSucuPres si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co46SucuConvTipoSucuPres' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co46SucuConvTipoSucuPres;
    PRINT 'Tabla Co46SucuConvTipoSucuPres eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co46SucuConvTipoSucuPres no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo47FormaPagoSucursal si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo47FormaPagoSucursal'
)
BEGIN
    DROP SEQUENCE SeqCo47FormaPagoSucursal;
    PRINT 'Secuencia SeqCo47FormaPagoSucursal eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo47FormaPagoSucursal no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co47FormaPagoSucursal si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co47FormaPagoSucursal' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co47FormaPagoSucursal;
    PRINT 'Tabla Co47FormaPagoSucursal eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co47FormaPagoSucursal no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo48Sistema si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo48Sistema'
)
BEGIN
    DROP SEQUENCE SeqCo48Sistema;
    PRINT 'Secuencia SeqCo48Sistema eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo48Sistema no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co48Sistema si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co48Sistema' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co48Sistema;
    PRINT 'Tabla Co48Sistema eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co48Sistema no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo49MotivoAnulacion si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo49MotivoAnulacion'
)
BEGIN
    DROP SEQUENCE SeqCo49MotivoAnulacion;
    PRINT 'Secuencia SeqCo49MotivoAnulacion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo49MotivoAnulacion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co49MotivoAnulacion si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co49MotivoAnulacion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co49MotivoAnulacion;
    PRINT 'Tabla Co49MotivoAnulacion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co49MotivoAnulacion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo50HistoricoAnulacnConven si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo50HistoricoAnulacnConven'
)
BEGIN
    DROP SEQUENCE SeqCo50HistoricoAnulacnConven;
    PRINT 'Secuencia SeqCo50HistoricoAnulacnConven eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo50HistoricoAnulacnConven no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co50HistoricoAnulacnConven si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co50HistoricoAnulacnConven' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co50HistoricoAnulacnConven;
    PRINT 'Tabla Co50HistoricoAnulacnConven eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co50HistoricoAnulacnConven no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo51TArquetipoPrestador si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo51TArquetipoPrestador'
)
BEGIN
    DROP SEQUENCE SeqCo51TArquetipoPrestador;
    PRINT 'Secuencia SeqCo51TArquetipoPrestador eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo51TArquetipoPrestador no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co51TArquetipoPrestador si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co51TArquetipoPrestador' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co51TArquetipoPrestador;
    PRINT 'Tabla Co51TArquetipoPrestador eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co51TArquetipoPrestador no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co52TipPrestdrArqTipPrestdr si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co52TipPrestdrArqTipPrestdr' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co52TipPrestdrArqTipPrestdr;
    PRINT 'Tabla Co52TipPrestdrArqTipPrestdr eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co52TipPrestdrArqTipPrestdr no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co53Procedimiento si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co53Procedimiento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co53Procedimiento;
    PRINT 'Tabla Co53Procedimiento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co53Procedimiento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo53Procedimiento si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo53Procedimiento'
)
BEGIN
    DROP SEQUENCE SeqCo53Procedimiento;
    PRINT 'Secuencia SeqCo53Procedimiento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo53Procedimiento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co54ConvenioProcedimiento si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co54ConvenioProcedimiento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co54ConvenioProcedimiento;
    PRINT 'Tabla Co54ConvenioProcedimiento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co54ConvenioProcedimiento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo54ConvenioProcedimiento si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo54ConvenioProcedimiento'
)
BEGIN
    DROP SEQUENCE SeqCo54ConvenioProcedimiento;
    PRINT 'Secuencia SeqCo54ConvenioProcedimiento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo54ConvenioProcedimiento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co55ConvenioOperacion si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co55ConvenioOperacion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co55ConvenioOperacion;
    PRINT 'Tabla Co55ConvenioOperacion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co55ConvenioOperacion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo55ConvenioOperacion si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo55ConvenioOperacion'
)
BEGIN
    DROP SEQUENCE SeqCo55ConvenioOperacion;
    PRINT 'Secuencia SeqCo55ConvenioOperacion eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo55ConvenioOperacion no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co56TipoNegociacionEspecial si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co56TipoNegociacionEspecial' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co56TipoNegociacionEspecial;
    PRINT 'Tabla Co56TipoNegociacionEspecial eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co56TipoNegociacionEspecial no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo56TipoNegociacionEspecial si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo56TipoNegociacionEspecial'
)
BEGIN
    DROP SEQUENCE SeqCo56TipoNegociacionEspecial;
    PRINT 'Secuencia SeqCo56TipoNegociacionEspecial eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo56TipoNegociacionEspecial no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co57NegociacionEspecial si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co57NegociacionEspecial' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co57NegociacionEspecial;
    PRINT 'Tabla Co57NegociacionEspecial eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co57NegociacionEspecial no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo57NegociacionEspecial si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo57NegociacionEspecial'
)
BEGIN
    DROP SEQUENCE SeqCo57NegociacionEspecial;
    PRINT 'Secuencia SeqCo57NegociacionEspecial eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo57NegociacionEspecial no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co58ConvenNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co58ConvenNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co58ConvenNegociacnEspecl;
    PRINT 'Tabla Co58ConvenNegociacnEspecl eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co58ConvenNegociacnEspecl no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo58ConvenNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo58ConvenNegociacnEspecl'
)
BEGIN
    DROP SEQUENCE SeqCo58ConvenNegociacnEspecl;
    PRINT 'Secuencia SeqCo58ConvenNegociacnEspecl eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo58ConvenNegociacnEspecl no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co59TipoDocumento si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co59TipoDocumento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co59TipoDocumento;
    PRINT 'Tabla Co59TipoDocumento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co59TipoDocumento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo59TipoDocumento si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo59TipoDocumento'
)
BEGIN
    DROP SEQUENCE SeqCo59TipoDocumento;
    PRINT 'Secuencia SeqCo59TipoDocumento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo59TipoDocumento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co60CargaDocumento si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co60CargaDocumento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co60CargaDocumento;
    PRINT 'Tabla Co60CargaDocumento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co60CargaDocumento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la secuencia SeqCo60CargaDocumento si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo60CargaDocumento'
)
BEGIN
    DROP SEQUENCE SeqCo60CargaDocumento;
    PRINT 'Secuencia SeqCo60CargaDocumento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo60CargaDocumento no existe. No se requiere eliminar.';
END
GO

-- Eliminar la tabla Co61TipoPrestadorDocumento si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co61TipoPrestadorDocumento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co61TipoPrestadorDocumento;
    PRINT 'Tabla Co61TipoPrestadorDocumento eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co61TipoPrestadorDocumento no existe. No se requiere eliminar.';
END
GO

-- Eliminar secuencia si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo62HistorialCargaDocumento'
)
BEGIN
    DROP SEQUENCE SeqCo62HistorialCargaDocumento;
    PRINT 'Secuencia SeqCo62HistorialCargaDocumento eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo62HistorialCargaDocumento no existe.';
END
GO

-- Eliminar tabla si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co62HistorialCargaDocumento' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co62HistorialCargaDocumento;
    PRINT 'Tabla Co62HistorialCargaDocumento eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co62HistorialCargaDocumento no existe.';
END
GO

-- Eliminar tabla Co63ConvenioTipoPago si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co63ConvenioTipoPago' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co63ConvenioTipoPago;
    PRINT 'Tabla Co63ConvenioTipoPago eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co63ConvenioTipoPago no existe.';
END
GO

-- Eliminar tabla Co64ConvenioFormaPago si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co64ConvenioFormaPago' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co64ConvenioFormaPago;
    PRINT 'Tabla Co64ConvenioFormaPago eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co64ConvenioFormaPago no existe.';
END
GO


-- Eliminar secuencia SeqCo65EstructuraNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo65EstructuraNegociacnEspecl'
)
BEGIN
    DROP SEQUENCE SeqCo65EstructuraNegociacnEspecl;
    PRINT 'Secuencia SeqCo65EstructuraNegociacnEspecl eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo65EstructuraNegociacnEspecl no existe.';
END
GO

-- Eliminar tabla Co65EstructuraNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co65EstructuraNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co65EstructuraNegociacnEspecl;
    PRINT 'Tabla Co65EstructuraNegociacnEspecl eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co65EstructuraNegociacnEspecl no existe.';
END
GO

-- Eliminar tabla Co66DetalleNegociacionEspecial si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co66DetalleNegociacionEspecial' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co66DetalleNegociacionEspecial;
    PRINT 'Tabla Co66DetalleNegociacionEspecial eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co66DetalleNegociacionEspecial no existe.';
END
GO

-- Eliminar secuencia SeqCo67DetallNegocicnEspeclNivel si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo67DetallNegocicnEspeclNivel'
)
BEGIN
    DROP SEQUENCE SeqCo67DetallNegocicnEspeclNivel;
    PRINT 'Secuencia SeqCo67DetallNegocicnEspeclNivel eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo67DetallNegocicnEspeclNivel no existe.';
END
GO

-- Eliminar tabla Co67DetallNegocicnEspeclNivel si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co67DetallNegocicnEspeclNivel' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co67DetallNegocicnEspeclNivel;
    PRINT 'Tabla Co67DetallNegocicnEspeclNivel eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co67DetallNegocicnEspeclNivel no existe.';
END
GO

-- Eliminar la tabla Co68ZonaCuerpoEspecializacion si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co68ZonaCuerpoEspecializacion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co68ZonaCuerpoEspecializacion;
    PRINT 'Tabla Co68ZonaCuerpoEspecializacion eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co68ZonaCuerpoEspecializacion no existe.';
END
GO

-- Eliminar la secuencia SeqCo68ZonaCuerpoEspecializacion si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo68ZonaCuerpoEspecializacion'
)
BEGIN
    DROP SEQUENCE SeqCo68ZonaCuerpoEspecializacion;
    PRINT 'Secuencia SeqCo68ZonaCuerpoEspecializacion eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo68ZonaCuerpoEspecializacion no existe.';
END
GO

-- Eliminar la tabla Co69EspecialidadZonaCuerpo si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co69EspecialidadZonaCuerpo' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co69EspecialidadZonaCuerpo;
    PRINT 'Tabla Co69EspecialidadZonaCuerpo eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co69EspecialidadZonaCuerpo no existe.';
END
GO

-- Eliminar la secuencia SeqCo69EspecialidadZonaCuerpo si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo69EspecialidadZonaCuerpo'
)
BEGIN
    DROP SEQUENCE SeqCo69EspecialidadZonaCuerpo;
    PRINT 'Secuencia SeqCo69EspecialidadZonaCuerpo eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo69EspecialidadZonaCuerpo no existe.';
END
GO

-- Eliminar la tabla Co70Perfil si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co70Perfil' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co70Perfil;
    PRINT 'Tabla Co70Perfil eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co70Perfil no existe.';
END
GO

-- Eliminar la secuencia SeqCo70Perfil si existe
IF EXISTS (
    SELECT * FROM sys.sequences 
    WHERE name = 'SeqCo70Perfil'
)
BEGIN
    DROP SEQUENCE SeqCo70Perfil;
    PRINT 'Secuencia SeqCo70Perfil eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo70Perfil no existe.';
END
GO

-- Eliminar la tabla Co71UsuarioPerfil si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co71UsuarioPerfil' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co71UsuarioPerfil;
    PRINT 'Tabla Co71UsuarioPerfil eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co71UsuarioPerfil no existe.';
END
GO

-- Eliminar la tabla Co72Menu si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co72Menu' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co72Menu;
    PRINT 'Tabla Co72Menu eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co72Menu no existe.';
END
GO

-- Eliminar la secuencia SeqCo72Menu si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo72Menu'
)
BEGIN
    DROP SEQUENCE SeqCo72Menu;
    PRINT 'Secuencia SeqCo72Menu eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo72Menu no existe.';
END
GO

-- Eliminar la tabla Co73Funcionalidad si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co73Funcionalidad' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co73Funcionalidad;
    PRINT 'Tabla Co73Funcionalidad eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co73Funcionalidad no existe.';
END
GO

-- Eliminar la secuencia SeqCo73Funcionalidad si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo73Funcionalidad'
)
BEGIN
    DROP SEQUENCE SeqCo73Funcionalidad;
    PRINT 'Secuencia SeqCo73Funcionalidad eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo73Funcionalidad no existe.';
END
GO

-- Eliminar la tabla Co74PerfilMenu si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co74PerfilMenu' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co74PerfilMenu;
    PRINT 'Tabla Co74PerfilMenu eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co74PerfilMenu no existe.';
END
GO

-- Eliminar la tabla Co75PerfilFuncionalidad si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co75PerfilFuncionalidad' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co75PerfilFuncionalidad;
    PRINT 'Tabla Co75PerfilFuncionalidad eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co75PerfilFuncionalidad no existe.';
END
GO

-- Eliminar la tabla Co76ControlInformacion si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co76ControlInformacion' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co76ControlInformacion;
    PRINT 'Tabla Co76ControlInformacion eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co76ControlInformacion no existe.';
END
GO

-- Eliminar la secuencia SeqCo76ControlInformacion si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo76ControlInformacion'
)
BEGIN
    DROP SEQUENCE SeqCo76ControlInformacion;
    PRINT 'Secuencia SeqCo76ControlInformacion eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo76ControlInformacion no existe.';
END
GO

-- Verificar y eliminar la tabla Co77HistoricNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co77HistoricNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co77HistoricNegociacnEspecl;
    PRINT 'Tabla Co77HistoricNegociacnEspecl eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co77HistoricNegociacnEspecl no existe.';
END
GO

-- Verificar y eliminar la secuencia SeqCo77HistoricNegociacnEspecl si existe
IF EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo77HistoricNegociacnEspecl'
)
BEGIN
    DROP SEQUENCE SeqCo77HistoricNegociacnEspecl;
    PRINT 'Secuencia SeqCo77HistoricNegociacnEspecl eliminada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo77HistoricNegociacnEspecl no existe.';
END
GO


-- Eliminar la tabla Co78EmpresaConvenioStaffMedico si existe
IF EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co78EmpresaConvenioStaffMedico' AND xtype = 'U'
)
BEGIN
    DROP TABLE Co78EmpresaConvenioStaffMedico;
    PRINT 'Tabla Co78EmpresaConvenioStaffMedico eliminada correctamente (rollback ejecutado).';
END
ELSE
BEGIN
    PRINT 'La tabla Co78EmpresaConvenioStaffMedico no existe. No se requiere eliminar.';
END
GO