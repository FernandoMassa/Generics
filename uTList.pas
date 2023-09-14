unit uTList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnAdd: TButton;
    brnRemover: TButton;
    btnListar: TButton;
    btnCapacity: TButton;
    btnCount: TButton;
    btnOnNotify: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure brnRemoverClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnOnNotifyClick(Sender: TObject);
  private
    ListaNum: TList<integer>;
    Fila: TQueue<string>;
    procedure Notificacao(Sender: TObject; const Item: integer;
      Action: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.brnRemoverClick(Sender: TObject);
begin
  ListaNum.Delete(Pred(ListaNum.Count));
  ListaNum.TrimExcess;
end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
  ListaNum.Add(StrToIntDef(Edit1.Text, -7));
end;

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Capacity.ToString);
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Count.ToString);
end;

procedure TForm1.btnListarClick(Sender: TObject);
var
  i: integer;
begin
  Memo1.Lines.Clear;
  for i := 0 to Pred(ListaNum.Count) do
    Memo1.Lines.Add(ListaNum[i].ToString);
end;

procedure TForm1.btnOnNotifyClick(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListaNum := TList<integer>.Create;
  Fila := TQueue<string>.Create;
end;

procedure TForm1.Notificacao(Sender: TObject; const Item: integer;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded:
      Memo1.Lines.Add('O item ' + Item.ToString + 'foi adicionado');
    cnRemoved:
      Memo1.Lines.Add('O item ' + Item.ToString + 'foi removido');
    cnExtracted:
      Memo1.Lines.Add('O item ' + Item.ToString + 'foi extraido');
  end;
end;

end.
