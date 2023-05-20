inherited frmModalGenImpSave: TfrmModalGenImpSave
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Guardar Formulario Editado'
  ClientHeight = 189
  ClientWidth = 462
  Position = poMainFormCenter
  OnClose = FormClose
  ExplicitWidth = 468
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 19
  object edtNombreOrigen: TcxTextEdit [0]
    Left = 187
    Top = 24
    Enabled = False
    TabOrder = 0
    Width = 238
  end
  object lbl1: TcxLabel [1]
    Left = 47
    Top = 25
    Caption = 'Nombre origen'
  end
  object edtDescripcion: TcxTextEdit [2]
    Left = 187
    Top = 64
    TabOrder = 2
    Width = 238
  end
  object lbl2: TcxLabel [3]
    Left = 5
    Top = 65
    Caption = 'Nombre del informe'
  end
  object lbl3: TcxLabel [4]
    Left = 107
    Top = 102
    Caption = 'Permiso'
  end
  object btnGuardar: TcxButton [5]
    Left = 8
    Top = 146
    Width = 145
    Height = 25
    Caption = '&Guardar'
    TabOrder = 5
    OnClick = btnGuardarClick
  end
  object btnCancelar: TcxButton [6]
    Left = 288
    Top = 146
    Width = 137
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object cbbPermisos: TcxComboBox [7]
    Left = 184
    Top = 101
    TabOrder = 7
    Width = 241
  end
  inherited cxlclzr1: TcxLocalizer
    Left = 152
    Top = 248
  end
  inherited cxlkndflcntrlr1: TcxLookAndFeelController
    Left = 64
    Top = 232
  end
  inherited styconEstilo: TcxEditStyleController
    Left = 216
    Top = 216
    PixelsPerInch = 96
  end
  inherited dxskncntrlr1: TdxSkinController
    Left = 144
    Top = 192
  end
end
