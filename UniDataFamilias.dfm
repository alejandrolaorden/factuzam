inherited dmFamilias: TdmFamilias
  OldCreateOrder = True
  Width = 407
  inherited unqryTablaG: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      '  FROM fza_articulos_familias'
      '')
    Active = True
    AfterInsert = unqryTablaGAfterInsert
  end
  inherited unqryPerfiles: TUniQuery
    SQL.Strings = (
      'select *'
      'from fza_usuarios_perfiles'
      'where (KEY_PERFILES = '#39'dmFamilias'#39' '
      'OR KEY_PERFILES='#39'frmMtoFamilias'#39')')
  end
  object unstrdprcContador: TUniStoredProc
    StoredProcName = 'PRC_GET_NEXT_CONT'
    Connection = dmConn.conUni
    Left = 8
    Top = 84
  end
  object unqryArticulosFamilias: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_articulos_tarifas'
      
        '  (CODIGO_ARTICULO_TARIFA, CODIGO_VARIACION_TARIFA, CODIGO_UNICO' +
        '_TARIFA, CODIGO_TARIFA, ACTIVO_TARIFA, PRECIOFINAL, FECHA_DESDE_' +
        'TARIFA, FECHA_HASTA_TARIFA, INSTANTEMODIF, INSTANTEALTA, USUARIO' +
        'ALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_ARTICULO_TARIFA, :CODIGO_VARIACION_TARIFA, :CODIGO_UN' +
        'ICO_TARIFA, :CODIGO_TARIFA, :ACTIVO_TARIFA, :PRECIOFINAL, :FECHA' +
        '_DESDE_TARIFA, :FECHA_HASTA_TARIFA, :INSTANTEMODIF, :INSTANTEALT' +
        'A, :USUARIOALTA, :USUARIOMODIF)')
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
        'A = :ACTIVO_TARIFA, PRECIOFINAL = :PRECIOFINAL, FECHA_DESDE_TARI' +
        'FA = :FECHA_DESDE_TARIFA, FECHA_HASTA_TARIFA = :FECHA_HASTA_TARI' +
        'FA, INSTANTEMODIF = :INSTANTEMODIF, INSTANTEALTA = :INSTANTEALTA' +
        ', USUARIOALTA = :USUARIOALTA, USUARIOMODIF = :USUARIOMODIF'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :Old_CODIGO_UNICO_TARIFA')
    SQLLock.Strings = (
      'SELECT * FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :Old_CODIGO_UNICO_TARIFA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_ARTICULO_TARIFA, CODIGO_VARIACION_TARIFA, CODIGO_U' +
        'NICO_TARIFA, CODIGO_TARIFA, ACTIVO_TARIFA, PRECIOFINAL, FECHA_DE' +
        'SDE_TARIFA, FECHA_HASTA_TARIFA, INSTANTEMODIF, INSTANTEALTA, USU' +
        'ARIOALTA, USUARIOMODIF FROM fza_articulos_tarifas'
      'WHERE'
      '  CODIGO_UNICO_TARIFA = :CODIGO_UNICO_TARIFA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_articulos_tarifas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      '  FROM vi_art_busquedas'
      '')
    MasterSource = frmMtoFamilias.dsTablaG
    MasterFields = 'CODIGO_FAMILIA'
    DetailFields = 'CODIGO_FAMILIA_ARTICULO'
    Active = True
    BeforeInsert = unqryTablaGBeforeInsert
    AfterInsert = unqryTablaGAfterInsert
    BeforePost = unqryTablaGBeforePost
    Left = 192
    Top = 24
    ParamData = <
      item
        DataType = ftWideString
        Name = 'CODIGO_FAMILIA'
        ParamType = ptInput
        Value = 'CER'
      end>
  end
  object dsArticulosFamilias: TDataSource
    DataSet = unqryArticulosFamilias
    Left = 192
    Top = 80
  end
end
