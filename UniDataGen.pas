unit UniDataGen;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  inMtoPrincipal, inLibUser, inLibWin;

type
  TdmBase = class(TDataModule)
    unqryTablaG: TUniQuery;
    unqryPerfiles: TUniQuery;
    dsPerfiles: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure unqryPerfilesBeforePost(DataSet: TDataSet);
    procedure unqryTablaGBeforePost(DataSet: TDataSet);
    procedure unqryTablaGBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    //procedure AbrirPerfiles(bTabVisible:Boolean);
  end;

var
  dmBase: TdmBase;
  oPerfilDic : TProfileDicc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses inMtoGen, inLibGlobalVar;

{$R *.dfm}

procedure TdmBase.DataModuleCreate(Sender: TObject);
begin
  GetFormUserProfile(oPerfilDic, Self.Name, Self.Owner.Owner);
  LoadSQLFromProfile(Self, oPerfilDic);
  unqryTablaG.Connection              := oConn;
  unqryPerfiles.Connection            := oConn;
  (Self.Owner as TfrmMtoGen).tdmDataModule := Self;
  (Self.Owner as TfrmMtoGen).dsTablaG.DataSet := unqryTablaG;
  unqryTablaG.Open;
end;

procedure TdmBase.DataModuleDestroy(Sender: TObject);
begin
  unqryTablaG.Close;
  unqryPerfiles.Close;
  oPerfilDic.Clear;
//  oPerfilDic.Free;
end;

procedure TdmBase.unqryPerfilesBeforePost(DataSet: TDataSet);
begin
  (Self.Owner.Owner as Tfrmopenapp).FDmConn.ActualizarUserTimeModif(DataSet);
end;

procedure TdmBase.unqryTablaGBeforeInsert(DataSet: TDataSet);
begin
  if (Self.Owner is TfrmMtoGen) then
    with (Self.Owner as TfrmMtoGen) do
    begin
      if tsLista.TabVisible = true then
      begin
        pcPantalla.ActivePage := tsFicha;
      end;
    end;
end;

procedure TdmBase.unqryTablaGBeforePost(DataSet: TDataSet);
begin
  (Self.Owner.Owner as Tfrmopenapp).FDmConn.ActualizarUserTimeModif(DataSet);
end;

end.
