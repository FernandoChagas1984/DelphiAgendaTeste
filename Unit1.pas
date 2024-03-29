unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMSSQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtNome: TEdit;
    txtSobrenome: TEdit;
    txtIdade: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    txtCodigo: TEdit;
    SQL: TSQLConnection;
    Query: TSQLQuery;
    Provedor: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TSQLQuery;
    btnRelatorio: TButton;
    btnPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    ClientDataSet1IdCLiente: TIntegerField;
    ClientDataSet1Nome: TWideStringField;
    ClientDataSet1Sobrenome: TWideStringField;
    ClientDataSet1Idade: TIntegerField;
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var operacao : string;
    procedure LimparCampos;
    procedure PreencheCampos;
    procedure Consultar;
    procedure Cadastrar;
    procedure Alterar;
    procedure Excluir;


  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
  uses Unit2;
procedure TForm1.Alterar;
begin
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('update TBClientes set Nome =:Nome where IdCliente =:IdCliente');
Query2.ParamByName('Nome').AsString := txtNome.Text;
Query2.ParamByName('IdCliente').AsInteger := strtoint(txtCodigo.Text);
try
  Query2.ExecSQL();
  Query.Refresh;
  ClientDataSet1.Refresh;
except
  on E: Exception do
      begin
        ShowMessage('Erro ao cadastrar Cliente!');
        Exit;
      end;


end;
LimparCampos;
end;

procedure TForm1.btnPesquisarClick(Sender: TObject);
begin
Consultar;
end;

procedure TForm1.btnRelatorioClick(Sender: TObject);
begin
Form2.Relatorio;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
operacao := 'cadastrar';
Cadastrar;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
operacao := 'alterar';
Alterar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Excluir;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
LimparCampos;
end;

procedure TForm1.Cadastrar;
begin
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('insert into TBClientes values (:Nome,:Sobrenome,:Idade)');
Query2.ParamByName('Nome').AsString := txtNome.Text;
Query2.ParamByName('Sobrenome').AsString := txtSobrenome.Text;
Query2.ParamByName('Idade').AsString := txtIdade.Text;
try
  Query2.ExecSQL();
  Query.Refresh;
  ClientDataSet1.Refresh;
except
  on E: Exception do
      begin
        ShowMessage('Erro ao cadastrar Cliente!');
        Exit;
      end;


end;
LimparCampos;
end;

procedure TForm1.Consultar;
begin
{Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('select *from TBClientes where Nome = '''+txtNome.Text+'''');
txtCodigo.Text := Query2.FieldByName('Nome').AsString;
txtSobrenome.Text := Query2.FieldByName('Sobrenome').AsString;
txtIdade.Text := Query2.FieldByName('Idade').AsString;
try
  Query2.ExecSQL();
  Query.Refresh;
  ClientDataSet1.Refresh;
except
  on E: Exception do
      begin
        ShowMessage('Erro ao cadastrar Cliente!');
        Exit;
      end;
end;  }
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('select * from TBClientes where Nome = '''+TxtNome.Text+'''');
Query2.Open;
if not Query2.Eof then
  begin
   TxtIdade.Text := Query2.FieldByName('Idade').AsString;
   txtSobrenome.Text := Query2.FieldByName('Sobrenome').AsString;
   txtCodigo.Text := Query2.FieldByName('IdCliente').AsString;
  end
  else
    ShowMessage('Cliente n�o encontrado!');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
PreencheCampos;
end;

procedure TForm1.Excluir;
begin
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('delete from TBClientes where IdCliente =:IdCliente');
Query2.ParamByName('IdCliente').AsInteger := strtoint(txtCodigo.Text);
try
  Query2.ExecSQL();
  Query.Refresh;
  ClientDataSet1.Refresh;
except
  on E: Exception do
      begin
        ShowMessage('Erro ao cadastrar Cliente!');
        Exit;
      end;
end;
LimparCampos;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
PreencheCampos;
end;

procedure TForm1.LimparCampos;
begin
txtNome.Clear;
txtSobrenome.Clear;
txtIdade.Clear;
txtCodigo.Clear;
txtNome.SetFocus;
end;

procedure TForm1.PreencheCampos;
begin
txtCodigo.Text := ClientDataSet1IdCLiente.AsString;
txtSobrenome.Text := ClientDataSet1Sobrenome.AsString;
txtNome.Text := ClientDataSet1Nome.AsString;
txtIdade.Text := ClientDataSet1Idade.AsString;
//txtSobrenome.Text := ClientDataSet1Sobrenome.AsString;
//txtIdade.Text := ClientDataSet1Idade.AsString;

end;

end.
