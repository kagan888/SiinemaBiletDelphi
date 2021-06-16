unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button2: TButton;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox4: TComboBox;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.FormCreate(Sender: TObject);
var
 I:integer;
begin
   ADOQuery2.SQL.Text:='Select * From salon  ';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox3.Items.Add(ADOQuery2.FieldByName('salon_id').AsString);
 ADOQuery2.Next;
    end;

//
    ADOQuery2.SQL.Text:='Select * From seans  ';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox2.Items.Add(ADOQuery2.FieldByName('seans_id').AsString);
 ADOQuery2.Next;
    end;
 ///

 ADOQuery2.SQL.Text:='Select * From filmler where seans_id = p1 and salon_id=p2';
  ADOQuery2.Parameters.ParamByName('p1').Value:='0';
  ADOQuery2.Parameters.ParamByName('p2').Value:='0';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox1.Items.Add(ADOQuery2.FieldByName('film_adi').AsString);
 ADOQuery2.Next;
    end;
    //

    ADOQuery2.SQL.Text:='Select * From filmler where seans_id <> p1 and salon_id<>p2';
  ADOQuery2.Parameters.ParamByName('p1').Value:='0';
  ADOQuery2.Parameters.ParamByName('p2').Value:='0';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox4.Items.Add(ADOQuery2.FieldByName('film_adi').AsString);
 ADOQuery2.Next;
    end;

end;

procedure TForm8.ComboBox2Change(Sender: TObject);
var
 I:integer;
begin
ADOQuery2.SQL.Text:='Select * From seans where seans_id=p1 ';
 ADOQuery2.Parameters.ParamByName('p1').Value:=ComboBox2.Text;
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ListBox1.Items.Clear;
 ListBox1.Items.Add('Seans Tarihi : '+ADOQuery2.FieldByName('seans_tarih').AsString);
 ListBox1.Items.Add('Seans Saati : '+ ADOQuery2.FieldByName('seans_saat').AsString);
 ComboBox3.Text:=  ADOQuery2.FieldByName('salon_id').AsString ;
 ADOQuery2.Next;
    end;


    ADOQuery2.SQL.Text:='Select * From salon where salon_id=p1 ';
 ADOQuery2.Parameters.ParamByName('p1').Value:=ComboBox3.Text;
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ListBox2.Items.Clear;
 ListBox2.Items.Add('Salon Ad? : '+ADOQuery2.FieldByName('salon_ad?').AsString);
 ListBox2.Items.Add('Koltuk Sayýsý : '+ ADOQuery2.FieldByName('koltuk_sayisi').AsString);
 ADOQuery2.Next;
    end;
end;

procedure TForm8.ComboBox3Change(Sender: TObject);
var
 I:integer;
begin

end;

procedure TForm8.Button1Click(Sender: TObject);
begin



 ADOQuery1.SQL.Text:='update filmler set  seans_id=p2 ,salon_id=p3 where film_adi=p5 ';

 ADOQuery1.Parameters.ParamByName('p2').Value:=ComboBox2.Text;
 ADOQuery1.Parameters.ParamByName('p3').Value:=ComboBox3.Text;
 ADOQuery1.Parameters.ParamByName('p5').Value:=ComboBox1.Text;

 ADOQuery1.ExecSQL;
 Application.MessageBox('Vizyone Ekleme Islemi Basarili',0);
  ComboBox2.Text :='Seçiniz';
  ComboBox1.Text :='Seçiniz';
  ComboBox3.Text :='Seçiniz';
  ListBox1.Items.Clear;
     ListBox2.Items.Clear;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin

 ADOQuery1.SQL.Text:='update filmler set  seans_id=p2 ,salon_id=p3 where film_adi=p5 ';

 ADOQuery1.Parameters.ParamByName('p2').Value:='0';
 ADOQuery1.Parameters.ParamByName('p3').Value:='0';
 ADOQuery1.Parameters.ParamByName('p5').Value:=ComboBox4.Text;

 ADOQuery1.ExecSQL;
 Application.MessageBox('Vizyondan Çikartma Islemi Basarili',0);
end;

end.
 