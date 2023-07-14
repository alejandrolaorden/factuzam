inherited frmMtoTarifas: TfrmMtoTarifas
  Left = 5
  Top = 4
  Caption = 'Tarifas'
  ClientHeight = 653
  ClientWidth = 871
  FormStyle = fsMDIChild
  ExplicitWidth = 887
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 731
    Height = 653
    TabOrder = 0
    ExplicitWidth = 731
    ExplicitHeight = 653
    inherited pcPantalla: TcxPageControl
      Width = 729
      Height = 611
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 729
      ExplicitHeight = 611
      ClientRectBottom = 611
      ClientRectRight = 729
      inherited tsLista: TcxTabSheet
        ExplicitTop = 32
        ExplicitWidth = 729
        ExplicitHeight = 579
        inherited cxGrdPrincipal: TcxGrid
          Width = 729
          Height = 579
          ExplicitWidth = 729
          ExplicitHeight = 579
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_TARIFA: TcxGridDBColumn
              Caption = 'C'#243'digo Tarifa'
              DataBinding.FieldName = 'CODIGO_TARIFA'
              Width = 141
            end
            object cxgrdbclmnGrdDBTabPrinNOMBRE_TARIFA: TcxGridDBColumn
              Caption = 'Nombre Tarifa'
              DataBinding.FieldName = 'NOMBRE_TARIFA'
              Width = 188
            end
            object cxgrdbclmnGrdDBTabPrinACTIVO_TARIFA: TcxGridDBColumn
              Caption = 'Activa'
              DataBinding.FieldName = 'ACTIVO_TARIFA'
              Width = 75
            end
            object cxgrdbclmnGrdDBTabPrinFECHA_DESDE_TARIFA: TcxGridDBColumn
              Caption = 'Fecha Validez Desde'
              DataBinding.FieldName = 'FECHA_DESDE_TARIFA'
              Width = 176
            end
            object cxgrdbclmnGrdDBTabPrinFECHA_HASTA_TARIFA: TcxGridDBColumn
              Caption = 'Fecha Validez Hasta'
              DataBinding.FieldName = 'FECHA_HASTA_TARIFA'
              Width = 167
            end
            object cxgrdbclmnGrdDBTabPrinESIMP_INCL_TARIFA: TcxGridDBColumn
              Caption = 'Impuestos incl.'
              DataBinding.FieldName = 'ESIMP_INCL_TARIFA'
              Width = 129
            end
            object cxgrdbclmnGrdDBTabPrinESDEFAULT_TARIFA: TcxGridDBColumn
              Caption = 'Tarifa por defecto'
              DataBinding.FieldName = 'ESDEFAULT_TARIFA'
              Width = 144
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEMODIF'
              Visible = False
              VisibleForCustomization = False
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEALTA'
              Visible = False
              VisibleForCustomization = False
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOALTA'
              Visible = False
              VisibleForCustomization = False
              Width = 109
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOMODIF'
              Visible = False
              VisibleForCustomization = False
              Width = 119
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        ExplicitTop = 32
        ExplicitWidth = 729
        ExplicitHeight = 579
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 729
          Height = 113
          Align = alTop
          TabOrder = 0
          object cxdbtxtdt1: TcxDBTextEdit
            Left = 104
            Top = 33
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsTablaG
            Enabled = False
            TabOrder = 1
            Width = 121
          end
          object cxdbtxtdt2: TcxDBTextEdit
            Left = 104
            Top = 61
            DataBinding.DataField = 'DESCRIPCION'
            DataBinding.DataSource = dsTablaG
            TabOrder = 2
            Width = 241
          end
          object cxdbtxtdt15: TcxDBTextEdit
            Left = 856
            Top = 89
            DataBinding.DataField = 'modificado'
            DataBinding.DataSource = dsTablaG
            TabOrder = 3
            Width = 57
          end
          object Panel1: TPanel
            Left = 1
            Top = 1
            Width = 727
            Height = 111
            Align = alClient
            TabOrder = 0
            object txtCODIGO_FAMILIA: TcxDBTextEdit
              Left = 101
              Top = 9
              DataBinding.DataField = 'CODIGO_TARIFA'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 0
              Width = 121
            end
            object lblCodigo: TcxLabel
              Left = 29
              Top = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object lblNombre: TcxLabel
              Left = 22
              Top = 49
              Caption = 'Nombre'
              Transparent = True
            end
            object txtNOMBRE_FAMILIA: TcxDBTextEdit
              Left = 100
              Top = 46
              DataBinding.DataField = 'NOMBRE_TARIFA'
              DataBinding.DataSource = dsTablaG
              TabOrder = 3
              Width = 322
            end
            object chkActivo: TcxDBCheckBox
              Left = 79
              Top = 78
              Caption = 'Activo'
              DataBinding.DataField = 'ACTIVO_TARIFA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Transparent = True
            end
            object cxdbchckbxACTIVO_TARIFA: TcxDBCheckBox
              Left = 237
              Top = 11
              Caption = 'Impuestos inclu'#237'dos en el precio'
              DataBinding.DataField = 'ESIMP_INCL_TARIFA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.TransparentBorder = False
              TabOrder = 5
              Transparent = True
            end
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 121
          Width = 729
          Height = 460
          Align = alClient
          TabOrder = 1
          ExplicitHeight = 458
          object pcPestana: TcxPageControl
            Left = 1
            Top = 1
            Width = 727
            Height = 458
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsArticulos
            Properties.CustomButtons.Buttons = <>
            ExplicitHeight = 456
            ClientRectBottom = 458
            ClientRectRight = 727
            ClientRectTop = 30
            object tsArticulos: TcxTabSheet
              Caption = '&1_Art'#237'culos'
              ImageIndex = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object pnl6: TPanel
                Left = 600
                Top = 0
                Width = 127
                Height = 424
                Align = alRight
                TabOrder = 0
                object btnIraArticulo: TcxButton
                  Left = 3
                  Top = 13
                  Width = 120
                  Height = 25
                  Caption = 'Ir a Art'#237'culo'
                  TabOrder = 0
                  OnClick = btnIraArticuloClick
                end
                object btAddBlock: TcxButton
                  Left = 3
                  Top = 53
                  Width = 120
                  Height = 25
                  Caption = 'A'#241'adir Bloque'
                  TabOrder = 1
                  OnClick = btAddBlockClick
                end
              end
              object cxspltr1: TcxSplitter
                Left = 592
                Top = 0
                Width = 8
                Height = 424
                HotZoneClassName = 'TcxMediaPlayer9Style'
                Control = pnl6
              end
              object pnlArticulos: TPanel
                Left = 0
                Top = 0
                Width = 592
                Height = 424
                Align = alClient
                TabOrder = 2
                object cxgrdArticulosTarifas: TcxGrid
                  Left = 9
                  Top = 1
                  Width = 582
                  Height = 422
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  object tvArticulos: TcxGridDBTableView
                    Navigator.Buttons.ConfirmDelete = True
                    Navigator.Buttons.CustomButtons = <>
                    Navigator.Visible = True
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataModeController.SmartRefresh = True
                    DataController.Summary.DefaultGroupSummaryItems = <
                      item
                        Kind = skSum
                      end
                      item
                        Kind = skSum
                      end
                      item
                        Kind = skSum
                      end
                      item
                        Kind = skSum
                      end>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.GoToNextCellOnEnter = True
                    OptionsCustomize.ColumnGrouping = False
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.InvertSelect = False
                    OptionsView.NoDataToDisplayInfoText = '<No hay datos a mostrar>'
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.GroupFooters = gfAlwaysVisible
                    object cxgrdbclmnArticulosACTIVO_TARIFA: TcxGridDBColumn
                      Caption = 'Precio Activo'
                      DataBinding.FieldName = 'ACTIVO_TARIFA'
                      Width = 126
                    end
                    object cxgrdbclmnArticulosCODIGO_ARTICULO_TARIFA: TcxGridDBColumn
                      Caption = 'C'#243'digo Art'#237'culo'
                      DataBinding.FieldName = 'CODIGO_ARTICULO_TARIFA'
                      Width = 138
                    end
                    object cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn
                      Caption = 'Descripci'#243'n Art'#237'culo'
                      DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                      Width = 96
                    end
                    object cxgrdbclmnArticulosCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn
                      Caption = 'C'#243'digo Familia'
                      DataBinding.FieldName = 'CODIGO_FAMILIA_ARTICULO'
                      Width = 122
                    end
                    object cxgrdbclmnArticulosDESCRIPCION_FAMILIA: TcxGridDBColumn
                      Caption = 'Descripci'#243'n Familia'
                      DataBinding.FieldName = 'DESCRIPCION_FAMILIA'
                      Width = 265
                    end
                    object cxgrdbclmnArticulosCODIGO_PROVEEDOR: TcxGridDBColumn
                      Caption = 'C'#243'digo Proveedor'
                      DataBinding.FieldName = 'CODIGO_PROVEEDOR'
                      Width = 125
                    end
                    object cxgrdbclmnArticulosRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn
                      Caption = 'Nombre Proveedor'
                      DataBinding.FieldName = 'RAZONSOCIAL_PROVEEDOR'
                      Width = 208
                    end
                    object cxgrdbclmnArticulosTIPOIVA_ARTICULO: TcxGridDBColumn
                      Caption = 'Tipo de IVA'
                      DataBinding.FieldName = 'TIPOIVA_ARTICULO'
                      Width = 152
                    end
                    object cxgrdbclmnArticulosFECHA_DESDE_TARIFA: TcxGridDBColumn
                      Caption = 'Precio desde Fecha'
                      DataBinding.FieldName = 'FECHA_DESDE_TARIFA'
                    end
                    object cxgrdbclmnArticulosFECHA_HASTA_TARIFA: TcxGridDBColumn
                      Caption = 'Precio Hasta Fecha'
                      DataBinding.FieldName = 'FECHA_HASTA_TARIFA'
                    end
                    object cxgrdbclmnArticulosTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn
                      Caption = 'Tipo Cantidad'
                      DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO'
                      Width = 129
                    end
                    object cxgrdbclmnArticulosPRECIO_ULT_COMPRA: TcxGridDBColumn
                      Caption = 'Precio '#218'ltima Compra'
                      DataBinding.FieldName = 'PRECIO_ULT_COMPRA'
                      Width = 190
                    end
                    object cxgrdbclmnArticulosFECHA_VALIDEZ: TcxGridDBColumn
                      Caption = 'Fecha '#218'ltima Compra'
                      DataBinding.FieldName = 'FECHA_VALIDEZ'
                    end
                    object cxgrdbclmnArticulosPRECIOFINAL: TcxGridDBColumn
                      Caption = 'Precio Salida'
                      DataBinding.FieldName = 'PRECIOFINAL'
                    end
                    object cxgrdbclmnArticulosINSTANTEALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEALTA'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosINSTANTEMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEMODIF'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosUSUARIOALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOALTA'
                      Visible = False
                      VisibleForCustomization = False
                      Width = 109
                    end
                    object cxgrdbclmnArticulosUSUARIOMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOMODIF'
                      Visible = False
                      VisibleForCustomization = False
                      Width = 131
                    end
                  end
                  object tvLineasFacturacion: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DetailKeyFieldNames = 'NRO_FACTURA_LINEA; SERIE_FACTURA_LINEA'
                    DataController.KeyFieldNames = 'LINEA_FACTURA_LINEA'
                    DataController.MasterKeyFieldNames = 'NRO_FACTURA; SERIE_FACTURA'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.ColumnHeaderHints = False
                    OptionsCustomize.ColumnFiltering = False
                    OptionsCustomize.ColumnGrouping = False
                    OptionsCustomize.ColumnMoving = False
                    OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.GroupByBox = False
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1LINEA_LINEA: TcxGridDBColumn
                      DataBinding.FieldName = 'LINEA_FACTURA_LINEA'
                      Width = 28
                    end
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CODIGO_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'C'#243'digo Tratamiento'
                      DataBinding.FieldName = 'CODIGO_ARTICULO_FACTURA_LINEA'
                      Width = 164
                    end
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'Descripci'#243'n Tratamiento'
                      DataBinding.FieldName = 'DESCRIPCION_ARTICULO_FACTURA_LINEA'
                      Width = 162
                    end
                    object cxgrdbclmnLineasFacturacionTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA'
                    end
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CANTIDAD_LINEA: TcxGridDBColumn
                      Caption = 'Cantidad'
                      DataBinding.FieldName = 'CANTIDAD_FACTURA_LINEA'
                      Width = 84
                    end
                    object cxgrdbclmnLineasFacturacionPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      DataBinding.FieldName = 'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA'
                    end
                    object cxgrdbclmnLineasFacturacionPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Porcentaje IVA'
                      DataBinding.FieldName = 'PORCEN_IVA_FACTURA_LINEA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.EditFormat = '0.00 %'
                    end
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'Precio'
                      DataBinding.FieldName = 'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Width = 84
                    end
                    object cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1SUM_TOTAL_LINEA: TcxGridDBColumn
                      Caption = 'Total'
                      DataBinding.FieldName = 'TOTAL_FACTURA_LINEA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Width = 84
                    end
                    object cxgrdbclmnLineasFacturacionFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Fecha de Entrega'
                      DataBinding.FieldName = 'FECHA_ENTREGA_FACTURA_LINEA'
                      PropertiesClassName = 'TcxDateEditProperties'
                    end
                    object cxgrdbclmnLineasFacturacionTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      DataBinding.FieldName = 'TIPOIVA_ARTICULO_FACTURA_LINEA'
                    end
                  end
                  object cxgrdlvlArticulosTarifas: TcxGridLevel
                    GridView = tvArticulos
                  end
                end
                object cxspltr2: TcxSplitter
                  Left = 1
                  Top = 1
                  Width = 8
                  Height = 422
                end
              end
            end
            object tsOtros: TcxTabSheet
              Caption = '&2_Otros'
              ImageIndex = 3
              ExplicitTop = 32
              ExplicitHeight = 424
              object pnl3: TPanel
                Left = 0
                Top = 349
                Width = 727
                Height = 79
                Align = alBottom
                TabOrder = 0
                ExplicitTop = 345
                object cxdbtxtdtDIRECCION1_CLIENTE: TcxDBTextEdit
                  Left = 17
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'USUARIOALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 2
                  Width = 136
                end
                object lblUsuarioAlta: TcxLabel
                  Left = 17
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Usuario Alta'
                  Transparent = True
                end
                object lblInstanteAlta: TcxLabel
                  Left = 177
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Alta'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA: TcxDBTextEdit
                  Left = 177
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 3
                  Width = 185
                end
                object cxdbtxtdtINSTANTEALTA: TcxDBTextEdit
                  Left = 525
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEMODIF'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 7
                  Width = 196
                end
                object lblInstanteModif: TcxLabel
                  Left = 525
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Modificaci'#243'n'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit
                  Left = 373
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'USUARIOALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 4
                  Width = 136
                end
                object lblUsuarioModif: TcxLabel
                  Left = 373
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Us. '#218'lt. Modif.'
                  Transparent = True
                end
              end
              object cxdbdtdtFECHA_FACTURA: TcxDBDateEdit
                Left = 215
                Top = 71
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'FECHA_DESDE_TARIFA'
                DataBinding.DataSource = dsTablaG
                Properties.DateButtons = [btnClear, btnToday]
                TabOrder = 1
                Width = 143
              end
              object cxlbllblcxlbl3: TcxLabel
                Left = 33
                Top = 72
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Fecha Validez Desde'
              end
              object cxdbdtdtFECHA_FACTURA1: TcxDBDateEdit
                Left = 215
                Top = 108
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'FECHA_HASTA_TARIFA'
                DataBinding.DataSource = dsTablaG
                Properties.DateButtons = [btnClear, btnToday]
                TabOrder = 3
                Width = 143
              end
              object cxlbllblcxlbl31: TcxLabel
                Left = 38
                Top = 109
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Fecha Validez Hasta'
              end
            end
          end
        end
        object cxspltr3: TcxSplitter
          Left = 0
          Top = 113
          Width = 729
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
          ExplicitWidth = 8
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 729
        ExplicitHeight = 581
        inherited pnlPerfilTop: TPanel
          Width = 729
          ExplicitWidth = 729
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 21
          end
        end
        inherited pnlPerfilDetail: TPanel
          Width = 729
          Height = 524
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 729
      TabOrder = 0
      ExplicitWidth = 729
      inherited pnlTopGrid: TPanel
        Width = 727
        ExplicitWidth = 727
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 29
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 731
    Height = 653
    TabOrder = 1
    ExplicitLeft = 731
    ExplicitHeight = 653
    inherited pButtonGen: TPanel
      Top = 454
      ExplicitTop = 454
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 64
    Top = 576
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 0
    Top = 568
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 184
    Top = 568
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    Left = 348
    Top = 495
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 120
    Top = 576
  end
  inherited cxstylrpstry: TcxStyleRepository
    Left = 440
    Top = 499
    PixelsPerInch = 96
  end
  object actmgr1: TActionManager
    Left = 440
    Top = 312
    StyleName = 'Platform Default'
    object act1: TAction
      Caption = 'act1'
      ShortCut = 16466
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = 'act2'
      ShortCut = 16462
      OnExecute = act2Execute
    end
    object act3: TAction
      Caption = 'act3'
      ShortCut = 16464
      OnExecute = act3Execute
    end
  end
end
