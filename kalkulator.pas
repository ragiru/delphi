unit kalkulator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects;

type
  TForm1 = class(TForm)
    Kalkulator: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    b1: TEdit;
    b2: TEdit;
    h: TEdit;
    tambah: TButton;
    kurang: TButton;
    kali: TButton;
    bagi: TButton;
    hapus: TButton;
    keluar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Line1: TLine;
    procedure tambahClick(Sender: TObject);
    procedure kurangClick(Sender: TObject);
    procedure kaliClick(Sender: TObject);
    procedure bagiClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.bagiClick(Sender: TObject);
var  bil1, bil2, hasil : double;
begin
      bil1 := StrToFloat (b1.Text);
      bil2 := StrToFloat (b2.Text);
      hasil := bil1 / bil2;
      h.Text := FloatToStr (hasil);
end;

procedure TForm1.hapusClick(Sender: TObject);
begin
b1.Text := '';
b2.Text := '';
h.Text := '';
b1.SetFocus;
end;

procedure TForm1.kaliClick(Sender: TObject);
var  bil1, bil2, hasil : double;
begin
      bil1 := StrToFloat (b1.Text);
      bil2 := StrToFloat (b2.Text);
      hasil := bil1 * bil2;
      h.Text := FloatToStr (hasil);

end;

procedure TForm1.keluarClick(Sender: TObject);
begin
close;
end;

procedure TForm1.kurangClick(Sender: TObject);
var  bil1, bil2, hasil : double;
begin
      bil1 := StrToFloat (b1.Text);
      bil2 := StrToFloat (b2.Text);
      hasil := bil1 - bil2;
      h.Text := FloatToStr (hasil);
end;

procedure TForm1.tambahClick(Sender: TObject);
var  bil1, bil2, hasil : double;
begin
      bil1 := StrToFloat (b1.Text);
      bil2 := StrToFloat (b2.Text);
      hasil := bil1 + bil2;
      h.Text := FloatToStr (hasil);
end;

end.
