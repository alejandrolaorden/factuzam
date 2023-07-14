inherited frmMtoSearch: TfrmMtoSearch
  Caption = 'frmMtoSearch'
  ClientWidth = 640
  Visible = False
  ExplicitWidth = 656
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    Width = 500
    ExplicitWidth = 500
    inherited pcPantalla: TcxPageControl
      Width = 498
      Height = 407
      ExplicitWidth = 498
      ExplicitHeight = 407
      ClientRectBottom = 407
      ClientRectRight = 498
      inherited tsLista: TcxTabSheet
        ExplicitTop = 32
        ExplicitWidth = 512
        ExplicitHeight = 375
        inherited cxGrdPrincipal: TcxGrid
          Width = 512
          Height = 375
          ExplicitWidth = 512
          ExplicitHeight = 375
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            OnCellDblClick = cxGrdDBTabPrinCellDblClick
            OptionsData.Appending = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        TabVisible = False
        ExplicitTop = 27
        ExplicitWidth = 512
        ExplicitHeight = 380
      end
      inherited tsPerfil: TcxTabSheet
        TabVisible = False
        ExplicitWidth = 498
        ExplicitHeight = 377
        inherited pnlPerfilTop: TPanel
          Width = 498
          ExplicitWidth = 498
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 21
          end
        end
        inherited pnlPerfilDetail: TPanel
          Width = 498
          Height = 320
        end
      end
    end
    inherited pnlTopPage: TPanel
      Width = 498
      ExplicitWidth = 498
      inherited pnlTopGrid: TPanel
        Width = 496
        ExplicitWidth = 496
        inherited sbExportExcel: TSpeedButton
          Visible = False
        end
        inherited edtBusqGlobal: TcxTextEdit
          ExplicitHeight = 21
        end
        inherited nvNavegador: TcxDBNavigator
          Visible = False
        end
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 448
      Width = 498
      Height = 70
      Align = alBottom
      TabOrder = 2
      object btnAceptar: TcxButton
        Left = 320
        Top = 24
        Width = 177
        Height = 25
        Caption = '&Aceptar'
        TabOrder = 0
        OnClick = btnAceptarClick
      end
      object btnCancelar1: TcxButton
        Left = 18
        Top = 24
        Width = 177
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
  end
  inherited pButtonRightBar: TPanel
    Left = 500
    Visible = False
    ExplicitLeft = 500
    inherited pButtonGen: TPanel
      inherited btnGrabar: TcxButton
        Visible = False
      end
      inherited btnCancelar: TcxButton
        Visible = False
      end
      inherited btnSalir: TcxButton
        Visible = False
      end
    end
    inherited pButtonBDStat: TPanel
      inherited pnTableName: TPanel
        inherited lblEditMode: TcxLabel
          Visible = False
        end
      end
      inherited Panel4: TPanel
        inherited lblTablaOrigen: TcxLabel
          Visible = False
        end
      end
    end
  end
  inherited styconEstilo: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited cxstylrpstry: TcxStyleRepository
    PixelsPerInch = 96
  end
  object unqryPerfiles: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT * FROM fza_usuarios_perfiles ')
    Left = 376
    Top = 440
  end
  object dsPerfiles: TDataSource
    DataSet = unqryPerfiles
    Left = 312
    Top = 264
  end
end
