inherited frmMtoEmpresas: TfrmMtoEmpresas
  Left = 5
  Top = 4
  Caption = 'Empresas'
  ClientHeight = 602
  ClientWidth = 932
  FormStyle = fsMDIChild
  ExplicitWidth = 948
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 792
    Height = 602
    TabOrder = 0
    ExplicitWidth = 690
    ExplicitHeight = 602
    inherited pcPantalla: TcxPageControl
      Width = 790
      Height = 560
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 688
      ExplicitHeight = 560
      ClientRectBottom = 560
      ClientRectRight = 790
      inherited tsLista: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 688
        ExplicitHeight = 530
        inherited cxGrdPrincipal: TcxGrid
          Width = 790
          Height = 530
          ExplicitWidth = 688
          ExplicitHeight = 530
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_EMPRESA: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO_EMPRESA'
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinORDEN_EMPRESA: TcxGridDBColumn
              Caption = 'Orden'
              DataBinding.FieldName = 'ORDEN_EMPRESA'
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinACTIVA_EMPRESA: TcxGridDBColumn
              Caption = 'Activo'
              DataBinding.FieldName = 'ACTIVO_EMPRESA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Styles.Header = cxstyl
              Width = 52
            end
            object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA: TcxGridDBColumn
              Caption = 'Raz'#243'n Social'
              DataBinding.FieldName = 'RAZONSOCIAL_EMPRESA'
              Styles.Header = cxstyl
              Width = 186
            end
            object cxgrdbclmnGrdDBTabPrinNIF_EMPRESA: TcxGridDBColumn
              Caption = 'Nif'
              DataBinding.FieldName = 'NIF_EMPRESA'
              Styles.Header = cxstyl
              Width = 91
            end
            object cxgrdbclmnGrdDBTabPrinMOVIL_EMPRESA: TcxGridDBColumn
              Caption = 'M'#243'vil'
              DataBinding.FieldName = 'MOVIL_EMPRESA'
              Styles.Header = cxstyl
              Width = 115
            end
            object cxgrdbclmnGrdDBTabPrinEMAIL_EMPRESA: TcxGridDBColumn
              Caption = 'Email'
              DataBinding.FieldName = 'EMAIL_EMPRESA'
              Styles.Header = cxstyl
              Width = 189
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION1_EMPRESA: TcxGridDBColumn
              Caption = 'Direci'#243'n'
              DataBinding.FieldName = 'DIRECCION1_EMPRESA'
              Styles.Header = cxstyl
              Width = 146
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION2_EMPRESA: TcxGridDBColumn
              Caption = 'M'#225's Direcci'#243'n'
              DataBinding.FieldName = 'DIRECCION2_EMPRESA'
              Styles.Header = cxstyl
              Width = 138
            end
            object cxgrdbclmnGrdDBTabPrinPOBLACION_EMPRESA: TcxGridDBColumn
              Caption = 'Poblaci'#243'n'
              DataBinding.FieldName = 'POBLACION_EMPRESA'
              Styles.Header = cxstyl
              Width = 132
            end
            object cxgrdbclmnGrdDBTabPrinPROVINCIA_EMPRESA: TcxGridDBColumn
              Caption = 'Provincia'
              DataBinding.FieldName = 'PROVINCIA_EMPRESA'
              Styles.Header = cxstyl
              Width = 113
            end
            object cxgrdbclmnGrdDBTabPrinCPOSTAL_EMPRESA: TcxGridDBColumn
              Caption = 'C'#243'digo Postal'
              DataBinding.FieldName = 'CPOSTAL_EMPRESA'
              Styles.Header = cxstyl
            end
            object cxGrdDBTabPrinDESCRIPCION_ZONA_IVA: TcxGridDBColumn
              Caption = 'Zona de IVA principal'
              DataBinding.FieldName = 'DESCRIPCION_ZONA_IVA'
              Styles.Header = cxstyl
              Width = 302
            end
            object cxgrdbclmnGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA: TcxGridDBColumn
              Caption = 'Es REAGP'
              DataBinding.FieldName = 'ESREGIMENESPECIALAGRICOLA_EMPRESA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Styles.Header = cxstyl
              Width = 75
            end
            object cxgrdbclmnGrdDBTabPrinESRETENCIONES_EMPRESA: TcxGridDBColumn
              Caption = 'Aplica Retenciones'
              DataBinding.FieldName = 'ESRETENCIONES_EMPRESA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Styles.Header = cxstyl
              Width = 115
            end
            object cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_EMPRESA: TcxGridDBColumn
              Caption = 'Texto en Factura'
              DataBinding.FieldName = 'TEXTO_LEGAL_FACTURA_EMPRESA'
              Styles.Header = cxstyl
              Width = 366
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEMODIF'
              Visible = False
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEALTA'
              Visible = False
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOALTA'
              Visible = False
              Styles.Header = cxstyl
              Width = 88
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOMODIF'
              Visible = False
              Styles.Header = cxstyl
              Width = 96
            end
            object cxGrdDBTabPrinSERIE_CONTADOR_EMPRESA: TcxGridDBColumn
              Caption = 'Serie por Defecto en Facturas'
              DataBinding.FieldName = 'SERIE_CONTADOR_EMPRESA'
              Styles.Header = cxstyl
              Width = 280
            end
            object cxGrdDBTabPrinPAIS_EMPRESA: TcxGridDBColumn
              DataBinding.FieldName = 'PAIS_EMPRESA'
              Visible = False
              Styles.Header = cxstyl
            end
            object cxGrdDBTabPrinGRUPO_ZONA_IVA_EMPRESA: TcxGridDBColumn
              DataBinding.FieldName = 'GRUPO_ZONA_IVA_EMPRESA'
              Visible = False
              Styles.Header = cxstyl
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        OnEnter = tsFichaEnter
        ExplicitTop = 30
        ExplicitWidth = 688
        ExplicitHeight = 530
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 790
          Height = 145
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 688
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
            Width = 788
            Height = 145
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 686
            object txtCODIGO_EMPRESA: TcxDBTextEdit
              Left = 103
              Top = 9
              DataBinding.DataField = 'CODIGO_EMPRESA'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 1
              Width = 126
            end
            object lblCodigo: TcxLabel
              Left = 25
              Top = 11
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object lblNombre: TcxLabel
              Left = 20
              Top = 49
              Caption = 'Nombre'
              Transparent = True
            end
            object txtRAZONSOCIAL_EMPRESA: TcxDBTextEdit
              Left = 102
              Top = 45
              DataBinding.DataField = 'RAZONSOCIAL_EMPRESA'
              DataBinding.DataSource = dsTablaG
              TabOrder = 4
              Width = 327
            end
            object txtNIF_EMPRESA: TcxDBTextEdit
              Left = 299
              Top = 10
              DataBinding.DataField = 'NIF_EMPRESA'
              DataBinding.DataSource = dsTablaG
              TabOrder = 0
              Width = 130
            end
            object lblNif: TcxLabel
              Left = 252
              Top = 11
              Caption = 'Nif'
              Transparent = True
            end
            object chkAplicaRetenciones: TcxDBCheckBox
              Left = 20
              Top = 106
              Caption = 'Es Aut'#243'nomo'
              DataBinding.DataField = 'ESRETENCIONES_EMPRESA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Properties.OnChange = chkAplicaRetencionesPropertiesChange
              TabOrder = 7
              Transparent = True
            end
            object chkActivo: TcxDBCheckBox
              Left = 20
              Top = 79
              Caption = 'Activo'
              DataBinding.DataField = 'ACTIVO_EMPRESA'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 6
              Transparent = True
            end
            object lbl1: TcxLabel
              Left = 180
              Top = 76
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Canal de IVA'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 289
            end
            object cbbZONAIVA: TcxDBLookupComboBox
              Left = 179
              Top = 101
              DataBinding.DataField = 'GRUPO_ZONA_IVA_EMPRESA'
              DataBinding.DataSource = dsTablaG
              Properties.KeyFieldNames = 'GRUPO_ZONA_IVA'
              Properties.ListColumns = <
                item
                  Fixed = True
                  FieldName = 'DESCRIPCION_ZONA_IVA'
                end>
              Properties.ListOptions.ShowHeader = False
              TabOrder = 9
              Width = 250
            end
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 153
          Width = 790
          Height = 377
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 688
          object pcPestana: TcxPageControl
            Left = 1
            Top = 1
            Width = 788
            Height = 375
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsHistoriaFacturacion
            Properties.CustomButtons.Buttons = <>
            ExplicitWidth = 686
            ClientRectBottom = 375
            ClientRectRight = 788
            ClientRectTop = 30
            object tsMasDatos: TcxTabSheet
              Caption = '&1_M'#225's Datos'
              ImageIndex = 0
              ExplicitWidth = 686
              object txtMOVIL_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 15
                DataBinding.DataField = 'MOVIL_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 322
              end
              object lblMovil: TcxLabel
                Left = 50
                Top = 19
                Caption = 'M'#243'vil'
                Transparent = True
              end
              object lblEmail: TcxLabel
                Left = 50
                Top = 50
                Caption = 'Email'
                Transparent = True
              end
              object txtEMAIL_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 53
                DataBinding.DataField = 'EMAIL_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Width = 322
              end
              object lblDireccion: TcxLabel
                Left = 16
                Top = 88
                Caption = 'Direcci'#243'n'
                Transparent = True
              end
              object txtDIRECCION1_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 90
                DataBinding.DataField = 'DIRECCION1_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 322
              end
              object txtDIRECCION2_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 128
                DataBinding.DataField = 'DIRECCION2_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                Width = 322
              end
              object txtPOBLACION_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 166
                DataBinding.DataField = 'POBLACION_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 7
                Width = 322
              end
              object lblPoblacion: TcxLabel
                Left = 14
                Top = 171
                Caption = 'Poblaci'#243'n'
                Transparent = True
              end
              object txtPROVINCIA_EMPRESA: TcxDBTextEdit
                Left = 105
                Top = 203
                DataBinding.DataField = 'PROVINCIA_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 9
                Width = 322
              end
              object lblProvincia: TcxLabel
                Left = 20
                Top = 210
                Caption = 'Provincia'
                Transparent = True
              end
              object chkRegimenEspecial: TcxDBCheckBox
                Left = 68
                Top = 241
                Caption = 'R'#233'gimen especial agricola/ganadero/pesca'
                DataBinding.DataField = 'ESREGIMENESPECIALAGRICOLA_EMPRESA'
                DataBinding.DataSource = dsTablaG
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Properties.OnChange = chkAplicaRetencionesPropertiesChange
                TabOrder = 11
                Transparent = True
              end
            end
            object tsRetenciones: TcxTabSheet
              Caption = '&2_Retenciones'
              ImageIndex = 2
              ExplicitWidth = 686
              object pnl6: TPanel
                Left = 678
                Top = 0
                Width = 110
                Height = 345
                Align = alRight
                TabOrder = 0
                ExplicitLeft = 576
                object btnAddIRPF: TcxButton
                  Left = 0
                  Top = 13
                  Width = 105
                  Height = 25
                  Caption = '&A'#241'adir IRPF'
                  TabOrder = 0
                  OnClick = btnAddIRPFClick
                end
              end
              object pnl61: TPanel
                Left = 0
                Top = 0
                Width = 678
                Height = 345
                Align = alClient
                TabOrder = 1
                ExplicitWidth = 594
                object cxgrdRetenciones: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 676
                  Height = 343
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 592
                  object tvRetenciones: TcxGridDBTableView
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
                    object cxgrdbclmntv1CODIGO_RETENCION: TcxGridDBColumn
                      Caption = 'C'#243'digo Retenci'#243'n'
                      DataBinding.FieldName = 'CODIGO_RETENCION'
                      Width = 163
                    end
                    object cxgrdbclmntv1CODIGO_EMPRESA_RETENCION: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_EMPRESA_RETENCION'
                      Visible = False
                      Width = 122
                    end
                    object tvRetencionesPORCENRETENCION_RETENCION: TcxGridDBColumn
                      Caption = '% Retenci'#243'n'
                      DataBinding.FieldName = 'PORCENRETENCION_RETENCION'
                    end
                    object cxgrdbclmntv1FECHA_DESDE_RETENCION: TcxGridDBColumn
                      Caption = 'Fecha Aplicaci'#243'n desde'
                      DataBinding.FieldName = 'FECHA_DESDE_RETENCION'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Width = 151
                    end
                    object cxgrdbclmntv1FECHA_HASTA_RETENCION: TcxGridDBColumn
                      Caption = 'Fecha Aplicaci'#243'n hasta'
                      DataBinding.FieldName = 'FECHA_HASTA_RETENCION'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Width = 150
                    end
                    object cxgrdbclmntv1INSTANTEMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEMODIF'
                      Visible = False
                    end
                    object cxgrdbclmntv1INSTANTEALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEALTA'
                      Visible = False
                    end
                    object cxgrdbclmntv1USUARIOALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOALTA'
                      Visible = False
                    end
                    object cxgrdbclmntv1USUARIOMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOMODIF'
                      Visible = False
                    end
                  end
                  object cxgrdlvlRetenciones: TcxGridLevel
                    GridView = tvRetenciones
                  end
                end
              end
            end
            object tsHistoriaFacturacion: TcxTabSheet
              Caption = '&3_Hist'#243'rico Facturas'
              ImageIndex = 3
              ExplicitWidth = 686
              object pnlFactura: TPanel
                Left = 0
                Top = 0
                Width = 788
                Height = 345
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 686
                object cxgrdEmpresasFacturas: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 669
                  Height = 343
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 567
                  object tvFacturacion: TcxGridDBTableView
                    Navigator.Buttons.ConfirmDelete = True
                    Navigator.Buttons.CustomButtons = <>
                    Navigator.Visible = True
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataModeController.SmartRefresh = True
                    DataController.Summary.DefaultGroupSummaryItems = <
                      item
                        Kind = skSum
                        Column = tvFacturacionTOTAL_LIQUIDO_FACTURA
                      end
                      item
                        Format = '0,00 '#8364';-0,00 '#8364
                        Position = spFooter
                        Column = tvFacturacionTOTAL_LIQUIDO_FACTURA
                      end>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                        Column = tvFacturacionTOTAL_LIQUIDO_FACTURA
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                        Column = tvFacturacionTOTAL_BASES_FACTURA
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                        Column = tvFacturacionTOTAL_RETENCION_FACTURA
                      end
                      item
                        Format = '0.00 '#8364';-0.00 '#8364
                        Kind = skSum
                        Column = tvFacturacionTOTAL_IMPUESTOS_FACTURA
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
                    object tvFacturacionFECHA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'FECHA_FACTURA'
                    end
                    object tvFacturacionNRO_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'NRO_FACTURA'
                    end
                    object tvFacturacionSERIE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'SERIE_FACTURA'
                    end
                    object tvFacturacionTOTAL_BASES_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_BASES_FACTURA'
                    end
                    object tvFacturacionPORCEN_RETENCION_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_RETENCION_FACTURA'
                    end
                    object tvFacturacionTOTAL_RETENCION_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_RETENCION_FACTURA'
                    end
                    object tvFacturacionTOTAL_IMPUESTOS_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_IMPUESTOS_FACTURA'
                    end
                    object tvFacturacionTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_LIQUIDO_FACTURA'
                    end
                    object tvFacturacionFORMA_PAGO_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'FORMA_PAGO_FACTURA'
                    end
                    object tvFacturacionCODIGO_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_CLIENTE_FACTURA'
                    end
                    object tvFacturacionRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'RAZONSOCIAL_CLIENTE_FACTURA'
                    end
                    object tvFacturacionNIF_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'NIF_CLIENTE_FACTURA'
                    end
                    object tvFacturacionMOVIL_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'MOVIL_CLIENTE_FACTURA'
                    end
                    object tvFacturacionEMAIL_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'EMAIL_CLIENTE_FACTURA'
                    end
                    object tvFacturacionDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'DIRECCION1_CLIENTE_FACTURA'
                    end
                    object tvFacturacionDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'DIRECCION2_CLIENTE_FACTURA'
                    end
                    object tvFacturacionPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'POBLACION_CLIENTE_FACTURA'
                    end
                    object tvFacturacionPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PROVINCIA_CLIENTE_FACTURA'
                    end
                    object tvFacturacionCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'CPOSTAL_CLIENTE_FACTURA'
                    end
                    object tvFacturacionPAIS_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PAIS_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESIVA_RECARGO_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESIVA_EXENTO_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESIVA_EXENTO_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESRETENCIONES_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESRETENCIONES_CLIENTE_FACTURA'
                    end
                    object tvFacturacionNOMBRE_TARIFA_CLIENTE: TcxGridDBColumn
                      DataBinding.FieldName = 'NOMBRE_TARIFA_CLIENTE'
                    end
                    object tvFacturacionESIMP_INCL_TARIFA_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESIMP_INCL_TARIFA_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESINTRACOMUNITARIO_CLIENTE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESINTRACOMUNITARIO_CLIENTE_FACTURA'
                    end
                    object tvFacturacionESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA'
                    end
                    object tvFacturacionESAPLICA_RE_ZONA_IVA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESAPLICA_RE_ZONA_IVA_FACTURA'
                    end
                    object tvFacturacionESIVAAGRICOLA_ZONA_IVA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESIVAAGRICOLA_ZONA_IVA_FACTURA'
                    end
                    object tvFacturacionPALABRA_REPORTS_ZONA_IVA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PALABRA_REPORTS_ZONA_IVA_FACTURA'
                    end
                    object tvFacturacionDESCRIPCION_ZONA_IVA: TcxGridDBColumn
                      DataBinding.FieldName = 'DESCRIPCION_ZONA_IVA'
                    end
                    object tvFacturacionESVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESVENTA_ACTIVO_FIJO_FACTURA'
                    end
                    object tvFacturacionPORCEN_IVAN_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_IVAN_FACTURA'
                    end
                    object tvFacturacionTOTAL_IVAN_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_IVAN_FACTURA'
                    end
                    object tvFacturacionPORCEN_REN_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_REN_FACTURA'
                    end
                    object tvFacturacionTOTAL_REN_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_REN_FACTURA'
                    end
                    object tvFacturacionTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAN_FACTURA'
                    end
                    object tvFacturacionPORCEN_IVAR_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_IVAR_FACTURA'
                    end
                    object tvFacturacionTOTAL_IVAR_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_IVAR_FACTURA'
                    end
                    object tvFacturacionPORCEN_RER_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_RER_FACTURA'
                    end
                    object tvFacturacionTOTAL_RER_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_RER_FACTURA'
                    end
                    object tvFacturacionTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAR_FACTURA'
                    end
                    object tvFacturacionPORCEN_IVAS_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_IVAS_FACTURA'
                    end
                    object tvFacturacionTOTAL_IVAS_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_IVAS_FACTURA'
                    end
                    object tvFacturacionPORCEN_RES_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_RES_FACTURA'
                    end
                    object tvFacturacionTOTAL_RES_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_RES_FACTURA'
                    end
                    object tvFacturacionTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAS_FACTURA'
                    end
                    object tvFacturacionPORCEN_IVAE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_IVAE_FACTURA'
                    end
                    object tvFacturacionTOTAL_IVAE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_IVAE_FACTURA'
                    end
                    object tvFacturacionPORCEN_REE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PORCEN_REE_FACTURA'
                    end
                    object tvFacturacionTOTAL_REE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_REE_FACTURA'
                    end
                    object tvFacturacionTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'TOTAL_BASEI_IVAE_FACTURA'
                    end
                    object tvFacturacionCODIGO_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_EMPRESA_FACTURA'
                    end
                    object tvFacturacionRAZONSOCIAL_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'RAZONSOCIAL_EMPRESA_FACTURA'
                    end
                    object tvFacturacionNIF_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'NIF_EMPRESA_FACTURA'
                    end
                    object tvFacturacionMOVIL_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'MOVIL_EMPRESA_FACTURA'
                    end
                    object tvFacturacionEMAIL_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'EMAIL_EMPRESA_FACTURA'
                    end
                    object tvFacturacionDIRECCION1_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'DIRECCION1_EMPRESA_FACTURA'
                    end
                    object tvFacturacionDIRECCION2_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'DIRECCION2_EMPRESA_FACTURA'
                    end
                    object tvFacturacionPOBLACION_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'POBLACION_EMPRESA_FACTURA'
                    end
                    object tvFacturacionPROVINCIA_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PROVINCIA_EMPRESA_FACTURA'
                    end
                    object tvFacturacionPAIS_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'PAIS_EMPRESA_FACTURA'
                    end
                    object tvFacturacionCPOSTAL_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'CPOSTAL_EMPRESA_FACTURA'
                    end
                    object tvFacturacionESRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESRETENCIONES_EMPRESA_FACTURA'
                    end
                    object tvFacturacionDESCRIPCION_ZONA_IVA_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA'
                    end
                    object tvFacturacionESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA: TcxGridDBColumn
                      DataBinding.FieldName = 'ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA'
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
                    object tvLineasFacturacionLINEA_LINEA: TcxGridDBColumn
                      Caption = 'Nro Linea'
                      DataBinding.FieldName = 'LINEA_FACTURA_LINEA'
                      Width = 28
                    end
                    object tvLineasFacturacionCODIGO_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'C'#243'digo Art'#237'culo'
                      DataBinding.FieldName = 'CODIGO_ARTICULO_FACTURA_LINEA'
                      Width = 164
                    end
                    object tvLineasFacturacionDESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'Descripci'#243'n'
                      DataBinding.FieldName = 'DESCRIPCION_ARTICULO_FACTURA_LINEA'
                      Width = 162
                    end
                    object tvLineasFacturacionCANTIDAD_LINEA: TcxGridDBColumn
                      Caption = 'Cantidad'
                      DataBinding.FieldName = 'CANTIDAD_FACTURA_LINEA'
                      Width = 84
                    end
                    object tvLineasFacturacionTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Tipo Cantidad'
                      DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA'
                    end
                    object tvLineasFacturacionPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Precio SIVA'
                      DataBinding.FieldName = 'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                    end
                    object tvLineasFacturacionPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Porcentaje IVA'
                      DataBinding.FieldName = 'PORCEN_IVA_FACTURA_LINEA'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.DisplayFormat = '0.00 %'
                      Properties.EditFormat = '0.00 %'
                      Properties.Increment = 0.100000000000000000
                      Properties.LargeIncrement = 1.000000000000000000
                      Properties.MaxValue = 100.000000000000000000
                    end
                    object tvLineasFacturacionTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Tipo IVA'
                      DataBinding.FieldName = 'TIPOIVA_ARTICULO_FACTURA_LINEA'
                      PropertiesClassName = 'TcxLookupComboBoxProperties'
                      Properties.KeyFieldNames = 'CODIGO_ABREVIATURA_TIPO_IVA'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NOMBRE_TIPO_IVA'
                        end>
                    end
                    object tvLineasFacturacionPRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn
                      Caption = 'Precio CIVA'
                      DataBinding.FieldName = 'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Width = 84
                    end
                    object tvLineasFacturacionSUM_TOTAL_LINEA: TcxGridDBColumn
                      Caption = 'Total'
                      DataBinding.FieldName = 'TOTAL_FACTURA_LINEA'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Width = 84
                    end
                    object tvLineasFacturacionFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn
                      Caption = 'Fecha de Entrega'
                      DataBinding.FieldName = 'FECHA_ENTREGA_FACTURA_LINEA'
                      PropertiesClassName = 'TcxDateEditProperties'
                    end
                  end
                  object cxgrdlvlcxgrd1Level1: TcxGridLevel
                    GridView = tvFacturacion
                    object cxgrdlvlcxgrd1Level2: TcxGridLevel
                      GridView = tvLineasFacturacion
                    end
                  end
                end
                object pnlFacturaOpts: TPanel
                  Left = 670
                  Top = 1
                  Width = 117
                  Height = 343
                  Align = alRight
                  TabOrder = 1
                  ExplicitLeft = 568
                  object btIraFactura: TcxButton
                    Left = 6
                    Top = 16
                    Width = 106
                    Height = 34
                    Caption = '&Ir a Factura'
                    TabOrder = 0
                    OnClick = btIraFacturaClick
                  end
                  object btnIraCliente: TcxButton
                    Left = 7
                    Top = 56
                    Width = 105
                    Height = 34
                    Caption = 'I&r a Cliente'
                    TabOrder = 1
                    OnClick = btnIraClienteClick
                  end
                  object btExportarExcel: TcxButton
                    Left = 5
                    Top = 136
                    Width = 106
                    Height = 34
                    Caption = 'Exp. Excel'
                    TabOrder = 2
                    OnClick = btExportarExcelClick
                  end
                  object btnIraArticulo: TcxButton
                    Left = 7
                    Top = 96
                    Width = 105
                    Height = 34
                    Caption = 'I&r a Art'#237'culo'
                    TabOrder = 3
                    OnClick = btnIraArticuloClick
                  end
                end
              end
            end
            object tsSeries: TcxTabSheet
              Caption = '&4_Series'
              ImageIndex = 4
              ExplicitWidth = 686
              object pnl: TPanel
                Left = 670
                Top = 0
                Width = 118
                Height = 345
                Align = alRight
                TabOrder = 0
                ExplicitLeft = 568
                object btnAddSerie: TcxButton
                  Left = 6
                  Top = 13
                  Width = 108
                  Height = 25
                  Caption = 'A'#241'adir Serie'
                  TabOrder = 0
                  OnClick = btnAddSerieClick
                end
              end
              object pnl7: TPanel
                Left = 0
                Top = 0
                Width = 670
                Height = 345
                Align = alClient
                TabOrder = 1
                ExplicitWidth = 568
                object cxGrdSeries: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 668
                  Height = 343
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 566
                  object tvSeries: TcxGridDBTableView
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
                    object dbcCODIGO_SERIE: TcxGridDBColumn
                      Caption = 'Serie'
                      DataBinding.FieldName = 'SERIE_SERIE'
                      Width = 163
                    end
                    object dbcCODIGO_EMPRESA: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_EMPRESA_SERIE'
                      Visible = False
                      Width = 122
                    end
                    object dbccxgrdbclmntv1FECHA_DESDE_SERIE: TcxGridDBColumn
                      Caption = 'Fecha Aplicaci'#243'n desde'
                      DataBinding.FieldName = 'FECHA_DESDE_SERIE'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Width = 208
                    end
                    object dbcFECHA_HASTA_SERIE: TcxGridDBColumn
                      Caption = 'Fecha Aplicaci'#243'n hasta'
                      DataBinding.FieldName = 'FECHA_HASTA_SERIE'
                      PropertiesClassName = 'TcxDateEditProperties'
                      Width = 199
                    end
                    object cxgrdbclmn2: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEMODIF'
                      Visible = False
                    end
                    object cxgrdbclmn3: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEALTA'
                      Visible = False
                    end
                    object cxgrdbclmn4: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOALTA'
                      Visible = False
                    end
                    object cxgrdbclmn5: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOMODIF'
                      Visible = False
                    end
                  end
                  object lvSeries: TcxGridLevel
                    GridView = tvSeries
                  end
                end
              end
            end
            object tsOtros: TcxTabSheet
              Caption = '&5_Otros'
              ImageIndex = 3
              ExplicitWidth = 686
              object pnl3: TPanel
                Left = 0
                Top = 266
                Width = 788
                Height = 79
                Align = alBottom
                TabOrder = 2
                ExplicitWidth = 686
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
                  Width = 152
                end
                object lblUsuarioAlta: TcxLabel
                  Left = 17
                  Top = 6
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Usuario Alta'
                  Transparent = True
                end
                object lblInstanteAlta: TcxLabel
                  Left = 177
                  Top = 6
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
                  Width = 192
                end
                object cxdbtxtdtINSTANTEALTA: TcxDBTextEdit
                  Left = 593
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEMODIF'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 7
                  Width = 188
                end
                object lblInstanteModif: TcxLabel
                  Left = 593
                  Top = 6
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Modificaci'#243'n'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit
                  Left = 377
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'USUARIOALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 4
                  Width = 168
                end
                object lblUsuarioModif: TcxLabel
                  Left = 337
                  Top = 6
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Usuario '#218'ltima Modificaci'#243'n'
                  Transparent = True
                end
              end
              object lblTextoLegal: TcxLabel
                Left = 48
                Top = 13
                Caption = 'Texto legal en Facturas'
              end
              object cxdbmTEXTO_LEGAL_FACTURA_EMPRESA: TcxDBMemo
                Left = 31
                Top = 39
                DataBinding.DataField = 'TEXTO_LEGAL_FACTURA_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Height = 89
                Width = 378
              end
              object lblOrden: TcxLabel
                Left = 24
                Top = 147
                Caption = 'Orden en Listados'
                Transparent = True
              end
              object txtMOVIL_CLIENTE1: TcxDBTextEdit
                Left = 313
                Top = 189
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'SERIE_CONTADOR_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 77
              end
              object lblTextoLegal1: TcxLabel
                Left = 25
                Top = 193
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Serie por defecto en Documentos'
                Transparent = True
              end
              object cxdbspndtORDEN_EMPRESA: TcxDBSpinEdit
                Left = 183
                Top = 144
                DataBinding.DataField = 'ORDEN_EMPRESA'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                Width = 86
              end
            end
          end
        end
        object cxspltr1: TcxSplitter
          Left = 0
          Top = 145
          Width = 790
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl1
          ExplicitWidth = 688
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 688
        ExplicitHeight = 530
        inherited pnl4: TPanel
          Width = 790
          ExplicitWidth = 688
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 27
          end
        end
        inherited pnl5: TPanel
          Width = 790
          Height = 473
          ExplicitWidth = 688
          ExplicitHeight = 473
          inherited cxgrdPerfil: TcxGrid
            Width = 788
            Height = 471
            ExplicitWidth = 686
            ExplicitHeight = 471
          end
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 790
      TabOrder = 0
      ExplicitWidth = 688
      inherited pnlTopGrid: TPanel
        Width = 788
        ExplicitWidth = 686
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 27
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 792
    Height = 602
    TabOrder = 1
    ExplicitLeft = 690
    ExplicitHeight = 602
    inherited pButtonGen: TPanel
      Top = 403
      ExplicitTop = 403
    end
    object btnNuevaEmpresa: TcxButton
      Left = 1
      Top = 154
      Width = 138
      Height = 25
      Caption = '&Nueva Empresa'
      TabOrder = 2
      OnClick = btnNuevaEmpresaClick
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 16
    Top = 536
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 112
    Top = 536
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 288
    Top = 536
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    Left = 628
    Top = 535
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 200
    Top = 536
  end
  inherited cxstylrpstry: TcxStyleRepository
    Left = 392
    Top = 539
    PixelsPerInch = 96
  end
  object ActionManager1: TActionManager
    Left = 504
    Top = 544
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16459
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16454
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16466
      OnExecute = Action3Execute
    end
  end
end
