unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    FxRelatorios: TfrxReport;
    FrxDados: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure Relatorio(const pReport : TFrxReport);
    procedure Relatorio;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses Unit1;

{ TForm2 }

{procedure TForm2.Relatorio(const pReport: TFrxReport);
begin
pReport.PrepareReport;
pReport.Preview;
end;   }

{ TForm2 }

procedure TForm2.Relatorio;
begin
    FxRelatorios.ShowReport();
end;

end.
