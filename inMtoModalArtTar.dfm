inherited frmMtoModalArtTar: TfrmMtoModalArtTar
  BorderIcons = []
  Caption = 'Seleccionar Tarifas'
  ClientHeight = 196
  ClientWidth = 433
  OnClose = FormClose
  ExplicitWidth = 449
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 19
  object pnl1: TPanel [0]
    Left = 0
    Top = 155
    Width = 433
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelar1: TcxButton
      Left = 10
      Top = 6
      Width = 177
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = btnCancelar1Click
    end
    object btnAceptar: TcxButton
      Left = 248
      Top = 6
      Width = 177
      Height = 25
      Caption = '&Aceptar'
      TabOrder = 1
      OnClick = btnAceptarClick
    end
  end
  object lstTarifas: TcxListView [1]
    Left = 0
    Top = 0
    Width = 433
    Height = 155
    Align = alClient
    Checkboxes = True
    Columns = <
      item
        AutoSize = True
        Caption = 'C'#243'digo Tarifa'
      end
      item
        AutoSize = True
        Caption = 'Nombre Tarifa'
      end>
    ReadOnly = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 328
    Top = 8
  end
  inherited styconEstilo: TcxEditStyleController
    PixelsPerInch = 96
  end
end
