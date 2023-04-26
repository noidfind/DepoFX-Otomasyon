unit grs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ana, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.Imaging.GIFImg, splash;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ImageList1: TImageList;
    Image2: TImage;
    ImageList2: TImageList;
    Button2: TButton;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Edit1.Text = '1') and (Edit2.Text = '1') then
 begin
 MessageDlg('Giriþ Baþarýlý' ,mtInformation, [mbOK],0);
  Form2.Show;
  Form1.Hide;
end
else
MessageDlg('Kullanýcý adý veya þifre yanlýþ!' ,mtInformation, [mbOK],0);
 end;


procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Form1.scaleBy(800,600);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Form6.ShowModal;
end;

end.
procedure TForm1.WMGetMinMaxInfo( var Message :TWMGetMinMaxInfo );
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
