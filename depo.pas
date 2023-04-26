unit depo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    d: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    DBEdit1: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBImage1: TDBImage;
    Image5: TImage;
    DBEdit5: TDBEdit;
    Image6: TImage;
    DBEdit6: TDBEdit;
    Image7: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses ana;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
Form3.Hide;
Form2.Show;


end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
ADOTable1.Post;
end;

end.
