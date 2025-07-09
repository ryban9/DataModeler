--garantias
  INSERT INTO Salud.dbo.Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion,Codigo, FechaCreacion,Estado)
values 
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS', 'COBROS ALTA','No cubiertos', 1, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS', 'COBROS ALTA','Items que indica la carta de autorización', 2, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS', 'COBROS ALTA','No cubiertos + $ carta de autorización', 3, GETDATE(),1)



  INSERT INTO Salud.dbo.Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion, Codigo,FechaCreacion,Estado)
values 
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','CREDITO FIN SEMANA','Si', 1, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','CREDITO FIN SEMANA','No', 2, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','CREDITO FIN SEMANA','Solo Sábado', 3, GETDATE(),1)



 INSERT INTO Salud.dbo.Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion,Codigo, FechaCreacion,Estado)
values 
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','LLAMADA CLIENTE','Si',1, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','LLAMADA CLIENTE','No',2, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'GARANTIAS','LLAMADA CLIENTE','Casos especiales',3, GETDATE(),1)



Insert into Co44ServicioAdicional (IdServicioAdicional,Codigo,Nombre,Tipo,ValorUno,Estado)
values(NEXT VALUE FOR SeqCo44ServicioAdicional, 'TIPATEN', 'TIPO ATENCION', 'seleccion', '["Consulta","Interconsulta","Quirurgica", "Procedimientos en consultorio","Tratamiento clínico"]',1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'REQFIRCONV', 'REQUIERE FIRMA CONVENIO', 'seleccion', '["Si","No","No aplica"]',1),
(NEXT VALUE FOR SeqCo44ServicioAdicional, 'ESTACONVMAR', 'ESTADO CONVENIO MARCO', 'seleccion', '["Firmado Si","Firmado No","No aplica"]',1)

INSERT INTO Salud.dbo.Co33Catalogo
(
    IdCatalogo, [Scope], Tipo, Descripcion,
    ValorUno, ValorDos, ValorTres, ValorCuatro,
    Grupo, Orden, Codigo,
    UsuarioCreacion, UsuarioModificacion,
    FechaCreacion, HoraCreacion, FechaModificacion, HoraModificacion,
    Estado
)
SELECT
    NEXT VALUE FOR dbo.SeqCo33Catalogo,
    N'DIA_SEMANA',               -- Scope
    N'DIA_SEMANA',               -- Tipo
    dia.Nombre,                  -- Descripción
    NULL, NULL, NULL, NULL,      -- Valores opcionales
    NULL, NULL, dia.Codigo,      -- Código
    SYSTEM_USER,                 -- UsuarioCreacion
    NULL,                        -- UsuarioModificacion
    GETDATE(), NULL, NULL, NULL, -- Fechas
    1                            -- Estado activo
FROM (VALUES
    (N'LUNES',      N'LUN'),
    (N'MARTES',     N'MAR'),
    (N'MIÉRCOLES',  N'MIE'),
    (N'JUEVES',     N'JUE'),
    (N'VIERNES',    N'VIE'),
    (N'SÁBADO',     N'SAB'),
    (N'DOMINGO',    N'DOM')
) AS dia(Nombre, Codigo)
WHERE NOT EXISTS (
    SELECT 1
    FROM Salud.dbo.Co33Catalogo c
    WHERE c.[Scope] = N'DIA_SEMANA'
      AND c.Tipo = N'DIA_SEMANA'
      AND c.Descripcion = dia.Nombre
);


 INSERT INTO Salud.dbo.Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion,Codigo, FechaCreacion,Estado)
values 
(NEXT VALUE FOR SeqCo33Catalogo, 'CLINICA_OPERAN','CLINICA_OPERAN','Centro Médico','CTMED', GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'CLINICA_OPERAN','CLINICA_OPERAN','Hospitales','HOSP', GETDATE(),1)


 INSERT INTO Salud.dbo.Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion,Codigo, FechaCreacion,Estado)
values 
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','REQFIRCONV','Si',1, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','REQFIRCONV','No',2, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','REQFIRCONV','No aplica',3, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','ESTACONVMAR','Firmado Si',1, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','ESTACONVMAR','Firmado No',2, GETDATE(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'STAFFMEDICO','ESTACONVMAR','No aplica',3, GETDATE(),1)


insert into Co33Catalogo (IdCatalogo,Scope,Tipo, Descripcion,Codigo, FechaCreacion,Estado)
values(NEXT VALUE FOR SeqCo33Catalogo, 'SECTOR','SECTOR','NORTE',1,getdate(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'SECTOR','SECTOR','SUR',2,getdate(),1),
(NEXT VALUE FOR SeqCo33Catalogo, 'SECTOR','SECTOR','CENTRO',3,getdate(),1)