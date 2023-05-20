inherited frmMtoUsuariosPerfiles: TfrmMtoUsuariosPerfiles
  Caption = 'UsuariosPerfiles'
  FormStyle = fsMDIChild
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtonPage: TPanel
    inherited pcPantalla: TcxPageControl
      Properties.ActivePage = tsLista
      inherited tsLista: TcxTabSheet
        ExplicitTop = 27
        ExplicitWidth = 880
        ExplicitHeight = 450
        inherited cxGrdPrincipal: TcxGrid
          inherited cxGrdDBTabPrin: TcxGridDBTableView
            OptionsData.Editing = True
            object cxGrdDBTabPrinUSUARIO_GRUPO_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIO_GRUPO_PERFILES'
              Width = 178
            end
            object cxGrdDBTabPrinKEY_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'KEY_PERFILES'
              Width = 132
            end
            object cxGrdDBTabPrinSUBKEY_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'SUBKEY_PERFILES'
              Width = 382
            end
            object cxGrdDBTabPrinVALUE_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'VALUE_PERFILES'
              Width = 234
            end
            object cxGrdDBTabPrinVALUE_TEXT_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'VALUE_TEXT_PERFILES'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
            end
            object cxGrdDBTabPrinTYPE_BLOB_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'TYPE_BLOB_PERFILES'
            end
            object cxGrdDBTabPrinVALUE_BLOB_PERFILES: TcxGridDBColumn
              DataBinding.FieldName = 'VALUE_BLOB_PERFILES'
            end
          end
        end
      end
      inherited tsFicha: TcxTabSheet
        ExplicitTop = 27
        ExplicitWidth = 880
        ExplicitHeight = 450
      end
    end
  end
  inherited styconEstilo: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dsTablaG: TDataSource
    DataSet = dmUsuariosPerfiles.unqryTablaG
  end
end
