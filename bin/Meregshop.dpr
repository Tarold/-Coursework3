program Meregshop;

uses
  Forms,
  Unit1 in '..\Unit1.pas' {Form1},
  Unit2 in '..\Unit2.pas' {DataModule1: TDataModule},
  Unit3 in '..\Unit3.pas' {Form3},
  Unit4 in '..\Unit4.pas' {Form4},
  Unit5 in '..\Unit5.pas' {Form_tovar},
  Unit6 in '..\Unit6.pas' {Form_check},
  Unit7 in '..\Unit7.pas' {Form_prodag};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm_tovar, Form_tovar);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_check, Form_check);
  Application.CreateForm(TForm_prodag, Form_prodag);
  Application.Run;
end.
