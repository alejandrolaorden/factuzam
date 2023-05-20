{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoFrmBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, cxLocalization, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxLookAndFeels, dxSkinsForm,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSpringTime, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxCore;

type
  TfrmBase = class(TForm)
    cxlclzr1: TcxLocalizer;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    styconEstilo: TcxEditStyleController;
    dxskncntrlr1: TdxSkinController;
    procedure FormCreate(Sender: TObject);
    procedure SetSkin(sSkin:String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}
{$R CXLOCALIZATION.res}

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  cxlclzr1.StorageType := lstResource;
  cxlclzr1.FileName := 'CXLOCALIZATION.res';
  cxlclzr1.Active := True;
  cxlclzr1.Locale := 1034;
end;

procedure TfrmBase.SetSkin(sSkin: String);
begin
  if sSkin = 'Native' then
  begin
    cxlkndflcntrlr1.SkinName := 'UserSkin';
    cxlkndflcntrlr1.NativeStyle := True;
    dxskncntrlr1.SkinName := 'UserSkin';
    dxskncntrlr1.NativeStyle := True;
    styconEstilo.Style.LookAndFeel.SkinName := 'UserSkin';
    styconEstilo.Style.LookAndFeel.NativeStyle := True;
  end
  else
  begin
    cxlkndflcntrlr1.SkinName := sSkin;
    cxlkndflcntrlr1.NativeStyle := False;
    dxskncntrlr1.SkinName := sSkin;
    dxskncntrlr1.NativeStyle := False;
    styconEstilo.Style.LookAndFeel.SkinName := sSkin;
    styconEstilo.Style.LookAndFeel.NativeStyle := False;
  end;
end;

end.
