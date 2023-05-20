inherited dmArticulos: TdmArticulos
  OldCreateOrder = True
  Width = 913
  inherited unqryTablaG: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_articulos'
      
        '  (CODIGO_ARTICULO, ACTIVO_ARTICULO, DESCRIPCION_ARTICULO, CODIG' +
        'O_FAMILIA_ARTICULO, TIPOIVA_ARTICULO, INSTANTEMODIF, INSTANTEALT' +
        'A, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_ARTICULO, :ACTIVO_ARTICULO, :DESCRIPCION_ARTICULO, :C' +
        'ODIGO_FAMILIA_ARTICULO, :TIPOIVA_ARTICULO, :INSTANTEMODIF, :INST' +
        'ANTEALTA, :USUARIOALTA, :USUARIOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_articulos'
      'WHERE'
      '  CODIGO_ARTICULO = :Old_CODIGO_ARTICULO')
    SQLUpdate.Strings = (
      'UPDATE fza_articulos'
      'SET'
      
        '  CODIGO_ARTICULO = :CODIGO_ARTICULO, ACTIVO_ARTICULO = :ACTIVO_' +
        'ARTICULO, DESCRIPCION_ARTICULO = :DESCRIPCION_ARTICULO, CODIGO_F' +
        'AMILIA_ARTICULO = :CODIGO_FAMILIA_ARTICULO, TIPOIVA_ARTICULO = :' +
        'TIPOIVA_ARTICULO, INSTANTEMODIF = :INSTANTEMODIF, INSTANTEALTA =' +
        ' :INSTANTEALTA, USUARIOALTA = :USUARIOALTA, USUARIOMODIF = :USUA' +
        'RIOMODIF'
      'WHERE'
      '  CODIGO_ARTICULO = :Old_CODIGO_ARTICULO')
    SQLLock.Strings = (
      'SELECT * FROM fza_articulos'
      'WHERE'
      '  CODIGO_ARTICULO = :Old_CODIGO_ARTICULO'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_ARTICULO, ACTIVO_ARTICULO, DESCRIPCION_ARTICULO, C' +
        'ODIGO_FAMILIA_ARTICULO, TIPOIVA_ARTICULO, INSTANTEMODIF, INSTANT' +
        'EALTA, USUARIOALTA, USUARIOMODIF FROM fza_articulos'
      'WHERE'
      '  CODIGO_ARTICULO = :CODIGO_ARTICULO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      '  FROM vi_fza_articulos '
      '')
    Active = True
    AfterInsert = unqryTablaGAfterInsert
  end
  inherited unqryPerfiles: TUniQuery
    SQL.Strings = (
      'select *'
      'from fza_usuarios_perfiles'
      'where (KEY_PERFILES = Nothing)')
  end
  object unstrdprcContador: TUniStoredProc
    StoredProcName = 'GET_NEXT_CONT'
    SQL.Strings = (
      
        'CALL GET_NEXT_CONT(:pTipoDoc, @pcont); SELECT CAST(@pcont AS SIG' +
        'NED) AS '#39'@pcont'#39)
    Connection = dmConn.conUni
    Left = 8
    Top = 84
    ParamData = <
      item
        DataType = ftString
        Name = 'pTipoDoc'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pcont'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'GET_NEXT_CONT'
  end
  object unqryFamiliaArticulos: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select *'
      'from vi_articulos_familias')
    Active = True
    BeforePost = unqryPerfilesBeforePost
    Left = 184
    Top = 24
  end
  object dsFamiliaArticulos: TDataSource
    DataSet = unqryFamiliaArticulos
    Left = 184
    Top = 80
  end
  object unqryTarifasArticulos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_articulos_tarifas'
      
        '  (CODIGO_ARTICULO_TARIFA, CODIGO_VARIACION_TARIFA, CODIGO_UNICO' +
        '_TARIFA, CODIGO_TARIFA, ACTIVO_TARIFA, PRECIOSALIDA_TARIFA, PREC' +
        'IOFINAL_TARIFA, PRECIO_DTO_TARIFA, PORCEN_DTO_TARIFA, FECHA_DESD' +
        'E_TARIFA, FECHA_HASTA_TARIFA, INSTANTEMODIF, INSTANTEALTA, USUAR' +
        'IOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_ARTICULO_TARIFA, :CODIGO_VARIACION_TARIFA, :CODIGO_UN' +
        'ICO_TARIFA, :CODIGO_TARIFA, :ACTIVO_TARIFA, :PRECIOSALIDA_TARIFA' +
        ', :PRECIOFINAL_TARIFA, :PRECIO_DTO_TARIFA, :PORCEN_DTO_TARIFA, :' +
        'FECHA_DESDE_TARIFA, :FECHA_HASTA_TARIFA, :INSTANTEMODIF, :INSTAN' +
        'TEALTA, :USUARIOALTA, :USUARIOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :Old_CODIGO_UNICO_TARIFA')
    SQLUpdate.Strings = (
      'UPDATE fza_articulos_tarifas'
      'SET'
      
        '  CODIGO_ARTICULO_TARIFA = :CODIGO_ARTICULO_TARIFA, CODIGO_VARIA' +
        'CION_TARIFA = :CODIGO_VARIACION_TARIFA, CODIGO_UNICO_TARIFA = :C' +
        'ODIGO_UNICO_TARIFA, CODIGO_TARIFA = :CODIGO_TARIFA, ACTIVO_TARIF' +
        'A = :ACTIVO_TARIFA, PRECIOSALIDA_TARIFA = :PRECIOSALIDA_TARIFA, ' +
        'PRECIOFINAL_TARIFA = :PRECIOFINAL_TARIFA, PRECIO_DTO_TARIFA = :P' +
        'RECIO_DTO_TARIFA, PORCEN_DTO_TARIFA = :PORCEN_DTO_TARIFA, FECHA_' +
        'DESDE_TARIFA = :FECHA_DESDE_TARIFA, FECHA_HASTA_TARIFA = :FECHA_' +
        'HASTA_TARIFA, INSTANTEMODIF = :INSTANTEMODIF, INSTANTEALTA = :IN' +
        'STANTEALTA, USUARIOALTA = :USUARIOALTA, USUARIOMODIF = :USUARIOM' +
        'ODIF'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :Old_CODIGO_UNICO_TARIFA')
    SQLLock.Strings = (
      'SELECT * FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :Old_CODIGO_UNICO_TARIFA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_ARTICULO_TARIFA, CODIGO_VARIACION_TARIFA, CODIGO_U' +
        'NICO_TARIFA, CODIGO_TARIFA, ACTIVO_TARIFA, PRECIOSALIDA_TARIFA, ' +
        'PRECIOFINAL_TARIFA, PRECIO_DTO_TARIFA, PORCEN_DTO_TARIFA, FECHA_' +
        'DESDE_TARIFA, FECHA_HASTA_TARIFA, INSTANTEMODIF, INSTANTEALTA, U' +
        'SUARIOALTA, USUARIOMODIF FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :CODIGO_UNICO_TARIFA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos_tarifas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select *'
      'from vi_articulos_tarifas')
    MasterSource = frmMtoArticulos.dsTablaG
    MasterFields = 'CODIGO_ARTICULO'
    DetailFields = 'CODIGO_ARTICULO_TARIFA'
    Active = True
    BeforePost = unqryPerfilesBeforePost
    Left = 288
    Top = 16
    ParamData = <
      item
        DataType = ftWideString
        Name = 'CODIGO_ARTICULO'
        ParamType = ptInput
        Value = 'ALFALFA'
      end>
  end
  object dsTarifasArticulos: TDataSource
    DataSet = unqryTarifasArticulos
    Left = 296
    Top = 80
  end
  object unqryProveedoresArticulos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `fza_articulos_proveedores`'
      '      (`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR`, '
      '       `CODIGO_ARTICULO_ARTICULO_PROVEEDOR`, '
      '       `PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR`, '
      '       `FECHA_VALIDEZ_ARTICULO_PROVEEDOR`, '
      '       `ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR`,'
      '       `INSTANTEMODIF`, '
      '       `INSTANTEALTA`, '
      '       `USUARIOALTA`, '
      '       `USUARIOMODIF`)'
      'VALUES'
      '      (:`CODIGO_PROVEEDOR`, '
      '       :`CODIGO_ARTICULO`, '
      '       :`PRECIO_ULT_COMPRA`, '
      '       :`FECHA_VALIDEZ`, '
      '       :`ESPROVEEDORPRINCIPAL`,'
      '       :`INSTANTEMODIF`, '
      '       :`INSTANTEALTA`, '
      '       :`USUARIOALTA`, '
      '       :`USUARIOMODIF`)')
    SQLDelete.Strings = (
      'DELETE FROM `fza_articulos_proveedores`'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` = :`Old_CODIGO_PROVEEDOR' +
        '`'
      
        ' AND `CODIGO_ARTICULO_ARTICULO_PROVEEDOR` = :`Old_CODIGO_ARTICUL' +
        'O`')
    SQLUpdate.Strings = (
      'UPDATE `fza_articulos_proveedores`'
      'SET'
      
        '  `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR`     = :`CODIGO_PROVEEDOR' +
        '`, '
      
        '  `CODIGO_ARTICULO_ARTICULO_PROVEEDOR`      = :`CODIGO_ARTICULO`' +
        ', '
      
        '  `PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR`    = :`PRECIO_ULT_COMPR' +
        'A`, '
      '  `FECHA_VALIDEZ_ARTICULO_PROVEEDOR`        = :`FECHA_VALIDEZ`, '
      
        '  `ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` = :`ESPROVEEDORPRINC' +
        'IPAL`,'
      '  `INSTANTEMODIF`                           = :`INSTANTEMODIF`, '
      '  `INSTANTEALTA`                            = :`INSTANTEALTA`, '
      '  `USUARIOALTA`                             = :`USUARIOALTA`, '
      '  `USUARIOMODIF`                            = :`USUARIOMODIF`'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR`  = :`Old_CODIGO_PROVEEDO' +
        'R` '
      
        'AND `CODIGO_ARTICULO_ARTICULO_PROVEEDOR` = :`Old_CODIGO_ARTICULO' +
        '`')
    SQLLock.Strings = (
      'SELECT * '
      '  FROM fza_articulos_proveedores'
      ' WHERE'
      
        '       `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR`  = :`Old_CODIGO_PRO' +
        'VEEDOR` '
      
        '   AND `CODIGO_ARTICULO_ARTICULO_PROVEEDOR`   = :`Old_CODIGO_ART' +
        'ICULO`'
      '   FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT *'
      '  FROM vi_articulos_proveedores'
      'WHERE'
      
        '      `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` = :`CODIGO_PROVEEDOR' +
        '` '
      '  AND `CODIGO_ARTICULO_ARTICULO_PROVEEDOR`  = :`CODIGO_ARTICULO`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos_proveedores')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select *'
      'from vi_articulos_proveedores')
    MasterSource = frmMtoArticulos.dsTablaG
    MasterFields = 'CODIGO_ARTICULO'
    DetailFields = 'CODIGO_ARTICULO'
    Active = True
    BeforePost = unqryPerfilesBeforePost
    Left = 408
    Top = 16
    ParamData = <
      item
        DataType = ftWideString
        Name = 'CODIGO_ARTICULO'
        ParamType = ptInput
        Value = 'ALFALFA'
      end>
  end
  object dsProveedoresArticulos: TDataSource
    DataSet = unqryProveedoresArticulos
    Left = 400
    Top = 80
  end
  object unqryLinFacturasArticulos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_articulos_tarifas'
      
        '  (CODIGO_ARTICULO_TARIFA, ACTIVO_TARIFA, PRECIOVENTA_IVAINCL_TA' +
        'RIFA, PRECIOVENTA_SIVA_TARIFA, FECHA_DESDE_TARIFA, FECHA_HASTA_T' +
        'ARIFA, INSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_ARTICULO_TARIFA, :ACTIVO_TARIFA, :PRECIOVENTA_IVAINCL' +
        '_TARIFA, :PRECIOVENTA_SIVA_TARIFA, :FECHA_DESDE_TARIFA, :FECHA_H' +
        'ASTA_TARIFA, :INSTANTEMODIF, :INSTANTEALTA, :USUARIOALTA, :USUAR' +
        'IOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_ARTICULO_TARIFA = :Old_CODIGO_ARTICULO_TARIFA')
    SQLUpdate.Strings = (
      'UPDATE fza_articulos_tarifas'
      'SET'
      
        '  CODIGO_ARTICULO_TARIFA = :CODIGO_ARTICULO_TARIFA, ACTIVO_TARIF' +
        'A = :ACTIVO_TARIFA, PRECIOVENTA_IVAINCL_TARIFA = :PRECIOVENTA_IV' +
        'AINCL_TARIFA, PRECIOVENTA_SIVA_TARIFA = :PRECIOVENTA_SIVA_TARIFA' +
        ', FECHA_DESDE_TARIFA = :FECHA_DESDE_TARIFA, FECHA_HASTA_TARIFA =' +
        ' :FECHA_HASTA_TARIFA, INSTANTEMODIF = :INSTANTEMODIF, INSTANTEAL' +
        'TA = :INSTANTEALTA, USUARIOALTA = :USUARIOALTA, USUARIOMODIF = :' +
        'USUARIOMODIF'
      'WHERE'
      '  CODIGO_ARTICULO_TARIFA = :Old_CODIGO_ARTICULO_TARIFA')
    SQLLock.Strings = (
      'SELECT * FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_ARTICULO_TARIFA = :Old_CODIGO_ARTICULO_TARIFA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_ARTICULO_TARIFA, ACTIVO_TARIFA, PRECIOVENTA_IVAINC' +
        'L_TARIFA, PRECIOVENTA_SIVA_TARIFA, FECHA_DESDE_TARIFA, FECHA_HAS' +
        'TA_TARIFA, INSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODI' +
        'F FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_ARTICULO_TARIFA = :CODIGO_ARTICULO_TARIFA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos_tarifas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select *'
      'from vi_fac_lin_busquedas')
    MasterSource = frmMtoArticulos.dsTablaG
    MasterFields = 'CODIGO_ARTICULO'
    DetailFields = 'CODIGO_ARTICULO_FACTURA_LINEA'
    Active = True
    BeforePost = unqryPerfilesBeforePost
    Left = 560
    Top = 16
    ParamData = <
      item
        DataType = ftWideString
        Name = 'CODIGO_ARTICULO'
        ParamType = ptInput
        Value = 'ALFALFA'
      end>
  end
  object dsLinFacturasArticulos: TDataSource
    DataSet = unqryLinFacturasArticulos
    Left = 560
    Top = 80
  end
  object unqryProveedores: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM `fza_articulos_proveedores`'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_PROVEE' +
        'DOR`'
      
        ' AND `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_ARTI' +
        'CULO`')
    SQLUpdate.Strings = (
      'UPDATE `fza_articulos_proveedores`'
      'SET'
      
        '  `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES` = :`CODIGO_PROVEEDOR`' +
        ', '
      '  `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES` = :`CODIGO_ARTICULO`, '
      
        '  `PRECIO_ULT_COMPRA_ARTICULOS_PROVEEDORES` = :`PRECIO_ULT_COMPR' +
        'A`, '
      '  `FECHA_VALIDEZ_ARTICULOS_PROVEEDORES` = :`FECHA_VALIDEZ`, '
      '  `INSTANTEMODIF` = :`INSTANTEMODIF`, '
      '  `INSTANTEALTA` = :`INSTANTEALTA`, '
      '  `USUARIOALTA` = :`USUARIOALTA`, '
      '  `USUARIOMODIF` = :`USUARIOMODIF`'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_PROVEE' +
        'DOR` '
      
        'AND `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_ARTIC' +
        'ULO`')
    SQLLock.Strings = (
      'SELECT * FROM fza_articulos_proveedores'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_PROVEE' +
        'DOR` '
      
        'AND `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES` = :`Old_CODIGO_ARTIC' +
        'ULO`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES`, '
      '       `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES`, '
      '       `PRECIO_ULT_COMPRA_ARTICULOS_PROVEEDORES`, '
      '       `FECHA_VALIDEZ_ARTICULOS_PROVEEDORES`, '
      '       `INSTANTEMODIF`, '
      '       `INSTANTEALTA`, '
      '       `USUARIOALTA`, '
      '       `USUARIOMODIF` '
      'FROM `fza_articulos_proveedores`'
      'WHERE'
      
        '  `CODIGO_PROVEEDOR_ARTICULOS_PROVEEDORES` = :`CODIGO_PROVEEDOR`' +
        ' '
      'AND `CODIGO_ARTICULO_ARTICULOS_PROVEEDORES` = :`CODIGO_ARTICULO`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos_proveedores')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select *'
      'from vi_proveedores')
    Active = True
    BeforePost = unqryPerfilesBeforePost
    Left = 672
    Top = 16
  end
  object dsProveedores: TDataSource
    DataSet = unqryProveedores
    Left = 672
    Top = 80
  end
  object dsTiposIVA: TDataSource
    DataSet = unqryTiposIVA
    Left = 760
    Top = 80
  end
  object unqryTiposIVA: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_historia'
      
        '  (ID, CODIGO_ARTICULO, DESCRIPCION_ARTICULO, CODIGO_CLIENTE, PR' +
        'ECIOVENTA_ARTICULO, FECHA, ZONA, DESCRIPCION_HISTORIA, NRO_FACTU' +
        'RA, LINEA_LINEA, ODONTOLOGO, SERIE_FACTURA)'
      'VALUES'
      
        '  (:ID, :CODIGO_ARTICULO, :DESCRIPCION_ARTICULO, :CODIGO_CLIENTE' +
        ', :PRECIOVENTA_ARTICULO, :FECHA, :ZONA, :DESCRIPCION_HISTORIA, :' +
        'NRO_FACTURA, :LINEA_LINEA, :ODONTOLOGO, :SERIE_FACTURA)')
    SQLDelete.Strings = (
      'DELETE FROM fza_historia'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE fza_historia'
      'SET'
      
        '  ID = :ID, CODIGO_ARTICULO = :CODIGO_ARTICULO, DESCRIPCION_ARTI' +
        'CULO = :DESCRIPCION_ARTICULO, CODIGO_CLIENTE = :CODIGO_CLIENTE, ' +
        'PRECIOVENTA_ARTICULO = :PRECIOVENTA_ARTICULO, FECHA = :FECHA, ZO' +
        'NA = :ZONA, DESCRIPCION_HISTORIA = :DESCRIPCION_HISTORIA, NRO_FA' +
        'CTURA = :NRO_FACTURA, LINEA_LINEA = :LINEA_LINEA, ODONTOLOGO = :' +
        'ODONTOLOGO, SERIE_FACTURA = :SERIE_FACTURA'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM fza_historia'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, CODIGO_ARTICULO, DESCRIPCION_ARTICULO, CODIGO_CLIENTE' +
        ', PRECIOVENTA_ARTICULO, FECHA, ZONA, DESCRIPCION_HISTORIA, NRO_F' +
        'ACTURA, LINEA_LINEA, ODONTOLOGO, SERIE_FACTURA FROM fza_historia'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_historia')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from fza_ivas_tipos'
      '')
    ReadOnly = True
    Left = 760
    Top = 16
  end
end
