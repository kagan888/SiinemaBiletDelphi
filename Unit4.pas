unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, jpeg;

type
  TForm4 = class(TForm)
    Panel100: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    ListBox1: TListBox;
    Label6: TLabel;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnl_bilet_kes: TPanel;
    Image1: TImage;
    pnl12: TPanel;
    ComboBox4: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Panel100Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure pnl_bilet_kesClick(Sender: TObject);

  private
    { Private declarations }
  public
   procedure btn1Click(Sender:TObject);
    { Public declarations }
   procedure Panel101Click(Sender: TObject);
  end;

var
  Form4: TForm4;
   toplam : integer;
implementation

{$R *.dfm}
procedure TForm4.btn1Click(Sender:TObject);

begin

if (Sender as TPanel).Color=clGreen then
begin
  ShowMessage((Sender as TPanel).Caption+' Nolu Koltuk Se?ildi');
  (Sender as TPanel).Color:=clYellow ;
  ListBox1.Items.Add((Sender as TPanel).Caption) ;
  toplam := toplam+15;
  label7.Caption:=IntToStr(toplam);
end
else if (Sender as TPanel).Color=clYellow then
begin
 ShowMessage((Sender as TPanel).Caption+' Nolu Koltuk Se?imden ?ikarildi');
  (Sender as TPanel).Color:=clGreen ;
  ListBox1.Items.Delete(ListBox1.Items.IndexOf((Sender as TPanel).Caption));
  toplam := toplam-15;
  label7.Caption:=IntToStr(toplam);
end
end;

procedure TForm4.FormCreate(Sender: TObject);
var
 I:integer;

begin
    ADOQuery2.SQL.Text:='Select * From filmler where seans_id <> p1 and salon_id<>p2';
  ADOQuery2.Parameters.ParamByName('p1').Value:='0';
  ADOQuery2.Parameters.ParamByName('p2').Value:='0';
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox1.Items.Add(ADOQuery2.FieldByName('film_adi').AsString);
 Label1.Caption:= ADOQuery2.FieldByName('salon_id').AsString;
 ADOQuery2.Next;
    end;
    //m??teri
       ADOQuery2.SQL.Text:='Select * From musteri';
     ADOQuery2.ExecSQL;
    ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 ComboBox4.Items.Add(ADOQuery2.FieldByName('Ad?_Soyadi').AsString);

 ADOQuery2.Next;
    end;



    //m??teri
   end;

procedure TForm4.Panel101Click(Sender: TObject);
begin

ShowMessage((Sender as TPanel).Caption+' Nolu Koltuk Se?ildi');

end;

procedure TForm4.Panel100Click(Sender: TObject);
var
  Panel: TPanel;
begin
 Panel := Sender as TPanel;


 Edit1.Text := TPanel(Sender).Caption;

end;

procedure TForm4.Button1Click(Sender: TObject);
var
dynPanel : TPanel;
i : Integer;
j : Integer;
dinamikdizi:Array of String;
const
  NamePrefix = 'Panel';
begin
SetLength(dinamikdizi,StrToInt(Label2.Caption));    
//veri ?ekme diziye
   ADOQuery2.SQL.Text:='Select * From satis where salon_id = p1 and seans_id=p2  ';
  ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;  
    ADOQuery2.Parameters.ParamByName('p2').Value:=Label5.Caption;

 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=0 to ADOQuery2.RecordCount do
 begin

  dinamikdizi[i]:= ADOQuery2.FieldByName('koltuk_no').AsString;

 ADOQuery2.Next;
end;


//diziye veri?ekme
  i := 0;
  while i< StrToInt(Label2.Caption) do
  begin
    TPanel.Create(Self).Name := NamePrefix + IntToStr(i);
    with TPanel(FindComponent(NamePrefix + IntToStr(i))) do
    begin
      Left := 5 + (trunc(i / 10) * 150);
      Top := (i + 1) mod 10 * 50;
      Width := 120;
      Parent := Self;
      Caption := IntToStr(i+1);
      Enabled := True;
      Visible := True;
      OnClick:= btn1Click;
    j:=0;
   while j< StrToInt(Label2.Caption) do
  begin
   if dinamikdizi[j]=Caption then
   begin
   Color:= clRed;
  Enabled := False;
  break;
  j:=j+1;
   end
   else
   begin
   Color:= clGreen;
  j:=j+1;
   end
  end


   // .. varsa di?er ?zellikleri..
    end;
    if i > 70 then
      Break;

    inc(i);
     end;
     Button1.Enabled:=False;
 end;
procedure TForm4.ComboBox1Change(Sender: TObject);
var
salon_id :integer;
I: integer;
begin

 ADOQuery2.SQL.Text:='Select * From salon where salon_id = p1 ';
  ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;

 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
  Label2.Caption:= ADOQuery2.FieldByName('koltuk_sayisi').AsString;
  Label4.Caption:= ADOQuery2.FieldByName('salon_ad?').AsString;

 ADOQuery2.Next;
    end;

  ADOQuery2.SQL.Text:='Select * From seans where salon_id = p1 ';
  ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;

 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
  ComboBox2.items.Add(ADOQuery2.FieldByName('seans_tarih').AsString);


 ADOQuery2.Next;
    end;
     ComboBox3.Items.Clear;
    ADOQuery2.SQL.Text:='Select * From seans where salon_id = p1 and seans_tarih=p2';
  ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;
   ADOQuery2.Parameters.ParamByName('p2').Value:=ComboBox2.Text;
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
  ComboBox3.items.Add(ADOQuery2.FieldByName('seans_saat').AsString);


 ADOQuery2.Next;
    end;

end;

procedure TForm4.ComboBox3Change(Sender: TObject);
var
I : integer ;
begin
  ADOQuery2.SQL.Text:='Select * From seans where salon_id = p1 and seans_tarih=p2 and seans_saat=p3 ';
  ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;
    ADOQuery2.Parameters.ParamByName('p2').Value:=ComboBox2.Text;
     ADOQuery2.Parameters.ParamByName('p3').Value:=ComboBox3.Text;
 ADOQuery2.ExecSQL;
 ADOQuery2.Open;
 ADOQuery2.First;
 for I:=1 to ADOQuery2.RecordCount do
 begin
 Label5.Caption:= ADOQuery2.FieldByName('seans_id').AsString;


 ADOQuery2.Next;
end;
 end;
procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Close;           

end;

procedure TForm4.pnl_bilet_kesClick(Sender: TObject);
var j:integer;
begin
 for j := 0 to ListBox1.Count-1 do
  begin
ADOQuery2.SQL.Text:='insert into satis(salon_id,seans_id,koltuk_no,fiyat,musteri_adi) values(p1,p2,p3,p4,p5)';
ADOQuery2.Parameters.ParamByName('p1').Value:=Label1.Caption;
ADOQuery2.Parameters.ParamByName('p2').Value:=Label5.Caption;
ADOQuery2.Parameters.ParamByName('p3').Value:= ListBox1.Items[j];
ADOQuery2.Parameters.ParamByName('p4').Value:='15';
ADOQuery2.Parameters.ParamByName('p5').Value:=ComboBox4.Text;

ADOQuery2.ExecSQL;


  end;
Application.MessageBox('Bilet Kesme Islemi Basarili',0);
ListBox1.Items.Clear;
Form4.Close;
end;

end.
