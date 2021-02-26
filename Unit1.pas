unit Unit1;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  StdCtrls, Controls, ExtCtrls, Classes;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c:real;
  d:char;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 b:=StrToFloat(Edit1.Text);
 case d of
  '-': c:=a-b;
  '+': c:=a+b;
  'x': c:=a*b;
  '/': c:=a/b;
 end;
 Edit1.Text:=FloatToStr(c);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);
  Edit1.Clear;
  case (Sender as TButton).Tag of
    1: d:='-';
    2: d:='+';
    3: d:='x';
    4: d:='/';
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var s:string;
begin
 s:=Edit1.Text;
 if s='' then exit;

 delete(s,length(s),1);
 Edit1.Text:=s;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case key of
  '-',',','0'..'9',#8: else key:=chr(0);
end;

end;

end.
