unit ana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, depo;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses grs, depo2, depo3;

procedure TForm2.FormCreate(Sender: TObject);
begin
 Form2.scaleBy(800,600);
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
MessageDlg('Personel Ýzlencesi' ,mtInformation, [mbOK],0);
Form3.Show;
Form2.Hide;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
MessageDlg('Depo Takip' ,mtInformation, [mbOK],0);
Form4.Show;
Form2.Hide;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
MessageDlg('Yapým Aþamasýnda' ,mtInformation, [mbOK],0);
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
MessageDlg('Sipariþler' ,mtInformation, [mbOK],0);
Form5.Show;
Form2.Hide;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
MessageDlg('Çýkýþ Yapýldý' ,mtInformation, [mbOK],0);
Application.Terminate
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=TimeToStr(Time);
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
Label3.Caption:=DateToStr(Date);
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
