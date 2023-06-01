inherited frmMtoArticulos: TfrmMtoArticulos
  Left = 5
  Top = 4
  Caption = 'Articulos'
  ClientHeight = 650
  ClientWidth = 969
  FormStyle = fsMDIChild
  ExplicitWidth = 985
  ExplicitHeight = 689
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 829
    Height = 650
    TabOrder = 0
    ExplicitWidth = 829
    ExplicitHeight = 650
    inherited pcPantalla: TcxPageControl
      Width = 827
      Height = 608
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 827
      ExplicitHeight = 608
      ClientRectBottom = 608
      ClientRectRight = 827
      inherited tsLista: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 827
        ExplicitHeight = 578
        inherited cxGrdPrincipal: TcxGrid
          Width = 827
          Height = 578
          ExplicitWidth = 827
          ExplicitHeight = 578
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_ARTICULO'
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinACTIVO_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'ACTIVO_ARTICULO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Styles.Header = cxstyl
              Width = 119
            end
            object cxgrdbclmnGrdDBTabPrinDESCRIPCION_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
              Styles.Header = cxstyl
              Width = 205
            end
            object cxgrdbclmnGrdDBTabPrinCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_FAMILIA_ARTICULO'
              PropertiesClassName = 'TcxTextEditProperties'
              Styles.Header = cxstyl
              Width = 176
            end
            object cxgrdbclmnGrdDBTabPrinDESCRIPCION_FAMILIA: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION_FAMILIA'
              Styles.Header = cxstyl
            end
            object cxgrdbclmnGrdDBTabPrinTIPOIVA_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOIVA_ARTICULO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CODIGO_ABREVIATURA_TIPO_IVA'
              Properties.ListColumns = <
                item
                  FieldName = 'NOMBRE_TIPO_IVA'
                end>
              Properties.ListSource = dmArticulos.dsTiposIVA
              Styles.Header = cxstyl
              Width = 130
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 827
        ExplicitHeight = 578
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 827
          Height = 145
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
            Width = 825
            Height = 145
            Align = alTop
            TabOrder = 0
            object txtCODIGO_ARTICULO: TcxDBTextEdit
              Left = 100
              Top = 13
              DataBinding.DataField = 'CODIGO_ARTICULO'
              DataBinding.DataSource = dsTablaG
              Properties.ReadOnly = False
              TabOrder = 0
              Width = 121
            end
            object lblCodigo: TcxLabel
              Left = 25
              Top = 14
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object lblNombre: TcxLabel
              Left = 18
              Top = 55
              Caption = 'Nombre'
              Transparent = True
            end
            object txtDESCRIPCION_ARTICULO: TcxDBTextEdit
              Left = 100
              Top = 54
              DataBinding.DataField = 'DESCRIPCION_ARTICULO'
              DataBinding.DataSource = dsTablaG
              TabOrder = 3
              Width = 322
            end
            object chkActivo: TcxDBCheckBox
              Left = 230
              Top = 16
              Caption = 'Activo'
              DataBinding.DataField = 'ACTIVO_ARTICULO'
              DataBinding.DataSource = dsTablaG
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Transparent = True
            end
            object cbbFamilia: TcxDBLookupComboBox
              Left = 100
              Top = 95
              DataBinding.DataField = 'CODIGO_FAMILIA_ARTICULO'
              DataBinding.DataSource = dsTablaG
              Properties.KeyFieldNames = 'CODIGO_FAMILIA'
              Properties.ListColumns = <
                item
                  FieldName = 'DESCRIPCION_FAMILIA'
                end>
              Properties.ListSource = dmArticulos.dsFamiliaArticulos
              TabOrder = 5
              Width = 322
            end
            object lbl1: TcxLabel
              Left = 24
              Top = 96
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Familia'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 90
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 472
              Top = 6
              Caption = 'Tipo de IVA'
              DataBinding.DataField = 'TIPOIVA_ARTICULO'
              DataBinding.DataSource = dsTablaG
              Properties.Items = <
                item
                  Caption = 'Normal'
                  Value = 'N'
                end
                item
                  Caption = 'Reducido'
                  Value = 'R'
                end
                item
                  Caption = 'S'#250'per Reducido'
                  Value = 'SR'
                end
                item
                  Caption = 'Exento'
                  Value = 'E'
                end>
              TabOrder = 7
              Height = 122
              Width = 185
            end
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 153
          Width = 827
          Height = 425
          Align = alClient
          TabOrder = 1
          object pcPestana: TcxPageControl
            Left = 1
            Top = 1
            Width = 825
            Height = 423
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsProveedores
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 423
            ClientRectRight = 825
            ClientRectTop = 30
            object tsTarifas: TcxTabSheet
              Caption = '&1_Tarifas'
              ImageIndex = 1
              object cxgrdTarifas: TcxGrid
                Left = 0
                Top = 0
                Width = 709
                Height = 393
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                object tvTarifas: TcxGridDBTableView
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
                  DataController.DataSource = dmArticulos.dsTarifasArticulos
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.IncSearch = True
                  OptionsCustomize.ColumnHiding = True
                  OptionsData.Inserting = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxgrdbclmnTarifasCODIGO_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_TARIFA'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasNOMBRE_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'NOMBRE_TARIFA'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Width = 145
                  end
                  object cxgrdbclmnTarifasCODIGO_ARTICULO_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_ARTICULO_TARIFA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnTarifasDESCRIPCION_ARTICULO: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnTarifasTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn
                    DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object dbcTarifasPRECIOSALIDA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIOSALIDA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.OnEditValueChanged = dbcTarifasPRECIOSALIDAPropertiesEditValueChanged
                  end
                  object dbcTarifasPORCEN_DTO_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'PORCEN_DTO_TARIFA'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '#.## %'
                    Properties.EditFormat = '#,## %'
                    Properties.OnEditValueChanged = dbcTarifasPORCEN_DTO_TARIFAPropertiesEditValueChanged
                    Width = 79
                  end
                  object dbcTarifasPRECIO_DTO_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIO_DTO_TARIFA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.OnEditValueChanged = dbcTarifasPRECIO_DTO_TARIFAPropertiesEditValueChanged
                  end
                  object dbcTarifasPRECIOFINAL: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIOFINAL'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.OnEditValueChanged = dbcTarifasPRECIOFINALPropertiesEditValueChanged
                  end
                  object cxgrdbclmnTarifasTIPO_IVA_ARTICULO: TcxGridDBColumn
                    DataBinding.FieldName = 'TIPO_IVA_ARTICULO'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnTarifasACTIVO_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'ACTIVO_TARIFA'
                    Width = 98
                  end
                  object cxgrdbclmnTarifasFECHA_DESDE_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_DESDE_TARIFA'
                  end
                  object cxgrdbclmnTarifasFECHA_HASTA_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_HASTA_TARIFA'
                  end
                  object cxgrdbclmnTarifasCODIGO_PROVEEDOR: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_PROVEEDOR'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn
                    DataBinding.FieldName = 'RAZONSOCIAL_PROVEEDOR'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasPRECIO_ULT_COMPRA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIO_ULT_COMPRA'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasFECHA_VALIDEZ: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_VALIDEZ'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_FAMILIA_ARTICULO'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasDESCRIPCION_FAMILIA: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRIPCION_FAMILIA'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                  end
                  object cxgrdbclmnTarifasINSTANTEALTA: TcxGridDBColumn
                    DataBinding.FieldName = 'INSTANTEALTA'
                  end
                  object cxgrdbclmnTarifasINSTANTEMODIF: TcxGridDBColumn
                    DataBinding.FieldName = 'INSTANTEMODIF'
                  end
                  object cxgrdbclmnTarifasUSUARIOALTA: TcxGridDBColumn
                    DataBinding.FieldName = 'USUARIOALTA'
                  end
                  object cxgrdbclmnTarifasUSUARIOMODIF: TcxGridDBColumn
                    DataBinding.FieldName = 'USUARIOMODIF'
                  end
                end
                object cxgrdlvlTarifas: TcxGridLevel
                  GridView = tvTarifas
                end
              end
              object pnlFacturaOpts2: TPanel
                Left = 709
                Top = 0
                Width = 116
                Height = 393
                Align = alRight
                TabOrder = 1
                object btIraTarifa: TcxButton
                  Left = 6
                  Top = 16
                  Width = 105
                  Height = 34
                  Caption = 'Ir a &Tarifa'
                  TabOrder = 0
                  OnClick = btIraTarifaClick
                end
                object btCrearTarifa: TcxButton
                  Left = 7
                  Top = 56
                  Width = 104
                  Height = 34
                  Caption = 'C&rear Tarifa'
                  TabOrder = 1
                  OnClick = btCrearTarifaClick
                end
                object btExportarTarifa: TcxButton
                  Left = 6
                  Top = 96
                  Width = 105
                  Height = 34
                  Caption = '&Exp Excel'
                  TabOrder = 2
                  OnClick = btExportarTarifaClick
                end
              end
            end
            object tsProveedores: TcxTabSheet
              Caption = '&2_Proveedores'
              ImageIndex = 2
              object cxgrdProveedores: TcxGrid
                Left = 0
                Top = 0
                Width = 704
                Height = 393
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                object tvProveedores: TcxGridDBTableView
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
                  DataController.DataSource = dmArticulos.dsProveedoresArticulos
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.IncSearch = True
                  OptionsCustomize.ColumnHiding = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxgrdbclmnProveedoresCODIGO_PROVEEDOR: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_PROVEEDOR'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = cxgrdbclmnProveedoresCODIGO_PROVEEDORPropertiesButtonClick
                  end
                  object cxgrdbclmnProveedoresRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn
                    DataBinding.FieldName = 'RAZONSOCIAL_PROVEEDOR'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Width = 221
                  end
                  object cxgrdbclmnProveedoresESPROVEEDORPRINCIPAL: TcxGridDBColumn
                    DataBinding.FieldName = 'ESPROVEEDORPRINCIPAL'
                    Width = 91
                  end
                  object cxgrdbclmnProveedoresCODIGO_ARTICULO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_ARTICULO'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnProveedoresPRECIO_ULT_COMPRA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIO_ULT_COMPRA'
                  end
                  object cxgrdbclmnProveedoresFECHA_VALIDEZ: TcxGridDBColumn
                    Caption = 'FECHA_ULT_PRECIO'
                    DataBinding.FieldName = 'FECHA_VALIDEZ'
                  end
                  object cxgrdbclmnProveedoresINSTANTEMODIF: TcxGridDBColumn
                    DataBinding.FieldName = 'INSTANTEMODIF'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnProveedoresINSTANTEALTA: TcxGridDBColumn
                    DataBinding.FieldName = 'INSTANTEALTA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnProveedoresUSUARIOALTA: TcxGridDBColumn
                    DataBinding.FieldName = 'USUARIOALTA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnProveedoresUSUARIOMODIF: TcxGridDBColumn
                    DataBinding.FieldName = 'USUARIOMODIF'
                    Visible = False
                    VisibleForCustomization = False
                  end
                end
                object cxgrdlvlProveedores: TcxGridLevel
                  GridView = tvProveedores
                end
              end
              object pnlFacturaOpts1: TPanel
                Left = 704
                Top = 0
                Width = 121
                Height = 393
                Align = alRight
                TabOrder = 1
                object btIraProveedor: TcxButton
                  Left = 5
                  Top = 61
                  Width = 116
                  Height = 34
                  Caption = '&Ir a Proveedor'
                  TabOrder = 0
                  OnClick = btIraProveedorClick
                end
                object btExportarProveedor: TcxButton
                  Left = 5
                  Top = 101
                  Width = 116
                  Height = 34
                  Caption = '&Exp Excel'
                  TabOrder = 1
                  OnClick = btExportarProveedorClick
                end
                object btAddProveedor: TcxButton
                  Left = 5
                  Top = 21
                  Width = 116
                  Height = 34
                  Caption = '&A'#241'adir'
                  TabOrder = 2
                  OnClick = btAddProveedorClick
                end
              end
            end
            object tsLineasFactura: TcxTabSheet
              Caption = '&3_Lineas de Facturas'
              ImageIndex = 3
              object cxgrdLinFac: TcxGrid
                Left = 0
                Top = 0
                Width = 712
                Height = 393
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 0
                object tvLinFac: TcxGridDBTableView
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
                  DataController.DataSource = dmArticulos.dsLinFacturasArticulos
                  DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#.##'
                      Kind = skSum
                      Column = cxgrdbclmnLinFacCANTIDAD_FACTURA_LINEA
                    end
                    item
                      Format = '##,## '#8364
                      Kind = skSum
                      Column = cxgrdbclmnLinFacTOTAL_FACTURA_LINEA
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.IncSearch = True
                  OptionsCustomize.ColumnHiding = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxgrdbclmnLinFacNRO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'NRO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacSERIE_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'SERIE_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacLINEA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'LINEA_FACTURA_LINEA'
                    Width = 55
                  end
                  object cxgrdbclmnLinFacTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA'
                    Width = 109
                  end
                  object cxgrdbclmnLinFacCANTIDAD_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'CANTIDAD_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRIPCION_ARTICULO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacNOMBRE_TARIFA: TcxGridDBColumn
                    DataBinding.FieldName = 'NOMBRE_TARIFA'
                  end
                  object cxgrdbclmnLinFacESIMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'ESIMP_INCL_TARIFA_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'TIPOIVA_ARTICULO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'PORCEN_IVA_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacPRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacCODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_ARTICULO_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO_FAMILIA_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'NOMBRE_FAMILIA_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacTOTAL_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'TOTAL_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_ENTREGA_FACTURA_LINEA'
                  end
                end
                object cxgrdlvlLinFac: TcxGridLevel
                  GridView = tvLinFac
                end
              end
              object pnlFacturaOpts: TPanel
                Left = 712
                Top = 0
                Width = 113
                Height = 393
                Align = alRight
                TabOrder = 1
                object btIraFactura: TcxButton
                  Left = 6
                  Top = 16
                  Width = 104
                  Height = 34
                  Caption = 'Ir a F&actura'
                  TabOrder = 0
                  OnClick = btIraFacturaClick
                end
                object btIraEmpresa: TcxButton
                  Left = 7
                  Top = 56
                  Width = 104
                  Height = 34
                  Caption = 'Ir a &Empresa'
                  TabOrder = 1
                  OnClick = btIraEmpresaClick
                end
                object btExportarLineas: TcxButton
                  Left = 6
                  Top = 138
                  Width = 104
                  Height = 34
                  Caption = '&Exp Excel'
                  TabOrder = 2
                end
                object btIraCliente: TcxButton
                  Left = 7
                  Top = 96
                  Width = 104
                  Height = 34
                  Caption = 'Ir a C&liente'
                  TabOrder = 3
                end
              end
            end
            object tsOtros: TcxTabSheet
              Caption = '&4_Otros'
              ImageIndex = 3
              object pnl3: TPanel
                Left = 0
                Top = 314
                Width = 825
                Height = 79
                Align = alBottom
                TabOrder = 0
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
                  Left = 163
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Alta'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA: TcxDBTextEdit
                  Left = 163
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
                  Left = 511
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEMODIF'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 7
                  Width = 198
                end
                object lblInstanteModif: TcxLabel
                  Left = 514
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Modificaci'#243'n'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit
                  Left = 359
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
                  Left = 359
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Us '#218'lt. Modif.'
                  Transparent = True
                end
              end
              object chkACTIVO_ARTICULO: TcxDBCheckBox
                Left = 48
                Top = 24
                Caption = 'Es Activo fijo --Es Maquinaria o Aperos-- (S'#243'lo REAGP)'
                DataBinding.DataField = 'ESACTIVO_FIJO_ARTICULO'
                DataBinding.DataSource = dsTablaG
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 1
                Transparent = True
              end
              object cxdbtxtdtTIPO_CANTIDAD_ARTICULO: TcxDBTextEdit
                Left = 184
                Top = 109
                DataBinding.DataField = 'TIPO_CANTIDAD_ARTICULO'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Width = 130
              end
              object lblNombre1: TcxLabel
                Left = 30
                Top = 110
                Caption = 'Tipo de Cantidad'
                Transparent = True
              end
              object lblTextoLegal11: TcxLabel
                Left = 376
                Top = 110
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Orden en Listados'
                Transparent = True
              end
              object cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit
                Left = 537
                Top = 106
                DataBinding.DataField = 'ORDEN_ARTICULO'
                DataBinding.DataSource = dsTablaG
                TabOrder = 5
                Width = 106
              end
            end
          end
        end
        object cxspltr1: TcxSplitter
          Left = 0
          Top = 145
          Width = 827
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 827
        ExplicitHeight = 578
        inherited pnl4: TPanel
          Width = 827
          ExplicitWidth = 827
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 27
          end
        end
        inherited pnl5: TPanel
          Width = 827
          Height = 521
          ExplicitWidth = 827
          ExplicitHeight = 521
          inherited cxgrdPerfil: TcxGrid
            Width = 825
            Height = 519
            ExplicitWidth = 825
            ExplicitHeight = 519
          end
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 827
      TabOrder = 0
      ExplicitWidth = 827
      inherited pnlTopGrid: TPanel
        Width = 825
        ExplicitWidth = 825
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 27
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 829
    Height = 650
    TabOrder = 1
    ExplicitLeft = 829
    ExplicitHeight = 650
    inherited pButtonGen: TPanel
      Top = 451
      ExplicitTop = 451
    end
    object btnNuevoArticulo: TcxButton
      Left = 1
      Top = 157
      Width = 138
      Height = 25
      Caption = '&Nuevo Art'#237'culo'
      TabOrder = 2
      OnClick = btnNuevoArticuloClick
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
    DataSet = dmArticulos.unqryTablaG
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
  object actmgr1: TActionManager
    Left = 560
    Top = 296
    StyleName = 'Platform Default'
    object actEmpresas: TAction
      Caption = 'actEmpresas'
      ShortCut = 16453
    end
    object actFacturas: TAction
      Caption = 'actFacturas'
      ShortCut = 16454
      OnExecute = actFacturasExecute
    end
    object actProveedores: TAction
      Caption = 'actProveedores'
      ShortCut = 16464
      OnExecute = actProveedoresExecute
    end
    object actTarifas: TAction
      Caption = 'actTarifas'
      ShortCut = 16468
      OnExecute = actTarifasExecute
    end
    object actFamilias: TAction
      Caption = 'actFamilias'
      ShortCut = 16462
      OnExecute = actFamiliasExecute
    end
  end
end
