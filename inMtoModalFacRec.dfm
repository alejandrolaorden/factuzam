object frmGenFacRec: TfrmGenFacRec
  Left = 516
  Top = 286
  HorzScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Duplicar/Abonar Factura'
  ClientHeight = 297
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Lucida Sans'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object cxlbl1: TcxLabel
    Left = 8
    Top = 4
    Caption = 'Factura Origen N'#250'mero'
  end
  object edtNumFacOrigen: TcxTextEdit
    Left = 80
    Top = 24
    Enabled = False
    TabOrder = 3
    Width = 129
  end
  object pnl1: TPanel
    Left = 284
    Top = 0
    Width = 115
    Height = 297
    Align = alRight
    TabOrder = 0
    object btn3: TcxButton
      Left = 0
      Top = 274
      Width = 115
      Height = 25
      Caption = 'Salir'
      TabOrder = 1
      OnClick = btn3Click
    end
    object btnGenerar: TcxButton
      Left = 0
      Top = 251
      Width = 115
      Height = 25
      Caption = 'Generar'
      TabOrder = 0
      OnClick = btnGenerarClick
    end
  end
  object chkAbonar: TcxCheckBox
    Left = 16
    Top = 54
    Caption = 'Generar Factura de  Abono'
    TabOrder = 4
    OnClick = chkAbonarClick
  end
  object cxgrpbx1: TcxGroupBox
    Left = -2
    Top = 232
    Caption = 'Factura Generada'
    TabOrder = 10
    Height = 67
    Width = 287
    object edtNumFacAbono: TcxTextEdit
      Left = 72
      Top = 24
      Enabled = False
      TabOrder = 1
      Width = 129
    end
    object edtSerieFacAbono: TcxTextEdit
      Left = 24
      Top = 24
      Enabled = False
      TabOrder = 0
      Width = 41
    end
  end
  object edtSerieOrigen: TcxTextEdit
    Left = 32
    Top = 24
    Enabled = False
    TabOrder = 2
    Width = 41
  end
  object chkDuplicar: TcxCheckBox
    Left = 16
    Top = 78
    Caption = 'Duplicar Factura'
    TabOrder = 5
    OnClick = chkDuplicarClick
  end
  object cxlbl8: TcxLabel
    Left = 9
    Top = 111
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Serie Factura'
  end
  object cmbSerieFactura: TcxLookupComboBox
    Left = 16
    Top = 135
    Properties.KeyFieldNames = 'SERIE_CONTADOR'
    Properties.ListColumns = <
      item
        FieldName = 'SERIE_CONTADOR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dmFacturas.dsSeries
    Properties.ReadOnly = False
    TabOrder = 6
    Width = 145
  end
  object cxlbl2: TcxLabel
    Left = 9
    Top = 166
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Fecha Factura'
  end
  object dtFecha: TcxDateEdit
    Left = 16
    Top = 193
    TabOrder = 7
    Width = 121
  end
end
