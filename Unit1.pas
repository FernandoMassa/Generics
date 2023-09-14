unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
   { TPessoa }

   TPessoa = class
   private
      Fnome: string;
      procedure Setnome(AValue: string);
   public
     property nome : string read Fnome write Setnome;
   end;

   { TNFe }

   TNFe<T: constructor> = class
     FGeneric : T;
     function PegaGeneric : T;
     constructor create;
   end;

  TForm1 = class(TForm)
    btnGeneric: TButton;
    procedure btnGenericClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ListaNum : TList<integer>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TPessoa.Setnome(AValue: string);
begin
   Fnome := AValue;
end;

{ TForm1 }

procedure TForm1.btnGenericClick(Sender: TObject);
var
   vExemplo2 : TNFe<string>;
   vNFe : TNFe<TPessoa>;
begin
   vNFe := TNFe<TPessoa>.Create;
   try
     vNFe.FGeneric.nome := 'Fernando';
     ShowMessage(vNFe.FGeneric.nome);
   finally
     vNFe.Free ;
   end;
end;

{ TNFe }

function TNFe<T>.PegaGeneric: T;
begin
   Result := FGeneric;
end;

constructor TNFe<T>.create;
begin
    FGeneric := T.create;
end;

end.
