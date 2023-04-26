program DepoFX;

uses
  Vcl.Forms,
  grs in 'grs.pas' {Form1},
  ana in 'ana.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  depo in 'depo.pas' {Form3},
  depo2 in 'depo2.pas' {Form4},
  depo3 in 'depo3.pas' {Form5},
  splash in 'splash.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Ruby Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
