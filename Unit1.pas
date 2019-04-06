unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit4, Unit3, Unit2;

procedure OpenDatasets;

begin

DM.IBDataSet1.Open;

DM.Q_Routers.Open;

end;



procedure TForm1.Button1Click(Sender: TObject);
begin

Form3.Caption:= 'Добавление записи';

if Form3.ShowModal = mrOk then

begin

DM.IBDataSet1.InsertRecord([Null,DM.Q_ModelIDMOD.AsInteger,DM.Q_StoimostIDCENA.AsInteger,StrToInt(Form3.ComboBox1.Text),StrToInt(Form3.ComboBox2.Text),(Form3.ComboBox3.Text)]);

DM.IBTransaction2.Commit;

OpenDatasets;

end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.Caption:= 'Редактирование записи';

if Form3.ShowModal = mrOk then

begin

DM.IBDataSet1.Locate('IDCENA',DM.Q_StoimostIDCENA.AsInteger,[]);

DM.IBDataSet1.Edit;

DM.IBDataSet1IDCENA.AsInteger:= DM.Q_StoimostIDCENA.AsInteger;

DM.IBDataSet1CENA.AsInteger:= StrToInt(Form3.ComboBox1.Text);

DM.IBDataSet1SKIDKA.AsInteger:= StrToInt(Form3.ComboBox2.Text);

DM.IBDataSet1NOTES.AsString:= (Form3.ComboBox3.Text);

DM.IBDataSet1.Post;

DM.IBTransaction2.Commit;

OpenDatasets;

end;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin

if Application.MessageBox ('Удалить запись из базы данных?', 'Подтверждение удаления записи', MB_ICONWARNING + MB_YESNO) = IDYES then

begin

DM.IBDataSet1.Locate('IDINFO',DM.Q_RoutersIDINFO.AsInteger,[]);

DM.IBDataSet1.Delete;

DM.IBTransaction2.Commit;

OpenDatasets;

end;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin

DM.Q_INF.Locate ('IDMOD', DM.Q_ModelIDMOD.AsInteger, []);

Form2.ShowModal;


end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
