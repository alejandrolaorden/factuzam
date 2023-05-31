inherited frmMtoFacturas: TfrmMtoFacturas
  Caption = 'Facturas'
  ClientHeight = 792
  ClientWidth = 1112
  FormStyle = fsMDIChild
  ExplicitWidth = 1128
  ExplicitHeight = 831
  PixelsPerInch = 120
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 968
    Height = 792
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
    ExplicitWidth = 968
    ExplicitHeight = 792
    inherited pcPantalla: TcxPageControl
      Width = 966
      Height = 750
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 966
      ExplicitHeight = 750
      ClientRectBottom = 750
      ClientRectRight = 966
      inherited tsLista: TcxTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitTop = 30
        ExplicitWidth = 966
        ExplicitHeight = 720
        inherited cxGrdPrincipal: TcxGrid
          Width = 966
          Height = 720
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ExplicitWidth = 966
          ExplicitHeight = 720
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinNRO_FACTURA: TcxGridDBColumn
              Caption = 'Nro Factura'
              DataBinding.FieldName = 'NRO_FACTURA'
              Width = 113
            end
            object cxgrdbclmnGrdDBTabPrinSERIE_FACTURA: TcxGridDBColumn
              Caption = 'Serie'
              DataBinding.FieldName = 'SERIE_FACTURA'
              Width = 65
            end
            object cxgrdbclmnGrdDBTabPrinFECHA_FACTURA: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA_FACTURA'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 124
            end
            object cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'C'#243'digo Cliente'
              DataBinding.FieldName = 'CODIGO_CLIENTE_FACTURA'
              Width = 134
            end
            object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Raz'#243'n Social'
              DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE_FACTURA'
              Width = 289
            end
            object cxgrdbclmnGrdDBTabPrinCODIGO_ZONA_IVA_CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_ZONA_IVA_CLIENTE'
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn
              Caption = 'Total Liquido'
              DataBinding.FieldName = 'TOTAL_LIQUIDO_FACTURA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 90
            end
            object cxgrdbclmnGrdDBTabPrinNIF_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Nif'
              DataBinding.FieldName = 'NIF_CLIENTE_FACTURA'
              Width = 134
            end
            object cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'M'#243'vil'
              DataBinding.FieldName = 'MOVIL_CLIENTE_FACTURA'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 150
            end
            object cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Email'
              DataBinding.FieldName = 'EMAIL_CLIENTE_FACTURA'
              Width = 146
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Direcci'#243'n 1'
              DataBinding.FieldName = 'DIRECCION1_CLIENTE_FACTURA'
              Width = 181
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Direcci'#243'n 2'
              DataBinding.FieldName = 'DIRECCION2_CLIENTE_FACTURA'
              Width = 181
            end
            object cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Poblaci'#243'n'
              DataBinding.FieldName = 'POBLACION_CLIENTE_FACTURA'
              Width = 177
            end
            object cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Provincia'
              DataBinding.FieldName = 'PROVINCIA_CLIENTE_FACTURA'
              Width = 173
            end
            object cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'C'#243'digo Postal'
              DataBinding.FieldName = 'CPOSTAL_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE_FACTURA: TcxGridDBColumn
              Caption = 'Pais'
              DataBinding.FieldName = 'PAIS_CLIENTE_FACTURA'
              Width = 137
            end
            object cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA: TcxGridDBColumn
              Caption = 'Forma Pago'
              DataBinding.FieldName = 'FORMA_PAGO_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'RAZONSOCIAL_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinNIF_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'NIF_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinMOVIL_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'MOVIL_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinEMAIL_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'EMAIL_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION1_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'DIRECCION1_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION2_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'DIRECCION2_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPOBLACION_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'POBLACION_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPROVINCIA_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PROVINCIA_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPAIS_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PAIS_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinCPOSTAL_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'CPOSTAL_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'RETENCIONES_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_RECARGO_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_IVAN_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_IVAN_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_IVAN_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_IVAN_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_REN_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_REN_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_REN_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_REN_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_BASEI_IVAN_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_IVAR_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_IVAR_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_IVAR_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_IVAR_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_RER_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_RER_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_RER_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_RER_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_BASEI_IVAR_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_IVAS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_IVAS_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_IVAS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_IVAS_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_RES_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_RES_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_RES_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_RES_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_BASEI_IVAS_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_IVAE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_IVAE_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_IVAE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_IVAE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_REE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_REE_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_REE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_REE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_BASEI_IVAE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinPORCEN_RETENCION_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PORCEN_RETENCION_FACTURA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = '0.00 %'
              Properties.EditFormat = '0.00 %'
              Properties.Increment = 0.100000000000000000
              Properties.LargeIncrement = 1.000000000000000000
              Properties.MaxValue = 100.000000000000000000
              Properties.ValueType = vtInt
            end
            object cxgrdbclmnGrdDBTabPrinTOTAL_RETENCION_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_RETENCION_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinNRO_FACTURA_ABONO_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_FACTURA_ABONO_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinSERIE_FACTURA_ABONO_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE_FACTURA_ABONO_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinDOCUMENTO_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'DOCUMENTO_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinCOMENTARIOS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'COMENTARIOS_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEMODIF'
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEALTA'
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOALTA'
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOMODIF'
            end
            object cxGrdDBTabPrinGRUPO_IVA_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'GRUPO_IVA_EMPRESA_FACTURA'
            end
            object cxGrdDBTabPrinESIVA_EXENTO_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESIVA_EXENTO_CLIENTE_FACTURA'
            end
            object cxGrdDBTabPrinESRETENCIONES_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESRETENCIONES_CLIENTE_FACTURA'
            end
            object cxGrdDBTabPrinESINTRACOMUNITARIO_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESINTRACOMUNITARIO_CLIENTE_FACTURA'
            end
            object cxGrdDBTabPrinTARIFA_ARTICULO_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TARIFA_ARTICULO_CLIENTE_FACTURA'
            end
            object cxGrdDBTabPrinPALABRA_REPORTS_ZONA_IVA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'PALABRA_REPORTS_ZONA_IVA_FACTURA'
            end
            object cxGrdDBTabPrinCODIGO_IVA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_IVA_FACTURA'
            end
            object cxGrdDBTabPrinVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'VENTA_ACTIVO_FIJO_FACTURA'
            end
            object cxGrdDBTabPrinTOTAL_BASES_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_BASES_FACTURA'
            end
            object cxGrdDBTabPrinTOTAL_IMPUESTOS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_IMPUESTOS_FACTURA'
            end
            object cxGrdDBTabPrinCONTADOR_LINEAS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'CONTADOR_LINEAS_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESRETENCIONES_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVA_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'GRUPO_ZONA_IVA_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESIVA_RECARGO_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESIMP_INCL_TARIFA_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESIMP_INCL_TARIFA_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESAPLICA_RE_ZONA_IVA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESAPLICA_RE_ZONA_IVA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESVENTA_ACTIVO_FIJO_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESCREARARTICULOS_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESCREARARTICULOS_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESDESCRIPCIONES_AMP_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESDESCRIPCIONES_AMP_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESFECHADEENTREGA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESFECHADEENTREGA_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinDESCRIPCION_FORMAPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION_FORMAPAGO'
            end
            object cxgrdbclmnGrdDBTabPrinESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA'
            end
            object cxgrdbclmnGrdDBTabPrinESIVAAGRICOLA_ZONA_IVA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'ESIVAAGRICOLA_ZONA_IVA_FACTURA'
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitTop = 30
        ExplicitWidth = 966
        ExplicitHeight = 720
        object pnl1: TPanel
          Left = 0
          Top = 333
          Width = 966
          Height = 387
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 2
          object pcDetailFac: TcxPageControl
            Left = 1
            Top = 1
            Width = 964
            Height = 385
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsRecibos
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 385
            ClientRectRight = 964
            ClientRectTop = 30
            object tsLineasFactura: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '&1_Lineas de Factura'
              ImageIndex = 1
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object cxgrdLineasFactura: TcxGrid
                Left = 0
                Top = 0
                Width = 784
                Height = 355
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                object tvLineasFactura: TcxGridDBTableView
                  OnKeyDown = tvLineasFacturaKeyDown
                  Navigator.Buttons.ConfirmDelete = True
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Visible = True
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataModeController.SmartRefresh = True
                  DataController.DataSource = dmFacturas.dsLinFac
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded, dcoInsertOnNewItemRowFocusing]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  FixedDataRows.SeparatorColor = clBlack
                  NewItemRow.InfoText = 'Click aqu'#237' para a'#241'adir fila'
                  NewItemRow.Visible = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.DataRowFixing = True
                  OptionsData.Appending = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cxgrdbclmntv1LINEA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Nro Linea'
                    DataBinding.FieldName = 'LINEA_FACTURA_LINEA'
                    Width = 87
                  end
                  object cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'C'#243'digo Art'#237'culo'
                    DataBinding.FieldName = 'CODIGO_ARTICULO_FACTURA_LINEA'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesButtonClick
                    Properties.OnEditValueChanged = cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged
                    Width = 152
                  end
                  object dbcLineasFacturaCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'C'#243'digo Familia'
                    DataBinding.FieldName = 'CODIGO_FAMILIA_FACTURA_LINEA'
                    Width = 136
                  end
                  object dbcLineasFacturaNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Nombre Familia'
                    DataBinding.FieldName = 'NOMBRE_FAMILIA_FACTURA_LINEA'
                    Width = 245
                  end
                  object cmDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Descripci'#243'n'
                    DataBinding.FieldName = 'DESCRIPCION_ARTICULO_FACTURA_LINEA'
                    PropertiesClassName = 'TcxMemoProperties'
                    Properties.MaxLength = 1000
                    Properties.ScrollBars = ssBoth
                    Properties.VisibleLineCount = 3
                    MinWidth = 0
                    VisibleForEditForm = bTrue
                    Width = 300
                  end
                  object cxgrdbclmntv1TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Tipo de Cantidad'
                    DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA'
                    Width = 153
                  end
                  object cxgrdbclmntv1CANTIDAD_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Cantidad'
                    DataBinding.FieldName = 'CANTIDAD_FACTURA_LINEA'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Width = 81
                  end
                  object cxgrdbclmntv1PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Precio sin IVA'
                    DataBinding.FieldName = 'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.ReadOnly = False
                    Properties.OnEditValueChanged = cxgrdbclmntv1PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged
                    Width = 127
                  end
                  object cxgrdbclmntv1IMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'ImpIncl'
                    DataBinding.FieldName = 'ESIMP_INCL_TARIFA_FACTURA_LINEA'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ReadOnly = True
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Width = 79
                  end
                  object cxgrdbclmntv1TIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Tipo de IVA'
                    DataBinding.FieldName = 'TIPOIVA_ARTICULO_FACTURA_LINEA'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.OnEditValueChanged = cxgrdbclmntv1TIPOIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged
                    Width = 109
                  end
                  object cxgrdbclmntv1PORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = '% IVA'
                    DataBinding.FieldName = 'PORCEN_IVA_FACTURA_LINEA'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '0.00 %'
                    Properties.EditFormat = '0.00 %'
                    Properties.ReadOnly = False
                    Width = 79
                  end
                  object cxgrdbclmntv1PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Precio con IVA'
                    DataBinding.FieldName = 'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.ReadOnly = False
                    Properties.OnEditValueChanged = cxgrdbclmntv1PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged
                    Width = 139
                  end
                  object cxgrdbclmntv1TOTAL_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Total'
                    DataBinding.FieldName = 'TOTAL_FACTURA_LINEA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.ReadOnly = True
                    Width = 172
                  end
                  object dbcLineasFacturaFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Fecha Entrega'
                    DataBinding.FieldName = 'FECHA_ENTREGA_FACTURA_LINEA'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.DateButtons = [btnClear, btnToday]
                    Properties.DisplayFormat = 'dd/mm/yyyy'
                    Properties.EditFormat = 'dd/mm/yyyy'
                  end
                end
                object tv2: TcxGridDBBandedTableView
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Visible = True
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DetailKeyFieldNames = 'AppointmentId'
                  DataController.KeyFieldNames = 'PerId'
                  DataController.MasterKeyFieldNames = 'AppointmentId'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  Bands = <
                    item
                      Width = 958
                    end>
                  object cxgrdbndclmntv2PerId: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PerId'
                    Width = 37
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2AppointmentId: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AppointmentId'
                    Width = 81
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2Linea: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'Linea'
                    Width = 44
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2clave: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'clave'
                    Width = 126
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2valor: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'valor'
                    Width = 146
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2instantemodif: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'instantemodif'
                    Width = 137
                    Position.BandIndex = 0
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2descripcion: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'descripcion'
                    Width = 178
                    Position.BandIndex = 0
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object cxgrdbndclmntv2parte: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'parte'
                    Width = 209
                    Position.BandIndex = 0
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                end
                object cxgrdlvlLineasFactura: TcxGridLevel
                  GridView = tvLineasFactura
                end
              end
              object Panel1: TPanel
                Left = 784
                Top = 0
                Width = 180
                Height = 355
                Align = alRight
                TabOrder = 1
                object chkFechaEntrega: TcxDBCheckBox
                  Left = 10
                  Top = 20
                  Caption = 'Fecha de Entrega'
                  DataBinding.DataField = 'ESFECHADEENTREGA_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Properties.OnChange = chkFechaEntregaPropertiesChange
                  Style.TransparentBorder = False
                  TabOrder = 0
                end
                object chkDescripcion_ampliada: TcxDBCheckBox
                  Left = 10
                  Top = 49
                  Caption = 'Desc. Ampliada'
                  DataBinding.DataField = 'ESDESCRIPCIONES_AMP_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Properties.OnChange = chkDescripcion_ampliadaPropertiesChange
                  Style.TransparentBorder = False
                  TabOrder = 1
                end
                object chkCrearArticulos: TcxDBCheckBox
                  Left = 10
                  Top = 78
                  Caption = 'Crear Art'#237'culos'
                  DataBinding.DataField = 'ESCREARARTICULOS_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Properties.OnChange = chkCrearArticulosPropertiesChange
                  Style.TransparentBorder = False
                  TabOrder = 2
                end
              end
            end
            object tsTotales: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '&2_Totales'
              ImageIndex = 2
              object cxdbmskdt1: TcxDBMaskEdit
                Left = 272
                Top = 218
                DataBinding.DataField = 'PORCEN_RETENCION_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.EditMask = '!99;1;_'
                TabOrder = 5
                Visible = False
                Width = 34
              end
              object cxlbl17: TcxLabel
                Left = 117
                Top = 261
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Total a pagar'
              end
              object cxDBCurrencyEdit3: TcxDBCurrencyEdit
                Left = 246
                Top = 260
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'TOTAL_LIQUIDO_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.ReadOnly = True
                TabOrder = 15
                Width = 100
              end
              object cxdbcrncydtTOTAL_LIQUIDO_FACTURA: TcxDBCurrencyEdit
                Left = 246
                Top = 217
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'TOTAL_RETENCION_FACTURA'
                DataBinding.DataSource = dsTablaG
                ParentFont = False
                Properties.DecimalPlaces = 3
                Properties.ReadOnly = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clRed
                Style.Font.Height = -17
                Style.Font.Name = 'Lucida Sans Unicode'
                Style.Font.Pitch = fpFixed
                Style.Font.Style = []
                Style.Font.Quality = fqClearType
                Style.IsFontAssigned = True
                TabOrder = 8
                Width = 100
              end
              object lbl7: TcxLabel
                Left = 33
                Top = 221
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Total Retenci'#243'n Factura'
              end
              object lbl8: TcxLabel
                Left = 65
                Top = 182
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = '% Retenci'#243'n Factura'
              end
              object cxdbspndt1: TcxDBSpinEdit
                Left = 246
                Top = 181
                DataBinding.DataField = 'PORCEN_RETENCION_FACTURA'
                DataBinding.DataSource = dsTablaG
                ParentFont = False
                Properties.AssignedValues.MinValue = True
                Properties.DisplayFormat = '0.00 %'
                Properties.EditFormat = '0.00 %'
                Properties.MaxValue = 100.000000000000000000
                Properties.ReadOnly = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clRed
                Style.Font.Height = -17
                Style.Font.Name = 'Lucida Sans Unicode'
                Style.Font.Pitch = fpFixed
                Style.Font.Style = []
                Style.Font.Quality = fqClearType
                Style.IsFontAssigned = True
                TabOrder = 6
                Width = 100
              end
              object cxdbcrncydtTOTAL_RETENCION_FACTURA: TcxDBCurrencyEdit
                Left = 246
                Top = 108
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'TOTAL_BASES_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.DecimalPlaces = 3
                Properties.ReadOnly = True
                TabOrder = 1
                Width = 100
              end
              object lbl9: TcxLabel
                Left = 54
                Top = 109
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Total Base Imponible'
              end
              object cxdbcrncydtTOTAL_BASES_FACTURA: TcxDBCurrencyEdit
                Left = 246
                Top = 144
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'TOTAL_IMPUESTOS_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.DecimalPlaces = 3
                Properties.DisplayFormat = ',0.000 '#8364';-,0.000 '#8364
                Properties.ReadOnly = True
                TabOrder = 2
                Width = 100
              end
              object lbl10: TcxLabel
                Left = 96
                Top = 145
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Total Impuestos'
              end
              object chkESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxDBCheckBox
                Left = 422
                Top = 148
                Caption = 'C'#225'lculo IRPF con impuestos (S'#243'lo REAGP)'
                DataBinding.DataField = 'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 3
              end
              object chkESVENTA_ACTIVO_FIJO_FACTURA: TcxDBCheckBox
                Left = 422
                Top = 181
                Caption = 'Venta de Activo Fijo --Maquinaria, Aperos-- (S'#243'lo REAGP)'
                DataBinding.DataField = 'ESVENTA_ACTIVO_FIJO_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 7
              end
              object pnl7: TPanel
                Left = 0
                Top = 0
                Width = 964
                Height = 89
                Align = alTop
                TabOrder = 0
                object cxgrdIVA: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 962
                  Height = 88
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  BevelOuter = bvRaised
                  BevelKind = bkTile
                  BorderWidth = 2
                  TabOrder = 0
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = True
                  LookAndFeel.ScrollbarMode = sbmClassic
                  object tvGrid1DBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                  end
                  object cxgrdtblvwcxgrd1TableView1: TcxGridTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                  end
                  object cxgrdbndtblvwcxgrd1DBBandedTableView1: TcxGridDBBandedTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    Bands = <
                      item
                      end>
                  end
                  object tvIVA: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    FindPanel.ClearFindFilterTextOnClose = False
                    FindPanel.HighlightSearchResults = False
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataModeController.SmartRefresh = True
                    DataController.DataSource = dsTablaG
                    DataController.Options = [dcoAssignMasterDetailKeys, dcoSaveExpanding]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    Filtering.MRUItemsList = False
                    Filtering.ColumnAddValueItems = False
                    Filtering.ColumnMRUItemsList = False
                    OptionsBehavior.DragHighlighting = False
                    OptionsBehavior.DragOpening = False
                    OptionsBehavior.ColumnHeaderHints = False
                    OptionsBehavior.ImmediateEditor = False
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnHidingOnGrouping = False
                    OptionsCustomize.ColumnHorzSizing = False
                    OptionsCustomize.ColumnMoving = False
                    OptionsCustomize.ColumnSorting = False
                    OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsSelection.InvertSelect = False
                    OptionsView.ScrollBars = ssHorizontal
                    OptionsView.CellTextMaxLineCount = 1
                    OptionsView.GridLineColor = clBtnText
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderEndEllipsis = True
                    OptionsView.HeaderHeight = 40
                    object dbcTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn
                      Caption = 'Base Neta Normal'
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAN_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 155
                    end
                    object dbcPORCEN_IVAN_FACTURA: TcxGridDBColumn
                      Caption = '%IVA Normal'
                      DataBinding.FieldName = 'PORCEN_IVAN_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                    end
                    object dbcTOTAL_IVAN_FACTURA: TcxGridDBColumn
                      Caption = 'Total IVA Normal'
                      DataBinding.FieldName = 'TOTAL_IVAN_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 150
                    end
                    object dbcPORCEN_REN_FACTURA: TcxGridDBColumn
                      Caption = '%RE Normal'
                      DataBinding.FieldName = 'PORCEN_REN_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                    end
                    object dbcTOTAL_REN_FACTURA: TcxGridDBColumn
                      Caption = 'Total RE Normal'
                      DataBinding.FieldName = 'TOTAL_REN_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Options.IncSearch = False
                      Options.ShowEditButtons = isebNever
                      Options.Grouping = False
                      Options.Moving = False
                      Width = 150
                    end
                    object dbcTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn
                      Caption = 'Base Neta Reducida'
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAR_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 170
                    end
                    object dbcPORCEN_IVAR_FACTURA: TcxGridDBColumn
                      Caption = '%IVA Reducido'
                      DataBinding.FieldName = 'PORCEN_IVAR_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                      Width = 140
                    end
                    object dbcTOTAL_IVAR_FACTURA: TcxGridDBColumn
                      Caption = 'Total IVA Reducido'
                      DataBinding.FieldName = 'TOTAL_IVAR_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 170
                    end
                    object dbcPORCEN_RER_FACTURA: TcxGridDBColumn
                      Caption = '%RE Reducido'
                      DataBinding.FieldName = 'PORCEN_RER_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                      Width = 130
                    end
                    object dbcTOTAL_RER_FACTURA: TcxGridDBColumn
                      Caption = 'Total RE Reducido'
                      DataBinding.FieldName = 'TOTAL_RER_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 160
                    end
                    object dbcTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn
                      Caption = 'Base Neta S'#250'perReducida'
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAS_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 230
                    end
                    object dbcPORCEN_IVAS_FACTURA: TcxGridDBColumn
                      Caption = '%IVA S'#250'perReducido'
                      DataBinding.FieldName = 'PORCEN_IVAS_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                      Width = 180
                    end
                    object dbcPORCEN_RES_FACTURA: TcxGridDBColumn
                      Caption = '%RE S'#250'perReducido'
                      DataBinding.FieldName = 'PORCEN_RES_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                      Width = 180
                    end
                    object dbcTOTAL_RES_FACTURA: TcxGridDBColumn
                      Caption = 'Total RE S'#250'perReducido'
                      DataBinding.FieldName = 'TOTAL_RES_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 220
                    end
                    object dbcTOTAL_IVAS_FACTURA: TcxGridDBColumn
                      Caption = 'Total IVA S'#250'perReducido'
                      DataBinding.FieldName = 'TOTAL_IVAS_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 220
                    end
                    object dbcTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn
                      Caption = 'Base Neta Exenta'
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAE_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 150
                    end
                    object dbcPORCEN_IVAE_FACTURA: TcxGridDBColumn
                      Caption = '%IVA Exento'
                      DataBinding.FieldName = 'PORCEN_IVAE_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                    end
                    object dbcTOTAL_IVAE_FACTURA: TcxGridDBColumn
                      Caption = 'Total IVA Exento'
                      DataBinding.FieldName = 'TOTAL_IVAE_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 200
                    end
                    object dbcPORCEN_REE_FACTURA: TcxGridDBColumn
                      Caption = '%RE Exento'
                      DataBinding.FieldName = 'PORCEN_REE_FACTURA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.AssignedValues.MinValue = True
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                    end
                    object dbcTOTAL_REE_FACTURA: TcxGridDBColumn
                      Caption = 'Total RE Exento'
                      DataBinding.FieldName = 'TOTAL_REE_FACTURA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 3
                      Width = 200
                    end
                  end
                  object lvIVA: TcxGridLevel
                    GridView = tvIVA
                  end
                end
              end
              object cxlbl18: TcxLabel
                Left = 370
                Top = 261
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Forma de Pago'
              end
              object cbbFORMAPAGO: TcxDBLookupComboBox
                Left = 504
                Top = 260
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'FORMA_PAGO_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.KeyFieldNames = 'DESCRIPCION_FORMAPAGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'DESCRIPCION_FORMAPAGO'
                  end>
                Properties.ListOptions.ShowHeader = False
                TabOrder = 9
                OnKeyUp = cbbSerieFacturaKeyUp
                Width = 263
              end
              object btnGenerarRecibos: TcxButton
                Left = 774
                Top = 260
                Width = 160
                Height = 25
                Caption = 'Generar Recibo/s'
                TabOrder = 10
                OnClick = btnGenerarRecibosClick
              end
            end
            object tsRecibos: TcxTabSheet
              Caption = '&3_Recibos'
              ImageIndex = 4
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object pnl6: TPanel
                Left = 811
                Top = 0
                Width = 153
                Height = 355
                Align = alRight
                TabOrder = 1
                object btnReciboDevuelto: TcxButton
                  Left = 27
                  Top = 77
                  Width = 98
                  Height = 25
                  Caption = '&Devuelto'
                  TabOrder = 2
                end
                object btnImprimirRecibo: TcxButton
                  Left = 3
                  Top = 113
                  Width = 146
                  Height = 25
                  Caption = 'Imprimir &Recibo'
                  TabOrder = 3
                  OnClick = btnImprimirReciboClick
                end
                object btnReciboEmitido: TcxButton
                  Left = 27
                  Top = 47
                  Width = 98
                  Height = 25
                  Caption = '&Emitido'
                  TabOrder = 1
                end
                object btnReciboPagado: TcxButton
                  Left = 27
                  Top = 17
                  Width = 98
                  Height = 25
                  Caption = '&Pagado'
                  TabOrder = 0
                  OnClick = btnReciboPagadoClick
                end
              end
              object pnl61: TPanel
                Left = 0
                Top = 0
                Width = 811
                Height = 355
                Align = alClient
                TabOrder = 0
                object cxgrdRecibos: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 809
                  Height = 353
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  object tvRecibos: TcxGridDBTableView
                    OnDblClick = cxGrdDBTabPrinDblClick
                    Navigator.Buttons.ConfirmDelete = True
                    Navigator.Buttons.CustomButtons = <>
                    Navigator.Buttons.First.Hint = 'Va al primer Registro'
                    Navigator.Buttons.First.Visible = False
                    Navigator.Buttons.PriorPage.Hint = 'Va a la p'#225'gina anterior'
                    Navigator.Buttons.PriorPage.Visible = False
                    Navigator.Buttons.Prior.Hint = 'Va al Registro Anterior'
                    Navigator.Buttons.Prior.Visible = False
                    Navigator.Buttons.Next.Hint = 'Va al siguiente Registro'
                    Navigator.Buttons.Next.Visible = False
                    Navigator.Buttons.NextPage.Hint = 'Va a la p'#225'gina siguiente'
                    Navigator.Buttons.NextPage.Visible = False
                    Navigator.Buttons.Last.Hint = 'Va al '#250'ltimo registro'
                    Navigator.Buttons.Last.Visible = False
                    Navigator.Buttons.Insert.Hint = 'Inserta un nuevo Registro'
                    Navigator.Buttons.Insert.Visible = True
                    Navigator.Buttons.Delete.Hint = 'Borra el registro Activo'
                    Navigator.Buttons.Delete.Visible = True
                    Navigator.Buttons.Edit.Enabled = False
                    Navigator.Buttons.Edit.Hint = 'Edita registro Actual'
                    Navigator.Buttons.Edit.Visible = False
                    Navigator.Buttons.Post.Hint = 'Guarda Datos introducidos'
                    Navigator.Buttons.Post.Visible = True
                    Navigator.Buttons.Cancel.Hint = 'Cancela la edici'#243'n actual'
                    Navigator.Buttons.Cancel.Visible = True
                    Navigator.Buttons.Refresh.Hint = 'Refresca Datos Activos'
                    Navigator.Buttons.SaveBookmark.Enabled = False
                    Navigator.Buttons.SaveBookmark.Hint = 'Marca Registro Actual'
                    Navigator.Buttons.SaveBookmark.Visible = False
                    Navigator.Buttons.GotoBookmark.Enabled = False
                    Navigator.Buttons.GotoBookmark.Hint = 'Va al registro Marcado'
                    Navigator.Buttons.GotoBookmark.Visible = False
                    Navigator.Buttons.Filter.Hint = 'Filtro personalizado'
                    Navigator.Visible = True
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dmFacturas.dsRecibos
                    DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.AlwaysShowEditor = True
                    OptionsBehavior.GoToNextCellOnEnter = True
                    OptionsBehavior.IncSearch = True
                    OptionsCustomize.ColumnHiding = True
                    OptionsData.Appending = True
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    object cxgrdbclmnRecibosNRO_FACTURA_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'NRO_FACTURA_RECIBO'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnRecibosSERIE_FACTURA_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'SERIE_FACTURA_RECIBO'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnRecibosNRO_PLAZO_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'NRO_PLAZO_RECIBO'
                      Width = 134
                    end
                    object cxgrdbclmnRecibosFORMA_PAGO_ORIGEN_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'FORMA_PAGO_ORIGEN_RECIBO'
                      Width = 265
                    end
                    object cxgrdbclmnRecibosFORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO'
                    end
                    object cxgrdbclmnRecibosEUROS_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'EUROS_RECIBO'
                    end
                    object cxgrdbclmnRecibosESTADO_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'STADO_RECIBO'
                    end
                    object cxgrdbclmnRecibosFECHA_EXPEDICION_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'FECHA_EXPEDICION_RECIBO'
                    end
                    object cxgrdbclmnRecibosFECHA_VENCIMIENTO_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'FECHA_VENCIMIENTO_RECIBO'
                    end
                    object cxgrdbclmnRecibosIBAN_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'IBAN_CLIENTE_RECIBO'
                    end
                    object cxgrdbclmnRecibosFECHA_PAGO_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'FECHA_PAGO_RECIBO'
                    end
                    object cxgrdbclmnRecibosLOCALIDAD_EXPEDICION_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'LOCALIDAD_EXPEDICION_RECIBO'
                      Width = 281
                    end
                    object cxgrdbclmnRecibosCODIGO_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_CLIENTE_RECIBO'
                    end
                    object cxgrdbclmnRecibosRAZONSOCIAL_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE_RECIBO'
                      Width = 268
                    end
                    object cxgrdbclmnRecibosDIRECCION1_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'DIRECCION1_CLIENTE_RECIBO'
                      Width = 256
                    end
                    object cxgrdbclmnRecibosPOBLACION_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'POBLACION_CLIENTE_RECIBO'
                      Width = 246
                    end
                    object cxgrdbclmnRecibosPROVINCIA_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'PROVINCIA_CLIENTE_RECIBO'
                      Width = 242
                    end
                    object cxgrdbclmnRecibosCPOSTAL_CLIENTE_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'CPOSTAL_CLIENTE_RECIBO'
                    end
                    object cxgrdbclmnRecibosIMPORTE_LETRA_RECIBO: TcxGridDBColumn
                      DataBinding.FieldName = 'IMPORTE_LETRA_RECIBO'
                      Width = 366
                    end
                  end
                  object cxgrdlvlRecibos: TcxGridLevel
                    GridView = tvRecibos
                  end
                end
              end
            end
            object tsOtros: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '&4_Otros'
              ImageIndex = 4
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object cxlbl12: TcxLabel
                Left = 32
                Top = 65
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Comentarios'
              end
              object cxdbm1: TcxDBMemo
                Left = 32
                Top = 92
                DataBinding.DataField = 'COMENTARIOS_FACTURA'
                DataBinding.DataSource = dsTablaG
                Properties.ScrollBars = ssVertical
                TabOrder = 1
                Height = 149
                Width = 733
              end
            end
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 0
          Width = 966
          Height = 325
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          TabOrder = 0
          object pnl3: TPanel
            Left = 1
            Top = 1
            Width = 964
            Height = 323
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            object pcCabFac: TcxPageControl
              Left = 1
              Top = 1
              Width = 962
              Height = 321
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              Properties.ActivePage = tsEmpresa
              Properties.CustomButtons.Buttons = <>
              ClientRectBottom = 321
              ClientRectRight = 962
              ClientRectTop = 30
              object tsCabecera: TcxTabSheet
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Cabecera Factura'
                ImageIndex = 0
                object lblcxlbl1: TcxLabel
                  Left = 45
                  Top = 16
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Nro Factura'
                end
                object lblcxlbl3: TcxLabel
                  Left = 94
                  Top = 200
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Fecha'
                end
                object dteFECHA_FACTURA: TcxDBDateEdit
                  Left = 155
                  Top = 196
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'FECHA_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.DateButtons = [btnClear, btnToday]
                  Properties.OnChange = dteFECHA_FACTURAPropertiesChange
                  TabOrder = 10
                  OnKeyUp = dteFECHA_FACTURAKeyUp
                  Width = 143
                end
                object lblcxlbl8: TcxLabel
                  Left = 36
                  Top = 154
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Serie Factura'
                end
                object btnCODIGO_CLIENTE: TcxDBButtonEdit
                  Left = 155
                  Top = 104
                  DataBinding.DataField = 'CODIGO_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = btnCODIGO_CLIENTEPropertiesButtonClick
                  Properties.OnChange = btnCODIGO_CLIENTEPropertiesChange
                  Properties.OnEditValueChanged = btnCODIGO_CLIENTEPropertiesEditValueChanged
                  TabOrder = 4
                  OnKeyUp = btnCODIGO_CLIENTEKeyUp
                  Width = 104
                end
                object lblcxlbl4: TcxLabel
                  Left = 16
                  Top = 109
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'C'#243'digo Cliente'
                end
                object cxdblblRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBLabel
                  Left = 269
                  Top = 60
                  DataBinding.DataField = 'RAZONSOCIAL_EMPRESA_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Height = 21
                  Width = 254
                end
                object cxdblblRAZONSOCIAL_CLIENTE_FACTURA2: TcxDBLabel
                  Left = 269
                  Top = 109
                  DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Height = 21
                  Width = 254
                end
                object btnCODIGO_EMPRESA_FACTURA: TcxDBButtonEdit
                  Left = 155
                  Top = 58
                  DataBinding.DataField = 'CODIGO_EMPRESA_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = btnCODIGO_EMPRESA_FACTURAPropertiesButtonClick
                  Properties.OnChange = btnCODIGO_EMPRESA_FACTURAPropertiesChange
                  Properties.OnEditValueChanged = btnCODIGO_EMPRESA_FACTURAPropertiesEditValueChanged
                  TabOrder = 2
                  Width = 104
                end
                object lbl13: TcxLabel
                  Left = 5
                  Top = 62
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'C'#243'digo Empresa'
                end
                object txtNRO_FACTURA: TcxDBTextEdit
                  Left = 155
                  Top = 12
                  DataBinding.DataField = 'NRO_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 0
                  Width = 121
                end
                object cbbSerieFactura: TcxDBLookupComboBox
                  Left = 155
                  Top = 150
                  BeepOnEnter = False
                  DataBinding.DataField = 'SERIE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  Properties.DropDownListStyle = lsEditList
                  Properties.ImmediateDropDownWhenKeyPressed = False
                  Properties.IncrementalFiltering = False
                  Properties.KeyFieldNames = 'SERIE_CONTADOR'
                  Properties.ListColumns = <
                    item
                      Caption = 'Serie'
                      FieldName = 'SERIE_CONTADOR'
                    end>
                  Properties.ListOptions.ColumnSorting = False
                  Properties.ListOptions.ShowHeader = False
                  Properties.ListSource = dmFacturas.dsSeries
                  Properties.ReadOnly = True
                  TabOrder = 5
                  Width = 145
                end
              end
              object tsEmpresa: TcxTabSheet
                Caption = 'Datos Empresa Emisora - Cabecera Factura'
                ImageIndex = 2
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object cxgrp1: TcxGroupBox
                  Left = 22
                  Top = 4
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Empresa'
                  TabOrder = 0
                  Height = 277
                  Width = 770
                  object txtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 14
                    Top = 55
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'DIRECCION1_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 2
                    Width = 328
                  end
                  object txtCPOSTAL_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 13
                    Top = 115
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'CPOSTAL_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 6
                    Width = 75
                  end
                  object txtPROVINCIA_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 114
                    Top = 169
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'PROVINCIA_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 10
                    Width = 228
                  end
                  object txtPAIS_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 114
                    Top = 202
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'PAIS_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 15
                    Width = 228
                  end
                  object txtDIRECCION2_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 14
                    Top = 79
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'DIRECCION2_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 4
                    Width = 328
                  end
                  object lbl1: TcxLabel
                    Left = 23
                    Top = 173
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Provincia'
                  end
                  object lbl2: TcxLabel
                    Left = 66
                    Top = 206
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Pa'#237's'
                  end
                  object txtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 14
                    Top = 22
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'RAZONSOCIAL_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 0
                    Width = 328
                  end
                  object txtNIF_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 505
                    Top = 29
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'NIF_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 1
                    Width = 247
                  end
                  object lbl3: TcxLabel
                    Left = 390
                    Top = 33
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'NIF Empresa'
                  end
                  object lbl4: TcxLabel
                    Left = 372
                    Top = 66
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'M'#243'vil Empresa'
                  end
                  object txtMOVIL_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 505
                    Top = 62
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'MOVIL_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 3
                    Width = 247
                  end
                  object txtEMAIL_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 505
                    Top = 95
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'EMAIL_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 5
                    Width = 247
                  end
                  object lbl5: TcxLabel
                    Left = 372
                    Top = 99
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Email Empresa'
                  end
                  object chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA: TcxDBCheckBox
                    Left = 372
                    Top = 167
                    Caption = 'Empresa es agricultor/ganadero/pesca (S'#243'lo REAGP)'
                    DataBinding.DataField = 'ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.MultiLine = True
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Properties.OnChange = chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURAPropertiesChange
                    TabOrder = 9
                    Width = 351
                  end
                  object chkRETENCION_EMPRESA_FACTURA: TcxDBCheckBox
                    Left = 372
                    Top = 138
                    Caption = 'Empresa practica retenci'#243'n en Factura'
                    DataBinding.DataField = 'ESRETENCIONES_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 8
                  end
                  object cxdbmCOMENTARIOS_FACTURA: TcxDBMemo
                    Left = 91
                    Top = 115
                    DataBinding.DataField = 'POBLACION_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.ScrollBars = ssVertical
                    TabOrder = 7
                    Height = 49
                    Width = 251
                  end
                  object cbbCanalIVA: TcxDBLookupComboBox
                    Left = 112
                    Top = 233
                    DataBinding.DataField = 'GRUPO_ZONA_IVA_EMPRESA_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.KeyFieldNames = 'GRUPO_ZONA_IVA'
                    Properties.ListColumns = <
                      item
                        Caption = 'Zona de IVA'
                        FieldName = 'DESCRIPCION_ZONA_IVA'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ReadOnly = True
                    Properties.OnChange = cbbCanalIVAPropertiesChange
                    TabOrder = 17
                    Width = 363
                  end
                  object cxlbllbl6: TcxLabel
                    Left = 20
                    Top = 237
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Canal IVA'
                  end
                end
                object btnUpdateEmpresa: TcxButton
                  Left = 799
                  Top = 50
                  Width = 142
                  Height = 122
                  Caption = 'Dar de Alta o &Actualizar Empresa'
                  TabOrder = 2
                  WordWrap = True
                  OnClick = btnUpdateEmpresaClick
                end
                object cxdblblCODIGO_CLIENTE_FACTURA: TcxDBLabel
                  Left = 817
                  Top = 15
                  DataBinding.DataField = 'CODIGO_EMPRESA_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clBlack
                  Style.Font.Height = -16
                  Style.Font.Name = 'Lucida Sans'
                  Style.Font.Pitch = fpFixed
                  Style.Font.Style = []
                  Style.Font.Quality = fqClearType
                  Style.IsFontAssigned = True
                  Transparent = True
                  Height = 21
                  Width = 94
                end
              end
              object tsDatosCliente: TcxTabSheet
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Datos Cliente - Cabecera Factura'
                ImageIndex = 1
                object cxgrpbx1: TcxGroupBox
                  Left = 22
                  Top = 4
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Cliente'
                  TabOrder = 1
                  Height = 248
                  Width = 763
                  object txtDIRECCION1_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 13
                    Top = 48
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'DIRECCION1_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 2
                    Width = 328
                  end
                  object txtCPOSTAL_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 13
                    Top = 115
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'CPOSTAL_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 8
                    Width = 70
                  end
                  object txtPOBLACION_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 92
                    Top = 114
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'POBLACION_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 6
                    Width = 247
                  end
                  object txtPROVINCIA_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 113
                    Top = 147
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'PROVINCIA_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 10
                    Width = 228
                  end
                  object txtPAIS_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 113
                    Top = 180
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'PAIS_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 16
                    Width = 228
                  end
                  object txtDIRECCION2_CLIENTE_FACTURA1: TcxDBTextEdit
                    Left = 13
                    Top = 81
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'DIRECCION2_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 4
                    Width = 328
                  end
                  object lblcxlbl6: TcxLabel
                    Left = 26
                    Top = 148
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Provincia'
                  end
                  object lblcxlbl13: TcxLabel
                    Left = 69
                    Top = 181
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Pa'#237's'
                  end
                  object txtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 13
                    Top = 16
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'RAZONSOCIAL_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 0
                    Width = 328
                  end
                  object txtNIF_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 464
                    Top = 16
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'NIF_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 1
                    Width = 266
                  end
                  object lblcxlbl9: TcxLabel
                    Left = 425
                    Top = 17
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'NIF'
                  end
                  object lblcxlbl10: TcxLabel
                    Left = 359
                    Top = 49
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Tfno. M'#243'vil'
                  end
                  object txtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 464
                    Top = 48
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'MOVIL_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 3
                    Width = 266
                  end
                  object txtEMAIL_CLIENTE_FACTURA: TcxDBTextEdit
                    Left = 464
                    Top = 81
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'EMAIL_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    TabOrder = 5
                    Width = 266
                  end
                  object lblcxlbl11: TcxLabel
                    Left = 407
                    Top = 82
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Email'
                  end
                  object chkESIVA_RECARGO_CLIENTE_FACTURA: TcxDBCheckBox
                    Left = 378
                    Top = 141
                    Caption = 'Aplicar Recargo de Equivalencia'
                    DataBinding.DataField = 'ESIVA_RECARGO_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Properties.OnChange = chkESIVA_RECARGO_CLIENTE_FACTURAPropertiesChange
                    TabOrder = 9
                  end
                  object chkREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA: TcxDBCheckBox
                    Left = 378
                    Top = 167
                    Caption = 'Cliente es agricultor/ganadero/pesca'
                    DataBinding.DataField = 'ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 11
                  end
                  object chkRETENCIONES_EMPRESA_FACTURA3: TcxDBCheckBox
                    Left = 378
                    Top = 114
                    Caption = 'Aplicar IRPF (Es profesional)'
                    DataBinding.DataField = 'ESRETENCIONES_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 7
                  end
                  object chkEXTRANJERO: TcxDBCheckBox
                    Left = 13
                    Top = 211
                    Caption = 'IVA Exento'
                    DataBinding.DataField = 'ESIVA_EXENTO_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.DisplayUnchecked = 'True'
                    Properties.DisplayGrayed = 'False'
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 20
                    Transparent = True
                  end
                  object cbbTARIFA_ARTICULOS_CLIENTES: TcxDBLookupComboBox
                    Left = 578
                    Top = 203
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    DataBinding.DataField = 'TARIFA_ARTICULO_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.KeyFieldNames = 'CODIGO_TARIFA'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOMBRE_TARIFA'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ReadOnly = True
                    TabOrder = 18
                    OnKeyUp = cbbSerieFacturaKeyUp
                    Width = 143
                  end
                  object lblcxlbl12: TcxLabel
                    Left = 436
                    Top = 206
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = 'Tarifa Art'#237'culos'
                  end
                  object chkIVA_EXENTO_CLIENTE_FACTURA: TcxDBCheckBox
                    Left = 132
                    Top = 211
                    Caption = 'Cliente intracomunitario'
                    DataBinding.DataField = 'ESINTRACOMUNITARIO_CLIENTE_FACTURA'
                    DataBinding.DataSource = dsTablaG
                    Properties.DisplayUnchecked = 'True'
                    Properties.DisplayGrayed = 'False'
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 21
                    Transparent = True
                  end
                end
                object cxdblblCODIGO_CLIENTE: TcxDBLabel
                  Left = 817
                  Top = 15
                  DataBinding.DataField = 'CODIGO_CLIENTE_FACTURA'
                  DataBinding.DataSource = dsTablaG
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clBlack
                  Style.Font.Height = -16
                  Style.Font.Name = 'Lucida Sans'
                  Style.Font.Pitch = fpFixed
                  Style.Font.Style = []
                  Style.Font.Quality = fqClearType
                  Style.IsFontAssigned = True
                  Transparent = True
                  Height = 21
                  Width = 94
                end
                object btnUpdateCliente: TcxButton
                  Left = 799
                  Top = 50
                  Width = 142
                  Height = 122
                  Caption = 'Dar de Alta o &Actualizar Cliente'
                  TabOrder = 2
                  WordWrap = True
                  OnClick = btnUpdateClienteClick
                end
              end
            end
          end
        end
        object cxspltrcxspl1: TcxSplitter
          Left = 0
          Top = 325
          Width = 966
          Height = 8
          Cursor = crSizeNS
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          HotZoneClassName = 'TcxMediaPlayer9Style'
          HotZone.SizePercent = 50
          AlignSplitter = salTop
          Control = pnl1
          ExplicitWidth = 8
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 966
        ExplicitHeight = 720
        inherited pnl4: TPanel
          Width = 966
          ExplicitWidth = 966
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 27
          end
        end
        inherited pnl5: TPanel
          Width = 966
          Height = 663
          ExplicitWidth = 966
          ExplicitHeight = 663
          inherited cxgrdPerfil: TcxGrid
            Width = 964
            Height = 661
            ExplicitWidth = 964
            ExplicitHeight = 661
          end
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 966
      TabOrder = 0
      ExplicitWidth = 966
      inherited pnlTopGrid: TPanel
        Width = 964
        ExplicitWidth = 964
        inherited edtBusqGlobal: TcxTextEdit
          TabOrder = 1
          ExplicitHeight = 27
        end
        inherited nvNavegador: TcxDBNavigator
          TabOrder = 2
        end
        inherited lblTextoaBuscar: TcxLabel
          Top = 7
          ExplicitTop = 7
        end
        inherited rbBBDD: TcxRadioButton
          TabOrder = 0
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 968
    Width = 144
    Height = 792
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 1
    ExplicitLeft = 968
    ExplicitWidth = 144
    ExplicitHeight = 792
    object btnRectificar: TSpeedButton [0]
      Left = 1
      Top = 312
      Width = 140
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Dupl. '#243' Abonar'
      OnClick = btnRectificarClick
    end
    object btnImprimir: TSpeedButton [1]
      Left = 1
      Top = 437
      Width = 140
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Imprimir'
      OnClick = btnImprimirClick
    end
    object sbNuevaFactura: TSpeedButton [2]
      Left = 1
      Top = 270
      Width = 140
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&Nueva Factura'
      OnClick = sbNuevaFacturaClick
    end
    inherited pButtonGen: TPanel
      Top = 593
      Width = 142
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 100
      Constraints.MinWidth = 124
      ExplicitTop = 593
      ExplicitWidth = 142
      inherited btnGrabar: TcxButton
        Width = 140
        OnClick = sbGrabarClick
        ExplicitWidth = 140
      end
      inherited btnCancelar: TcxButton
        Width = 140
        ExplicitWidth = 140
      end
      inherited btnSalir: TcxButton
        Width = 140
        ExplicitWidth = 140
      end
    end
    inherited pButtonBDStat: TPanel
      Width = 142
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Constraints.MinHeight = 46
      Constraints.MinWidth = 124
      ExplicitWidth = 142
      inherited pnTableName: TPanel
        Width = 142
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 142
        inherited lblEditMode: TcxLabel
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited Panel4: TPanel
        Width = 142
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 142
        inherited lblTablaOrigen: TcxLabel
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 640
    Top = 176
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 576
    Top = 728
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 864
    Top = 744
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    DataSet = dmFacturas.unqryTablaG
    Left = 644
    Top = 87
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 856
    Top = 688
  end
  inherited cxstylrpstry: TcxStyleRepository
    Left = 336
    Top = 731
    PixelsPerInch = 96
  end
end
