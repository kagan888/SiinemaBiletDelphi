unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, DB, ADODB;

type
  TForm7 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1seans_id: TIntegerField;
    ADOQuery1seans_tarih: TWideStringField;
    ADOQuery1seans_saat: TWideStringField;
    ADOQuery1salon_id: TWideStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
panel1.Visible:=true;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
panel1.Visible:=false;
end;

procedure TForm7.FormCreate(Sender: TObject);
var
 I:integer;
begin
 
  ADOQuery2.SQL.Text:='Select * From salon  ';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox1.Items.Add(ADOQuery2.FieldByName('salon_id').AsString);
 ADOQuery2.Next;
    end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  ADOQuery2.SQL.Text:='insert into seans(seans_tarih,seans_saat,salon_id) values(p2,p3,p4) ';

 ADOQuery2.Parameters.ParamByName('p2').Value:=maskEdit1.Text;
 ADOQuery2.Parameters.ParamByName('p3').Value:=maskEdit2.Text;
 ADOQuery2.Parameters.ParamByName('p4').Value:=ComboBox1.Text;

 ADOQuery2.ExecSQL;

 ADOQuery1.Refresh;
 
 Application.MessageBox('Ekleme Islemi Basarili',0);

 ADOQuery2.ExecSQL;
 maskEdit1.Text:='';
 maskEdit2.Text:='';
 ComboBox1.Text:='';
end;

end.
