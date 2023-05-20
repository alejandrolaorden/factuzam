unit UniDataArticulos;

interface

uses
  System.SysUtils, System.Classes, UniDataGen, Data.DB, MemDS, DBAccess,
  Uni, inLibUser, inMtoPrincipal, UniDataConn;

type
  TdmArticulos = class(TdmBase)
    unstrdprcContador: TUniStoredProc;
    unqryFamiliaArticulos: TUniQuery;
    dsFamiliaArticulos: TDataSource;
    unqryTarifasArticulos: TUniQuery;
    dsTarifasArticulos: TDataSource;
    unqryProveedoresArticulos: TUniQuery;
    dsProveedoresArticulos: TDataSource;
    unqryLinFacturasArticulos: TUniQuery;
    dsLinFacturasArticulos: TDataSource;
    unqryProveedores: TUniQuery;
    dsProveedores: TDataSource;
    dsTiposIVA: TDataSource;
    unqryTiposIVA: TUniQuery;
    procedure unqryTablaGAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure unqryTablaGBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure GetCodigoAutoArticulo;
    procedure CopiarProveedoraArticulo(dtProveedores:TDataset);
    function GetDefaultFamilia:String;
    //procedure GetCodigoAutoRetencion;
  end;

var
  dmArticulos: TdmArticulos;

implementation

uses
  inMtoArticulos, inLibGlobalVar;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmArticulos.unqryTablaGAfterInsert(DataSet: TDataSet);
begin
  inherited;
  unqryTablaG.FindField('CODIGO_ARTICULO').AsString := '0';
  unqryTablaG.FindField('ESACTIVO_FIJO_ARTICULO').AsString := 'N';
  unqryTablaG.FindField('ORDEN_ARTICULO').AsString := '0';
  unqryTablaG.FindField('CODIGO_FAMILIA_ARTICULO').AsString :=
                                                              GetDefaultFamilia;
end;

procedure TdmArticulos.CopiarProveedoraArticulo(dtProveedores: TDataset);
begin
  with unqryProveedoresArticulos do
  begin
     if ( (State <> dsEdit) and
          (State <> dsInsert)
        ) then
       Edit;
    FindField('CODIGO_PROVEEDOR').AsString :=
                           dtProveedores.FindField('CODIGO_PROVEEDOR').AsString;
    FindField('RAZONSOCIAL_PROVEEDOR').AsString :=
                      dtProveedores.FindField('RAZONSOCIAL_PROVEEDOR').AsString;
  end;
end;

procedure TdmArticulos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  unqryFamiliaArticulos.Connection := oConn;
  unstrdprcContador.Connection := oConn;
  unqryPerfiles.Connection := oConn;
  unqryTarifasArticulos.Connection := oConn;
  unqryProveedoresArticulos.Connection := oConn;
  unqryLinFacturasArticulos.Connection := oConn;
  unqryProveedores.Connection := oConn;
  unqryTiposIVA.Connection := oConn;
  unqryTiposIVA.Open;
  unqryFamiliaArticulos.Open;
  unqryTarifasArticulos.Open;
  unqryProveedoresArticulos.Open;
  unqryLinFacturasArticulos.Open;
end;

procedure TdmArticulos.GetCodigoAutoArticulo;
begin
  if unqryTablaG.FindField('CODIGO_ARTICULO').AsString = '0' then
  begin
    with unstrdprcContador do
    begin
      Params.Clear;
      Params.CreateParam(ftString, 'ptipodoc', ptInput);
      Params.CreateParam(ftInteger, 'pcont', ptOutput);
      Params.CreateParam(ftInteger, 'pUSUARIO_MODIF', ptInput);
      ParamByName('pUSUARIO_MODIF').AsString := oUser;
      ParamByName('ptipodoc').AsString :=  'AR';
      ExecProc;
      unqryTablaG.FindField('CODIGO_ARTICULO').AsString :=
                                                  ParamByName('pcont').AsString;
    end;
  end;
  if unqryTablaG.FindField('ORDEN_ARTICULO').AsString = '0' then
  begin
    with unstrdprcContador do
    begin
      Params.Clear;
      Params.CreateParam(ftString, 'ptipodoc', ptInput);
      Params.CreateParam(ftInteger, 'pcont', ptOutput);
      Params.CreateParam(ftInteger, 'pUSUARIO_MODIF', ptInput);
      ParamByName('pUSUARIO_MODIF').AsString := oUser;
      ParamByName('ptipodoc').AsString :=  'AO';
      ExecProc;
      unqryTablaG.FindField('ORDEN_ARTICULO').AsString :=
                                                  ParamByName('pcont').AsString;
    end;
  end;
end;

function TdmArticulos.GetDefaultFamilia: String;
 var
  unqrySol:TUniQuery;
begin
  unqrySol := TUniQuery.Create(Self);
  unqrySol.Connection := oConn;
  unqrySol.SQL.Text := 'SELECT CODIGO_FAMILIA ' +
                       '  FROM vi_articulos_familias ' +
                       ' WHERE ESDEFAULT_FAMILIA = ' + QuotedStr('S');
  unqrySol.Open;
  if unqrySol.RecordCount = 0 then
    Sleep(0)
  //   MessageDlg('Empresa: #' + VarToStr(e.EditingValue) + '# no existe')
   else
      Result := unqrySol.Fields[0].AsString;
  unqrySol.Close;
  FreeAndNil(unqrySol);
end;

procedure TdmArticulos.unqryTablaGBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ((unqryProveedoresArticulos.State = dsInsert) or
      (unqryProveedoresArticulos.State = dsEdit)) then
         unqryProveedoresArticulos.Post;
  if ((unqryTarifasArticulos.State = dsInsert) or
      (unqryTarifasArticulos.State = dsEdit)) then
         unqryTarifasArticulos.Post;
  with unqryTablaG do
  begin
    if Trim(FindField('DESCRIPCION_ARTICULO').AsString) = '' then
    begin
      raise ERangeError.CreateFmt('%s no es un valor válido ' +
                                       'para el campo Descripción de Artículos',
               [FindField('DESCRIPCION_ARTICULO').AsString]);
        Abort;
    end
    else
      GetCodigoAutoArticulo;
  end;
end;

end.
