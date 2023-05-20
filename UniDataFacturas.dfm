inherited dmFacturas: TdmFacturas
  OldCreateOrder = True
  Height = 638
  Width = 1332
  inherited unqryTablaG: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from vi_facturas')
    Active = True
    BeforeInsert = nil
    AfterInsert = unqryTablaGAfterInsert
    BeforePost = zqryFacBeforePost
    AfterPost = unqryFacAfterPost
    AfterDelete = unqryTablaGAfterDelete
    Left = 56
    Top = 136
  end
  inherited unqryPerfiles: TUniQuery
    SQL.Strings = (
      'select *'
      'from fza_usuarios_perfiles')
    Left = 376
    Top = 144
  end
  inherited dsPerfiles: TDataSource
    Left = 375
  end
  object dsLinFac: TDataSource
    DataSet = unqryLinFac
    Left = 128
    Top = 72
  end
  object dsFacPrint: TDataSource
    DataSet = unqryFacPrint
    Left = 568
    Top = 496
  end
  object dsLinFacPrint: TDataSource
    DataSet = unqryLinFacPrint
    Left = 648
    Top = 496
  end
  object dsSeries: TDataSource
    DataSet = unqrySeries
    Left = 544
    Top = 80
  end
  object fxdsPrintFac: TfrxDBDataset
    Description = 'Facturas'
    UserName = 'Facturas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FECHA_FACTURA=FECHA_FACTURA'
      'NRO_FACTURA=NRO_FACTURA'
      'SERIE_FACTURA=SERIE_FACTURA'
      'TOTAL_LIQUIDO_FACTURA=TOTAL_LIQUIDO_FACTURA'
      'PORCEN_RETENCION_FACTURA=PORCEN_RETENCION_FACTURA'
      'TOTAL_RETENCION_FACTURA=TOTAL_RETENCION_FACTURA'
      'TOTAL_IMPUESTOS_FACTURA=TOTAL_IMPUESTOS_FACTURA'
      'TOTAL_BASES_FACTURA=TOTAL_BASES_FACTURA'
      'FORMA_PAGO_FACTURA=FORMA_PAGO_FACTURA'
      'CODIGO_EMPRESA_FACTURA=CODIGO_EMPRESA_FACTURA'
      'RAZONSOCIAL_EMPRESA_FACTURA=RAZONSOCIAL_EMPRESA_FACTURA'
      'NIF_EMPRESA_FACTURA=NIF_EMPRESA_FACTURA'
      'MOVIL_EMPRESA_FACTURA=MOVIL_EMPRESA_FACTURA'
      'EMAIL_EMPRESA_FACTURA=EMAIL_EMPRESA_FACTURA'
      'DIRECCION1_EMPRESA_FACTURA=DIRECCION1_EMPRESA_FACTURA'
      'DIRECCION2_EMPRESA_FACTURA=DIRECCION2_EMPRESA_FACTURA'
      'POBLACION_EMPRESA_FACTURA=POBLACION_EMPRESA_FACTURA'
      'PROVINCIA_EMPRESA_FACTURA=PROVINCIA_EMPRESA_FACTURA'
      'PAIS_EMPRESA_FACTURA=PAIS_EMPRESA_FACTURA'
      'CPOSTAL_EMPRESA_FACTURA=CPOSTAL_EMPRESA_FACTURA'
      'ESRETENCIONES_EMPRESA_FACTURA=ESRETENCIONES_EMPRESA_FACTURA'
      'GRUPO_ZONA_IVA_EMPRESA_FACTURA=GRUPO_ZONA_IVA_EMPRESA_FACTURA'
      
        'ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA=ESREGIMENESPECIALAGRIC' +
        'OLA_EMPRESA_FACTURA'
      'CODIGO_CLIENTE_FACTURA=CODIGO_CLIENTE_FACTURA'
      'RAZONSOCIAL_CLIENTE_FACTURA=RAZONSOCIAL_CLIENTE_FACTURA'
      'NIF_CLIENTE_FACTURA=NIF_CLIENTE_FACTURA'
      'MOVIL_CLIENTE_FACTURA=MOVIL_CLIENTE_FACTURA'
      'EMAIL_CLIENTE_FACTURA=EMAIL_CLIENTE_FACTURA'
      'DIRECCION1_CLIENTE_FACTURA=DIRECCION1_CLIENTE_FACTURA'
      'DIRECCION2_CLIENTE_FACTURA=DIRECCION2_CLIENTE_FACTURA'
      'POBLACION_CLIENTE_FACTURA=POBLACION_CLIENTE_FACTURA'
      'PROVINCIA_CLIENTE_FACTURA=PROVINCIA_CLIENTE_FACTURA'
      'CPOSTAL_CLIENTE_FACTURA=CPOSTAL_CLIENTE_FACTURA'
      'PAIS_CLIENTE_FACTURA=PAIS_CLIENTE_FACTURA'
      'ESIVA_RECARGO_CLIENTE_FACTURA=ESIVA_RECARGO_CLIENTE_FACTURA'
      'ESIVA_EXENTO_CLIENTE_FACTURA=ESIVA_EXENTO_CLIENTE_FACTURA'
      
        'ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA=ESREGIMENESPECIALAGRIC' +
        'OLA_CLIENTE_FACTURA'
      'ESRETENCIONES_CLIENTE_FACTURA=ESRETENCIONES_CLIENTE_FACTURA'
      'TARIFA_ARTICULO_CLIENTE_FACTURA=TARIFA_ARTICULO_CLIENTE_FACTURA'
      
        'ESIMP_INCL_TARIFA_CLIENTE_FACTURA=ESIMP_INCL_TARIFA_CLIENTE_FACT' +
        'URA'
      
        'ESINTRACOMUNITARIO_CLIENTE_FACTURA=ESINTRACOMUNITARIO_CLIENTE_FA' +
        'CTURA'
      
        'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA=ESIRPF_IMP_INCL_ZONA_IVA_FACTUR' +
        'A'
      'ESAPLICA_RE_ZONA_IVA_FACTURA=ESAPLICA_RE_ZONA_IVA_FACTURA'
      'ESIVAAGRICOLA_ZONA_IVA_FACTURA=ESIVAAGRICOLA_ZONA_IVA_FACTURA'
      
        'PALABRA_REPORTS_ZONA_IVA_FACTURA=PALABRA_REPORTS_ZONA_IVA_FACTUR' +
        'A'
      'CODIGO_IVA_FACTURA=CODIGO_IVA_FACTURA'
      'ESVENTA_ACTIVO_FIJO_FACTURA=ESVENTA_ACTIVO_FIJO_FACTURA'
      'PORCEN_IVAN_FACTURA=PORCEN_IVAN_FACTURA'
      'TOTAL_IVAN_FACTURA=TOTAL_IVAN_FACTURA'
      'PORCEN_REN_FACTURA=PORCEN_REN_FACTURA'
      'TOTAL_REN_FACTURA=TOTAL_REN_FACTURA'
      'TOTAL_BASEI_IVAN_FACTURA=TOTAL_BASEI_IVAN_FACTURA'
      'PORCEN_IVAR_FACTURA=PORCEN_IVAR_FACTURA'
      'TOTAL_IVAR_FACTURA=TOTAL_IVAR_FACTURA'
      'PORCEN_RER_FACTURA=PORCEN_RER_FACTURA'
      'TOTAL_RER_FACTURA=TOTAL_RER_FACTURA'
      'TOTAL_BASEI_IVAR_FACTURA=TOTAL_BASEI_IVAR_FACTURA'
      'PORCEN_IVAS_FACTURA=PORCEN_IVAS_FACTURA'
      'TOTAL_IVAS_FACTURA=TOTAL_IVAS_FACTURA'
      'PORCEN_RES_FACTURA=PORCEN_RES_FACTURA'
      'TOTAL_RES_FACTURA=TOTAL_RES_FACTURA'
      'TOTAL_BASEI_IVAS_FACTURA=TOTAL_BASEI_IVAS_FACTURA'
      'PORCEN_IVAE_FACTURA=PORCEN_IVAE_FACTURA'
      'TOTAL_IVAE_FACTURA=TOTAL_IVAE_FACTURA'
      'PORCEN_REE_FACTURA=PORCEN_REE_FACTURA'
      'TOTAL_REE_FACTURA=TOTAL_REE_FACTURA'
      'TOTAL_BASEI_IVAE_FACTURA=TOTAL_BASEI_IVAE_FACTURA'
      'NRO_FACTURA_ABONO_FACTURA=NRO_FACTURA_ABONO_FACTURA'
      'SERIE_FACTURA_ABONO_FACTURA=SERIE_FACTURA_ABONO_FACTURA'
      
        'TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA=TEXTO_LEGAL_FACTURA_CLIENTE_' +
        'FACTURA'
      
        'TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA=TEXTO_LEGAL_FACTURA_EMPRESA_' +
        'FACTURA'
      'DOCUMENTO_FACTURA=DOCUMENTO_FACTURA'
      'COMENTARIOS_FACTURA=COMENTARIOS_FACTURA'
      'CONTADOR_LINEAS_FACTURA=CONTADOR_LINEAS_FACTURA'
      'ESCREARARTICULOS_FACTURA=ESCREARARTICULOS_FACTURA'
      'ESDESCRIPCIONES_AMP_FACTURA=ESDESCRIPCIONES_AMP_FACTURA'
      'ESFECHADEENTREGA_FACTURA=ESFECHADEENTREGA_FACTURA'
      'INSTANTEMODIF=INSTANTEMODIF'
      'INSTANTEALTA=INSTANTEALTA'
      'USUARIOALTA=USUARIOALTA'
      'USUARIOMODIF=USUARIOMODIF'
      'DESCRIPCION_FORMAPAGO=DESCRIPCION_FORMAPAGO')
    DataSource = dsFacPrint
    BCDToCurrency = False
    Left = 568
    Top = 432
  end
  object fxdstPrintLinFac: TfrxDBDataset
    Description = 'Lineas Facturas'
    UserName = 'Lineas Facturas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NRO_FACTURA_LINEA=NRO_FACTURA_LINEA'
      'SERIE_FACTURA_LINEA=SERIE_FACTURA_LINEA'
      'LINEA_FACTURA_LINEA=LINEA_FACTURA_LINEA'
      'CODIGO_ARTICULO_FACTURA_LINEA=CODIGO_ARTICULO_FACTURA_LINEA'
      'CODIGO_FAMILIA_FACTURA_LINEA=CODIGO_FAMILIA_FACTURA_LINEA'
      'NOMBRE_FAMILIA_FACTURA_LINEA=NOMBRE_FAMILIA_FACTURA_LINEA'
      'FECHA_ENTREGA_FACTURA_LINEA=FECHA_ENTREGA_FACTURA_LINEA'
      
        'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA=TIPO_CANTIDAD_ARTICULO_FACT' +
        'URA_LINEA'
      'ESIMP_INCL_TARIFA_FACTURA_LINEA=ESIMP_INCL_TARIFA_FACTURA_LINEA'
      'TIPOIVA_ARTICULO_FACTURA_LINEA=TIPOIVA_ARTICULO_FACTURA_LINEA'
      
        'DESCRIPCION_ARTICULO_FACTURA_LINEA=DESCRIPCION_ARTICULO_FACTURA_' +
        'LINEA'
      'CODIGO_TARIFA_FACTURA_LINEA=CODIGO_TARIFA_FACTURA_LINEA'
      'CANTIDAD_FACTURA_LINEA=CANTIDAD_FACTURA_LINEA'
      
        'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA=PRECIOVENTA_SIVA_ARTICUL' +
        'O_FACTURA_LINEA'
      'PORCEN_IVA_FACTURA_LINEA=PORCEN_IVA_FACTURA_LINEA'
      
        'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA=PRECIOVENTA_CIVA_ARTICUL' +
        'O_FACTURA_LINEA'
      'TOTAL_FACTURA_LINEA=TOTAL_FACTURA_LINEA'
      'INSTANTEMODIF=INSTANTEMODIF'
      'INSTANTEALTA=INSTANTEALTA'
      'USUARIOALTA=USUARIOALTA'
      'USUARIOMODIF=USUARIOMODIF')
    DataSource = dsLinFacPrint
    BCDToCurrency = False
    Left = 648
    Top = 432
  end
  object unqryFacPrint: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *'
      'from vi_FACTURAS'
      'order by NRO_FACTURA Asc')
    Left = 568
    Top = 552
  end
  object unqryLinFacPrint: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `fza_FACTURAS_LINEAS`'
      
        '  (`SERIE_FACTURA_LINEA`, `NRO_FACTURA_LINEA`, `LINEA_LINEA`, `C' +
        'ODIGO_ARTICULO_LINEA`, `DESCRIPCION_ARTICULO_LINEA`, `ZONA`, `PR' +
        'ECIOVENTA_ARTICULO_LINEA`, `CANTIDAD_LINEA`, `SUM_TOTAL_LINEA`, ' +
        '`ODONTOLOGO`)'
      'VALUES'
      
        '  (:`SERIE_FACTURA_LINEA`, :`NRO_FACTURA_LINEA`, :`LINEA_LINEA`,' +
        ' :`CODIGO_ARTICULO_LINEA`, :`DESCRIPCION_ARTICULO_LINEA`, :`ZONA' +
        '`, :`PRECIOVENTA_ARTICULO_LINEA`, :`CANTIDAD_LINEA`, :`SUM_TOTAL' +
        '_LINEA`, :`ODONTOLOGO`)')
    SQLDelete.Strings = (
      'DELETE FROM `fza_FACTURAS_LINEAS`'
      'WHERE'
      
        '  `SERIE_FACTURA_LINEA` = :`Old_SERIE_FACTURA_LINEA` AND `NRO_FA' +
        'CTURA_LINEA` = :`Old_NRO_FACTURA_LINEA` AND `LINEA_LINEA` = :`Ol' +
        'd_LINEA_LINEA`')
    SQLUpdate.Strings = (
      'UPDATE `fza_FACTURAS_LINEAS`'
      'SET'
      
        '  `SERIE_FACTURA_LINEA` = :`SERIE_FACTURA_LINEA`, `NRO_FACTURA_L' +
        'INEA` = :`NRO_FACTURA_LINEA`, `LINEA_LINEA` = :`LINEA_LINEA`, `C' +
        'ODIGO_ARTICULO_LINEA` = :`CODIGO_ARTICULO_LINEA`, `DESCRIPCION_A' +
        'RTICULO_LINEA` = :`DESCRIPCION_ARTICULO_LINEA`, `ZONA` = :`ZONA`' +
        ', `PRECIOVENTA_ARTICULO_LINEA` = :`PRECIOVENTA_ARTICULO_LINEA`, ' +
        '`CANTIDAD_LINEA` = :`CANTIDAD_LINEA`, `SUM_TOTAL_LINEA` = :`SUM_' +
        'TOTAL_LINEA`, `ODONTOLOGO` = :`ODONTOLOGO`'
      'WHERE'
      
        '  `SERIE_FACTURA_LINEA` = :`Old_SERIE_FACTURA_LINEA` AND `NRO_FA' +
        'CTURA_LINEA` = :`Old_NRO_FACTURA_LINEA` AND `LINEA_LINEA` = :`Ol' +
        'd_LINEA_LINEA`')
    SQLLock.Strings = (
      'SELECT * FROM fza_FACTURAS_LINEAS'
      'WHERE'
      
        '  `SERIE_FACTURA_LINEA` = :`Old_SERIE_FACTURA_LINEA` AND `NRO_FA' +
        'CTURA_LINEA` = :`Old_NRO_FACTURA_LINEA` AND `LINEA_LINEA` = :`Ol' +
        'd_LINEA_LINEA`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `SERIE_FACTURA_LINEA`, `NRO_FACTURA_LINEA`, `LINEA_LINEA`' +
        ', `CODIGO_ARTICULO_LINEA`, `DESCRIPCION_ARTICULO_LINEA`, `ZONA`,' +
        ' `PRECIOVENTA_ARTICULO_LINEA`, `CANTIDAD_LINEA`, `SUM_TOTAL_LINE' +
        'A`, `ODONTOLOGO` FROM `fza_FACTURAS_LINEAS`'
      'WHERE'
      
        '  `SERIE_FACTURA_LINEA` = :`SERIE_FACTURA_LINEA` AND `NRO_FACTUR' +
        'A_LINEA` = :`NRO_FACTURA_LINEA` AND `LINEA_LINEA` = :`LINEA_LINE' +
        'A`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_FACTURAS_LINEAS')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *'
      ' FROM vi_FACTURAS_LINEAS'
      'WHERE NRO_FACTURA_LINEA = :NRO_FACTURA'
      '  AND SERIE_FACTURA_LINEA = :SERIE_FACTURA'
      'ORDER BY LINEA_FACTURA_LINEA;')
    MasterSource = dsFacPrint
    MasterFields = 'SERIE_FACTURA;NRO_FACTURA'
    DetailFields = 'SERIE_FACTURA_LINEA;NRO_FACTURA_LINEA'
    Left = 648
    Top = 552
    ParamData = <
      item
        DataType = ftWideString
        Name = 'NRO_FACTURA'
        ParamType = ptInput
        Value = '00000022'
      end
      item
        DataType = ftWideString
        Name = 'SERIE_FACTURA'
        ParamType = ptInput
        Value = 'A1'
      end>
  end
  object unqrySeries: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT DISTINCT SERIE_CONTADOR, DEFAULT_CONTADOR'
      'FROM fza_CONTADORES'
      'WHERE TIPODOC_CONTADOR='#39'FC'#39' AND ACTIVO_CONTADOR = '#39'S'#39
      'ORDER BY DEFAULT_CONTADOR DESC')
    Active = True
    Left = 544
    Top = 144
  end
  object unqryCliDataFac: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_clientes'
      
        '  (CODIGO_CLIENTE, ACTIVO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_CLIE' +
        'NTE, MOVIL_CLIENTE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIRECCION' +
        '2_CLIENTE, POBLACION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLIENTE' +
        ', PAIS_CLIENTE, OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, CONTA' +
        'CTO_CLIENTE, TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE, IBAN_C' +
        'LIENTE, IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE, CODIGO_FORMA_P' +
        'AGO, CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE, INSTA' +
        'NTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_CLIENTE, :ACTIVO_CLIENTE, :RAZONSOCIAL_CLIENTE, :NIF_' +
        'CLIENTE, :MOVIL_CLIENTE, :EMAIL_CLIENTE, :DIRECCION1_CLIENTE, :D' +
        'IRECCION2_CLIENTE, :POBLACION_CLIENTE, :PROVINCIA_CLIENTE, :CPOS' +
        'TAL_CLIENTE, :PAIS_CLIENTE, :OBSERVACIONES_CLIENTE, :REFERENCIA_' +
        'CLIENTE, :CONTACTO_CLIENTE, :TELEFONO_CONTACTO_CLIENTE, :TELEFON' +
        'O_CLIENTE, :IBAN_CLIENTE, :IVA_RECARGO_CLIENTE, :RETENCIONES_CLI' +
        'ENTE, :CODIGO_FORMA_PAGO, :CODIGO_ZONA_IVA_CLIENTE, :TEXTO_LEGAL' +
        '_FACTURA_CLIENTE, :INSTANTEMODIF, :INSTANTEALTA, :USUARIOALTA, :' +
        'USUARIOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE fza_clientes'
      'SET'
      
        '  CODIGO_CLIENTE = :CODIGO_CLIENTE, ACTIVO_CLIENTE = :ACTIVO_CLI' +
        'ENTE, RAZONSOCIAL_CLIENTE = :RAZONSOCIAL_CLIENTE, NIF_CLIENTE = ' +
        ':NIF_CLIENTE, MOVIL_CLIENTE = :MOVIL_CLIENTE, EMAIL_CLIENTE = :E' +
        'MAIL_CLIENTE, DIRECCION1_CLIENTE = :DIRECCION1_CLIENTE, DIRECCIO' +
        'N2_CLIENTE = :DIRECCION2_CLIENTE, POBLACION_CLIENTE = :POBLACION' +
        '_CLIENTE, PROVINCIA_CLIENTE = :PROVINCIA_CLIENTE, CPOSTAL_CLIENT' +
        'E = :CPOSTAL_CLIENTE, PAIS_CLIENTE = :PAIS_CLIENTE, OBSERVACIONE' +
        'S_CLIENTE = :OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE = :REFERE' +
        'NCIA_CLIENTE, CONTACTO_CLIENTE = :CONTACTO_CLIENTE, TELEFONO_CON' +
        'TACTO_CLIENTE = :TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE = :' +
        'TELEFONO_CLIENTE, IBAN_CLIENTE = :IBAN_CLIENTE, IVA_RECARGO_CLIE' +
        'NTE = :IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE = :RETENCIONES_C' +
        'LIENTE, CODIGO_FORMA_PAGO = :CODIGO_FORMA_PAGO, CODIGO_ZONA_IVA_' +
        'CLIENTE = :CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE ' +
        '= :TEXTO_LEGAL_FACTURA_CLIENTE, INSTANTEMODIF = :INSTANTEMODIF, ' +
        'INSTANTEALTA = :INSTANTEALTA, USUARIOALTA = :USUARIOALTA, USUARI' +
        'OMODIF = :USUARIOMODIF'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM fza_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_CLIENTE, ACTIVO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_' +
        'CLIENTE, MOVIL_CLIENTE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIREC' +
        'CION2_CLIENTE, POBLACION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLI' +
        'ENTE, PAIS_CLIENTE, OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, C' +
        'ONTACTO_CLIENTE, TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE, IB' +
        'AN_CLIENTE, IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE, CODIGO_FOR' +
        'MA_PAGO, CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE, I' +
        'NSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF FROM fza_c' +
        'lientes'
      'WHERE'
      '  CODIGO_CLIENTE = :CODIGO_CLIENTE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_clientes')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from vi_cli_busquedas')
    Left = 28
    Top = 536
  end
  object unqryArtDataLinFac: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from vi_art_busquedas'
      'where codigo_tarifa = :tarifa'
      'or codigo_tarifa is null')
    Left = 250
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tarifa'
        Value = nil
      end>
  end
  object unqryLinFac: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_facturas_lineas'
      
        '  (NRO_FACTURA_LINEA, SERIE_FACTURA_LINEA, LINEA_FACTURA_LINEA, ' +
        'CODIGO_ARTICULO_FACTURA_LINEA, CODIGO_FAMILIA_FACTURA_LINEA, NOM' +
        'BRE_FAMILIA_FACTURA_LINEA, FECHA_ENTREGA_FACTURA_LINEA, TIPO_CAN' +
        'TIDAD_ARTICULO_FACTURA_LINEA, ESIMP_INCL_TARIFA_FACTURA_LINEA, T' +
        'IPOIVA_ARTICULO_FACTURA_LINEA, DESCRIPCION_ARTICULO_FACTURA_LINE' +
        'A, CODIGO_TARIFA_FACTURA_LINEA, CANTIDAD_FACTURA_LINEA, PRECIOVE' +
        'NTA_SIVA_ARTICULO_FACTURA_LINEA, PORCEN_IVA_FACTURA_LINEA, PRECI' +
        'OVENTA_CIVA_ARTICULO_FACTURA_LINEA, TOTAL_FACTURA_LINEA, INSTANT' +
        'EMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:NRO_FACTURA_LINEA, :SERIE_FACTURA_LINEA, :LINEA_FACTURA_LINE' +
        'A, :CODIGO_ARTICULO_FACTURA_LINEA, :CODIGO_FAMILIA_FACTURA_LINEA' +
        ', :NOMBRE_FAMILIA_FACTURA_LINEA, :FECHA_ENTREGA_FACTURA_LINEA, :' +
        'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA, :ESIMP_INCL_TARIFA_FACTURA' +
        '_LINEA, :TIPOIVA_ARTICULO_FACTURA_LINEA, :DESCRIPCION_ARTICULO_F' +
        'ACTURA_LINEA, :CODIGO_TARIFA_FACTURA_LINEA, :CANTIDAD_FACTURA_LI' +
        'NEA, :PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA, :PORCEN_IVA_FACTU' +
        'RA_LINEA, :PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA, :TOTAL_FACTU' +
        'RA_LINEA, :INSTANTEMODIF, :INSTANTEALTA, :USUARIOALTA, :USUARIOM' +
        'ODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_facturas_lineas'
      'WHERE'
      
        '  NRO_FACTURA_LINEA = :Old_NRO_FACTURA_LINEA AND SERIE_FACTURA_L' +
        'INEA = :Old_SERIE_FACTURA_LINEA AND LINEA_FACTURA_LINEA = :Old_L' +
        'INEA_FACTURA_LINEA')
    SQLUpdate.Strings = (
      'UPDATE fza_facturas_lineas'
      'SET'
      
        '  NRO_FACTURA_LINEA = :NRO_FACTURA_LINEA, SERIE_FACTURA_LINEA = ' +
        ':SERIE_FACTURA_LINEA, LINEA_FACTURA_LINEA = :LINEA_FACTURA_LINEA' +
        ', CODIGO_ARTICULO_FACTURA_LINEA = :CODIGO_ARTICULO_FACTURA_LINEA' +
        ', CODIGO_FAMILIA_FACTURA_LINEA = :CODIGO_FAMILIA_FACTURA_LINEA, ' +
        'NOMBRE_FAMILIA_FACTURA_LINEA = :NOMBRE_FAMILIA_FACTURA_LINEA, FE' +
        'CHA_ENTREGA_FACTURA_LINEA = :FECHA_ENTREGA_FACTURA_LINEA, TIPO_C' +
        'ANTIDAD_ARTICULO_FACTURA_LINEA = :TIPO_CANTIDAD_ARTICULO_FACTURA' +
        '_LINEA, ESIMP_INCL_TARIFA_FACTURA_LINEA = :ESIMP_INCL_TARIFA_FAC' +
        'TURA_LINEA, TIPOIVA_ARTICULO_FACTURA_LINEA = :TIPOIVA_ARTICULO_F' +
        'ACTURA_LINEA, DESCRIPCION_ARTICULO_FACTURA_LINEA = :DESCRIPCION_' +
        'ARTICULO_FACTURA_LINEA, CODIGO_TARIFA_FACTURA_LINEA = :CODIGO_TA' +
        'RIFA_FACTURA_LINEA, CANTIDAD_FACTURA_LINEA = :CANTIDAD_FACTURA_L' +
        'INEA, PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA = :PRECIOVENTA_SIV' +
        'A_ARTICULO_FACTURA_LINEA, PORCEN_IVA_FACTURA_LINEA = :PORCEN_IVA' +
        '_FACTURA_LINEA, PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA = :PRECI' +
        'OVENTA_CIVA_ARTICULO_FACTURA_LINEA, TOTAL_FACTURA_LINEA = :TOTAL' +
        '_FACTURA_LINEA, INSTANTEMODIF = :INSTANTEMODIF, INSTANTEALTA = :' +
        'INSTANTEALTA, USUARIOALTA = :USUARIOALTA, USUARIOMODIF = :USUARI' +
        'OMODIF'
      'WHERE'
      
        '  NRO_FACTURA_LINEA = :Old_NRO_FACTURA_LINEA AND SERIE_FACTURA_L' +
        'INEA = :Old_SERIE_FACTURA_LINEA AND LINEA_FACTURA_LINEA = :Old_L' +
        'INEA_FACTURA_LINEA')
    SQLLock.Strings = (
      'SELECT * FROM fza_facturas_lineas'
      'WHERE'
      
        '  NRO_FACTURA_LINEA = :Old_NRO_FACTURA_LINEA AND SERIE_FACTURA_L' +
        'INEA = :Old_SERIE_FACTURA_LINEA AND LINEA_FACTURA_LINEA = :Old_L' +
        'INEA_FACTURA_LINEA'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT NRO_FACTURA_LINEA, SERIE_FACTURA_LINEA, LINEA_FACTURA_LIN' +
        'EA, CODIGO_ARTICULO_FACTURA_LINEA, CODIGO_FAMILIA_FACTURA_LINEA,' +
        ' NOMBRE_FAMILIA_FACTURA_LINEA, FECHA_ENTREGA_FACTURA_LINEA, TIPO' +
        '_CANTIDAD_ARTICULO_FACTURA_LINEA, ESIMP_INCL_TARIFA_FACTURA_LINE' +
        'A, TIPOIVA_ARTICULO_FACTURA_LINEA, DESCRIPCION_ARTICULO_FACTURA_' +
        'LINEA, CODIGO_TARIFA_FACTURA_LINEA, CANTIDAD_FACTURA_LINEA, PREC' +
        'IOVENTA_SIVA_ARTICULO_FACTURA_LINEA, PORCEN_IVA_FACTURA_LINEA, P' +
        'RECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA, TOTAL_FACTURA_LINEA, INS' +
        'TANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF FROM fza_fac' +
        'turas_lineas'
      'WHERE'
      
        '  NRO_FACTURA_LINEA = :NRO_FACTURA_LINEA AND SERIE_FACTURA_LINEA' +
        ' = :SERIE_FACTURA_LINEA AND LINEA_FACTURA_LINEA = :LINEA_FACTURA' +
        '_LINEA')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_facturas_lineas')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *'
      'FROM vi_FACTURAS_LINEAS'
      'where NRO_FACTURA_LINEA = :NRO_FACTURA'
      'AND SERIE_FACTURA_LINEA = :SERIE_FACTURA'
      
        'order by NRO_FACTURA_LINEA, SERIE_FACTURA_LINEA, LINEA_FACTURA_L' +
        'INEA ASC')
    MasterSource = frmMtoFacturas.dsTablaG
    MasterFields = 'SERIE_FACTURA;NRO_FACTURA'
    DetailFields = 'SERIE_FACTURA_LINEA;NRO_FACTURA_LINEA'
    Active = True
    BeforeInsert = zqryLinFacBeforeInsert
    AfterInsert = unqryLinFacAfterInsert
    BeforeEdit = zqryLinFacBeforeInsert
    BeforePost = unqryLinFacBeforePost
    AfterPost = zqryLinFacAfterPost
    Left = 128
    Top = 136
    ParamData = <
      item
        DataType = ftWideString
        Name = 'NRO_FACTURA'
        ParamType = ptInput
        Value = '00000021'
      end
      item
        DataType = ftWideString
        Name = 'SERIE_FACTURA'
        ParamType = ptInput
        Value = 'A1'
      end>
  end
  object unstrdprcCrearFacturaAbono: TUniStoredProc
    StoredProcName = 'PRC_CREAR_FACTURA_ABONO'
    SQL.Strings = (
      
        'CALL PRC_CREAR_FACTURA_ABONO(:pidseriefactura, :pidnumfactura, :' +
        'pidseriefacturaabono, :pfechafacturaabono, @pidnumfacturaabono, ' +
        ':pUSUARIO, :pINSTANTEMODIF); SELECT @pidnumfacturaabono AS '#39'@pid' +
        'numfacturaabono'#39)
    Connection = dmConn.conUni
    Left = 1197
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pidseriefactura'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidnumfactura'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidseriefacturaabono'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'pfechafacturaabono'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidnumfacturaabono'
        ParamType = ptOutput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIO'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'pINSTANTEMODIF'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PRC_CREAR_FACTURA_ABONO'
  end
  object unstrdprcDuplicarFactura: TUniStoredProc
    StoredProcName = 'PRC_CREAR_FACTURA_DUPLICADA'
    SQL.Strings = (
      
        'CALL PRC_CREAR_FACTURA_DUPLICADA(:pidseriefactura, :pidnumfactur' +
        'a, :pidseriefacturaabono, :pfechafacturaabono, :pUSUARIO, :pINST' +
        'ANTEMODIF, @pidnumfacturaabono); SELECT @pidnumfacturaabono AS '#39 +
        '@pidnumfacturaabono'#39)
    Connection = dmConn.conUni
    Left = 1048
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pidseriefactura'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidnumfactura'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidseriefacturaabono'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'pfechafacturaabono'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIO'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'pINSTANTEMODIF'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pidnumfacturaabono'
        ParamType = ptOutput
        Size = 200
        Value = nil
      end>
    CommandStoredProcName = 'PRC_CREAR_FACTURA_DUPLICADA'
  end
  object unstrdprcGetContadorFactura: TUniStoredProc
    StoredProcName = 'PRC_GET_NEXT_CONT_FACT_SERIE'
    SQL.Strings = (
      
        'CALL PRC_GET_NEXT_CONT_FACT_SERIE(:pserie, :pTipoDoc, :pUSUARIOM' +
        'ODIF, @pcont); SELECT @pcont AS '#39'@pcont'#39)
    Connection = dmConn.conUni
    Left = 56
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pserie'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pTipoDoc'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIOMODIF'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pcont'
        ParamType = ptOutput
        Size = 12
        Value = nil
      end>
    CommandStoredProcName = 'PRC_GET_NEXT_CONT_FACT_SERIE'
  end
  object unstrdprcGetContador: TUniStoredProc
    StoredProcName = 'PRC_GET_NEXT_CONT'
    SQL.Strings = (
      
        'CALL PRC_GET_NEXT_CONT(:pTipoDoc, :pUSUARIO_MODIF, @pcont); SELE' +
        'CT CAST(@pcont AS SIGNED) AS '#39'@pcont'#39)
    Connection = dmConn.conUni
    Left = 192
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pTipoDoc'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIO_MODIF'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pcont'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'PRC_GET_NEXT_CONT'
  end
  object unstrdprcCrearCliente: TUniStoredProc
    StoredProcName = 'PRC_CREAR_ACTUALIZAR_CLIENTE'
    SQL.Strings = (
      
        'CALL PRC_CREAR_ACTUALIZAR_CLIENTE(:pCODIGO_CLIENTE, :pRAZONSOCIA' +
        'L_CLIENTE, :pNIF_CLIENTE, :pMOVIL_CLIENTE, :pEMAIL_CLIENTE, :pDI' +
        'RECCION1_CLIENTE, :pDIRECCION2_CLIENTE, :pPOBLACION_CLIENTE, :pP' +
        'ROVINCIA_CLIENTE, :pCPOSTAL_CLIENTE, :pPAIS_CLIENTE, :pESIVA_EXE' +
        'NTO_CLIENTE, :pESRETENCIONES_CLIENTE, :pESIVA_RECARGO_CLIENTE, :' +
        'pESINTRACOMUNITARIO_CLIENTE, :pESREGIMENESPECIALAGRICOLA_CLIENTE' +
        ', :pTARIFA_ARTICULO_CLIENTE, :pUSUARIO, :pINSTANTEMODIF)')
    Connection = dmConn.conUni
    Left = 312
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pCODIGO_CLIENTE'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pRAZONSOCIAL_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pNIF_CLIENTE'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pMOVIL_CLIENTE'
        ParamType = ptInput
        Size = 40
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pEMAIL_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pDIRECCION1_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pDIRECCION2_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pPOBLACION_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pPROVINCIA_CLIENTE'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pCPOSTAL_CLIENTE'
        ParamType = ptInput
        Size = 15
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pPAIS_CLIENTE'
        ParamType = ptInput
        Size = 150
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pESIVA_EXENTO_CLIENTE'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pESRETENCIONES_CLIENTE'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pESIVA_RECARGO_CLIENTE'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pESINTRACOMUNITARIO_CLIENTE'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pESREGIMENESPECIALAGRICOLA_CLIENTE'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pTARIFA_ARTICULO_CLIENTE'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIO'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'pINSTANTEMODIF'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PRC_CREAR_ACTUALIZAR_CLIENTE'
  end
  object unstrdprcGetDataArticulo: TUniStoredProc
    StoredProcName = 'PRC_GET_DATA_ARTICULO'
    SQL.Strings = (
      
        'CALL PRC_GET_DATA_ARTICULO(:pidcodarticulo, @pidnomarticulo, @pi' +
        'dprecioventa); SELECT @pidnomarticulo AS '#39'@pidnomarticulo'#39', @pid' +
        'precioventa AS '#39'@pidprecioventa'#39)
    Connection = dmConn.conUni
    Left = 528
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'pidcodarticulo'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pidnomarticulo'
        ParamType = ptOutput
        Size = 200
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'pidprecioventa'
        ParamType = ptOutput
        Value = 0.000000000000000000
      end>
    CommandStoredProcName = 'PRC_GET_DATA_ARTICULO'
  end
  object unstrdprcGetDataCliente: TUniStoredProc
    StoredProcName = 'PRC_GET_DATA_CLIENTE'
    SQL.Strings = (
      
        'CALL PRC_GET_DATA_CLIENTE(:pCODIGO_CLIENTE, @pRAZONSOCIAL_CLIENT' +
        'E, @pNIF_CLIENTE, @pCODIGO_ZONA_IVA_CLIENTE, @pMOVIL_CLIENTE, @p' +
        'IVA_RECARGO_CLIENTE, @pRETENCIONES_CLIENTE, @pEMAIL_CLIENTE, @pD' +
        'IRECCION1_CLIENTE, @pDIRECCION2_CLIENTE, @pPOBLACION_CLIENTE, @p' +
        'PROVINCIA_CLIENTE, @pCPOSTAL_CLIENTE, @pTEXTO_LEGAL_FACTURA_CLIE' +
        'NTE, @pPAIS_CLIENTE); SELECT @pRAZONSOCIAL_CLIENTE AS '#39'@pRAZONSO' +
        'CIAL_CLIENTE'#39', @pNIF_CLIENTE AS '#39'@pNIF_CLIENTE'#39', CAST(@pCODIGO_Z' +
        'ONA_IVA_CLIENTE AS SIGNED) AS '#39'@pCODIGO_ZONA_IVA_CLIENTE'#39', @pMOV' +
        'IL_CLIENTE AS '#39'@pMOVIL_CLIENTE'#39', @pIVA_RECARGO_CLIENTE AS '#39'@pIVA' +
        '_RECARGO_CLIENTE'#39', @pRETENCIONES_CLIENTE AS '#39'@pRETENCIONES_CLIEN' +
        'TE'#39', @pEMAIL_CLIENTE AS '#39'@pEMAIL_CLIENTE'#39', @pDIRECCION1_CLIENTE ' +
        'AS '#39'@pDIRECCION1_CLIENTE'#39', @pDIRECCION2_CLIENTE AS '#39'@pDIRECCION2' +
        '_CLIENTE'#39', @pPOBLACION_CLIENTE AS '#39'@pPOBLACION_CLIENTE'#39', @pPROVI' +
        'NCIA_CLIENTE AS '#39'@pPROVINCIA_CLIENTE'#39', @pCPOSTAL_CLIENTE AS '#39'@pC' +
        'POSTAL_CLIENTE'#39', @pTEXTO_LEGAL_FACTURA_CLIENTE AS '#39'@pTEXTO_LEGAL' +
        '_FACTURA_CLIENTE'#39', @pPAIS_CLIENTE AS '#39'@pPAIS_CLIENTE'#39)
    Connection = dmConn.conUni
    Left = 656
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO_CLIENTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pRAZONSOCIAL_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = 'CLIENTE NO ENCONTRADO'
      end
      item
        DataType = ftWideString
        Name = 'pNIF_CLIENTE'
        ParamType = ptOutput
        Size = 50
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'pCODIGO_ZONA_IVA_CLIENTE'
        ParamType = ptOutput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pMOVIL_CLIENTE'
        ParamType = ptOutput
        Size = 40
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pIVA_RECARGO_CLIENTE'
        ParamType = ptOutput
        Size = 1
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pRETENCIONES_CLIENTE'
        ParamType = ptOutput
        Size = 1
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pEMAIL_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pDIRECCION1_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pDIRECCION2_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pPOBLACION_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pPROVINCIA_CLIENTE'
        ParamType = ptOutput
        Size = 200
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pCPOSTAL_CLIENTE'
        ParamType = ptOutput
        Size = 15
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pTEXTO_LEGAL_FACTURA_CLIENTE'
        ParamType = ptOutput
        Size = 1000
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'pPAIS_CLIENTE'
        ParamType = ptOutput
        Size = 150
        Value = Null
      end>
    CommandStoredProcName = 'PRC_GET_DATA_CLIENTE'
    StoredProcIsQuery = True
  end
  object dsFormasPago: TDataSource
    DataSet = unqryFormaPago
    Left = 456
    Top = 80
  end
  object unqryFormaPago: TUniQuery
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
      'select * from vi_formapago'
      '')
    ReadOnly = True
    Left = 464
    Top = 144
  end
  object dsRecibos: TDataSource
    DataSet = unqryRecibos
    Left = 736
    Top = 80
  end
  object unqryRecibos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `fza_recibos`'
      
        '  (`NRO_FACTURA_RECIBO`, `SERIE_FACTURA_RECIBO`, `NRO_PLAZO_RECI' +
        'BO`, `FORMA_PAGO_ORIGEN_RECIBO`, `FORMA_PAGO_DESCRIPCION_ORIGEN_' +
        'RECIBO`, `EUROS_RECIBO`, `STADO_RECIBO`, `FECHA_EXPEDICION_RECIB' +
        'O`, `FECHA_VENCIMIENTO_RECIBO`, `IBAN_CLIENTE_RECIBO`, `FECHA_PA' +
        'GO_RECIBO`, `LOCALIDAD_EXPEDICION_RECIBO`, `CODIGO_CLIENTE_RECIB' +
        'O`, `RAZONSOCIAL_CLIENTE_RECIBO`, `DIRECCION1_CLIENTE_RECIBO`, `' +
        'POBLACION_CLIENTE_RECIBO`, `PROVINCIA_CLIENTE_RECIBO`, `CPOSTAL_' +
        'CLIENTE_RECIBO`, `IMPORTE_LETRA_RECIBO`, `INSTANTEMODIF`, `INSTA' +
        'NTEALTA`, `USUARIOALTA`, `USUARIOMODIF`)'
      'VALUES'
      
        '  (:`NRO_FACTURA_RECIBO`, :`SERIE_FACTURA_RECIBO`, :`NRO_PLAZO_R' +
        'ECIBO`, :`FORMA_PAGO_ORIGEN_RECIBO`, :`FORMA_PAGO_DESCRIPCION_OR' +
        'IGEN_RECIBO`, :`EUROS_RECIBO`, :`STADO_RECIBO`, :`FECHA_EXPEDICI' +
        'ON_RECIBO`, :`FECHA_VENCIMIENTO_RECIBO`, :`IBAN_CLIENTE_RECIBO`,' +
        ' :`FECHA_PAGO_RECIBO`, :`LOCALIDAD_EXPEDICION_RECIBO`, :`CODIGO_' +
        'CLIENTE_RECIBO`, :`RAZONSOCIAL_CLIENTE_RECIBO`, :`DIRECCION1_CLI' +
        'ENTE_RECIBO`, :`POBLACION_CLIENTE_RECIBO`, :`PROVINCIA_CLIENTE_R' +
        'ECIBO`, :`CPOSTAL_CLIENTE_RECIBO`, :`IMPORTE_LETRA_RECIBO`, :`IN' +
        'STANTEMODIF`, :`INSTANTEALTA`, :`USUARIOALTA`, :`USUARIOMODIF`)')
    SQLDelete.Strings = (
      'DELETE FROM `fza_recibos`'
      'WHERE'
      
        '  `NRO_FACTURA_RECIBO` = :`Old_NRO_FACTURA_RECIBO` AND `SERIE_FA' +
        'CTURA_RECIBO` = :`Old_SERIE_FACTURA_RECIBO` AND `NRO_PLAZO_RECIB' +
        'O` = :`Old_NRO_PLAZO_RECIBO`')
    SQLUpdate.Strings = (
      'UPDATE `fza_recibos`'
      'SET'
      
        '  `NRO_FACTURA_RECIBO` = :`NRO_FACTURA_RECIBO`, `SERIE_FACTURA_R' +
        'ECIBO` = :`SERIE_FACTURA_RECIBO`, `NRO_PLAZO_RECIBO` = :`NRO_PLA' +
        'ZO_RECIBO`, `FORMA_PAGO_ORIGEN_RECIBO` = :`FORMA_PAGO_ORIGEN_REC' +
        'IBO`, `FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO` = :`FORMA_PAGO_DESC' +
        'RIPCION_ORIGEN_RECIBO`, `EUROS_RECIBO` = :`EUROS_RECIBO`, `STADO' +
        '_RECIBO` = :`STADO_RECIBO`, `FECHA_EXPEDICION_RECIBO` = :`FECHA_' +
        'EXPEDICION_RECIBO`, `FECHA_VENCIMIENTO_RECIBO` = :`FECHA_VENCIMI' +
        'ENTO_RECIBO`, `IBAN_CLIENTE_RECIBO` = :`IBAN_CLIENTE_RECIBO`, `F' +
        'ECHA_PAGO_RECIBO` = :`FECHA_PAGO_RECIBO`, `LOCALIDAD_EXPEDICION_' +
        'RECIBO` = :`LOCALIDAD_EXPEDICION_RECIBO`, `CODIGO_CLIENTE_RECIBO' +
        '` = :`CODIGO_CLIENTE_RECIBO`, `RAZONSOCIAL_CLIENTE_RECIBO` = :`R' +
        'AZONSOCIAL_CLIENTE_RECIBO`, `DIRECCION1_CLIENTE_RECIBO` = :`DIRE' +
        'CCION1_CLIENTE_RECIBO`, `POBLACION_CLIENTE_RECIBO` = :`POBLACION' +
        '_CLIENTE_RECIBO`, `PROVINCIA_CLIENTE_RECIBO` = :`PROVINCIA_CLIEN' +
        'TE_RECIBO`, `CPOSTAL_CLIENTE_RECIBO` = :`CPOSTAL_CLIENTE_RECIBO`' +
        ', `IMPORTE_LETRA_RECIBO` = :`IMPORTE_LETRA_RECIBO`, `INSTANTEMOD' +
        'IF` = :`INSTANTEMODIF`, `INSTANTEALTA` = :`INSTANTEALTA`, `USUAR' +
        'IOALTA` = :`USUARIOALTA`, `USUARIOMODIF` = :`USUARIOMODIF`'
      'WHERE'
      
        '  `NRO_FACTURA_RECIBO` = :`Old_NRO_FACTURA_RECIBO` AND `SERIE_FA' +
        'CTURA_RECIBO` = :`Old_SERIE_FACTURA_RECIBO` AND `NRO_PLAZO_RECIB' +
        'O` = :`Old_NRO_PLAZO_RECIBO`')
    SQLLock.Strings = (
      'SELECT * FROM fza_recibos'
      'WHERE'
      
        '  `NRO_FACTURA_RECIBO` = :`Old_NRO_FACTURA_RECIBO` AND `SERIE_FA' +
        'CTURA_RECIBO` = :`Old_SERIE_FACTURA_RECIBO` AND `NRO_PLAZO_RECIB' +
        'O` = :`Old_NRO_PLAZO_RECIBO`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NRO_FACTURA_RECIBO`, `SERIE_FACTURA_RECIBO`, `NRO_PLAZO_' +
        'RECIBO`, `FORMA_PAGO_ORIGEN_RECIBO`, `FORMA_PAGO_DESCRIPCION_ORI' +
        'GEN_RECIBO`, `EUROS_RECIBO`, `STADO_RECIBO`, `FECHA_EXPEDICION_R' +
        'ECIBO`, `FECHA_VENCIMIENTO_RECIBO`, `IBAN_CLIENTE_RECIBO`, `FECH' +
        'A_PAGO_RECIBO`, `LOCALIDAD_EXPEDICION_RECIBO`, `CODIGO_CLIENTE_R' +
        'ECIBO`, `RAZONSOCIAL_CLIENTE_RECIBO`, `DIRECCION1_CLIENTE_RECIBO' +
        '`, `POBLACION_CLIENTE_RECIBO`, `PROVINCIA_CLIENTE_RECIBO`, `CPOS' +
        'TAL_CLIENTE_RECIBO`, `IMPORTE_LETRA_RECIBO`, `INSTANTEMODIF`, `I' +
        'NSTANTEALTA`, `USUARIOALTA`, `USUARIOMODIF` FROM `fza_recibos`'
      'WHERE'
      
        '  `NRO_FACTURA_RECIBO` = :`NRO_FACTURA_RECIBO` AND `SERIE_FACTUR' +
        'A_RECIBO` = :`SERIE_FACTURA_RECIBO` AND `NRO_PLAZO_RECIBO` = :`N' +
        'RO_PLAZO_RECIBO`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_recibos')
    Connection = dmConn.conUni
    SQL.Strings = (
      'select * from vi_recibos'
      '')
    MasterSource = frmMtoFacturas.dsTablaG
    MasterFields = 'NRO_FACTURA;SERIE_FACTURA'
    DetailFields = 'NRO_FACTURA_RECIBO;SERIE_FACTURA_RECIBO'
    Active = True
    Left = 736
    Top = 144
    ParamData = <
      item
        DataType = ftWideString
        Name = 'NRO_FACTURA'
        ParamType = ptInput
        Value = '00000021'
      end
      item
        DataType = ftWideString
        Name = 'SERIE_FACTURA'
        ParamType = ptInput
        Value = 'A1'
      end>
  end
  object dsRecibosPrint: TDataSource
    DataSet = unqryRecibosPrint
    Left = 776
    Top = 496
  end
  object fxdsRecibos: TfrxDBDataset
    Description = 'Recibos'
    UserName = 'Recibos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NRO_FACTURA_RECIBO=NRO_FACTURA_RECIBO'
      'SERIE_FACTURA_RECIBO=SERIE_FACTURA_RECIBO'
      'NRO_PLAZO_RECIBO=NRO_PLAZO_RECIBO'
      'FORMA_PAGO_ORIGEN_RECIBO=FORMA_PAGO_ORIGEN_RECIBO'
      
        'FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO=FORMA_PAGO_DESCRIPCION_ORIG' +
        'EN_RECIBO'
      'EUROS_RECIBO=EUROS_RECIBO'
      'ESTADO_RECIBO=ESTADO_RECIBO'
      'FECHA_EXPEDICION_RECIBO=FECHA_EXPEDICION_RECIBO'
      'FECHA_VENCIMIENTO_RECIBO=FECHA_VENCIMIENTO_RECIBO'
      'IBAN_CLIENTE_RECIBO=IBAN_CLIENTE_RECIBO'
      'FECHA_PAGO_RECIBO=FECHA_PAGO_RECIBO'
      'LOCALIDAD_EXPEDICION_RECIBO=LOCALIDAD_EXPEDICION_RECIBO'
      'CODIGO_CLIENTE_RECIBO=CODIGO_CLIENTE_RECIBO'
      'RAZONSOCIAL_CLIENTE_RECIBO=RAZONSOCIAL_CLIENTE_RECIBO'
      'DIRECCION1_CLIENTE_RECIBO=DIRECCION1_CLIENTE_RECIBO'
      'POBLACION_CLIENTE_RECIBO=POBLACION_CLIENTE_RECIBO'
      'PROVINCIA_CLIENTE_RECIBO=PROVINCIA_CLIENTE_RECIBO'
      'CPOSTAL_CLIENTE_RECIBO=CPOSTAL_CLIENTE_RECIBO'
      'IMPORTE_LETRA_RECIBO=IMPORTE_LETRA_RECIBO'
      'INSTANTEMODIF=INSTANTEMODIF'
      'INSTANTEALTA=INSTANTEALTA'
      'USUARIOALTA=USUARIOALTA'
      'USUARIOMODIF=USUARIOMODIF')
    DataSource = dsRecibosPrint
    BCDToCurrency = False
    Left = 776
    Top = 432
  end
  object unqryRecibosPrint: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_recibos'
      
        '  (NRO_FACTURA_RECIBO, SERIE_FACTURA_RECIBO, NRO_PLAZO_RECIBO, F' +
        'ORMA_PAGO_ORIGEN_RECIBO, FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO, E' +
        'UROS_RECIBO, ESTADO_RECIBO, FECHA_EXPEDICION_RECIBO, FECHA_VENCI' +
        'MIENTO_RECIBO, IBAN_CLIENTE_RECIBO, FECHA_PAGO_RECIBO, LOCALIDAD' +
        '_EXPEDICION_RECIBO, CODIGO_CLIENTE_RECIBO, RAZONSOCIAL_CLIENTE_R' +
        'ECIBO, DIRECCION1_CLIENTE_RECIBO, POBLACION_CLIENTE_RECIBO, PROV' +
        'INCIA_CLIENTE_RECIBO, CPOSTAL_CLIENTE_RECIBO, IMPORTE_LETRA_RECI' +
        'BO, INSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:NRO_FACTURA_RECIBO, :SERIE_FACTURA_RECIBO, :NRO_PLAZO_RECIBO' +
        ', :FORMA_PAGO_ORIGEN_RECIBO, :FORMA_PAGO_DESCRIPCION_ORIGEN_RECI' +
        'BO, :EUROS_RECIBO, :ESTADO_RECIBO, :FECHA_EXPEDICION_RECIBO, :FE' +
        'CHA_VENCIMIENTO_RECIBO, :IBAN_CLIENTE_RECIBO, :FECHA_PAGO_RECIBO' +
        ', :LOCALIDAD_EXPEDICION_RECIBO, :CODIGO_CLIENTE_RECIBO, :RAZONSO' +
        'CIAL_CLIENTE_RECIBO, :DIRECCION1_CLIENTE_RECIBO, :POBLACION_CLIE' +
        'NTE_RECIBO, :PROVINCIA_CLIENTE_RECIBO, :CPOSTAL_CLIENTE_RECIBO, ' +
        ':IMPORTE_LETRA_RECIBO, :INSTANTEMODIF, :INSTANTEALTA, :USUARIOAL' +
        'TA, :USUARIOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_recibos'
      'WHERE'
      
        '  NRO_FACTURA_RECIBO = :Old_NRO_FACTURA_RECIBO AND SERIE_FACTURA' +
        '_RECIBO = :Old_SERIE_FACTURA_RECIBO AND NRO_PLAZO_RECIBO = :Old_' +
        'NRO_PLAZO_RECIBO')
    SQLUpdate.Strings = (
      'UPDATE fza_recibos'
      'SET'
      
        '  NRO_FACTURA_RECIBO = :NRO_FACTURA_RECIBO, SERIE_FACTURA_RECIBO' +
        ' = :SERIE_FACTURA_RECIBO, NRO_PLAZO_RECIBO = :NRO_PLAZO_RECIBO, ' +
        'FORMA_PAGO_ORIGEN_RECIBO = :FORMA_PAGO_ORIGEN_RECIBO, FORMA_PAGO' +
        '_DESCRIPCION_ORIGEN_RECIBO = :FORMA_PAGO_DESCRIPCION_ORIGEN_RECI' +
        'BO, EUROS_RECIBO = :EUROS_RECIBO, ESTADO_RECIBO = :ESTADO_RECIBO' +
        ', FECHA_EXPEDICION_RECIBO = :FECHA_EXPEDICION_RECIBO, FECHA_VENC' +
        'IMIENTO_RECIBO = :FECHA_VENCIMIENTO_RECIBO, IBAN_CLIENTE_RECIBO ' +
        '= :IBAN_CLIENTE_RECIBO, FECHA_PAGO_RECIBO = :FECHA_PAGO_RECIBO, ' +
        'LOCALIDAD_EXPEDICION_RECIBO = :LOCALIDAD_EXPEDICION_RECIBO, CODI' +
        'GO_CLIENTE_RECIBO = :CODIGO_CLIENTE_RECIBO, RAZONSOCIAL_CLIENTE_' +
        'RECIBO = :RAZONSOCIAL_CLIENTE_RECIBO, DIRECCION1_CLIENTE_RECIBO ' +
        '= :DIRECCION1_CLIENTE_RECIBO, POBLACION_CLIENTE_RECIBO = :POBLAC' +
        'ION_CLIENTE_RECIBO, PROVINCIA_CLIENTE_RECIBO = :PROVINCIA_CLIENT' +
        'E_RECIBO, CPOSTAL_CLIENTE_RECIBO = :CPOSTAL_CLIENTE_RECIBO, IMPO' +
        'RTE_LETRA_RECIBO = :IMPORTE_LETRA_RECIBO, INSTANTEMODIF = :INSTA' +
        'NTEMODIF, INSTANTEALTA = :INSTANTEALTA, USUARIOALTA = :USUARIOAL' +
        'TA, USUARIOMODIF = :USUARIOMODIF'
      'WHERE'
      
        '  NRO_FACTURA_RECIBO = :Old_NRO_FACTURA_RECIBO AND SERIE_FACTURA' +
        '_RECIBO = :Old_SERIE_FACTURA_RECIBO AND NRO_PLAZO_RECIBO = :Old_' +
        'NRO_PLAZO_RECIBO')
    SQLLock.Strings = (
      'SELECT * FROM fza_recibos'
      'WHERE'
      
        '  NRO_FACTURA_RECIBO = :Old_NRO_FACTURA_RECIBO AND SERIE_FACTURA' +
        '_RECIBO = :Old_SERIE_FACTURA_RECIBO AND NRO_PLAZO_RECIBO = :Old_' +
        'NRO_PLAZO_RECIBO'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT NRO_FACTURA_RECIBO, SERIE_FACTURA_RECIBO, NRO_PLAZO_RECIB' +
        'O, FORMA_PAGO_ORIGEN_RECIBO, FORMA_PAGO_DESCRIPCION_ORIGEN_RECIB' +
        'O, EUROS_RECIBO, ESTADO_RECIBO, FECHA_EXPEDICION_RECIBO, FECHA_V' +
        'ENCIMIENTO_RECIBO, IBAN_CLIENTE_RECIBO, FECHA_PAGO_RECIBO, LOCAL' +
        'IDAD_EXPEDICION_RECIBO, CODIGO_CLIENTE_RECIBO, RAZONSOCIAL_CLIEN' +
        'TE_RECIBO, DIRECCION1_CLIENTE_RECIBO, POBLACION_CLIENTE_RECIBO, ' +
        'PROVINCIA_CLIENTE_RECIBO, CPOSTAL_CLIENTE_RECIBO, IMPORTE_LETRA_' +
        'RECIBO, INSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF F' +
        'ROM fza_recibos'
      'WHERE'
      
        '  NRO_FACTURA_RECIBO = :NRO_FACTURA_RECIBO AND SERIE_FACTURA_REC' +
        'IBO = :SERIE_FACTURA_RECIBO AND NRO_PLAZO_RECIBO = :NRO_PLAZO_RE' +
        'CIBO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_recibos')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * '
      'from vi_recibos'
      '')
    DMLRefresh = True
    Left = 776
    Top = 552
  end
  object unstrdprcGetRecibos: TUniStoredProc
    StoredProcName = 'PRC_CREAR_RECIBOS_FACTURA'
    SQL.Strings = (
      
        'CALL PRC_CREAR_RECIBOS_FACTURA(:pSERIE_FACTURA, :pNRO_FACTURA, :' +
        'pUSUARIO, :pINSTANTEMODIF)')
    Connection = dmConn.conUni
    Left = 1280
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pSERIE_FACTURA'
        ParamType = ptInput
        Size = 8
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pNRO_FACTURA'
        ParamType = ptInput
        Size = 12
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pUSUARIO'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'pINSTANTEMODIF'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PRC_CREAR_RECIBOS_FACTURA'
  end
  object unqryIvas: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * '
      'FROM VI_IVAS'
      '')
    Left = 671
    Top = 144
  end
  object dsIvas: TDataSource
    DataSet = unqryIvas
    Left = 672
    Top = 80
  end
  object unqryEmpDataFac: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fza_clientes'
      
        '  (CODIGO_CLIENTE, ACTIVO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_CLIE' +
        'NTE, MOVIL_CLIENTE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIRECCION' +
        '2_CLIENTE, POBLACION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLIENTE' +
        ', PAIS_CLIENTE, OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, CONTA' +
        'CTO_CLIENTE, TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE, IBAN_C' +
        'LIENTE, IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE, CODIGO_FORMA_P' +
        'AGO, CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE, INSTA' +
        'NTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF)'
      'VALUES'
      
        '  (:CODIGO_CLIENTE, :ACTIVO_CLIENTE, :RAZONSOCIAL_CLIENTE, :NIF_' +
        'CLIENTE, :MOVIL_CLIENTE, :EMAIL_CLIENTE, :DIRECCION1_CLIENTE, :D' +
        'IRECCION2_CLIENTE, :POBLACION_CLIENTE, :PROVINCIA_CLIENTE, :CPOS' +
        'TAL_CLIENTE, :PAIS_CLIENTE, :OBSERVACIONES_CLIENTE, :REFERENCIA_' +
        'CLIENTE, :CONTACTO_CLIENTE, :TELEFONO_CONTACTO_CLIENTE, :TELEFON' +
        'O_CLIENTE, :IBAN_CLIENTE, :IVA_RECARGO_CLIENTE, :RETENCIONES_CLI' +
        'ENTE, :CODIGO_FORMA_PAGO, :CODIGO_ZONA_IVA_CLIENTE, :TEXTO_LEGAL' +
        '_FACTURA_CLIENTE, :INSTANTEMODIF, :INSTANTEALTA, :USUARIOALTA, :' +
        'USUARIOMODIF)')
    SQLDelete.Strings = (
      'DELETE FROM fza_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE fza_clientes'
      'SET'
      
        '  CODIGO_CLIENTE = :CODIGO_CLIENTE, ACTIVO_CLIENTE = :ACTIVO_CLI' +
        'ENTE, RAZONSOCIAL_CLIENTE = :RAZONSOCIAL_CLIENTE, NIF_CLIENTE = ' +
        ':NIF_CLIENTE, MOVIL_CLIENTE = :MOVIL_CLIENTE, EMAIL_CLIENTE = :E' +
        'MAIL_CLIENTE, DIRECCION1_CLIENTE = :DIRECCION1_CLIENTE, DIRECCIO' +
        'N2_CLIENTE = :DIRECCION2_CLIENTE, POBLACION_CLIENTE = :POBLACION' +
        '_CLIENTE, PROVINCIA_CLIENTE = :PROVINCIA_CLIENTE, CPOSTAL_CLIENT' +
        'E = :CPOSTAL_CLIENTE, PAIS_CLIENTE = :PAIS_CLIENTE, OBSERVACIONE' +
        'S_CLIENTE = :OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE = :REFERE' +
        'NCIA_CLIENTE, CONTACTO_CLIENTE = :CONTACTO_CLIENTE, TELEFONO_CON' +
        'TACTO_CLIENTE = :TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE = :' +
        'TELEFONO_CLIENTE, IBAN_CLIENTE = :IBAN_CLIENTE, IVA_RECARGO_CLIE' +
        'NTE = :IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE = :RETENCIONES_C' +
        'LIENTE, CODIGO_FORMA_PAGO = :CODIGO_FORMA_PAGO, CODIGO_ZONA_IVA_' +
        'CLIENTE = :CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE ' +
        '= :TEXTO_LEGAL_FACTURA_CLIENTE, INSTANTEMODIF = :INSTANTEMODIF, ' +
        'INSTANTEALTA = :INSTANTEALTA, USUARIOALTA = :USUARIOALTA, USUARI' +
        'OMODIF = :USUARIOMODIF'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM fza_clientes'
      'WHERE'
      '  CODIGO_CLIENTE = :Old_CODIGO_CLIENTE'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO_CLIENTE, ACTIVO_CLIENTE, RAZONSOCIAL_CLIENTE, NIF_' +
        'CLIENTE, MOVIL_CLIENTE, EMAIL_CLIENTE, DIRECCION1_CLIENTE, DIREC' +
        'CION2_CLIENTE, POBLACION_CLIENTE, PROVINCIA_CLIENTE, CPOSTAL_CLI' +
        'ENTE, PAIS_CLIENTE, OBSERVACIONES_CLIENTE, REFERENCIA_CLIENTE, C' +
        'ONTACTO_CLIENTE, TELEFONO_CONTACTO_CLIENTE, TELEFONO_CLIENTE, IB' +
        'AN_CLIENTE, IVA_RECARGO_CLIENTE, RETENCIONES_CLIENTE, CODIGO_FOR' +
        'MA_PAGO, CODIGO_ZONA_IVA_CLIENTE, TEXTO_LEGAL_FACTURA_CLIENTE, I' +
        'NSTANTEMODIF, INSTANTEALTA, USUARIOALTA, USUARIOMODIF FROM fza_c' +
        'lientes'
      'WHERE'
      '  CODIGO_CLIENTE = :CODIGO_CLIENTE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM fza_clientes')
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * FROM VI_EMP_BUSQUEDAS')
    Left = 132
    Top = 536
  end
  object unstdCrearEmpresa: TUniStoredProc
    StoredProcName = 'PRC_CREAR_ACTUALIZAR_EMPRESA'
    Connection = dmConn.conUni
    Left = 416
    Top = 296
  end
  object dsTarifas: TDataSource
    DataSet = unqryTarifas
    Left = 608
    Top = 80
  end
  object unqryTarifas: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *'
      'FROM vi_tarifas'
      '')
    Left = 608
    Top = 144
  end
  object unstdGetContadorLinea: TUniStoredProc
    StoredProcName = 'PRC_FNC_GET_NEXT_LINEA_FACTURA'
    SQL.Strings = (
      
        'CALL PRC_FNC_GET_NEXT_LINEA_FACTURA(:pnumfac, :pserie, @presul);' +
        ' SELECT @presul AS '#39'@presul'#39)
    Connection = dmConn.conUni
    Left = 784
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pnumfac'
        ParamType = ptInput
        Size = 8
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pserie'
        ParamType = ptInput
        Size = 8
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'presul'
        ParamType = ptOutput
        Size = 3
        Value = '010'
      end>
    CommandStoredProcName = 'PRC_FNC_GET_NEXT_LINEA_FACTURA'
  end
  object unstdCalcularFactura: TUniStoredProc
    StoredProcName = 'PRC_CALCULAR_FACTURA_NETOS'
    SQL.Strings = (
      'CALL PRC_CALCULAR_FACTURA_NETOS(:pSERIE_FACTURA, :pNRO_FACTURA)')
    Connection = dmConn.conUni
    Left = 920
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'pSERIE_FACTURA'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pNRO_FACTURA'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PRC_CALCULAR_FACTURA_NETOS'
  end
  object dsSeriesEditCombo: TDataSource
    DataSet = unqrySeriesEditCombo
    Left = 848
    Top = 80
  end
  object unqrySeriesEditCombo: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT DISTINCT * FROM vi_fac_comboseries')
    Left = 848
    Top = 144
  end
end
