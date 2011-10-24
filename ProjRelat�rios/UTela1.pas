unit UTela1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, frxDesgn, frxClass, frxDCtrl,
  frxChart, frxRich, frxBarcode, ImgList, ComCtrls, ExtCtrls, frxOLE,
  frxCross, frxDMPExport, frxExportImage, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxGZip, frxExportPDF,
  frxADOComponents, frxChBox, frxExportText, frxExportCSV, frxExportMail,
  frxGradient, frxIBXComponents;

type
  TForm1 = class(TForm)
    frxDesigner1: TfrxDesigner;
    frxIBXComponents1: TfrxIBXComponents;
    BtRelatorio: TButton;
    frxGradientObject1: TfrxGradientObject;
    BtDesign: TButton;
    Tree: TTreeView;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure BtRelatorioClick(Sender: TObject);
    procedure BtDesignClick(Sender: TObject);
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
    procedure TreeCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  WPath: String;

implementation

{$R *.dfm}




procedure TForm1.BtRelatorioClick(Sender: TObject);
begin
  frxReport1.ShowReport;
end;


procedure TForm1.BtDesignClick(Sender: TObject);
begin
  frxReport1.DesignReport;
end;

procedure TForm1.TreeChange(Sender: TObject; Node: TTreeNode);
begin
  if Node.StateIndex = -1 then
  begin
    Tree.FullCollapse;
    Node[0].Selected := True;
  end
  else
  begin
    BtDesign.Enabled := True;
    BtRelatorio.Enabled := True;
    frxReport1.LoadFromFile(WPath + IntToStr(Node.StateIndex) + '.fr3');
  end;
end;

procedure TForm1.TreeCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Node.Count <> 0 then
    Tree.Canvas.Font.Style := [fsBold];
end;



procedure TForm1.FormShow(Sender: TObject);
begin
  WPath := ExtractFilePath(Application.ExeName);
  Tree.Items[0].Item[0].Selected := True;
end;

end.
