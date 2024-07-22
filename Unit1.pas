unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var a,b,R:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
   begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    R:= a + b;
    Edit3.Text:=FloatToStr(R);
    Label6.Caption:='+';
    end
else
   ShowMessage('Введите значения');
end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,R:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
   begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    R:= a - b;
    Edit3.Text:=FloatToStr(R);
    Label6.Caption:='-';
    end
else
   ShowMessage('Введите значения');
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,R:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
   begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    R:= a * b;
    Edit3.Text:=FloatToStr(R);
    Label6.Caption:='*';
    end
else
   ShowMessage('Введите значения');
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,R:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
   begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    R:= a / b;
    Edit3.Text:=FloatToStr(R);
    Label6.Caption:='/';
    end
else
   ShowMessage('Введите значения');
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
    '0'..'9',#8: ;
    ',':if pos(',',Edit1.Text) > 0 then Key:=#0;
    #13:Edit2.SetFocus;
    else Key:=#0;
    end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
    '0'..'9',#8: ;
    ',':if pos(',',Edit1.Text) > 0 then Key:=#0;
    #13:Button1.SetFocus;
    else Key:=#0;
    end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 Edit3.Text:='';
end;

end.
