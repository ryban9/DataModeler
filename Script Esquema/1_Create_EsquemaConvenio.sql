-- Script Creacion Nuevo Esquema

-- Crear la tabla Co28ConvenioCataloEspecialidad
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co28ConvenioCataloEspecialidad' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co28ConvenioCataloEspecialidad 
    (
        NumeroConvenio INTEGER NOT NULL, 
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        CodigoEspecialidad VARCHAR(16) NOT NULL, 
        AnoAtencionDesde VARCHAR(20), 
        AnoAtencionHasta NUMERIC(20), 
        EdadDesde NUMERIC(28), 
        EdadHasta NUMERIC(28), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co28ConvenioCataloEspecialidadPk PRIMARY KEY CLUSTERED 
        (
            NumeroConvenio, 
            IdCatalogoTipoPrestador, 
            CodigoEspecialidad
        )
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co28ConvenioCataloEspecialidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co28ConvenioCataloEspecialidad ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co32TipoPrestadorEspecialidad

-- Validar y crear la secuencia SeqCo32TipoPrestadorEspecialidad
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo32TipoPrestadorEspecialidad'
)
BEGIN
    CREATE SEQUENCE SeqCo32TipoPrestadorEspecialidad
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo32TipoPrestadorEspecialidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo32TipoPrestadorEspecialidad ya existe.';
END
GO

-- Validar y crear la tabla Co32TipoPrestadorEspecialidad
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co32TipoPrestadorEspecialidad' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co32TipoPrestadorEspecialidad 
    (
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        CodigoEspecialidad VARCHAR(16) NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co32TipoPrestadorEspecialidad_PK PRIMARY KEY CLUSTERED 
        (
            IdCatalogoTipoPrestador, 
            CodigoEspecialidad
        )
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co32TipoPrestadorEspecialidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co32TipoPrestadorEspecialidad ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co33Catalogo

-- Validar y crear la secuencia SeqCo33Catalogo
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo33Catalogo'
)
BEGIN
    CREATE SEQUENCE SeqCo33Catalogo
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo33Catalogo creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo33Catalogo ya existe.';
END
GO

-- Validar y crear la tabla Co33Catalogo
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co33Catalogo' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co33Catalogo 
    (
        IdCatalogo INTEGER NOT NULL, 
        Scope VARCHAR(100), 
        Tipo VARCHAR(100), 
        Descripcion VARCHAR(250), 
        ValorUno VARCHAR(250), 
        ValorDos VARCHAR(250), 
        ValorTres VARCHAR(250), 
        ValorCuatro VARCHAR(250), 
        Grupo VARCHAR(250), 
        Orden NUMERIC(10), 
        Codigo VARCHAR(100), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co33CatalogoPk PRIMARY KEY CLUSTERED (IdCatalogo)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co33Catalogo_Tipo_Codigo UNIQUE (Tipo, Codigo)
    );
    PRINT 'Tabla Co33Catalogo creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co33Catalogo ya existe.';
END
GO


-- Crear la seciuencia con la tabla Co34SubTipoPrestador

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo34SubTipoPrestador'
)
BEGIN
    CREATE SEQUENCE SeqCo34SubTipoPrestador
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo34SubTipoPrestador creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo34SubTipoPrestador ya existe.';
END
GO

-- Validar y crear la tabla Co34SubTipoPrestador
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co34SubTipoPrestador' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co34SubTipoPrestador 
    (
        IdSubTipoPrestador INTEGER NOT NULL, 
        Codigo VARCHAR(20), 
        Nombre VARCHAR(100), 
        Descripcion VARCHAR(400), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co34SubTipoPrestadorPk PRIMARY KEY CLUSTERED (IdSubTipoPrestador)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co34SubTipoPrestador_Codigo_Nombre UNIQUE (Codigo, Nombre)
    );
    PRINT 'Tabla Co34SubTipoPrestador creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co34SubTipoPrestador ya existe.';
END
GO


-- Crear la tabla Co35TipPrestdrSubTipPrestdr

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co35TipPrestdrSubTipPrestdr' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co35TipPrestdrSubTipPrestdr 
    (
        IdSubTipoPrestador INTEGER NOT NULL, 
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        NumeroConvenio INTEGER NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co35TipPrestdrSubTipPrestdr_PK PRIMARY KEY CLUSTERED 
        (
            IdSubTipoPrestador, 
            IdCatalogoTipoPrestador,
            NumeroConvenio
        )
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co35TipPrestdrSubTipPrestdr creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co35TipPrestdrSubTipPrestdr ya existe.';
END
GO


-- Crear la seciuencia con la tabla Co36HorarioAtencion

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo36HorarioAtencion'
)
BEGIN
    CREATE SEQUENCE SeqCo36HorarioAtencion
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo36HorarioAtencion creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo36HorarioAtencion ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co36HorarioAtencion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co36HorarioAtencion 
    (
        IdHorarioAtencion INTEGER NOT NULL, 
        IdCatalogoDiasSemana INTEGER NOT NULL,  
        NumeroConvenio INTEGER, 
        NumeroSucursal INTEGER, 
        HoraApertura TIME, 
        HoraCierre TIME, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co36HorarioAtencionPk PRIMARY KEY CLUSTERED (IdHorarioAtencion)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co36HorarioAtencion creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co36HorarioAtencion ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co37Imagen

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo37Imagen'
)
BEGIN
    CREATE SEQUENCE SeqCo37Imagen
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo37Imagen creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo37Imagen ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co37Imagen' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co37Imagen 
    (
        IdImagen INTEGER NOT NULL,
        IdCatalogoTipoImagen INTEGER NOT NULL, 
        NumeroConvenio INTEGER, 
        NumeroSucursal INTEGER, 
        Nombre VARCHAR(200), 
        Extension VARCHAR(100), 
        Codigo VARCHAR(100), 
        Ruta VARCHAR(250), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co37ImagenPk PRIMARY KEY CLUSTERED (IdImagen)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co37Imagen_Nombre_Codigo UNIQUE (Nombre, Codigo)
    );
    PRINT 'Tabla Co37Imagen creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co37Imagen ya existe.';
END
GO


-- Crear la seciuencia con la tabla Co38Log

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo38Log'
)
BEGIN
    CREATE SEQUENCE SeqCo38Log
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo38Log creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo38Log ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co38Log' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co38Log 
    (
        IdLog INTEGER NOT NULL, 
        Nivel VARCHAR(10), 
        Mensaje VARCHAR(MAX), 
        Origen VARCHAR(255), 
        Datos VARCHAR(MAX), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co38Log_PK PRIMARY KEY CLUSTERED (IdLog)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co38Log creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co38Log ya existe.';
END
GO

-- Crear la tabla Co39ConvenioTipoPrestador

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co39ConvenioTipoPrestador' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co39ConvenioTipoPrestador 
    (
        NumeroConvenio INTEGER NOT NULL, 
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co39ConvenioTipoPrestadorPk PRIMARY KEY CLUSTERED (NumeroConvenio, IdCatalogoTipoPrestador)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co39ConvenioTipoPrestador creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co39ConvenioTipoPrestador ya existe.';
END
GO


-- Crear la seciuencia con la tabla Co40Configuracion

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo40Configuracion'
)
BEGIN
    CREATE SEQUENCE SeqCo40Configuracion
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo40Configuracion creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo40Configuracion ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co40Configuracion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co40Configuracion 
    (
        IdConfiguracion INTEGER NOT NULL,
        Clave VARCHAR(100), 
        Valor VARCHAR(MAX), 
        Descripcion VARCHAR(255), 
        Tipo VARCHAR(50), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co40Configuracion_PK PRIMARY KEY CLUSTERED (IdConfiguracion)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co40Configuracion creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co40Configuracion ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co41ConvenTipPrestdrConfigurcn

-- Verificar si existe la tabla Co41ConvenTipPrestdrConfigurcn
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co41ConvenTipPrestdrConfigurcn' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co41ConvenTipPrestdrConfigurcn 
    (
        NumeroConvenio INTEGER NOT NULL, 
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        IdConfiguracion INTEGER NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co41ConvenTipPrestdrConfigurcnPK PRIMARY KEY CLUSTERED (
            NumeroConvenio, IdCatalogoTipoPrestador, IdConfiguracion
        )
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co41ConvenTipPrestdrConfigurcn creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co41ConvenTipPrestdrConfigurcn ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co42Estudio

-- Verificar si existe la secuencia SeqCo42Estudio
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo42Estudio'
)
BEGIN
    CREATE SEQUENCE SeqCo42Estudio
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo42Estudio creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo42Estudio ya existe.';
END
GO

-- Verificar si existe la tabla Co42Estudio
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co42Estudio' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co42Estudio 
    (
        IdEstudio INTEGER NOT NULL,
        IdCatalogoTipoTitulo INTEGER NOT NULL,
        NumeroConvenio INTEGER NOT NULL,
        PersonaNumero INTEGER,
        NombreSenescyt VARCHAR(250),
        CodigoSenescyt VARCHAR(100),
        FechaRegistroSenescyt DATE,
        Descripcion VARCHAR(400),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co42EstudioPk PRIMARY KEY CLUSTERED (IdEstudio)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co42Estudio_Uniqueness UNIQUE (IdEstudio, IdCatalogoTipoTitulo, NumeroConvenio, PersonaNumero)
    );
    PRINT 'Tabla Co42Estudio creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co42Estudio ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co43Usuario
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo43Usuario'
)
BEGIN
    CREATE SEQUENCE SeqCo43Usuario
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo43Usuario creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo43Usuario ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co43Usuario' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co43Usuario 
    (
        IdUsuario INTEGER NOT NULL,
        Nombre VARCHAR(255),
        Email VARCHAR(255),
        Contraseña VARCHAR(255),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co43Usuario_PK PRIMARY KEY CLUSTERED (IdUsuario)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co43Usuario creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co43Usuario ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co44ServicioAdicional

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo44ServicioAdicional'
)
BEGIN
    CREATE SEQUENCE SeqCo44ServicioAdicional
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo44ServicioAdicional creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo44ServicioAdicional ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co44ServicioAdicional' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co44ServicioAdicional 
    (
        IdServicioAdicional INTEGER NOT NULL,
        Codigo VARCHAR(20),
        Nombre VARCHAR(100),
        Tipo VARCHAR(250),
        ValorUno VARCHAR(250),
        ValorDos VARCHAR(250),
        ValorTres VARCHAR(250),
        ValorCuatro VARCHAR(250),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co44ServicioAdicionalPk PRIMARY KEY CLUSTERED (IdServicioAdicional)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co44ServicioAdicional_Codigo_Nombre UNIQUE (Codigo, Nombre)
    );
    PRINT 'Tabla Co44ServicioAdicional creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co44ServicioAdicional ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co45SucuCovServiAdic

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo45SucuCovServiAdic'
)
BEGIN
    CREATE SEQUENCE SeqCo45SucuCovServiAdic
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo45SucuCovServiAdic creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo45SucuCovServiAdic ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co45SucuCovServiAdic' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co45SucuCovServiAdic 
    (
        IdSucuCovServiAdic INTEGER NOT NULL,
        IdServicioAdicional INTEGER NOT NULL,
        NumeroConvenio INTEGER,
        NumeroSucursal INTEGER,
        Valor VARCHAR(250),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co45SucuCovServiAdicPK PRIMARY KEY CLUSTERED (IdSucuCovServiAdic)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co45SucuCovServiAdic creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co45SucuCovServiAdic ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co46SucuConvTipoSucuPres

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo46SucuConvTipoSucuPres'
)
BEGIN
    CREATE SEQUENCE SeqCo46SucuConvTipoSucuPres
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo46SucuConvTipoSucuPres creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo46SucuConvTipoSucuPres ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co46SucuConvTipoSucuPres' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co46SucuConvTipoSucuPres 
    (
        IdSucuConvTipoSucuPres INTEGER NOT NULL,
        NumeroConvenio INTEGER,
        NumeroSucursal INTEGER,
        IdCatalogoTipoPrestador INTEGER,
        IdCatalogoTipoSucursal INTEGER,
        IdentServicio VARCHAR(10),
        ServicioTercerizado BIT,
        Negociado BIT,
        PrecioPreferencial BIT,
        Tradicional VARCHAR(8000),
        Masivo VARCHAR(8000),
        IdCatalogoTipoFinanciamiento INTEGER,
        HorarioCorteHabitacion VARCHAR(255),
        HorariosGraciaCorte VARCHAR(255),
        IdCatalogoTipoDescuento INTEGER,
        EdadDesde NUMERIC(28),
        EdadHasta NUMERIC(28),
        EquipoAlquilado BIT,
        ServicioDomicilio BIT,
        ConCita BIT,
        Observaciones VARCHAR(8000),
        DiasAplica VARCHAR(255),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co46SucuConvTipoSucuPres_PK PRIMARY KEY CLUSTERED (IdSucuConvTipoSucuPres)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co46SucuConvTipoSucuPres creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co46SucuConvTipoSucuPres ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co47FormaPagoSucursal

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo47FormaPagoSucursal'
)
BEGIN
    CREATE SEQUENCE SeqCo47FormaPagoSucursal
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo47FormaPagoSucursal creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo47FormaPagoSucursal ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co47FormaPagoSucursal' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co47FormaPagoSucursal 
    (
        IdFormaPagoSucursal INTEGER NOT NULL,
        IdCatalogoFormaPago INTEGER NOT NULL,
        NumeroConvenio INTEGER,
        NumeroSucursal INTEGER,
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co47FormaPagoSucursal_PK PRIMARY KEY CLUSTERED (IdFormaPagoSucursal)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co47FormaPagoSucursal_IdFormaPagoSucursal_IdCatalogoFormaPago UNIQUE (IdFormaPagoSucursal, IdCatalogoFormaPago)
    );
    PRINT 'Tabla Co47FormaPagoSucursal creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co47FormaPagoSucursal ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co48Sistema
-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo48Sistema'
)
BEGIN
    CREATE SEQUENCE SeqCo48Sistema
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo48Sistema creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo48Sistema ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co48Sistema' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co48Sistema 
    (
        IdSistema INTEGER NOT NULL,
        Nombre VARCHAR(100),
        Descripcion VARCHAR(255),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co48Sitema_PK PRIMARY KEY CLUSTERED (IdSistema)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co48Sistema_IdSistema_Nombre UNIQUE (IdSistema, Nombre)
    );
    PRINT 'Tabla Co48Sistema creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co48Sistema ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co49MotivoAnulacion

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo49MotivoAnulacion'
)
BEGIN
    CREATE SEQUENCE SeqCo49MotivoAnulacion
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo49MotivoAnulacion creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo49MotivoAnulacion ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co49MotivoAnulacion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co49MotivoAnulacion 
    (
        IdMotivoAnulacion INTEGER NOT NULL,
        NumeroConvenio INTEGER NOT NULL,
        Motivo VARCHAR(255),
        FechaInicioConvenio DATE,
        FechaFinConvenio DATE,
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co49MotivoAnulacionPk PRIMARY KEY CLUSTERED (IdMotivoAnulacion)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co49MotivoAnulacion creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co49MotivoAnulacion ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co50HistoricoAnulacnConven

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo50HistoricoAnulacnConven'
)
BEGIN
    CREATE SEQUENCE SeqCo50HistoricoAnulacnConven
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo50HistoricoAnulacnConven creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo50HistoricoAnulacnConven ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co50HistoricoAnulacnConven' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co50HistoricoAnulacnConven 
    (
        IdHistoricoAnulacnConven INTEGER NOT NULL,
        IdMotivoAnulacion INTEGER NOT NULL,
        NumeroConvenio INTEGER NOT NULL,
        Motivo VARCHAR(255),
        FechaInicioConvenio DATE,
        FechaFinConvenio DATE,
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT CO_HISTORICO_ANULACIONCONVENIO_PK PRIMARY KEY CLUSTERED (IdHistoricoAnulacnConven)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co50HistoricoAnulacnConven creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co50HistoricoAnulacnConven ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co51TArquetipoPrestador

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo51TArquetipoPrestador'
)
BEGIN
    CREATE SEQUENCE SeqCo51TArquetipoPrestador
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo51TArquetipoPrestador creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo51TArquetipoPrestador ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co51TArquetipoPrestador' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co51TArquetipoPrestador 
    (
        IdArquetipoPrestador INTEGER NOT NULL,
        Codigo VARCHAR(20),
        Nombre VARCHAR(100),
        Descripcion VARCHAR(400),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co51TArquetipoPrestadorPk PRIMARY KEY CLUSTERED (IdArquetipoPrestador)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co51TArquetipoPrestador_Codigo_Nombre UNIQUE (Codigo, Nombre)
    );
    PRINT 'Tabla Co51TArquetipoPrestador creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co51TArquetipoPrestador ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co52TipPrestdrArqTipPrestdr

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co52TipPrestdrArqTipPrestdr' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co52TipPrestdrArqTipPrestdr 
    (
        IdArquetipoPrestador INTEGER NOT NULL,
        NumeroConvenio INTEGER NOT NULL,
        IdCatalogoTipoPrestador INTEGER NOT NULL,
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co52TipPrestdrArqTipPrestdrPk PRIMARY KEY CLUSTERED (IdArquetipoPrestador, IdCatalogoTipoPrestador)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co52TipPrestdrArqTipPrestdr creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co52TipPrestdrArqTipPrestdr ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co53Procedimiento

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo53Procedimiento'
)
BEGIN
    CREATE SEQUENCE SeqCo53Procedimiento
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo53Procedimiento creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo53Procedimiento ya existe.';
END
GO


-- Crear tabla Co53Procedimiento si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co53Procedimiento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co53Procedimiento 
    (
        IdProcedimiento INTEGER NOT NULL, 
        Nombre VARCHAR(200), 
        Codigo VARCHAR(100), 
        Descripcion VARCHAR(400), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co53ProcedimientoPk PRIMARY KEY CLUSTERED (IdProcedimiento)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co53Procedimiento_Nombre_Codigo UNIQUE (Nombre, Codigo)
    );
    PRINT 'Tabla Co53Procedimiento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co53Procedimiento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co54ConvenioProcedimiento

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo54ConvenioProcedimiento'
)
BEGIN
    CREATE SEQUENCE SeqCo54ConvenioProcedimiento
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo54ConvenioProcedimiento creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo54ConvenioProcedimiento ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co54ConvenioProcedimiento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co54ConvenioProcedimiento 
    (
        NumeroConvenio INTEGER NOT NULL, 
        IdProcedimiento INTEGER NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co54ConvenioProcedimiento_PK PRIMARY KEY CLUSTERED (NumeroConvenio, IdProcedimiento)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co54ConvenioProcedimiento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co54ConvenioProcedimiento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co55ConvenioOperacion

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo55ConvenioOperacion'
)
BEGIN
    CREATE SEQUENCE SeqCo55ConvenioOperacion
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo55ConvenioOperacion creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo55ConvenioOperacion ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co55ConvenioOperacion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co55ConvenioOperacion 
    (
        NumeroConvenio INTEGER NOT NULL, 
        NumeroConvenioOperacion INTEGER NOT NULL, 
        IdCatalogoTipoPrestador INTEGER NOT NULL, 
        Descripcion VARCHAR(500), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co55ConvenioHospitalPk PRIMARY KEY CLUSTERED (NumeroConvenio, NumeroConvenioOperacion)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co55ConvenioOperacion creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co55ConvenioOperacion ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co56TipoNegociacionEspecial

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo56TipoNegociacionEspecial'
)
BEGIN
    CREATE SEQUENCE SeqCo56TipoNegociacionEspecial
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo56TipoNegociacionEspecial creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo56TipoNegociacionEspecial ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co56TipoNegociacionEspecial' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co56TipoNegociacionEspecial 
    (
        IdTipoNegociacionEspecial INTEGER NOT NULL, 
        Nombre VARCHAR(100), 
        Codigo VARCHAR(100), 
        Descripcion VARCHAR(250), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co56TipoNegociacionEspecial_PK PRIMARY KEY CLUSTERED (IdTipoNegociacionEspecial)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co56TipoNegociacionEspecial_Nombre_Codigo UNIQUE (Nombre, Codigo)
    );
    PRINT 'Tabla Co56TipoNegociacionEspecial creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co56TipoNegociacionEspecial ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co57NegociacionEspecial

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo57NegociacionEspecial'
)
BEGIN
    CREATE SEQUENCE SeqCo57NegociacionEspecial
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo57NegociacionEspecial creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo57NegociacionEspecial ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co57NegociacionEspecial' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co57NegociacionEspecial 
    (
        IdNegociacionEspecial INTEGER NOT NULL, 
        IdTipoNegociacionEspecial INTEGER NOT NULL, 
        Base DECIMAL(10,4), 
        Descuento NUMERIC(28), 
        FechaVigenciaInicio DATE, 
        FechaVigenciaFin DATE, 
        Monto NUMERIC(28), 
        RendimientoInicial NUMERIC(28), 
        RendimientoEsperado NUMERIC(28), 
        RendimientoReal NUMERIC(28), 
        ComisionGeneral NUMERIC(28), 
        IdCatalogoPeriodoCalculo INTEGER, 
        IdCatalogoPrestaciones INTEGER, 
        Estado INTEGER, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        IdentServicio VARCHAR(10) NOT NULL,
        CONSTRAINT Co57NegociacionEspecial_PK PRIMARY KEY CLUSTERED (IdNegociacionEspecial, IdTipoNegociacionEspecial)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co57NegociacionEspecial creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co57NegociacionEspecial ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co58ConvenNegociacnEspecl

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo58ConvenNegociacnEspecl'
)
BEGIN
    CREATE SEQUENCE SeqCo58ConvenNegociacnEspecl
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo58ConvenNegociacnEspecl creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo58ConvenNegociacnEspecl ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co58ConvenNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co58ConvenNegociacnEspecl 
    (
        IdNegociacionEspecial INTEGER NOT NULL, 
        IdTipoNegociacionEspecial INTEGER NOT NULL, 
        NumeroConvenio INTEGER, 
        IdCatalogoTipoPrestador INTEGER, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co58ConvenNegociacnEspecl_PK PRIMARY KEY CLUSTERED 
        (
            IdNegociacionEspecial
        )
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co58ConvenNegociacnEspecl creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co58ConvenNegociacnEspecl ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co59TipoDocumento

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo59TipoDocumento'
)
BEGIN
    CREATE SEQUENCE SeqCo59TipoDocumento
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo59TipoDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo59TipoDocumento ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co59TipoDocumento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co59TipoDocumento 
    (
        IdTipoDocumento INTEGER NOT NULL, 
        Nombre VARCHAR(100), 
        Codigo VARCHAR(100), 
        Descripcion VARCHAR(250), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT CO_TIPO_DOCUMENTO_PK PRIMARY KEY CLUSTERED (IdTipoDocumento)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co59TipoDocumento_Nombre_Codigo UNIQUE (Nombre, Codigo)
    );
    PRINT 'Tabla Co59TipoDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co59TipoDocumento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co60CargaDocumento

-- Crear secuencia si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo60CargaDocumento'
)
BEGIN
    CREATE SEQUENCE SeqCo60CargaDocumento
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo60CargaDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo60CargaDocumento ya existe.';
END
GO

-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co60CargaDocumento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co60CargaDocumento 
    (
        IdCargaDocumento INTEGER NOT NULL, 
        NumeroConvenio INTEGER, 
        IdCatalogoTipoPrestador INTEGER, 
        NumeroSucursal INTEGER, 
        IdCatalogoTipoSucursal INTEGER, 
        NombreOriginal VARCHAR(250), 
        NombreNuevo VARCHAR(250), 
        Url VARCHAR(255), 
        TipoMime VARCHAR(100), 
        Observaciones VARCHAR(255), 
        FechaInicialCaducidad DATE, 
        FechaFinCaducidad DATE, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER, 
        Co14SucursalesConvenioTipos_NumeroSucursal INTEGER,
        CONSTRAINT CO_CARGA_DOCUMENTO_PK PRIMARY KEY CLUSTERED (IdCargaDocumento)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co60CargaDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co60CargaDocumento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co61TipoPrestadorDocumento

-- Crear tabla Co61TipoPrestadorDocumento si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co61TipoPrestadorDocumento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co61TipoPrestadorDocumento 
    (
        IdTipoDocumento INTEGER NOT NULL,
        IdCargaDocumento INTEGER NOT NULL,
        IdCatalogoTipoPrestador INTEGER NOT NULL,
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INTEGER,
        CONSTRAINT Co61TipoPrestadorDocumentoPk PRIMARY KEY CLUSTERED (IdTipoDocumento, IdCargaDocumento)
            WITH (
                ALLOW_PAGE_LOCKS = ON, 
                ALLOW_ROW_LOCKS = ON
            )
    );
    PRINT 'Tabla Co61TipoPrestadorDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co61TipoPrestadorDocumento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co62HistorialCargaDocumento

-- Crear secuencia solo si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo62HistorialCargaDocumento'
)
BEGIN
    CREATE SEQUENCE SeqCo62HistorialCargaDocumento
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo62HistorialCargaDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo62HistorialCargaDocumento ya existe.';
END
GO

-- Crear tabla solo si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co62HistorialCargaDocumento' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co62HistorialCargaDocumento 
    (
        IdHistorialCargaDocumento INTEGER NOT NULL, 
        IdCargaDocumento INTEGER NOT NULL, 
        NumeroConvenio INTEGER, 
        IdCatalogoTipoPrestador INTEGER, 
        NumeroSucursal INTEGER, 
        IdCatalogoTipoSucursal INTEGER, 
        IdNegociacionEspecial INTEGER, 
        NombreOriginal VARCHAR(250), 
        NombreNuevo VARCHAR(250), 
        Url VARCHAR(255), 
        TipoMime VARCHAR(100), 
        Observaciones VARCHAR(255), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co62HistorialCargaDocumento_PK PRIMARY KEY CLUSTERED (IdHistorialCargaDocumento)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co62HistorialCargaDocumento creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co62HistorialCargaDocumento ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co63ConvenioTipoPago

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co63ConvenioTipoPago' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co63ConvenioTipoPago 
    (
        NumeroConvenio INT NOT NULL, 
        IdCatalogoTipoPago INT NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co63ConvenioTipoPago_PK PRIMARY KEY CLUSTERED (NumeroConvenio, IdCatalogoTipoPago)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co63ConvenioTipoPago con su clave primaria creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co63ConvenioTipoPago ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co64ConvenioFormaPago

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co64ConvenioFormaPago' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co64ConvenioFormaPago 
    (
        NumeroConvenio INT NOT NULL, 
        IdCatalogoFormaPago INT NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co64ConvenioFormaPago_PK PRIMARY KEY CLUSTERED (NumeroConvenio, IdCatalogoFormaPago)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co64ConvenioFormaPago con su clave primaria creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co64ConvenioFormaPago ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co65EstructuraNegociacnEspecl

-- Crear secuencia SeqCo65EstructuraNegociacnEspecl si no existe
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo65EstructuraNegociacnEspecl'
)
BEGIN
    CREATE SEQUENCE SeqCo65EstructuraNegociacnEspecl
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo65EstructuraNegociacnEspecl creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo65EstructuraNegociacnEspecl ya existe.';
END
GO

-- Crear tabla Co65EstructuraNegociacnEspecl si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co65EstructuraNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co65EstructuraNegociacnEspecl 
    (
        IdEstructuraNegociacnEspecl INTEGER NOT NULL,
        IdNegociacionEspecial INTEGER NOT NULL,
        IdTipoNegociacionEspecial INTEGER NOT NULL,
        NumeroConvenio INTEGER NOT NULL,
        IdCatalogoTipoPrestador INTEGER NOT NULL,
        IdCatalogoTipoConsultaMedica INTEGER,
        Monto NUMERIC(28),
        Porcentaje NUMERIC(28),
        NumeroCita NUMERIC(28),
        PrecioUno NUMERIC(28),
        PrecioDos NUMERIC(28),
        PrecioTres NUMERIC(28),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado NUMERIC(4),
        CONSTRAINT Co65ConfiguracnNegociacnEspecl_PK PRIMARY KEY CLUSTERED (IdEstructuraNegociacnEspecl)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co65EstructuraNegociacnEspecl creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co65EstructuraNegociacnEspecl ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co66DetalleNegociacionEspecial

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co66DetalleNegociacionEspecial' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co66DetalleNegociacionEspecial 
    (
        IdDetalleNegociacionEspecial INT NOT NULL, 
        IdNegociacionEspecial INT NOT NULL, 
        IdTipoNegociacionEspecial INT NOT NULL, 
        IdCatalogoDetalleNegociacion INT, 
        Descuento NUMERIC(28), 
        Comision NUMERIC(28), 
        DescuentoDiferenciado BIT, 
        Detalle VARCHAR(500), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co66DetalleNegociacionEspecial_PK PRIMARY KEY CLUSTERED (IdDetalleNegociacionEspecial)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co66DetalleNegociacionEspecial creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co66DetalleNegociacionEspecial ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co67DetallNegocicnEspeclNivel

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo67DetallNegocicnEspeclNivel'
)
BEGIN
    CREATE SEQUENCE SeqCo67DetallNegocicnEspeclNivel
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo67DetallNegocicnEspeclNivel creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo67DetallNegocicnEspeclNivel ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co67DetallNegocicnEspeclNivel' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co67DetallNegocicnEspeclNivel 
    (
        IdDetallNegocicnEspeclNivel INT NOT NULL,
        IdDetalleNegociacionEspecial INT NOT NULL,
        IdCatalogoNivel INT NOT NULL,
        Descuento NUMERIC(28),
        Observacion VARCHAR(500),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INT,
        CONSTRAINT Co67DetallNegocicnEspeclNivel_PK PRIMARY KEY CLUSTERED (IdDetallNegocicnEspeclNivel)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co67DetallNegocicnEspeclNivel creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co67DetallNegocicnEspeclNivel ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co68ZonaCuerpoEspecializacion

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo68ZonaCuerpoEspecializacion'
)
BEGIN
    CREATE SEQUENCE SeqCo68ZonaCuerpoEspecializacion
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo68ZonaCuerpoEspecializacion creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo68ZonaCuerpoEspecializacion ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co68ZonaCuerpoEspecializacion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co68ZonaCuerpoEspecializacion 
    (
        IdZonaCuerpoEspecializacion INT NOT NULL,
        Codigo VARCHAR(16),
        Nombre VARCHAR(150),
        Descripcion VARCHAR(255),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INT,
        CONSTRAINT Co68ZonaCuerpoEspecializacion_PK PRIMARY KEY CLUSTERED (IdZonaCuerpoEspecializacion)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co68ZonaCuerpoEspecializacion_Codigo_Nombre UNIQUE (Codigo, Nombre)
    );
    PRINT 'Tabla Co68ZonaCuerpoEspecializacion creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co68ZonaCuerpoEspecializacion ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co69EspecialidadZonaCuerpo

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo69EspecialidadZonaCuerpo'
)
BEGIN
    CREATE SEQUENCE SeqCo69EspecialidadZonaCuerpo
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo69EspecialidadZonaCuerpo creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo69EspecialidadZonaCuerpo ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co69EspecialidadZonaCuerpo' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co69EspecialidadZonaCuerpo 
    (
        IdEspecialidadZonaCuerpo INT NOT NULL,
        NumeroConvenio INT NOT NULL,
        IdCatalogoTipoPrestador INT NOT NULL,
        CodigoEspecialidad VARCHAR(16) NOT NULL,
        IdZonaCuerpoEspecializacion INT NOT NULL,
        AnoAtencionDesde VARCHAR(20),
        AnoAtencionHasta NUMERIC(20),
        ZonaCuerpoEspecializada VARCHAR(255),
        EdadDesde NUMERIC(28),
        EdadHasta NUMERIC(28),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INT,
        CONSTRAINT Co69EspecialidadZonaCuerpo_PK PRIMARY KEY CLUSTERED (IdEspecialidadZonaCuerpo)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co69EspecialidadZonaCuerpo creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co69EspecialidadZonaCuerpo ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co70Perfil

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo70Perfil'
)
BEGIN
    CREATE SEQUENCE SeqCo70Perfil
    AS INT
    START WITH 1
    INCREMENT BY 1;
    PRINT 'Secuencia SeqCo70Perfil creada.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo70Perfil ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co70Perfil' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co70Perfil 
    (
        IdPerfil INT NOT NULL,
        IdSistema INT NOT NULL,
        Nombre VARCHAR(100),
        Descripcion VARCHAR(500),
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INT,
        CONSTRAINT Co70Perfil_PK PRIMARY KEY CLUSTERED (IdPerfil)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co70Perfil creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co70Perfil ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co71UsuarioPerfil

IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co71UsuarioPerfil' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co71UsuarioPerfil 
    (
        IdUsuario INT NOT NULL, 
        IdPerfil INT NOT NULL, 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co71UsuarioPerfil_PK PRIMARY KEY CLUSTERED (IdUsuario, IdPerfil)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co71UsuarioPerfil creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co71UsuarioPerfil ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co72Menu

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo72Menu'
)
BEGIN
    CREATE SEQUENCE SeqCo72Menu
        START WITH 1
        INCREMENT BY 1;
    PRINT 'Secuencia SeqCo72Menu creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo72Menu ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co72Menu' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co72Menu 
    (
        IdMenu INT NOT NULL,
        IdSistema INT NOT NULL, 
        IdMenuPadre INT, 
        Nombre VARCHAR(100), 
        Ruta VARCHAR(200), 
        Icono VARCHAR(50), 
        Orden NUMERIC(28), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co72Menu_PK PRIMARY KEY CLUSTERED (IdMenu)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co72Menu creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co72Menu ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co73Funcionalidad

IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo73Funcionalidad'
)
BEGIN
    CREATE SEQUENCE SeqCo73Funcionalidad
        START WITH 1
        INCREMENT BY 1;
    PRINT 'Secuencia SeqCo73Funcionalidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo73Funcionalidad ya existe.';
END
GO

IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co73Funcionalidad' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co73Funcionalidad 
    (
        IdFuncionalidad INT NOT NULL,
        IdSistema INT NOT NULL, 
        Nombre VARCHAR(100), 
        Descripcion VARCHAR(500), 
        Codigo VARCHAR(100), 
        Tipo VARCHAR(50), 
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co73Funcionalidad_PK PRIMARY KEY CLUSTERED (IdFuncionalidad)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co73Funcionalidad_Nombre_Codigo UNIQUE (Nombre, Codigo)
    );
    PRINT 'Tabla Co73Funcionalidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co73Funcionalidad ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co74PerfilMenu

IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co74PerfilMenu' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co74PerfilMenu 
    (
        IdPerfil INT NOT NULL,
        IdMenu INT NOT NULL,
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co74PerfilMenu_PK PRIMARY KEY CLUSTERED (IdPerfil, IdMenu)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co74PerfilMenu creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co74PerfilMenu ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co75PerfilFuncionalidad

IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co75PerfilFuncionalidad' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co75PerfilFuncionalidad 
    (
        IdPerfil INT NOT NULL,
        IdFuncionalidad INT NOT NULL,
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INT,
        CONSTRAINT Co75PerfilFuncionalidad_PK PRIMARY KEY CLUSTERED (IdPerfil, IdFuncionalidad)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
    PRINT 'Tabla Co75PerfilFuncionalidad creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co75PerfilFuncionalidad ya existe.';
END
GO

-- Crear la seciuencia con la tabla Co76Controlnformacion

-- Crear la secuencia para Co76ControlInformacion
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo76ControlInformacion'
)
BEGIN
    CREATE SEQUENCE SeqCo76ControlInformacion
        START WITH 1
        INCREMENT BY 1;
    PRINT 'Secuencia SeqCo76ControlInformacion creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo76ControlInformacion ya existe.';
END
GO

-- Crear la tabla Co76ControlInformacion
IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co76ControlInformacion' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co76ControlInformacion 
    (
        IdControlInformacion INT NOT NULL,
        IdSistema INT NOT NULL,
        NumeroConvenio INT,
        NumeroSucursal INT,
        UsuarioCreacion VARCHAR(40),
        UsuarioModificacion VARCHAR(40),
        FechaCreacion DATE,
        HoraCreacion VARCHAR(16),
        FechaModificacion DATE,
        HoraModificacion VARCHAR(16),
        Estado INT,
        CONSTRAINT Co76ControlInformacion_PK PRIMARY KEY CLUSTERED (IdControlInformacion)
        WITH (
            ALLOW_PAGE_LOCKS = ON,
            ALLOW_ROW_LOCKS = ON
        ),
        CONSTRAINT UQ_Co76ControlInformacion_IdControl_IdSistema UNIQUE (IdControlInformacion, IdSistema)
    );
    PRINT 'Tabla Co76ControlInformacion creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co76ControlInformacion ya existe.';
END
GO


-- Crear la seciuencia con la tabla Co77HistoricNegociacnEspecl

-- Verificar y crear la secuencia SeqCo77HistoricNegociacnEspecl
IF NOT EXISTS (
    SELECT * FROM sys.sequences WHERE name = 'SeqCo77HistoricNegociacnEspecl'
)
BEGIN
    CREATE SEQUENCE SeqCo77HistoricNegociacnEspecl
        START WITH 1
        INCREMENT BY 1;
    PRINT 'Secuencia SeqCo77HistoricNegociacnEspecl creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La secuencia SeqCo77HistoricNegociacnEspecl ya existe.';
END
GO

-- Verificar y crear la tabla Co77HistoricNegociacnEspecl
IF NOT EXISTS (
    SELECT * FROM sysobjects WHERE name = 'Co77HistoricNegociacnEspecl' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co77HistoricNegociacnEspecl 
    (
     IdHistoricNegociacnEspecl INTEGER NOT NULL, 
     IdNegociacionEspecial INTEGER NOT NULL, 
     IdTipoNegociacionEspecial INTEGER NOT NULL, 
     Base DECIMAL (10,4), 
     Descuento NUMERIC (28), 
     FechaVigenciaInicio DATE, 
     FechaVigenciaFin DATE, 
     Monto NUMERIC (28), 
     RendimientoInicial NUMERIC (28), 
     RendimientoEsperado NUMERIC (28), 
     RendimientoReal NUMERIC (28), 
     ComisionGeneral NUMERIC (28), 
     IdCatalogoPeriodoCalculo NUMERIC (4), 
     IdCatalogoPrestaciones NUMERIC (4), 
     Estado INTEGER, 
     UsuarioCreacion VARCHAR (40), 
     UsuarioModificacion VARCHAR (40), 
     FechaCreacion DATE, 
     HoraCreacion VARCHAR (16), 
     FechaModificacion DATE, 
     HoraModificacion VARCHAR (16),
     CONSTRAINT Co77HistoricNegociacnEspecl_PK PRIMARY KEY CLUSTERED (IdHistoricNegociacnEspecl)
     WITH (
        ALLOW_PAGE_LOCKS = ON, 
        ALLOW_ROW_LOCKS = ON 
     )
    );
    PRINT 'Tabla Co77HistoricNegociacnEspecl creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla Co77HistoricNegociacnEspecl ya existe.';
END
GO


-- Crear tabla si no existe
IF NOT EXISTS (
    SELECT * FROM sysobjects 
    WHERE name = 'Co78EmpresaConvenioStaffMedico' AND xtype = 'U'
)
BEGIN
    CREATE TABLE Co78EmpresaConvenioStaffMedico
    (
        NumeroConvenioEmpresa INTEGER NOT NULL,
        NumeroConvenioMedico INTEGER NOT NULL,
        UsuarioCreacion VARCHAR(40), 
        UsuarioModificacion VARCHAR(40), 
        FechaCreacion DATE, 
        HoraCreacion VARCHAR(16), 
        FechaModificacion DATE, 
        HoraModificacion VARCHAR(16), 
        Estado INTEGER,
        CONSTRAINT Co78EmpresaStaffMedicoPk PRIMARY KEY CLUSTERED (NumeroConvenioEmpresa, NumeroConvenioMedico)
        WITH (
            ALLOW_PAGE_LOCKS = ON, 
            ALLOW_ROW_LOCKS = ON
        )
    );
      PRINT 'Tabla Co78EmpresaConvenioStaffMedico creada.';
END
ELSE
BEGIN
    PRINT 'La tabla Co78EmpresaConvenioStaffMedico ya existe.';
END
GO