unit depo2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Data.Win.ADODB, Data.DB, Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids,
  IdBaseComponent, IdVCard, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses ana;

procedure TForm4.Button1Click(Sender: TObject);
var
a,b,c : Integer;
begin
a := StrToInt(DBEdit4.Text);
b := StrToInt(DBEdit5.Text);
c := a-b;
if c < 0 then Label3.Caption:= 'Eksik Sayýnýz';
if c >0  then Label3.Caption:= 'Fazlalýk Sayýnýz';
Label1.Caption:= IntToStr(c);
end;


procedure TForm4.Label1Click(Sender: TObject);
var
a,b,c : Integer;
begin
a := StrToInt(DBEdit4.Text);
b := StrToInt(DBEdit5.Text);
c := a-b;
if c < 0 then Label3.Caption:= 'Eksik Sayýnýz';
if c >0  then Label3.Caption:= 'Fazlalýk Sayýnýz';
Label1.Caption:= IntToStr(c);
end;
procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
Form4.Close;
Form2.Showmodal;
end;

end.
procedure TForm1.WMGetMinMaxInfo( var Message :TWMGetMinMaxInfo );       1
begin
with Message.MinMaxInfo^ do
begin
ptMaxSize.X := 10;
ptMaxSize.Y := 10;
ptMaxPosition.X := 20;
ptMaxPosition.Y := 20;
ptMinTrackSize.X := 20;

ptMinTrackSize.Y := 10;
ptMaxTrackSize.X := 10;
ptMaxTrackSize.Y := 10;
end;
Message.Result := 0;
inherited;
end;
