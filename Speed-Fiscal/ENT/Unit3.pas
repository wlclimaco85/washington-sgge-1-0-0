unit Unit3;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TDataModule3 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qryprodutos1: TIBQuery;
    qryMovEstoque: TIBQuery;
    IBQuery1: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
      function baixarestoque(const cdproduto : integer;
                                    custo : String;
                               quantidade: real ): boolean;
 function aumentarestoque(const cdproduto : integer;
                                    custo :String;
                               quantidade: real ): boolean;

 function ajustadata(const strdata : String): String;
 function ajustaVirgula(const frase : String): String;
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}
function  TDataModule3.baixarestoque(const cdproduto : integer;
                                       custo : String;
                                  quantidade: real ): boolean;
 var
  estqatual,estoque : double;
 begin
    try
    DataModule3.qryprodutos1.Active := false;
    DataModule3.qryMovEstoque.SQL.Text := 'select *from produtos where codpro = '+IntToStr(cdproduto);
    DataModule3.qryMovEstoque.Active := true;
    estqatual := DataModule3.qryMovEstoque.FieldbyName('estoque').AsInteger;
    estoque := estqatual - quantidade;
    DataModule3.qryMovEstoque.Active := false;
    DataModule3.qryMovEstoque.SQL.Text := 'update produtos set estoque = '+FloatToStr(estoque)+',estoqueant = '+FloatToStr(estqatual)+', custo = '+custo+' where codpro = '+IntToStr(cdproduto) ;
    DataModule3.qryMovEstoque.ExecSQL;
   // DataModule2.qryMovEstoque.Active := false;
   // DataModule2.qryMovEstoque.SQL.Text := 'update produtos set estoque = '+FloatToStr(estoque)+',estoqueant = '+FloatToStr(estqatual)+', custo = '+custo+' where codpro = '+IntToStr(cdproduto) ;
   // DataModule2.qryMovEstoque.ExecSQL;
   finally
    Result := false;

  end;
 end;

function  TDataModule3.aumentarestoque(const cdproduto : integer;
                                       custo : String;
                                  quantidade: real ): boolean;
var
  estqatual,estoque : double;
 begin
    DataModule3.qryprodutos1.Active := false;
    DataModule3.qryMovEstoque.SQL.Text := 'select *from produtos where codpro = '+IntToStr(cdproduto);
    DataModule3.qryMovEstoque.Active := true;
    estqatual := DataModule3.qryMovEstoque.FieldbyName('estoque').AsInteger;
    estoque := estqatual + quantidade;
    DataModule3.qryMovEstoque.Active := false;
    DataModule3.qryMovEstoque.SQL.Text := 'update produtos set estoque = '+FloatToStr(estoque)+',estoqueant = '+FloatToStr(estqatual)+', custo = '+DataModule3.ajustaVirgula(custo)+' where codpro = '+IntToStr(cdproduto) ;
    DataModule3.qryMovEstoque.ExecSQL;
    //DataModule2.qryMovEstoque.Active := True;
   Result := true;
  end;

  function  TDataModule3.ajustadata(const strdata : String): String;
  var x: integer;
    ano,mes,dia,aux: String;
  begin
    ano := Copy(strdata,0,4);
    mes := Copy(strdata,5,2);
    dia := Copy(strdata,7,2);
    aux := ''+dia+'/'+mes+'/'+ano ;
    result := aux;
  end;
  function  TDataModule3.ajustaVirgula(const frase : String): String;
  var x: integer;
     teste : string;
  begin
    x:= 0;
    teste := frase;
    while (x < 10  )do
    begin
      if(teste[x] = ',') then
        teste[x] := '.';
        x := x + 1;
    end;
    Result := teste;

  end;
end.