unit UniDataFamilias;

interface

uses
  System.SysUtils, System.Classes, UniDataGen, Data.DB, MemDS, DBAccess,
  Uni, inLibUser, inMtoPrincipal, UniDataConn;

type
  TdmFamilias = class(TdmBase)
    unstrdprcContador: TUniStoredProc;
    unqryArticulosFamilias: TUniQuery;
    dsArticulosFamilias: TDataSource;
    procedure unqryTablaGAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure unqryTablaGBeforePost(DataSet: TDataSet);
    procedure unqryRetencionesAfterInsert(DataSet: TDataSet);
    procedure unqryRetencionesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure GetCodigoAutoFamilia;
    //procedure GetCodigoAutoRetencion;
  end;

var
  dmFamilias: TdmFamilias;

implementation

uses
  inMtoFamilias, inLibGlobalVar;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmFamilias.unqryRetencionesAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  unqryRetenciones.FindField('CODIGO_RETENCION').AsString := '0';
end;

procedure TdmFamilias.unqryRetencionesBeforePost(DataSet: TDataSet);
begin
  inherited;
  //GetCodigoAutoRetencion;
end;

procedure TdmFamilias.unqryTablaGAfterInsert(DataSet: TDataSet);
begin
  inherited;
  unqryTablaG.FindField('CODIGO_Familia').AsString := '0';
  unqryTablaG.FindField('ORDEN_Familia').AsString := '0';
end;

procedure TdmFamilias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  unstrdprcContador.Connection := oConn;
end;

procedure TdmFamilias.GetCodigoAutoFamilia;
begin
  if unqryTablaG.FindField('CODIGO_Familia').AsString = '0' then
  begin
    with unstrdprcContador do
    begin
      Params.Clear;
      Params.CreateParam(ftString, 'ptipodoc', ptInput);
      Params.CreateParam(ftInteger, 'pcont', ptOutput);
      Params.CreateParam(ftInteger, 'pUSUARIO_MODIF', ptInput);
      ParamByName('pUSUARIO_MODIF').AsString := oUser;
      ParamByName('ptipodoc').AsString :=  'FA';
      ExecProc;
      unqryTablaG.FindField('CODIGO_Familia').AsString :=
                                                  ParamByName('pcont').AsString;
    end;
  end;
    if unqryTablaG.FindField('ORDEN_Familia').AsString = '0' then
  begin
    with unstrdprcContador do
    begin
      Params.Clear;
      Params.CreateParam(ftString, 'ptipodoc', ptInput);
      Params.CreateParam(ftInteger, 'pcont', ptOutput);
      Params.CreateParam(ftInteger, 'pUSUARIO_MODIF', ptInput);
      ParamByName('pUSUARIO_MODIF').AsString := oUser;
      ParamByName('ptipodoc').AsString :=  'FO';
      ExecProc;
      unqryTablaG.FindField('ORDEN_Familia').AsString :=
                                                  ParamByName('pcont').AsString;
    end;
  end;

end;

procedure TdmFamilias.unqryTablaGBeforePost(DataSet: TDataSet);
begin
  inherited;
    with unqryTablaG do
  begin
    if Trim(FindField('NOMBRE_FAMILIA').AsString) = '' then
    begin
      raise ERangeError.CreateFmt('%s no es un valor válido ' +
                                       'para el campo Nombre de Familias',
               [FindField('NOMBRE_FAMILIA').AsString]);
      Abort;
    end
    else
      GetCodigoAutoFamilia;
  end;
end;

end.
