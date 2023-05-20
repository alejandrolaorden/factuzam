object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = 'frmBase'
  ClientHeight = 135
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Lucida Sans'
  Font.Pitch = fpFixed
  Font.Style = []
  Font.Quality = fqClearType
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object cxlclzr1: TcxLocalizer
    Left = 136
    Top = 72
  end
  object cxlkndflcntrlr1: TcxLookAndFeelController
    NativeStyle = False
    SkinName = 'cxPCPainter'
    Left = 48
    Top = 56
  end
  object styconEstilo: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Lucida Sans'
    Style.Font.Pitch = fpFixed
    Style.Font.Style = []
    Style.Font.Quality = fqClearType
    Style.IsFontAssigned = True
    Left = 200
    Top = 40
    PixelsPerInch = 96
  end
  object dxskncntrlr1: TdxSkinController
    NativeStyle = False
    SkinName = 'cxPCPainter'
    Left = 128
    Top = 16
  end
end
