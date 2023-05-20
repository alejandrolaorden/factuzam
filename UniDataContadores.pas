unit UniDataContadores;

interface

uses
  System.SysUtils, System.Classes, UniDataGen, Data.DB, MemDS, DBAccess, Uni,
  inLibUser, inMtoPrincipal, UniDataConn;

type
  TdmContadores = class(TdmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmContadores: TdmContadores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
