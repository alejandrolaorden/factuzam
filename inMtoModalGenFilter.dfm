inherited frmModalGenFilter: TfrmModalGenFilter
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Filtrar por grupos de datos'
  ClientHeight = 602
  ClientWidth = 829
  Position = poMainFormCenter
  OnClose = FormClose
  ExplicitWidth = 835
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel [0]
    Left = 0
    Top = 561
    Width = 829
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnGuardar: TcxButton
      Left = 654
      Top = 8
      Width = 145
      Height = 25
      Caption = '&Guardar'
      TabOrder = 0
      OnClick = btnGuardarClick
    end
    object btnCancelar: TcxButton
      Left = 8
      Top = 8
      Width = 137
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object pnl2: TPanel [1]
    Left = 0
    Top = 0
    Width = 829
    Height = 561
    Align = alClient
    TabOrder = 1
    object pcFiltros: TcxPageControl
      Left = 1
      Top = 1
      Width = 827
      Height = 559
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsProveedores
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 559
      ClientRectRight = 827
      ClientRectTop = 30
      object tsProveedores: TcxTabSheet
        Caption = '&1_Proveedores'
        ImageIndex = 0
        object lst1: TcxDBCheckListBox
          Left = 0
          Top = 0
          Width = 827
          Height = 529
          Align = alClient
          Items = <>
          ParentColor = False
          TabOrder = 0
        end
      end
      object tsFamilias: TcxTabSheet
        Caption = '&2_Familias'
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsTarifas: TcxTabSheet
        Caption = '&3_Tarifas'
        ImageIndex = 2
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsArticulos: TcxTabSheet
        Caption = '&4_Articulos'
        ImageIndex = 3
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsVentas: TcxTabSheet
        Caption = '&5_Ventas'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 392
    Top = 488
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 328
    Top = 488
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 528
    Top = 488
    PixelsPerInch = 96
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 456
    Top = 488
  end
end
