unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, Menus, DBCtrls,
  jpeg;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Button10: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Button5: TButton;
    Button6: TButton;
    GroupBox3: TGroupBox;
    DBLookupListBox1: TDBLookupListBox;
    Button7: TButton;
    GroupBox5: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button8: TButton;
    Edit2: TEdit;
    UpDown1: TUpDown;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label16: TLabel;
    Label17: TLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  X: word;

implementation

uses Unit2, Unit1, Unit6, Unit4;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT ������.���, ������.����� AS ������_�����, ������.ֳ��, ��������.����� AS ��������_�����, ������.������, ������.�������_�����'
+' FROM �������� INNER JOIN ������ ON ��������.[���] = ������.[���_���������]';
DataModule1.ADOQTovar.Open;

DateTimePicker1.Date:=Date;



end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if (Edit2.Text='0') or (Edit2.Text = '') then
begin
   ShowMessage('������ �������')
end
else begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ������ ([���_������],[Id_����������], [ʳ������], [ֳ��], [���_����] ) '
 + ' Values ('+Label17.Caption+', '+Label1.Caption+', '+Edit2.Text+', '+inttostr(strtoint(Edit2.Text)*strtoint(Label10.Caption))+', '+Label13.Caption+')';
DataModule1.ADOQWork.ExecSQL;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' Select Sum(������.[ֳ��]) AS [Sum-����] FROM ������ GROUP BY ������.[���_����] HAVING (((������.[���_����])= '+Label13.Caption+'))';
DataModule1.ADOQWork.Open;
label15.caption:= DataModule1.DataSWork.DataSet.Fields[0].AsString;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' UPDATE ��� SET ���.[����] = '+Label15.Caption+' WHERE (((���.[���])='+Label13.Caption+'))';
DataModule1.ADOQWork.ExecSQL;
end;
end;

procedure TForm3.Edit5Change(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT ������.���, ������.����� AS ������_�����, ������.ֳ��, ��������.����� AS ��������_�����, ������.������, ������.�������_����� '
+' FROM �������� INNER JOIN ������ ON ��������.[���] = ������.[���_���������] where ������.����� like "%'+Edit5.Text+'%" ORDER BY ������.���';
DataModule1.ADOQTovar.Open;
end;

procedure TForm3.Edit6Change(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT ������.���, ������.����� AS ������_�����, ������.ֳ��, ��������.����� AS ��������_�����, ������.������, ������.�������_����� '
+' FROM �������� INNER JOIN ������ ON ��������.[���] = ������.[���_���������] where ������.������ like "%'+Edit6.Text+'%" ORDER BY ������.���';
DataModule1.ADOQTovar.Open;
end;

procedure TForm3.Button10Click(Sender: TObject);
begin
DataModule1.ADOQTovar.Close;
DataModule1.ADOQTovar.SQL.Text:= 'SELECT ������.���, ������.����� AS ������_�����, ������.ֳ��, ��������.����� AS ��������_�����, ������.������, ������.�������_����� '
+' FROM �������� INNER JOIN ������ ON ��������.[���] = ������.[���_���������] where ��������.����� like "%'+ DBLookupComboBox1.Text +'%" ORDER BY ������.���';
DataModule1.ADOQTovar.Open;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  Edit5.Text:= '';
  Edit6.Text:= '';
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
GroupBox3.Visible:=True;

end;

procedure TForm3.Button7Click(Sender: TObject);
begin
GroupBox3.Visible:=False;
Label1.Caption:= DataModule1.DataSTPerson.DataSet.Fields[0].AsString;
Label2.Caption:= DataModule1.DataSTPerson.DataSet.Fields[1].AsString;
GroupBox4.Visible:=True;
GroupBox2.Enabled:=True;
Panel2.Enabled:=True;
DBGrid1.Enabled:= True;
Button1.Visible:=False;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Label8.Caption:= DataModule1.DataSTovar.DataSet.Fields[1].AsString;
Label10.Caption:= DataModule1.DataSTovar.DataSet.Fields[2].AsString;
Label17.Caption:= DataModule1.DataSTovar.DataSet.Fields[0].AsString;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ��� ( [����], [����] )  Values (:dt, 0) ';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQWork.ExecSQL;


DataModule1.ADOQWork.close;
DataModule1.ADOQWork.SQL.text:=' select * from ��� order by ���';
DataModule1.ADOQWork.Open;

DataModule1.ADOQWork.Last;
Label13.Caption:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
GroupBox1.Enabled:= True

end;

procedure TForm3.Button3Click(Sender: TObject);
begin

DataModule1.ADOQCheck1.Close;
DataModule1.ADOQCheck1.SQL.Text:= 'SELECT ������.���, ������.�����, ��������.ϲ�, ������.ʳ������, ������.ֳ��, ������.���_����, ���.����, ������.ֳ�� '
+ 'FROM ������ INNER JOIN (�������� INNER JOIN (��� INNER JOIN ������ ON ���.��� = ������.���_����) ON ��������.Id_���������� = ������.Id_����������) ON ������.��� = ������.���_������ '
+ 'WHERE (((������.���_����)='+Form3.Label13.Caption+'))';
DataModule1.ADOQCheck1.Open;


Form_check.QRLabel1.Caption:='��� �'+Label13.Caption;
Form_check.QRLabel2.Caption:='����: ' + datetostr(datetimepicker1.date);
Form_check.QRLabel3.Caption:='��������: ' + Label2.Caption;
Form_check.QRLabel7.Caption:='����� �� ���� (���): ' + Label15.Caption;
Form_check.QuickRep1.PreviewModal;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
if (Label2.Caption<>'Label2')then
begin
Form1.show();
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
GroupBox1.Enabled:= False;
Label13.Caption:='0';
Label15.Caption:='0';
Edit2.Text:='1';
end;

procedure TForm3.N2Click(Sender: TObject);
begin
if (Label2.Caption<>'Label2')then
begin
X := MessageDlg('������ � ����� ���� ���������. ����� � ��������� ������?', MTConfirmation, [MBYes, MBNo], 0);
If X = mrYes then begin
GroupBox1.Enabled:= False;
Label13.Caption:='0';
Label15.Caption:='0';
Edit2.Text:='1';

GroupBox4.Visible:=False;
Button1.Visible:=True;
Label1.Caption:= 'Label1';
Label2.Caption:= 'Label2';
GroupBox2.Enabled:=False;
Panel2.Enabled:=False;
DBGrid1.Enabled:= False;
Label8.Caption:='���� �������� ������';
Label10.Caption:='���� �������� ������';
Label17.Caption:='���� �������� ������';
end;
end;
end;
procedure TForm3.N3Click(Sender: TObject);
begin
Form4.Show();
end;

end.
