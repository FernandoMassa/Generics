unit Dictionary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtNome: TLabeledEdit;
    edtCPF: TLabeledEdit;
    edtGrad: TLabeledEdit;
    cbxGenero: TComboBox;
    Label1: TLabel;
    edtNacional: TLabeledEdit;
    Memo1: TMemo;
    btnAdd: TButton;
    btnTryGetValue: TButton;
    btnRemove: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnTryGetValueClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
   // Lista: TDictionary<integer, >;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa.nome := edtNome.Text;
  pessoa.cpf := edtCPF.Text;

  Lista.Add(pessoa.cpf, pessoa);
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  Lista.Remove(edtCPF.Text);
end;

procedure TForm1.btnTryGetValueClick(Sender: TObject);
var
  pessoa: TPessoa;
begin
  if Lista.TryGetValue(edtCPF.Text, pessoa) then
    Memo1.Lines.Add(pessoa.nome + ' - ' + pessoa.cpf )
  else
    Memo1.Lines.Add('Usuário não encontrado!');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Lista.TrimExcess;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Lista.ContainsKey(edtCPF.Text) then
    Memo1.Lines.Add('Usuário existe na lista!')
  else
    Memo1.Lines.Add('Usuário Não existe na lista!')
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa.nome := edtNome.Text;
  pessoa.cpf := edtCPF.Text;

  if Lista.ContainsValue(pessoa) then
    Memo1.Lines.Add('Usuário encontrado na lista')
  else
    Memo1.Lines.Add('Usuário NÃO ESTÁ na lista')

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Lista.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Lista := TDictionary<String, TPessoa>.Create;
end;

end.
