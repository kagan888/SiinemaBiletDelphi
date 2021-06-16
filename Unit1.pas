unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ADOQuery1.SQL.Text:='Select * From kullanicilar where username=p1 and password=p2';
 ADOQuery1.Parameters.ParamByName('p1').Value:=Edit1.Text;
 ADOQuery1.Parameters.ParamByName('p2').Value:=Edit2.Text;
 ADOQuery1.ExecSQL;
 ADOQuery1.Open;
 if ADOQuery1.RecordCount > 0  then
 begin
 ADOQuery1.Close;
 Form2.Show;
 Form1.Hide;
 end
 else
 begin
 application.MessageBox('Yanlis Kullanici Adi ve Sifre',0);
 end;
end;

end.
