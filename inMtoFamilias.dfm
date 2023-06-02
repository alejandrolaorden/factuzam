inherited frmMtoFamilias: TfrmMtoFamilias
  Left = 5
  Top = 4
  Caption = 'Familias'
  ClientHeight = 631
  ClientWidth = 896
  FormStyle = fsMDIChild
  ExplicitWidth = 912
  ExplicitHeight = 670
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 756
    Height = 631
    TabOrder = 0
    ExplicitWidth = 725
    ExplicitHeight = 610
    inherited pcPantalla: TcxPageControl
      Width = 754
      Height = 589
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 723
      ExplicitHeight = 568
      ClientRectBottom = 589
      ClientRectRight = 754
      inherited tsLista: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 723
        ExplicitHeight = 538
        inherited cxGrdPrincipal: TcxGrid
          Width = 754
          Height = 559
          ExplicitWidth = 723
          ExplicitHeight = 538
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_FAMILIA: TcxGridDBColumn
              Caption = 'C'#243'digo Familia'
              DataBinding.FieldName = 'CODIGO_FAMILIA'
              Styles.Header = cxstyl
              Width = 140
            end
            object cxgrdbclmnGrdDBTabPrinACTIVO_FAMILIA: TcxGridDBColumn
              Caption = 'Es Familia activa'
              DataBinding.FieldName = 'ACTIVO_FAMILIA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Styles.Header = cxstyl
              Width = 162
            end
            object dbcGrdDBTabPrinESDEFAULT_FAMILIA: TcxGridDBColumn
              Caption = 'Por Defecto'
              DataBinding.FieldName = 'ESDEFAULT_FAMILIA'
              Styles.Header = cxstyl
              Width = 101
            end
            object cxgrdbclmnGrdDBTabPrinNOMBRE_FAMILIA: TcxGridDBColumn
              Caption = 'Nombre Familia'
              DataBinding.FieldName = 'NOMBRE_FAMILIA'
              Styles.Header = cxstyl
              Width = 191
            end
            object dbcGrdDBTabPrinCODIGO_SUBFAMILIA: TcxGridDBColumn
              Caption = 'C'#243'digo Subfamilia'
              DataBinding.FieldName = 'CODIGO_SUBFAMILIA'
              Styles.Header = cxstyl
              Width = 178
            end
            object dbcGrdDBTabPrinNOMBRE_SUBFAMILIA: TcxGridDBColumn
              Caption = 'Nombre Subfamilia'
              DataBinding.FieldName = 'NOMBRE_SUBFAMILIA'
              Styles.Header = cxstyl
              Width = 247
            end
            object cxgrdbclmnGrdDBTabPrinDESCRIPCION_FAMILIA: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'DESCRIPCION_FAMILIA'
              Styles.Header = cxstyl
              Width = 496
            end
            object cxgrdbclmnGrdDBTabPrinORDEN_FAMILIA: TcxGridDBColumn
              Caption = 'Orden en listados'
              DataBinding.FieldName = 'ORDEN_FAMILIA'
              Styles.Header = cxstyl
              Width = 164
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 723
        ExplicitHeight = 538
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 754
          Height = 165
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
            Width = 752
            Height = 163
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 114
            object txtCODIGO_FAMILIA: TcxDBTextEdit
              Left = 101
              Top = 13
              DataBinding.DataField = 'CODIGO_FAMILIA'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 0
              Width = 121
            end
            object lblCodigo: TcxLabel
              Left = 21
              Top = 17
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object lblNombre: TcxLabel
              Left = 18
              Top = 51
              Caption = 'Nombre'
              Transparent = True
            end
            object txtNOMBRE_FAMILIA: TcxDBTextEdit
              Left = 100
              Top = 48
              DataBinding.DataField = 'NOMBRE_FAMILIA'
              DataBinding.DataSource = dsTablaG
              TabOrder = 3
              Width = 322
            end
            object chkActivo: TcxDBCheckBox
              Left = 97
              Top = 78
              Caption = 'Activo'
              DataBinding.DataField = 'ACTIVO_FAMILIA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Transparent = True
            end
            object cbbFamilia: TcxDBLookupComboBox
              Left = 220
              Top = 111
              DataBinding.DataField = 'CODIGO_SUBFAMILIA'
              DataBinding.DataSource = dsTablaG
              Properties.KeyFieldNames = 'CODIGO_FAMILIA'
              Properties.ListColumns = <
                item
                  Sorting = False
                  Width = 100
                  FieldName = 'CODIGO_FAMILIA'
                end
                item
                  Sorting = False
                  FieldName = 'NOMBRE_FAMILIA'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmFamilias.dsSubFamilias
              TabOrder = 5
              Width = 317
            end
            object cxlbllbl1: TcxLabel
              Left = 97
              Top = 112
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Familia Padre'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 213
            end
            object chkDEFAULT_FAMILIA: TcxDBCheckBox
              Left = 249
              Top = 82
              Caption = 'Familia por defecto'
              DataBinding.DataField = 'ESDEFAULT_FAMILIA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.TransparentBorder = False
              TabOrder = 7
              Transparent = True
            end
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 173
          Width = 754
          Height = 386
          Align = alClient
          TabOrder = 1
          ExplicitTop = 121
          ExplicitHeight = 438
          object pcPestana: TcxPageControl
            Left = 1
            Top = 1
            Width = 752
            Height = 384
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsMasDatos
            Properties.CustomButtons.Buttons = <>
            ExplicitHeight = 436
            ClientRectBottom = 384
            ClientRectRight = 752
            ClientRectTop = 30
            object tsMasDatos: TcxTabSheet
              Caption = '&1_M'#225's Datos'
              ImageIndex = 0
              ExplicitWidth = 721
              ExplicitHeight = 385
              object lblDescripcion: TcxLabel
                Left = 33
                Top = 19
                Caption = 'Descipci'#243'n'
                Transparent = True
              end
              object mDESCRIPCION_FAMILIA: TcxDBMemo
                Left = 33
                Top = 45
                DataBinding.DataField = 'DESCRIPCION_FAMILIA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 1
                Height = 89
                Width = 373
              end
            end
            object tsArticulos: TcxTabSheet
              Caption = '&2_Articulos'
              ImageIndex = 2
              ExplicitWidth = 721
              ExplicitHeight = 385
              object cxgrdArticulosFamilias: TcxGrid
                Left = 0
                Top = 0
                Width = 752
                Height = 354
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 721
                ExplicitHeight = 385
                object tvArticulos: TcxGridDBTableView
                  Navigator.Buttons.ConfirmDelete = True
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Visible = True
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataModeController.SmartRefresh = True
                  DataController.DataSource = dmFamilias.dsArticulosFamilias
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
                  object cxgrdbclmnArticulosCODIGO_ARTICULO: TcxGridDBColumn
                    Caption = 'C'#243'digo Art'#237'culo'
                    DataBinding.FieldName = 'CODIGO_ARTICULO'
                    Width = 147
                  end
                  object cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn
                    Caption = 'Descripci'#243'n'
                    DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                    Width = 139
                  end
                  object cxgrdbclmnArticulosCODIGO_PROVEEDOR_PRINCIPAL: TcxGridDBColumn
                    Caption = 'C'#243'digo Proveedor Prin.'
                    DataBinding.FieldName = 'CODIGO_PROVEEDOR_PRINCIPAL'
                    Width = 206
                  end
                  object cxgrdbclmnArticulosRAZON_SOCIAL_PROVEEDOR_PRINCIPAL: TcxGridDBColumn
                    Caption = 'Raz'#243'n Social Proveedor Principal'
                    DataBinding.FieldName = 'RAZON_SOCIAL_PROVEEDOR_PRINCIPAL'
                    Width = 277
                  end
                  object cxgrdbclmnArticulosNOMBRE_TARIFA: TcxGridDBColumn
                    Caption = 'Tarifa'
                    DataBinding.FieldName = 'NOMBRE_TARIFA'
                    Width = 78
                  end
                  object cxgrdbclmnArticulosPRECIOFINAL_TARIFA: TcxGridDBColumn
                    Caption = 'Precio Salida'
                    DataBinding.FieldName = 'PRECIOFINAL_TARIFA'
                    Width = 127
                  end
                  object cxgrdbclmnArticulosESIMP_INCL_TARIFA: TcxGridDBColumn
                    Caption = 'Tarifa Imp Incl'
                    DataBinding.FieldName = 'ESIMP_INCL_TARIFA'
                    Width = 146
                  end
                  object cxgrdbclmnArticulosNOMBRE_TIPO_IVA: TcxGridDBColumn
                    Caption = 'Tipo de IVA'
                    DataBinding.FieldName = 'NOMBRE_TIPO_IVA'
                    Width = 114
                  end
                  object cxgrdbclmnArticulosTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn
                    Caption = 'Tipo Cantidad'
                    DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO'
                    Width = 131
                  end
                  object cxgrdbclmnArticulosESACTIVO_FIJO_ARTICULO: TcxGridDBColumn
                    Caption = 'Activo Fijo'
                    DataBinding.FieldName = 'ESACTIVO_FIJO_ARTICULO'
                    Width = 102
                  end
                end
                object tvLineasFacturacion: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = dmClientes.dsFacturasLineasClientes
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
                object cxgrdlvlArticulosFamilias: TcxGridLevel
                  GridView = tvArticulos
                end
              end
            end
            object tsOtros: TcxTabSheet
              Caption = '&3_Otros'
              ImageIndex = 3
              ExplicitWidth = 721
              ExplicitHeight = 385
              object pnl3: TPanel
                Left = 0
                Top = 275
                Width = 752
                Height = 79
                Align = alBottom
                TabOrder = 0
                ExplicitTop = 306
                ExplicitWidth = 721
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
                  Left = 160
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Alta'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA: TcxDBTextEdit
                  Left = 160
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 3
                  Width = 195
                end
                object cxdbtxtdtINSTANTEALTA: TcxDBTextEdit
                  Left = 514
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEMODIF'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 7
                  Width = 201
                end
                object lblInstanteModif: TcxLabel
                  Left = 514
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Modif.'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit
                  Left = 364
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
                  Left = 364
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Usuario '#218'lt. Modif'
                  Transparent = True
                end
              end
              object lblOrden: TcxLabel
                Left = 20
                Top = 24
                Caption = 'Orden en Listados'
                Transparent = True
              end
              object cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit
                Left = 179
                Top = 23
                DataBinding.DataField = 'ORDEN_FAMILIA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Width = 106
              end
            end
          end
        end
        object cxspltr1: TcxSplitter
          Left = 0
          Top = 165
          Width = 754
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl1
          ExplicitTop = 113
          ExplicitWidth = 723
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 723
        ExplicitHeight = 538
        inherited pnl4: TPanel
          Width = 754
          ExplicitWidth = 723
        end
        inherited pnl5: TPanel
          Width = 754
          Height = 502
          ExplicitWidth = 723
          ExplicitHeight = 481
          inherited cxgrdPerfil: TcxGrid
            Width = 752
            Height = 500
            ExplicitWidth = 721
            ExplicitHeight = 479
          end
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 754
      TabOrder = 0
      ExplicitWidth = 723
      inherited pnlTopGrid: TPanel
        Width = 752
        ExplicitWidth = 721
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 756
    Height = 631
    TabOrder = 1
    ExplicitLeft = 725
    ExplicitHeight = 610
    inherited pButtonGen: TPanel
      Top = 432
      ExplicitTop = 411
      inherited btnGrabar: TcxButton
        Font.Pitch = fpDefault
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
    end
    object btnNuevaFamilia: TcxButton
      Left = 1
      Top = 157
      Width = 138
      Height = 25
      Caption = '&Nueva Familia'
      TabOrder = 2
      OnClick = btnNuevaFamiliaClick
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 160
    Top = 288
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 168
    Top = 320
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 320
    Top = 328
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    DataSet = dmFamilias.unqryTablaG
    Left = 428
    Top = 287
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 248
    Top = 320
  end
  inherited cxstylrpstry: TcxStyleRepository
    PixelsPerInch = 96
  end
  object ActionManager1: TActionManager
    Left = 216
    Top = 408
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16466
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16464
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16468
      OnExecute = Action3Execute
    end
  end
end
