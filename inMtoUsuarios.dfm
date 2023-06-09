inherited frmMtoUsuarios: TfrmMtoUsuarios
  Caption = 'Usuarios'
  FormStyle = fsMDIChild
  PixelsPerInch = 96
  TextHeight = 19
  inherited pButtonPage: TPanel
    inherited pcPantalla: TcxPageControl
      inherited tsLista: TcxTabSheet
        inherited cxGrdPrincipal: TcxGrid
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            OptionsData.Editing = True
            object cxGrdDBTabPrinUSUARIO_USUARIO: TcxGridDBColumn
              Caption = 'Nombre de Usuario'
              DataBinding.FieldName = 'USUARIO_USUARIO'
              Width = 171
            end
            object cxGrdDBTabPrinPASSWORD_USUARIO: TcxGridDBColumn
              Caption = 'Password Encriptado'
              DataBinding.FieldName = 'PASSWORD_USUARIO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.EchoMode = eemPassword
              Properties.PasswordChar = '*'
              Properties.ReadOnly = True
              Width = 134
            end
            object cxGrdDBTabPrinGRUPO_USUARIO: TcxGridDBColumn
              Caption = 'Grupo'
              DataBinding.FieldName = 'GRUPO_USUARIO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'GRUPO_GRUPO'
              Properties.ListColumns = <
                item
                  FieldName = 'GRUPO_GRUPO'
                end>
              Properties.ListSource = dmUsuarios.dsGrupos
              Width = 197
            end
            object cxgrdbclmnGrdDBTabPrinESGRUPOADMINISTRADOR_GRUPO: TcxGridDBColumn
              Caption = 'Es Administrador'
              DataBinding.FieldName = 'ESGRUPOADMINISTRADOR_GRUPO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 157
            end
            object cxGrdDBTabPrinEMPRESADEF_USUARIO: TcxGridDBColumn
              Caption = 'Empresa por defecto'
              DataBinding.FieldName = 'EMPRESADEF_USUARIO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CODIGO_EMPRESA'
              Properties.ListColumns = <
                item
                  FieldName = 'CODIGO_EMPRESA'
                end
                item
                  FieldName = 'RAZONSOCIAL_EMPRESA'
                end>
              Properties.ListOptions.ColumnSorting = False
              Properties.ListSource = dmUsuarios.dsEmpresas
              Width = 181
            end
            object cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA: TcxGridDBColumn
              Caption = 'Raz'#243'n Social Empresa'
              DataBinding.FieldName = 'RAZONSOCIAL_EMPRESA'
              Width = 218
            end
            object cxGrdDBTabPrinULTIMOLOGIN_USUARIO: TcxGridDBColumn
              Caption = #218'ltima Conexi'#243'n'
              DataBinding.FieldName = 'ULTIMOLOGIN_USUARIO'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = True
              Width = 190
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        TabVisible = False
        ExplicitTop = 30
        ExplicitWidth = 933
        ExplicitHeight = 447
      end
      inherited tsPerfil: TcxTabSheet
        inherited pnl4: TPanel
          inherited edtPerfilBusq: TcxTextEdit
            ExplicitHeight = 27
          end
        end
      end
    end
  end
  inherited pButtonRightBar: TPanel
    object btSetPass: TcxButton
      Left = 4
      Top = 128
      Width = 130
      Height = 57
      Caption = 'Cambiar &Contrase'#241'a'
      TabOrder = 2
      WordWrap = True
      OnClick = btSetPassClick
    end
  end
  inherited styconEstilo: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    DataSet = dmUsuarios.unqryTablaG
  end
  inherited cxstylrpstry: TcxStyleRepository
    PixelsPerInch = 96
  end
end
