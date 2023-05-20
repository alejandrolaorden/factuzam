﻿inherited frmMtoProveedores: TfrmMtoProveedores
  Caption = 'Proveedores'
  ClientHeight = 564
  ClientWidth = 884
  FormStyle = fsMDIChild
  ExplicitWidth = 900
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 744
    Height = 564
    TabOrder = 0
    ExplicitWidth = 744
    ExplicitHeight = 564
    inherited pcPantalla: TcxPageControl
      Width = 742
      Height = 522
      TabOrder = 1
      Properties.ActivePage = tsFicha
      ExplicitWidth = 742
      ExplicitHeight = 522
      ClientRectBottom = 522
      ClientRectRight = 742
      inherited tsLista: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 742
        ExplicitHeight = 492
        inherited cxGrdPrincipal: TcxGrid
          Width = 742
          Height = 492
          ExplicitWidth = 742
          ExplicitHeight = 492
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            object cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO_PROVEEDOR'
              Width = 81
            end
            object cxgrdbclmnGrdDBTabPrinACTIVO_CLIENTE: TcxGridDBColumn
              Caption = 'Activo'
              DataBinding.FieldName = 'ACTIVO_PROVEEDOR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 44
            end
            object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE: TcxGridDBColumn
              Caption = 'Raz'#243'n Social'
              DataBinding.FieldName = 'RAZONSOCIAL_PROVEEDOR'
              Width = 212
            end
            object cxgrdbclmnGrdDBTabPrinNIF_CLIENTE: TcxGridDBColumn
              Caption = 'Nif Cif'
              DataBinding.FieldName = 'NIF_PROVEEDOR'
              PropertiesClassName = 'TcxMaskEditProperties'
              Width = 104
            end
            object cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE: TcxGridDBColumn
              Caption = 'Tel'#233'fono M'#243'vil'
              DataBinding.FieldName = 'MOVIL_PROVEEDOR'
              Width = 113
            end
            object cxgrdbclmnGrdDBTabPrinTELEFONO_CLIENTE: TcxGridDBColumn
              Caption = 'Tel'#233'fono Fijo'
              DataBinding.FieldName = 'TELEFONO_PROVEEDOR'
              Width = 121
            end
            object cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE: TcxGridDBColumn
              Caption = 'Email'
              DataBinding.FieldName = 'EMAIL_PROVEEDOR'
              Width = 196
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE: TcxGridDBColumn
              Caption = 'Direcci'#243'n'
              DataBinding.FieldName = 'DIRECCION1_PROVEEDOR'
              Width = 251
            end
            object cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE: TcxGridDBColumn
              Caption = 'M'#225's Direcci'#243'n'
              DataBinding.FieldName = 'DIRECCION2_PROVEEDOR'
              Width = 77
            end
            object cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE: TcxGridDBColumn
              Caption = 'Poblaci'#243'n'
              DataBinding.FieldName = 'POBLACION_PROVEEDOR'
              Width = 146
            end
            object cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE: TcxGridDBColumn
              Caption = 'Provincia'
              DataBinding.FieldName = 'PROVINCIA_PROVEEDOR'
              Width = 135
            end
            object cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE: TcxGridDBColumn
              Caption = 'C'#243'digo Postal'
              DataBinding.FieldName = 'CPOSTAL_PROVEEDOR'
              Width = 95
            end
            object cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE: TcxGridDBColumn
              Caption = 'Pa'#237's'
              DataBinding.FieldName = 'PAIS_PROVEEDOR'
              Width = 118
            end
            object cxgrdbclmnGrdDBTabPrinOBSERVACIONES_CLIENTE: TcxGridDBColumn
              Caption = 'Observaciones'
              DataBinding.FieldName = 'OBSERVACIONES_PROVEEDOR'
              Width = 192
            end
            object cxgrdbclmnGrdDBTabPrinREFERENCIA_CLIENTE: TcxGridDBColumn
              Caption = 'Referencia'
              DataBinding.FieldName = 'REFERENCIA_PROVEEDOR'
              Width = 184
            end
            object cxgrdbclmnGrdDBTabPrinCONTACTO_CLIENTE: TcxGridDBColumn
              Caption = 'Contacto'
              DataBinding.FieldName = 'CONTACTO_PROVEEDOR'
              Width = 151
            end
            object cxgrdbclmnGrdDBTabPrinTELEFONO_CONTACTO_CLIENTE: TcxGridDBColumn
              Caption = 'Tel'#233'fono de Contacto'
              DataBinding.FieldName = 'TELEFONO_CONTACTO_PROVEEDOR'
              Width = 140
            end
            object cxgrdbclmnGrdDBTabPrinIBAN_CLIENTE: TcxGridDBColumn
              Caption = 'Nro Cuenta'
              DataBinding.FieldName = 'IBAN_PROVEEDOR'
              Visible = False
              Width = 50
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEMODIF'
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
            end
            object cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn
              DataBinding.FieldName = 'INSTANTEALTA'
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOALTA'
              Visible = False
              Width = 74
            end
            object cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIOMODIF'
              Visible = False
              Width = 108
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        ExplicitTop = 30
        ExplicitWidth = 742
        ExplicitHeight = 492
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 742
          Height = 137
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          TabOrder = 0
          object cxdbtxtdtCODIGO_CLIENTE: TcxDBTextEdit
            Left = 41
            Top = 31
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'CODIGO_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 2
            Width = 149
          end
          object lblCodigoCliente: TcxLabel
            Left = 41
            Top = 7
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object cxdbtxtdtRAZON_SOCIAL: TcxDBTextEdit
            Left = 224
            Top = 31
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'RAZONSOCIAL_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 3
            Width = 497
          end
          object lblRazonSocial: TcxLabel
            Left = 224
            Top = 7
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Raz'#243'n Social Fiscal'
            Transparent = True
          end
          object cxdbtxtdtTELEFONO2: TcxDBTextEdit
            Left = 571
            Top = 93
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'TELEFONO_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 10
            Width = 150
          end
          object lblTeléfonos: TcxLabel
            Left = 320
            Top = 94
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Tel'#233'fonos'
            Transparent = True
          end
          object lblEmail: TcxLabel
            Left = 357
            Top = 66
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Email'
            Transparent = True
          end
          object cxdbtxtdtEMAIL: TcxDBTextEdit
            Left = 414
            Top = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'EMAIL_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 5
            Width = 307
          end
          object lblNif: TcxLabel
            Left = 41
            Top = 68
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'NIF/CIF'
            Transparent = True
          end
          object cxdbtxtdtNIF: TcxDBTextEdit
            Left = 41
            Top = 93
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'NIF_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 8
            Width = 149
          end
          object cxdbtxtdtMOVIL_CLIENTE: TcxDBTextEdit
            Left = 414
            Top = 93
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataBinding.DataField = 'MOVIL_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            TabOrder = 9
            Width = 139
          end
          object chkActivo: TcxDBCheckBox
            Left = 224
            Top = 62
            Caption = 'Activo'
            DataBinding.DataField = 'ACTIVO_PROVEEDOR'
            DataBinding.DataSource = dsTablaG
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 4
            Transparent = True
          end
        end
        object pnl2: TPanel
          Left = 0
          Top = 145
          Width = 742
          Height = 347
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 2
          object pcPestanas: TcxPageControl
            Left = 1
            Top = 1
            Width = 740
            Height = 345
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = tsVentas
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 345
            ClientRectRight = 740
            ClientRectTop = 30
            object tsDomicilioFiscal: TcxTabSheet
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '&1_Domicilio fiscal'
              ImageIndex = 0
              object cxdbtxtdt7: TcxDBTextEdit
                Left = 147
                Top = 21
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'DIRECCION1_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 303
              end
              object lblDireccion1: TcxLabel
                Left = 34
                Top = 25
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Direcci'#243'n 1'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
              object lblCodPostal: TcxLabel
                Left = 14
                Top = 103
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'C'#243'digo Postal'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
              object cxdbtxtdt8: TcxDBTextEdit
                Left = 147
                Top = 99
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'CPOSTAL_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 77
              end
              object lblPoblacion: TcxLabel
                Left = 48
                Top = 143
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Poblaci'#243'n'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
              object cxdbtxtdt9: TcxDBTextEdit
                Left = 147
                Top = 139
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'POBLACION_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                Width = 303
              end
              object cxdbtxtdt10: TcxDBTextEdit
                Left = 147
                Top = 178
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'PROVINCIA_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 8
                Width = 303
              end
              object lblProvincia: TcxLabel
                Left = 54
                Top = 182
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Provincia'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
              object cxdbtxtdt16: TcxDBTextEdit
                Left = 147
                Top = 218
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'PAIS_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 10
                Width = 303
              end
              object lblPais: TcxLabel
                Left = 98
                Top = 222
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Pa'#237's'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
              object cxdbtxtdtDireccion: TcxDBTextEdit
                Left = 147
                Top = 60
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'DIRECCION2_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 2
                Width = 304
              end
              object lblDireccion2: TcxLabel
                Left = 34
                Top = 64
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Direcci'#243'n 2'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 135
              end
            end
            object tsArticulos: TcxTabSheet
              Caption = '&2_Articulos'
              ImageIndex = 3
              object pnl6: TPanel
                Left = 648
                Top = 0
                Width = 92
                Height = 315
                Align = alRight
                TabOrder = 1
                object btnIraArticulo: TcxButton
                  Left = 6
                  Top = 13
                  Width = 81
                  Height = 25
                  Caption = 'Ir a Art'#237'culo'
                  TabOrder = 0
                  OnClick = btnIraArticuloClick
                end
              end
              object pnl61: TPanel
                Left = 0
                Top = 0
                Width = 648
                Height = 315
                Align = alClient
                TabOrder = 0
                object cxgrdArticulos: TcxGrid
                  Left = 1
                  Top = 1
                  Width = 646
                  Height = 313
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  TabOrder = 0
                  object tvArticulos: TcxGridDBTableView
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
                    DataController.DataSource = dmProveedores.dsArticulos
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
                    object cxgrdbclmnArticulosCODIGO_PROVEEDOR: TcxGridDBColumn
                      DataBinding.FieldName = 'CODIGO_PROVEEDOR'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosCODIGO_ARTICULO: TcxGridDBColumn
                      Caption = 'C'#243'digo Art'#237'culo'
                      DataBinding.FieldName = 'CODIGO_ARTICULO'
                      Width = 135
                    end
                    object cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn
                      Caption = 'Descripci'#243'n'
                      DataBinding.FieldName = 'DESCRIPCION_ARTICULO'
                      Width = 269
                    end
                    object cxgrdbclmnArticulosCODIGO_FAMILIA: TcxGridDBColumn
                      Caption = 'C'#243'digo Familia'
                      DataBinding.FieldName = 'CODIGO_FAMILIA'
                      Width = 130
                    end
                    object cxgrdbclmnArticulosDESCRIPCION_FAMILIA: TcxGridDBColumn
                      Caption = 'Familia'
                      DataBinding.FieldName = 'DESCRIPCION_FAMILIA'
                      Width = 222
                    end
                    object cxgrdbclmnArticulosTIPO_CATNTIDAD_ARTICULO: TcxGridDBColumn
                      Caption = 'Tipo Cantidad'
                      DataBinding.FieldName = 'TIPO_CATNTIDAD_ARTICULO'
                      Width = 93
                    end
                    object cxgrdbclmnArticulosESACTIVO_FIJO_ARTICULO: TcxGridDBColumn
                      DataBinding.FieldName = 'ESACTIVO_FIJO_ARTICULO'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosPRECIO_ULT_COMPRA: TcxGridDBColumn
                      Caption = 'Precio '#218'lt. Compra'
                      DataBinding.FieldName = 'PRECIO_ULT_COMPRA'
                      Width = 127
                    end
                    object cxgrdbclmnArticulosFECHA_VALIDEZ: TcxGridDBColumn
                      Caption = 'Fecha '#218'lt Compra'
                      DataBinding.FieldName = 'FECHA_VALIDEZ'
                    end
                    object cxgrdbclmnArticulosESPROVEEDORPRINCIPAL: TcxGridDBColumn
                      Caption = 'Proveedor Principal'
                      DataBinding.FieldName = 'ESPROVEEDORPRINCIPAL'
                      Width = 140
                    end
                    object cxgrdbclmnArticulosINSTANTEMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEMODIF'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosINSTANTEALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'INSTANTEALTA'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosUSUARIOALTA: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOALTA'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxgrdbclmnArticulosUSUARIOMODIF: TcxGridDBColumn
                      DataBinding.FieldName = 'USUARIOMODIF'
                      Visible = False
                      VisibleForCustomization = False
                    end
                  end
                  object cxgrdlvlArticulos: TcxGridLevel
                    GridView = tvArticulos
                  end
                end
              end
            end
            object tsVentas: TcxTabSheet
              Caption = '&3_Ventas'
              ImageIndex = 4
              object cxgrdLinFac: TcxGrid
                Left = 0
                Top = 0
                Width = 740
                Height = 315
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
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.AlwaysShowEditor = True
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.IncSearch = True
                  OptionsCustomize.ColumnHiding = True
                  OptionsData.Appending = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxgrdbclmnLinFacNRO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Nro Fact.'
                    DataBinding.FieldName = 'NRO_FACTURA_LINEA'
                    Width = 83
                  end
                  object cxgrdbclmnLinFacSERIE_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Serie'
                    DataBinding.FieldName = 'SERIE_FACTURA_LINEA'
                    Width = 59
                  end
                  object cxgrdbclmnLinFacLINEA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Nro Linea'
                    DataBinding.FieldName = 'LINEA_FACTURA_LINEA'
                    Width = 96
                  end
                  object cxgrdbclmnLinFacCANTIDAD_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Cantidad'
                    DataBinding.FieldName = 'CANTIDAD_FACTURA_LINEA'
                    Width = 89
                  end
                  object cxgrdbclmnLinFacTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Tipo Cantidad'
                    DataBinding.FieldName = 'TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA'
                    Width = 93
                  end
                  object cxgrdbclmnLinFacCODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'C'#243'digo Art'#237'culo'
                    DataBinding.FieldName = 'CODIGO_ARTICULO_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'C'#243'digo Familia'
                    DataBinding.FieldName = 'CODIGO_FAMILIA_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Nombre Familia'
                    DataBinding.FieldName = 'NOMBRE_FAMILIA_FACTURA_LINEA'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cxgrdbclmnLinFacDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Descripci'#243'n Art'#237'culo'
                    DataBinding.FieldName = 'DESCRIPCION_ARTICULO_FACTURA_LINEA'
                    Width = 176
                  end
                  object cxgrdbclmnLinFacNOMBRE_TARIFA: TcxGridDBColumn
                    Caption = 'Tarifa'
                    DataBinding.FieldName = 'NOMBRE_TARIFA'
                    Width = 73
                  end
                  object cxgrdbclmnLinFacESIMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Imp Incl'
                    DataBinding.FieldName = 'ESIMP_INCL_TARIFA_FACTURA_LINEA'
                    Width = 60
                  end
                  object cxgrdbclmnLinFacPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Precio SIVA'
                    DataBinding.FieldName = 'PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA'
                  end
                  object cxgrdbclmnLinFacTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Tipo IVA'
                    DataBinding.FieldName = 'TIPOIVA_ARTICULO_FACTURA_LINEA'
                    Width = 73
                  end
                  object cxgrdbclmnLinFacPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = '% IVA'
                    DataBinding.FieldName = 'PORCEN_IVA_FACTURA_LINEA'
                    Width = 57
                  end
                  object cxgrdbclmnLinFacPRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Precio CIVA'
                    DataBinding.FieldName = 'PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA'
                    Width = 120
                  end
                  object cxgrdbclmnLinFacTOTAL_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Total Linea'
                    DataBinding.FieldName = 'TOTAL_FACTURA_LINEA'
                    Width = 97
                  end
                  object cxgrdbclmnLinFacFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn
                    Caption = 'Fecha Entrega'
                    DataBinding.FieldName = 'FECHA_ENTREGA_FACTURA_LINEA'
                  end
                end
                object cxgrdlvlLinFac: TcxGridLevel
                  GridView = tvLinFac
                end
              end
            end
            object tsMasDatos: TcxTabSheet
              Caption = '&4_M'#225's datos'
              ImageIndex = 1
              object lblObservaciones: TcxLabel
                Left = -8
                Top = 105
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Observaciones'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 118
              end
              object lblReferencia: TcxLabel
                Left = 28
                Top = 66
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Referencia'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 118
              end
              object cxdbtxtdtREFERENCIA_CLIENTE: TcxDBTextEdit
                Left = 126
                Top = 62
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'REFERENCIA_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 4
                Width = 519
              end
              object lblContacto: TcxLabel
                Left = 39
                Top = 23
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Contacto'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 118
              end
              object cxdbtxtdtREFERENCIA_CLIENTE1: TcxDBTextEdit
                Left = 126
                Top = 19
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'CONTACTO_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 188
              end
              object cxdbtxtdtIBAN: TcxDBTextEdit
                Left = 126
                Top = 212
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'IBAN_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 8
                Width = 323
              end
              object lblNroCuenta: TcxLabel
                Left = -3
                Top = 213
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'IBAN Bancario'
                Properties.Alignment.Horz = taRightJustify
                Transparent = True
                AnchorX = 118
              end
              object lblTelefonoContacto: TcxLabel
                Left = 341
                Top = 23
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Tel'#233'fono Contacto'
                Transparent = True
              end
              object cxdbtxtdtCONTACTO_CLIENTE: TcxDBTextEdit
                Left = 513
                Top = 19
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                DataBinding.DataField = 'TELEFONO_CONTACTO_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 1
                Width = 188
              end
              object cxdbm2: TcxDBMemo
                Left = 126
                Top = 101
                DataBinding.DataField = 'OBSERVACIONES_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 6
                Height = 89
                Width = 575
              end
            end
            object tsOtros: TcxTabSheet
              Caption = '&5_Otros'
              ImageIndex = 4
              object pnl3: TPanel
                Left = 0
                Top = 236
                Width = 740
                Height = 79
                Align = alBottom
                TabOrder = 2
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
                  TabOrder = 4
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
                  Left = 170
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Alta'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA: TcxDBTextEdit
                  Left = 170
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'INSTANTEALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 5
                  Width = 193
                end
                object cxdbtxtdtINSTANTEALTA: TcxDBTextEdit
                  Left = 534
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
                  Left = 534
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Instante Modificaci'#243'n'
                  Transparent = True
                end
                object cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit
                  Left = 366
                  Top = 37
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  DataBinding.DataField = 'USUARIOALTA'
                  DataBinding.DataSource = dsTablaG
                  Properties.ReadOnly = True
                  TabOrder = 6
                  Width = 140
                end
                object lblUsuarioModif: TcxLabel
                  Left = 366
                  Top = 9
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Caption = 'Usuario '#218'lt. Modif'
                  Transparent = True
                end
              end
              object lblTextoLegal11: TcxLabel
                Left = 353
                Top = 139
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Orden en Listados'
                Transparent = True
              end
              object cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit
                Left = 520
                Top = 138
                DataBinding.DataField = 'ORDEN_PROVEEDOR'
                DataBinding.DataSource = dsTablaG
                TabOrder = 0
                Width = 106
              end
            end
          end
        end
        object cxspltr1: TcxSplitter
          Left = 0
          Top = 137
          Width = 742
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer9Style'
          AlignSplitter = salTop
          Control = pnl2
        end
      end
      inherited tsPerfil: TcxTabSheet
        ExplicitWidth = 742
        ExplicitHeight = 492
        inherited pnl4: TPanel
          Width = 742
          ExplicitWidth = 742
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 27
          end
        end
        inherited pnl5: TPanel
          Width = 742
          Height = 435
          ExplicitWidth = 742
          ExplicitHeight = 435
          inherited cxgrdPerfil: TcxGrid
            Width = 740
            Height = 433
            ExplicitWidth = 740
            ExplicitHeight = 433
            inherited tvPerfil: TcxGridDBTableView
              object cxgrdbclmnPerfilUSUARIO_GRUPO_PERFILES: TcxGridDBColumn
                Caption = 'Usuario'
                DataBinding.FieldName = 'USUARIO_GRUPO_PERFILES'
                Width = 171
              end
              object cxgrdbclmnPerfilKEY_PERFILES: TcxGridDBColumn
                Caption = 'Key'
                DataBinding.FieldName = 'KEY_PERFILES'
                Width = 121
              end
              object cxgrdbclmnPerfilSUBKEY_PERFILES: TcxGridDBColumn
                Caption = 'SubKey'
                DataBinding.FieldName = 'SUBKEY_PERFILES'
                Width = 285
              end
              object cxgrdbclmnPerfilVALUE_PERFILES: TcxGridDBColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VALUE_PERFILES'
                Width = 124
              end
              object cxgrdbclmnPerfilVALUE_TEXT_PERFILES: TcxGridDBColumn
                Caption = 'Valor Texto'
                DataBinding.FieldName = 'VALUE_TEXT_PERFILES'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Width = 155
              end
              object cxgrdbclmnPerfilTYPE_BLOB_PERFILES: TcxGridDBColumn
                Caption = 'Tipo Blob'
                DataBinding.FieldName = 'TYPE_BLOB_PERFILES'
                Width = 131
              end
              object cxgrdbclmnPerfilVALUE_BLOB_PERFILES: TcxGridDBColumn
                Caption = 'Valor Blob'
                DataBinding.FieldName = 'VALUE_BLOB_PERFILES'
                Width = 139
              end
              object cxgrdbclmnPerfilINSTANTEMODIF: TcxGridDBColumn
                DataBinding.FieldName = 'INSTANTEMODIF'
                Visible = False
                Width = 128
              end
              object cxgrdbclmnPerfilINSTANTEALTA: TcxGridDBColumn
                DataBinding.FieldName = 'INSTANTEALTA'
                Visible = False
                Width = 128
              end
              object cxgrdbclmnPerfilUSUARIOALTA: TcxGridDBColumn
                DataBinding.FieldName = 'USUARIOALTA'
                Visible = False
                Width = 88
              end
              object cxgrdbclmnPerfilUSUARIOMODIF: TcxGridDBColumn
                DataBinding.FieldName = 'USUARIOMODIF'
                Visible = False
                Width = 108
              end
            end
          end
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 742
      TabOrder = 0
      ExplicitWidth = 742
      inherited pnlTopGrid: TPanel
        Width = 740
        ExplicitWidth = 740
        inherited dxbvl1: TdxBevel
          Width = 827
          ExplicitWidth = 827
        end
        inherited edtBusqGlobal: TcxTextEdit
          TabOrder = 2
          ExplicitHeight = 27
        end
        inherited nvNavegador: TcxDBNavigator
          Top = 5
          Height = 25
          ExplicitTop = 5
          ExplicitHeight = 25
        end
        inherited rbBBDD: TcxRadioButton
          TabOrder = 0
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 744
    Height = 564
    TabOrder = 1
    ExplicitLeft = 744
    ExplicitHeight = 564
    inherited pButtonGen: TPanel
      Top = 365
      ExplicitTop = 365
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 128
    Top = 416
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 8
    Top = 416
  end
  inherited styconEstilo: TcxEditStyleController
    Style.TransparentBorder = False
    Left = 176
    Top = 416
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    DataSet = dmProveedores.unqryTablaG
    Left = 24
    Top = 488
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 56
    Top = 408
  end
  inherited cxstylrpstry: TcxStyleRepository
    PixelsPerInch = 96
  end
  object actmgr1: TActionManager
    Left = 440
    Top = 312
    StyleName = 'Platform Default'
    object act1: TAction
      Caption = 'act1'
      ShortCut = 16459
    end
    object act2: TAction
      Caption = 'act2'
      ShortCut = 16454
    end
    object act3: TAction
      Caption = 'act3'
      ShortCut = 16466
      OnExecute = act3Execute
    end
  end
end