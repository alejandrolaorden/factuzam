inherited dmUsuarios: TdmUsuarios
  OldCreateOrder = True
  Width = 330
  inherited unqryTablaG: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      'FROM vi_usuarios'
      '')
    Active = True
    Left = 24
  end
  object unqryGrupos: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      'FROM vi_usuarios_grupos'
      '')
    Active = True
    BeforeInsert = unqryTablaGBeforeInsert
    BeforePost = unqryTablaGBeforePost
    Left = 192
    Top = 24
  end
  object dsGrupos: TDataSource
    DataSet = unqryGrupos
    Left = 192
    Top = 80
  end
  object unqryEmpresas: TUniQuery
    Connection = dmConn.conUni
    SQL.Strings = (
      'SELECT *  '
      'FROM vi_emp_busquedas'
      '')
    Active = True
    BeforeInsert = unqryTablaGBeforeInsert
    BeforePost = unqryTablaGBeforePost
    Left = 272
    Top = 24
  end
  object dsEmpresas: TDataSource
    DataSet = unqryEmpresas
    Left = 272
    Top = 80
  end
end
