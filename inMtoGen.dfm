inherited frmMtoGen: TfrmMtoGen
  Caption = 'Ventana Gen'#233'rica'
  ClientHeight = 519
  ClientWidth = 1075
  KeyPreview = True
  Visible = True
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  ExplicitWidth = 1091
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 19
  object pButtonPage: TPanel [0]
    Left = 0
    Top = 0
    Width = 935
    Height = 519
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    ParentBackground = False
    TabOrder = 1
    object pcPantalla: TcxPageControl
      Left = 1
      Top = 41
      Width = 933
      Height = 477
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsPerfil
      Properties.CustomButtons.Buttons = <>
      OnPageChanging = pcPantallaPageChanging
      ClientRectBottom = 477
      ClientRectRight = 933
      ClientRectTop = 30
      object tsLista: TcxTabSheet
        Caption = '&Lista'
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrdPrincipal: TcxGrid
          Left = 0
          Top = 0
          Width = 933
          Height = 447
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          object cxGrdDBTabPrin: TcxGridDBTableView
            OnDblClick = cxGrdDBTabPrinDblClick
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
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Hint = 'Borra el registro Activo'
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Hint = 'Edita registro Actual'
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Hint = 'Guarda Datos introducidos'
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Hint = 'Cancela la edici'#243'n actual'
            Navigator.Buttons.Cancel.Visible = False
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
            DataController.DataSource = dsTablaG
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsData.Appending = True
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
          end
          object cxGrdLvPrin: TcxGridLevel
            GridView = cxGrdDBTabPrin
          end
        end
      end
      object tsFicha: TcxTabSheet
        Caption = '&Ficha'
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 866
        ExplicitHeight = 0
      end
      object tsPerfil: TcxTabSheet
        Caption = 'Perfil'
        ImageIndex = 2
        object pnl4: TPanel
          Left = 0
          Top = 0
          Width = 933
          Height = 57
          Align = alTop
          TabOrder = 0
          object edtPerfilBusq: TcxTextEdit
            Left = 294
            Top = 14
            TabOrder = 0
            OnKeyPress = edtPerfilBusqKeyPress
            Width = 243
          end
          object lblTextoaBuscarPerfil: TcxLabel
            Left = 165
            Top = 18
            Caption = 'Texto a buscar'
            Transparent = True
          end
          object btnCargarColumnas: TcxButton
            Left = 9
            Top = 19
            Width = 148
            Height = 24
            Caption = '&Cargar columnas'
            TabOrder = 2
            OnClick = btnCargarColumnasClick
          end
          object btnCargarCaptions: TcxButton
            Left = 555
            Top = 19
            Width = 141
            Height = 24
            Caption = '&Cargar captions'
            TabOrder = 3
            OnClick = btnCargarCaptionsClick
          end
          object btnCargarVblesGlob: TcxButton
            Left = 715
            Top = 19
            Width = 182
            Height = 24
            Caption = '&Cargar Vbles Globales'
            TabOrder = 4
            OnClick = btnCargarVblesGlobClick
          end
        end
        object pnl5: TPanel
          Left = 0
          Top = 57
          Width = 933
          Height = 390
          Align = alClient
          Caption = 'pnl5'
          TabOrder = 1
          object cxgrdPerfil: TcxGrid
            Left = 1
            Top = 1
            Width = 931
            Height = 388
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            object tvPerfil: TcxGridDBTableView
              OnDblClick = cxGrdDBTabPrinDblClick
              Navigator.Buttons.ConfirmDelete = True
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Hint = 'Va al primer Registro'
              Navigator.Buttons.First.Visible = True
              Navigator.Buttons.PriorPage.Hint = 'Va a la p'#225'gina anterior'
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Hint = 'Va al Registro Anterior'
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Hint = 'Va al siguiente Registro'
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Hint = 'Va a la p'#225'gina siguiente'
              Navigator.Buttons.NextPage.Visible = True
              Navigator.Buttons.Last.Hint = 'Va al '#250'ltimo registro'
              Navigator.Buttons.Last.Visible = True
              Navigator.Buttons.Insert.Hint = 'Inserta un nuevo Registro'
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
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
              DataController.DataSource = dmBase.dsPerfiles
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.IncSearch = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              object tvPerfilUSUARIO_GRUPO_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'USUARIO_GRUPO_PERFILES'
                Width = 167
              end
              object tvPerfilKEY_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'KEY_PERFILES'
                Width = 132
              end
              object tvPerfilSUBKEY_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'SUBKEY_PERFILES'
                Width = 190
              end
              object tvPerfilVALUE_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'VALUE_PERFILES'
                Width = 112
              end
              object tvPerfilVALUE_TEXT_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'VALUE_TEXT_PERFILES'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Width = 140
              end
              object tvPerfilTYPE_BLOB_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'TYPE_BLOB_PERFILES'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekBlob
              end
              object tvPerfilVALUE_BLOB_PERFILES: TcxGridDBColumn
                DataBinding.FieldName = 'VALUE_BLOB_PERFILES'
              end
            end
            object cxgrdlvlPerfil: TcxGridLevel
              GridView = tvPerfil
            end
          end
        end
      end
    end
    object pnlTopPage: TPanel
      Left = 1
      Top = 1
      Width = 933
      Height = 40
      Align = alTop
      TabOrder = 1
      object pnlTopGrid: TPanel
        Left = 1
        Top = 1
        Width = 931
        Height = 36
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object dxbvl1: TdxBevel
          Left = 6
          Top = 2
          Width = 835
          Height = 31
        end
        object sbExportExcel: TSpeedButton
          Left = 811
          Top = 6
          Width = 21
          Height = 23
          Hint = 'Exportar Excel'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Lucida Sans Unicode'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearType
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF000000003C3C3CFF0000000000000000000000003C3C3CFF0000
            0000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
            00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E8000000000000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
          ParentFont = False
          OnClick = sbExportExcelClick
        end
        object edtBusqGlobal: TcxTextEdit
          Left = 136
          Top = 6
          TabOrder = 0
          OnKeyPress = edtBusqGlobalKeyPress
          Width = 203
        end
        object nvNavegador: TcxDBNavigator
          Left = 456
          Top = 6
          Width = 352
          Height = 23
          Buttons.CustomButtons = <>
          Buttons.Filter.Visible = False
          DataSource = dsTablaG
          LookAndFeel.NativeStyle = False
          TabOrder = 1
        end
        object lblTextoaBuscar: TcxLabel
          Left = 8
          Top = 9
          Caption = 'Texto a buscar'
          Transparent = True
        end
        object rbBBDD: TcxRadioButton
          Left = 345
          Top = 2
          Width = 100
          Height = 17
          Caption = 'Buscar BBDD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Montserrat Medium'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          TabOrder = 3
          OnClick = rbBBDDClick
          Transparent = True
        end
        object cxRadioButton2: TcxRadioButton
          Left = 432
          Top = 16
          Width = 25
          Height = 1
          Caption = 'cxRadioButton2'
          TabOrder = 4
        end
        object rbGrid: TcxRadioButton
          Left = 345
          Top = 17
          Width = 100
          Height = 17
          Caption = 'Buscar Grid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Montserrat Medium'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          TabOrder = 5
          OnClick = rbGridClick
          Transparent = True
        end
      end
    end
  end
  object pButtonRightBar: TPanel [1]
    Left = 935
    Top = 0
    Width = 140
    Height = 519
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alRight
    ParentBackground = False
    TabOrder = 0
    object pButtonGen: TPanel
      Left = 1
      Top = 320
      Width = 138
      Height = 198
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      BevelOuter = bvNone
      Constraints.MinHeight = 81
      Constraints.MinWidth = 123
      ParentBackground = False
      TabOrder = 1
      object btnGrabar: TcxButton
        Left = 0
        Top = 101
        Width = 138
        Height = 34
        Caption = '&Grabar'
        TabOrder = 0
        OnClick = btnGrabarClick
      end
      object btnCancelar: TcxButton
        Left = 0
        Top = 133
        Width = 138
        Height = 34
        Caption = '&Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
      object btnSalir: TcxButton
        Left = 0
        Top = 164
        Width = 138
        Height = 34
        Caption = '&Salir'
        TabOrder = 2
        OnClick = btnSalirClick
      end
    end
    object pButtonBDStat: TPanel
      Left = 1
      Top = 1
      Width = 138
      Height = 110
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Constraints.MinHeight = 37
      Constraints.MinWidth = 123
      ParentBackground = False
      TabOrder = 0
      object pnTableName: TPanel
        Left = 0
        Top = 21
        Width = 138
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        object lblEditMode: TcxLabel
          Left = 18
          Top = -1
          Caption = 'EditMode'
          Transparent = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 138
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object lblTablaOrigen: TcxLabel
          Left = 17
          Top = 2
          Caption = 'TablaOrigen'
          Transparent = True
        end
      end
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Active = True
    FileName = 'CXLOCALIZATION.res'
    StorageType = lstResource
    Left = 232
    Top = 440
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 72
    Top = 440
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 296
    Top = 440
    PixelsPerInch = 96
  end
  object dsTablaG: TDataSource [5]
    OnStateChange = dsTablaGStateChange
    Left = 8
    Top = 440
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 152
    Top = 440
  end
  object cxstylrpstry: TcxStyleRepository
    Left = 360
    Top = 443
    PixelsPerInch = 96
    object cxstyl: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Sans Unicode'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      TextColor = clWindowText
    end
  end
end
