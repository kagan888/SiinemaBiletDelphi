unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
Application.CreateForm(TForm4, Form4);
Form4.Show;
end;

end.
