unit inLibGlobalVar;

interface

uses Uni,
     UniDataPerfiles;

var
  oPerfiles  :TdmPerfiles;
  oConn      :TUniConnection;
  oUser      :String;
  oGroup     :String;
  orootGroup :String;
  oVersion   :String;
  oAll       :string;

implementation

initialization
  oVersion         := '1.0.0.0a';
  oUser            := 'No definido';
  oGroup           := 'No definido';
  orootGroup       := 'No';
  oPerfiles        := nil;
  oConn            := nil;
  oAll             := 'Todos';
end.
