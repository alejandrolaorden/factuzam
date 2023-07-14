object frmLogon: TfrmLogon
  Left = 372
  Top = 317
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login FactuZam'
  ClientHeight = 266
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Lucida Sans'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 19
  object lblUsuario: TLabel
    Left = 47
    Top = 31
    Width = 66
    Height = 19
    Caption = 'Usuario'
  end
  object lblContrasena: TLabel
    Left = 19
    Top = 113
    Width = 94
    Height = 19
    Caption = 'Contrase'#241'a'
  end
  object lblHostBBDD: TLabel
    Left = 392
    Top = 19
    Width = 90
    Height = 19
    Caption = 'Host BBDD'
  end
  object Bevel1: TBevel
    Left = 333
    Top = 42
    Width = 10
    Height = 153
  end
  object lblNomBBDD: TLabel
    Left = 391
    Top = 83
    Width = 91
    Height = 19
    Caption = 'Nom BBDD'
  end
  object lblUserBBDD: TLabel
    Left = 365
    Top = 115
    Width = 117
    Height = 19
    Caption = 'Usuario BBDD'
  end
  object lblPasswordBBDD: TLabel
    Left = 351
    Top = 147
    Width = 131
    Height = 19
    Caption = 'Password BBDD'
  end
  object lblPortHost: TLabel
    Left = 385
    Top = 50
    Width = 97
    Height = 19
    Caption = 'Puerto Host'
  end
  object btnAceptar: TcxButton
    Left = 105
    Top = 178
    Width = 89
    Height = 29
    Caption = '&Aceptar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    OnClick = btnAceptarClick
  end
  object btnSalir: TcxButton
    Left = 8
    Top = 178
    Width = 91
    Height = 29
    Caption = '&Salir'
    ModalResult = 3
    TabOrder = 4
    OnClick = btnSalirClick
  end
  object edtUser: TcxTextEdit
    Left = 119
    Top = 23
    TabOrder = 0
    Width = 181
  end
  object edtPass: TcxTextEdit
    Left = 119
    Top = 110
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 1
    Width = 181
  end
  object edtGrupo: TcxTextEdit
    Left = 8
    Top = 60
    TabOrder = 2
    Visible = False
    Width = 41
  end
  object btnConf: TcxButton
    Left = 200
    Top = 178
    Width = 123
    Height = 29
    Caption = '&Conf BBDD ->'
    TabOrder = 5
    OnClick = btnConfClick
  end
  object edtHostName: TcxTextEdit
    Left = 494
    Top = 16
    TabOrder = 6
    Width = 243
  end
  object edtNomBD: TcxTextEdit
    Left = 494
    Top = 80
    TabOrder = 7
    Width = 150
  end
  object edtUserBD: TcxTextEdit
    Left = 494
    Top = 112
    TabOrder = 8
    Width = 150
  end
  object edtPassBD: TcxTextEdit
    Left = 494
    Top = 144
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 9
    Width = 150
  end
  object edtPortBD: TcxTextEdit
    Left = 494
    Top = 47
    TabOrder = 10
    Width = 49
  end
  object btnTest: TcxButton
    Left = 349
    Top = 178
    Width = 388
    Height = 30
    Caption = 'Grabar ini y Probar Conexi'#243'n'
    TabOrder = 11
    OnClick = btnTestClick
  end
  object btnSubirScript: TcxButton
    Left = 349
    Top = 216
    Width = 117
    Height = 30
    Caption = 'Subir script'
    TabOrder = 12
    OnClick = btnSubirScriptClick
  end
  object btnCopiaSeguridad: TcxButton
    Left = 472
    Top = 216
    Width = 150
    Height = 30
    Caption = 'Copia seguridad'
    TabOrder = 13
    OnClick = btnCopiaSeguridadClick
  end
  object btnRecover: TcxButton
    Left = 628
    Top = 216
    Width = 109
    Height = 30
    Caption = 'Recuperar'
    TabOrder = 14
    OnClick = btnRecoverClick
  end
  object chkRememberPassword: TcxCheckBox
    Left = 119
    Top = 139
    Caption = 'Recordar Password'
    TabOrder = 15
  end
  object chkRememberUser: TcxCheckBox
    Left = 119
    Top = 52
    Caption = 'Recordar Usuario'
    TabOrder = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 752
    Top = 72
  end
  object ucConexion: TUniConnection
    ProviderName = 'MySQL'
    Port = 3307
    Database = 'factuzam'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    OnError = ucConexionError
    Left = 664
    Top = 72
    EncryptedPassword = 'CEFFB9FFC9FFA8FFC9FF96FFCEFF95FFCEFF'
  end
  object udDump: TUniDump
    Connection = ucConexion
    SpecificOptions.Strings = (
      'MySQL.BackupStoredProcs=True'
      'MySQL.BackupTables=True'
      'MySQL.BackupTriggers=True'
      'MySQL.BackupViews=True'
      'MySQL.HexBlob=True')
    Options.QuoteNames = True
    Left = 752
    Top = 128
  end
  object tbUsers: TUniTable
    TableName = 'fza_usuarios'
    Connection = ucConexion
    Left = 664
    Top = 128
  end
end
