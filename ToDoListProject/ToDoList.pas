unit ToDoList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    taskList: TListBox;
    taskEdit: TEdit;
    Label2: TLabel;
    finishTaskButton: TButton;
    removeTaskButton: TButton;
    addTaskButton: TButton;
    Label3: TLabel;
    Label4: TLabel;
    counterTotalTask: TLabel;
    counterTaskDone: TLabel;
    procedure addTaskButtonClick(Sender: TObject);
    procedure finishTaskButtonClick(Sender: TObject);
    procedure removeTaskButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  task: String;

implementation

{$R *.dfm}

function verifyIfContains(arrayStr:TlistBox; str:String):Boolean;
  var
    I:Integer;
    resultado:Boolean;
  begin
    resultado := false;
    for I := 0 to arrayStr.Items.Count-1 do
      if (arrayStr.Items[i] = str) or (arrayStr.Items[i] = str + ' [✓]')  then
        resultado := true;
    Result := resultado;
  end;

procedure TForm2.addTaskButtonClick(Sender: TObject);
begin
  task := taskEdit.Text;
  if (verifyIfContains(taskList, task)) then
      begin
        ShowMessage('This task has be add already ');
      end
  else
    begin
      if task.Contains('✓') then
        begin
          ShowMessage('The use of this symbol is forbidden here')
        end
      else
        begin
          counterTotalTask.Caption :=  (StrToInt(counterTotalTask.Caption) + 1).ToString;
          taskList.Items.Add(task);
        end
    end;
end;

procedure TForm2.finishTaskButtonClick(Sender: TObject);
begin
  if taskList.ItemIndex = -1 then
    begin
      ShowMessage('You have to select one task to mark it to done');
    end
  else if taskList.Items[taskList.ItemIndex].Contains('✓') then
    begin
      ShowMessage('This task has be finished already');
    end
  else
  begin
        counterTaskDone.Caption :=  (StrToInt(counterTaskDone.Caption) + 1).ToString;
    taskList.Items[taskList.ItemIndex] :=  taskList.Items[taskList.ItemIndex] + ' [✓]';

    if StrToInt(counterTaskDone.Caption) = StrToInt(counterTotalTask.Caption) then
      ShowMessage('Congratulations! You finished all your tasks');
  end;
end;

procedure TForm2.removeTaskButtonClick(Sender: TObject);
begin
  if taskList.ItemIndex <> -1 then
    begin
      if taskList.Items[taskList.ItemIndex].Contains('✓') then
        begin
          counterTaskDone.Caption :=  (StrToInt(counterTaskDone.Caption) - 1).ToString;
        end;
      taskList.Items.Delete(taskList.ItemIndex);
      counterTotalTask.Caption :=  (StrToInt(counterTotalTask.Caption) - 1).ToString;

    end
  else
    ShowMessage('You have to select one task to remove it')
end;

end.
