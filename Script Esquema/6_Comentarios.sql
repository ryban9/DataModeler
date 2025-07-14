EXEC sp_addextendedproperty 
    @name = N'MS_Desc_NumeroConvenioAdicional', 
    @value = N'El campo NumeroConvenioAdicional se usará para guardar el numeroConvenio del medico', 
    @level0type = N'SCHEMA', @level0name = 'dbo', 
    @level1type = N'TABLE',  @level1name = 'Co45SucuCovServiAdic', 
    @level2type = N'COLUMN', @level2name = 'NumeroConvenioAdicional';
    