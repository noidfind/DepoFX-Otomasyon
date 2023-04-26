unit splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses grs;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
Progressbar1.Position := Progressbar1.Position +2;
 if (Progressbar1.Position = 100) then
begin
timer1.Enabled:=false;
form6.close;
form1.Show;


end;
end;

end.
