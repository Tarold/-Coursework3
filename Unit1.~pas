unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Button2: TButton;
    Edit5: TEdit;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    Edit2: TEdit;
    Button10: TButton;
    Button11: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    Button6: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Panel4: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label6: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel3: TPanel;
    Button3: TButton;
    Button5: TButton;
    Button12: TButton;
    Panel5: TPanel;
    Label10: TLabel;
    Button14: TButton;
    Edit9: TEdit;
    Panel6: TPanel;
    Button21: TButton;
    Label9: TLabel;
    Label11: TLabel;
    Button15: TButton;
    Button17: TButton;
    Button13: TButton;
    Edit8: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label12: TLabel;
    Edit10: TEdit;
    Button22: TButton;
    Button20: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X: word;

implementation

uses  Unit2, Unit5, Unit7;

{$R *.dfm}



procedure TForm1.FormShow(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Товари.Ціна, Виробник.Назва AS Виробник_Назва, Товари.Модель, Товари.Одиниці_виміру'
+' FROM Виробник INNER JOIN Товари ON Виробник.[Код] = Товари.[Код_виробника]';
DataModule1.ADOQTovar.Open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'SELECT Продаж.Код, Товари.Назва, Персонал.ПІБ, Продаж.Кількість, Продаж.Ціна, Продаж.Код_чеку, Чек.Дата'
+' FROM [Чек] INNER JOIN (Товари INNER JOIN (Персонал INNER JOIN Продаж ON Персонал.[Id_працівника] = Продаж.[Id_працівника]) ON Товари.[Код] = Продаж.[Код_товара]) ON Чек.Код = Продаж.Код_чеку;';
DataModule1.ADOQWork.Open;

DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:= 'SELECT Чек.[Код], Чек.[Дата], Чек.[Сума] '
+'FROM [Чек];';
DataModule1.ADOQCheck.Open;

end;

procedure TForm1.Button18Click(Sender: TObject);
begin
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='0';
Edit7.Text:='';
DBLookupComboBox1.KeyValue:=1;
Button1.Visible:=true;
Button4.Visible:=false;
Panel2.Visible:=true;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  Edit1.Text:=DBGrid1.Fields[1].AsString;
  Edit3.Text:=DBGrid1.Fields[5].AsString;
  Edit4.Text:=DBGrid1.Fields[2].AsString;
  Edit7.Text:=DBGrid1.Fields[4].AsString;
DataModule1.ADOTVurob.Locate('Назва',DBGrid1.Fields[3].AsString,[loCaseInsensitive, loPartialKey]);  // !!!ОБРАТИ Внимание!!! Для того что бы добавить в таблицу "Меню" код категории
//нам нужно получить ключевое значение это категории, но у нас есть только ее название из DBGrid1 - третье поле. Для этого используется эта строка она ищет в ADOTable нужную запись по названию категории и переводит указатель на найденную запись
DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSTVurob.DataSet.Fields[0].AsString);

Button1.Visible:=false;
Button4.Visible:=True;

Panel2.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
X := MessageDlg('Інформація буде безповоротно втрачена. Ви точно хочте видалили?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM Товари Where (Товари.Код = '+DBGrid1.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
end;
FormShow(Sender);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
Edit8.Text:= '0';
DateTimePicker1.Date:= StrToDate('27.09.2021');
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:= 'SELECT Чек.[Код], Чек.[Дата], Чек.[Сума] '
+'FROM [Чек];';
DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Виробник.Назва AS Виробник_Назва, Товари.Одиниці_виміру, Товари.Ціна, Товари.Модель'
+' FROM Виробник INNER JOIN Товари ON Виробник.[Код] = Товари.[Код_виробника] where Товари.Код = '+Edit2.Text+' ORDER BY Товари.Код';
DataModule1.ADOQTovar.Open;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'SELECT Продаж.Код AS Продаж_Код, Товари.Назва, Персонал.ПІБ, Продаж.Кількість, Продаж.Ціна, Продаж.Код_чеку, Чек.Дата'
+' FROM [Чек] INNER JOIN (Товари INNER JOIN (Персонал INNER JOIN Продаж ON Персонал.[Id_працівника] = Продаж.[Id_працівника]) ON Товари.[Код] = Продаж.[Код_товара]) ON Чек.Код = Продаж.Код_чеку where Продаж.Код_чеку = '+Edit9.Text+';';
DataModule1.ADOQWork.Open;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Товари.Ціна, Виробник.Назва AS Виробник_Назва, Товари.Модель, Товари.Одиниці_виміру'
+' FROM Виробник, Товари WHERE Виробник.[Код] = Товари.[Код_виробника] ORDER BY Товари.Код';
DataModule1.ADOQTovar.Open;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
Edit9.Text:= '0';
Edit10.Text:= '0';
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'SELECT Продаж.Код, Товари.Назва, Персонал.ПІБ, Продаж.Кількість, Продаж.Ціна, Продаж.Код_чеку, Чек.Дата'
+' FROM [Чек] INNER JOIN (Товари INNER JOIN (Персонал INNER JOIN Продаж ON Персонал.[Id_працівника] = Продаж.[Id_працівника]) ON Товари.[Код] = Продаж.[Код_товара]) ON Чек.Код = Продаж.Код_чеку;';
DataModule1.ADOQWork.Open;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
if (Edit4.Text='') or (Edit1.Text = '') or (Edit3.Text = '') or (Edit7.Text = '')then
begin
   ShowMessage('Введіть данні про товар')
end
else begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='INSERT INTO Товари ( [Назва], [Ціна], [Код_виробника], [Модель], [Одиниці_виміру]) values ("'+Edit1.Text+'", '+Edit4.Text+' ,'+IntToStr(DBLookupComboBox1.KeyValue)+', "'+Edit7.Text+'" , "'+Edit3.Text+'")';
DataModule1.ADOQWork.ExecSQL;

DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Товари.Ціна, Виробник.Назва AS Виробник_Назва, Товари.Модель , Товари.Одиниці_виміру'
+' FROM Виробник, Товари WHERE Виробник.[Код] = Товари.[Код_виробника] ORDER BY Товари.Код';
DataModule1.ADOQTovar.Open;

panel2.Visible:=False;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if (Edit4.Text='') or (Edit1.Text = '') or (Edit3.Text = '') or (Edit7.Text = '')then
begin
   ShowMessage('Введіть данні про товар')
end
else begin
X := MessageDlg('Інформація буде безповоротно змінена. Ви точно хочте змінити?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE Товари SET Товари.Назва = "'+Edit1.Text+'", Товари.Код_виробника = "'+IntToStr(DBLookupComboBox1.KeyValue)+'", Товари.Одиниці_виміру = "'+Edit3.Text+'", Товари.Ціна = '+Edit4.Text+' ,Товари.Модель = "'+Edit7.Text+'"'
+' WHERE (((Товари.Код)='+DBGrid1.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);


panel2.Visible:=False;
end;
end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Товари.Ціна, Виробник.Назва AS Виробник_Назва, Товари.Модель, Товари.Одиниці_виміру '
+' FROM Виробник INNER JOIN Товари ON Виробник.[Код] = Товари.[Код_виробника] where Товари.Назва like "%'+Edit5.Text+'%" ORDER BY Товари.Код';
DataModule1.ADOQTovar.Open;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT Товари.Код, Товари.Назва AS Товари_Назва, Товари.Ціна, Виробник.Назва AS Виробник_Назва, Товари.Модель, Товари.Одиниці_виміру '
+' FROM Виробник INNER JOIN Товари ON Виробник.[Код] = Товари.[Код_виробника] where Товари.Модель like "%'+Edit6.Text+'%" ORDER BY Товари.Код';
DataModule1.ADOQTovar.Open;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule1.ADOTPerson.Insert;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
X := MessageDlg('Інформація буде безповоротно змінена. Ви точно хочте змінити?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then
begin
if  DataModule1.ADOTPerson.Modified then
 DataModule1.ADOTPerson.Post;
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
X := MessageDlg('Інформація буде безповоротно втрачена. Ви точно хочте видалили?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then DataModule1.ADOTPerson.Delete;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
panel2.Visible:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule1.ADOTVurob.Insert;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
X := MessageDlg('Інформація буде безповоротно змінена. Ви точно хочте змінити?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then
begin
if  DataModule1.ADOTVurob.Modified then
 DataModule1.ADOTVurob.Post;
end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
X := MessageDlg('Інформація буде безповоротно втрачена. Ви точно хочте видалили?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then DataModule1.ADOTVurob.Delete;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:= 'SELECT Чек.[Код], Чек.[Дата], Чек.[Сума] '
+'FROM [Чек] where Чек.Код = '+Edit8.Text+';';
DataModule1.ADOQCheck.Open;

end;

 procedure TForm1.Button22Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'SELECT Продаж.Код AS Продаж_Код, Товари.Назва, Персонал.ПІБ, Продаж.Кількість, Продаж.Ціна, Продаж.Код_чеку, Чек.Дата'
+' FROM [Чек] INNER JOIN (Товари INNER JOIN (Персонал INNER JOIN Продаж ON Персонал.[Id_працівника] = Продаж.[Id_працівника]) ON Товари.[Код] = Продаж.[Код_товара]) ON Чек.Код = Продаж.Код_чеку where Продаж.Код = '+Edit10.Text+';';
DataModule1.ADOQWork.Open;

end;

procedure TForm1.Button17Click(Sender: TObject);
begin
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:='SELECT Чек.[Код], Чек.[Дата], Чек.[Сума] FROM [Чек] WHERE (((Чек.[Дата])=:dt));';
DataModule1.ADOQCheck.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
Form_tovar.QuickRep1.PreviewModal;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
Form_prodag.QuickRep1.PreviewModal;
end;

end.
