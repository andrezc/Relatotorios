unit Label3D;
{==========================================================================}
{ JL's RotateLabel with 3D-effects                                         }
{                                                                          }
{ Copyright © 1996 by Jörg Lingner, Munich, Germany (jlingner@t-online.de) }
{                                                                          }
{ FREEWARE                                                                 }
{ Free to use and redistribute.                                            }
{ No warranty is given by the author, expressed or implied.                }
{                                                                          }
{ 3D-effects: from RZLABEL-component                                       }
{ Copyright © by Ray Konopka (Raize Software Solutions, Inc.)              }
{--------------------------------------------------------------------------}
{ This component works like TLabel and has 2 additional properties:        }
{                                                                          }
{ Escapement: draw text with angle (0..360 deg)                            }
{             selected font must be a TrueType!!!                          }
{                                                                          }
{ TextStyle:  draw text with 3D-effects  tsRecessed                        }
{                                        tsRaised                          }
{                                        tsNone                            }
{                                                                          }
{--------------------------------------------------------------------------}
{ Vers.  Date   Remarks                                                    }
{ 1.0  30.03.97 Initial release                                            }
{ 2.0   8. 8.01 Enhacenment of component by Jaro Benes JBenes@micrel.cz    }
{                added/changes new features by 3D-effects                  }
{                      tsLightRaised,tsHeavyRecessed + tsShadow            }
{                added E-mail/WWW address accesss                          }
{                added border like bevel/rectangle with adjust             }
{                added layout 16/32bit                                     }
{                *** tested under D1, D3, D4, D5, D6 ***                   }
{==========================================================================}
interface
{==========================================================================}
uses
  {$IfNDef Win32}WinProcs, Wintypes{$Else}Windows{$EndIf}, Messages, SysUtils,
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Menus, ShellApi;
{==========================================================================}
type
  TTextStyle = (tsNone,tsRaised,tsLightRaised,tsRecessed,tsHeavyRecessed,tsShadow);
  TBorderType = (btDefault,btRecessed,btRaised);
  TLabelStyle = (lsDefault,lsWWWAddress,lsEMailAddress);
  TEllipsesStyle = (esNone, esEnd, esPath);
  {$IfNDef Win32}
  TTextLayout = (tlTop, tlCenter, tlBottom);
  {$EndIf}
{==========================================================================}
  TLabel3D = class(TCustomLabel)
  private
    fEscapement : Integer;
    fTextStyle  : TTextStyle;
    FLabelStyle : TLabelStyle;
    FColorRecess : TColor;
    FColorRaise :TColor;
    FActiveColor: TColor;
    FOldColor: TColor;
    FAddress :String;
    FBorderColor : TColor;
    FBorderWidth : Integer;
    FBorderStyle : TPenStyle;
    FBorderType: TBorderType;
    FBorder : Boolean;
    FEllipsesStyle : TEllipsesStyle;
    FShift: Integer;
    {$IfNDef Win32}
    FLayout: TTextLayout;
    {$EndIf}
    FOnMouseEnter: TNotifyEvent;
    FOnMouseExit: TNotifyEvent;
    procedure   SetEscapement(aVal:Integer);
    procedure   SetTextStyle (aVal:TTextStyle);
    procedure   SetLabelStyle(aVal:TLabelStyle);
    procedure   SetBorderColor(Value : Tcolor);
    procedure   SetBorderStyle(Value : TpenStyle);
    procedure   SetBorderWidth(Value : Integer);
    procedure   SetBorder(Value : Boolean);
    procedure   SetBorderType(Value : TBorderType);
    Procedure   SetEllipsesStyle(Value: TEllipsesStyle);
    {$IfNDef Win32}
    Procedure   SetLayout(Value: TTextLayout);
    {$EndIf}
    Procedure   SetShift(Value: Integer);
    procedure   CalcTextPos(var aRect:TRect;aAngle:Integer;aTxt:String);
    procedure   DrawAngleText(aCanvas:TCanvas;aRect:TRect;aAngle:Integer;aTxt:String);
    procedure   CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure   CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  protected
    procedure   DoDrawText(var Rect: TRect; Flags: Longint); override;
    procedure   Paint; override;
    procedure   Click; override;
  public
    constructor Create(AOwner: TComponent); override;
    {for easy changes of color in one time - J.B.}
    Procedure SetColorRR(RecessColor,RaiseColor: TColor);
  published
    property BorderColor : TColor read FBorderColor write SetBorderColor;
    property BorderPenStyle : TPenStyle read FBorderStyle write SetBorderStyle;
    property BorderWidth : Integer read FBorderWidth write SetBorderWidth default 1;
    property Border : Boolean read FBorder write SetBorder;
    property BorderType : TBorderType read FBorderType write SetBorderType;
    property Escapement : Integer    read fEscapement write SetEscapement;
    property TextStyle : TTextStyle read fTextStyle  write SetTextStyle;
    property LabelStyle : TLabelStyle read fLabelStyle write SetLabelStyle;
    property Address : String read FAddress write FAddress;
    Property EllipsesStyle : TEllipsesStyle read FEllipsesStyle write SetEllipsesStyle;
    property Shift : Integer Read FShift Write SetShift;
    property Align;
    property Alignment;
    property AutoSize;
    property Caption;
    property Color;
    property DragCursor;
    property DragMode;
    property Enabled;
    property FocusControl;
    property Font;
    {$IfDef Win32}
    Property Layout;
    {$Else}
    Property Layout : TTextLayout read FLayout Write SetLayout;
    {$EndIf}
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowAccelChar;
    property ShowHint;
    property Transparent;
    property Visible;
    property WordWrap;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseExit: TNotifyEvent read FOnMouseExit write FOnMouseExit;
    {$IFDEF WIN32}
    property OnStartDrag;
    {$ENDIF}
  end;

procedure Register;

{==========================================================================}
implementation
{==========================================================================}
procedure Register;
begin
  RegisterComponents('Lib', [TLabel3D]);
end;

{==========================================================================}
constructor TLabel3D.Create(aOwner:TComponent);
{==========================================================================}
begin
  inherited Create(aOwner);

  fEscapement:= 0;
  fTextStyle := tsRaised;
  Font.Name := 'Arial';
  FActiveColor:=clRed;
  FLabelStyle := lsDefault;
  FBorderWidth := 1;
  FBorderStyle := psSolid;
  FBorder := False;
  FBorderColor := clRed;
  FBorderType := btDefault;
  FColorRecess := clBtnShadow;
  FColorRaise := clBtnHighlight;
  FEllipsesStyle := esNone;
  FShift := 1;
  {$IfNDef Win32}
  FLayout := tlTop;
  {$EndIf}
end;

{==========================================================================}
procedure TLabel3D.SetEscapement(aVal:Integer);
{==========================================================================}
begin
  if fEscapement <> aVal then begin
     if aVal < 0 then begin
        while aVal < -360 do aVal := aVal + 360;
        aVal := 360 + aVal;
     end;
     while aVal > 360 do aVal := aVal - 360;
     fEscapement := aVal;
     Invalidate;
  end;
end;

{==========================================================================}
procedure TLabel3D.SetTextStyle(aVal:TTextStyle);
{==========================================================================}
begin
  if fTextStyle <> aVal then begin
     fTextStyle := aVal;
     Invalidate;
  end;
end;

{==========================================================================}
procedure TLabel3D.Paint;
{==========================================================================}
  Procedure DoBevel(TheCanvas:TCanvas; Rect:TRect; Color1,Color2:TColor);
{==========================================================================}
  //very simple, sorry, like as TBevel -J.B.
  Begin
    With TheCanvas Do
    Begin
      Pen.Color := Color1;
      MoveTo(Rect.Left, Rect.Top);
      LineTo(Rect.Right, Rect.Top);
      MoveTo(Rect.Left, Rect.Top);
      LineTo(Rect.Left, Rect.Bottom);
      Pen.Color := Color2;
      MoveTo(Rect.Right, Rect.Bottom);
      LineTo(Rect.Right, Rect.Top);
      MoveTo(Rect.Right, Rect.Bottom);
      LineTo(Rect.Left, Rect.Bottom);
    End;
  End;
{==========================================================================}
const
  Alignments: array[TAlignment] of Word = (DT_LEFT,DT_RIGHT,DT_CENTER);
  WordWraps : array[Boolean] of Word = (0,DT_WORDBREAK);
var
  Rect,TempRect: TRect;
  I:Integer;
begin
  with Canvas do begin
    if not Transparent then begin
      Brush.Color := Self.Color;
      Brush.Style := bsSolid;
      FillRect(ClientRect);
    end;
    Brush.Style := bsClear;
    Rect := ClientRect;
    If FBorder And (FBorderWidth>0) Then {changes J.B.}
    Begin
      TempRect := Rect;
      For I := 1 To FBorderWidth Do With TempRect Do
      Begin
        InFlateRect(TempRect,-1,-1);
        Case FBorderType of
          btDefault:Canvas.Rectangle(0,0,Width,Height);
          btRaised: DoBevel(Canvas,Classes.Rect(0,0,Width-1,Height-1),clWhite,clGray);
          btRecessed: DoBevel(Canvas,Classes.Rect(0,0,Width-1,Height-1),clGray,clWhite);
        End;
      End;
    End;
    DoDrawText(Rect,DT_EXPANDTABS or WordWraps[WordWrap] or Alignments[Alignment]);
  end;
end;

{==========================================================================}
procedure TLabel3D.CalcTextPos(var aRect:TRect;aAngle:Integer;aTxt:String);
{==========================================================================}
{ Calculate text pos. depend. on: Font, Escapement, Alignment and length   }
{ if AutoSize true : set properties Height and Width                       }
{--------------------------------------------------------------------------}
var DC      : HDC;
    hSavFont: HFont;
    Size    : TSize;
    x,y     : Integer;
    cStr    : array[0..255] of Char;

begin
  StrPCopy(cStr,aTxt);
  DC := GetDC(0);
  hSavFont := SelectObject(DC,Font.Handle);
  {$IFDEF WIN32}
  GetTextExtentPoint32(DC,cStr,Length(aTxt),Size);
  {$ELSE}
  GetTextExtentPoint(DC,cStr,Length(aTxt),Size);
  {$ENDIF}
  SelectObject  (DC,hSavFont);
  ReleaseDC(0,DC);

  if          aAngle<=90  then begin             { 1.Quadrant }
     x := 0;
     y := Trunc(Size.cx * sin(aAngle*Pi/180));
  end else if aAngle<=180 then begin             { 2.Quadrant }
     x := Trunc(Size.cx * -cos(aAngle*Pi/180));
     y := Trunc(Size.cx *  sin(aAngle*Pi/180) + Size.cy * cos((180-aAngle)*Pi/180));
  end else if aAngle<=270 then begin             { 3.Quadrant }
     x := Trunc(Size.cx * -cos(aAngle*Pi/180) + Size.cy * sin((aAngle-180)*Pi/180));
     y := Trunc(Size.cy * sin((270-aAngle)*Pi/180));
  end else if aAngle<=360 then begin             { 4.Quadrant }
     x := Trunc(Size.cy * sin((360-aAngle)*Pi/180));
     y := 0;
  end;                                   
  aRect.Top := aRect.Top +y;
  aRect.Left:= aRect.Left+x;

  x := Abs(Trunc(Size.cx * cos(aAngle*Pi/180))) + Abs(Trunc(Size.cy * sin(aAngle*Pi/180)));
  y := Abs(Trunc(Size.cx * sin(aAngle*Pi/180))) + Abs(Trunc(Size.cy * cos(aAngle*Pi/180)));

  if Autosize then begin
     Width  := x;
     Height := y;
  end else if Alignment = taCenter then begin
     aRect.Left:= aRect.Left + ((Width-x) div 2);
  end else if Alignment = taRightJustify then begin
     aRect.Left:= aRect.Left + Width - x;
  end;
end;

{==========================================================================}
procedure TLabel3D.DrawAngleText(aCanvas:TCanvas;aRect:tRect;aAngle:Integer;aTxt:String);
{==========================================================================}
{ Draw text with FontIndirect (angle -> escapement)                        }
{--------------------------------------------------------------------------}
var LFont             : TLogFont;
    hOldFont, hNewFont: HFont;
begin
  CalcTextPos(aRect,aAngle,aTxt);

  GetObject(aCanvas.Font.Handle,SizeOf(LFont),Addr(LFont));
  LFont.lfEscapement := aAngle*10;
  hNewFont := CreateFontIndirect(LFont);
  hOldFont := SelectObject(aCanvas.Handle,hNewFont);

  aCanvas.TextOut(aRect.Left,aRect.Top,aTxt);

  hNewFont := SelectObject(aCanvas.Handle,hOldFont);
  DeleteObject(hNewFont);
end;

{==========================================================================}
procedure TLabel3D.DoDrawText(var Rect: TRect; Flags: Longint);
{==========================================================================}
{ Draw the text normal or with angle and with 3D-effects                   }
{                                                                          }
{ 3D-effects: RZLABEL-component                                            }
{ (c) by Ray Konopka (Raize Software Solutions, Inc.)                      }
{ enhanced 3D-effect (c)2001 by Jaro Benes mailto:JBenes@micrel.cz         }
{--------------------------------------------------------------------------}
var Text        : String;
    TmpRect     : TRect;
    UpperColor  : TColor;
    LowerColor  : TColor;
    {$IFDEF WINDOWS}
    cStr        : array[0..255] of Char;
    {$ENDIF}
  begin
    Text := Caption;
    {$IFDEF WINDOWS}
    StrPCopy(cStr,Text);
    {$ENDIF}

    if (Flags and DT_CALCRECT <> 0) and ((Text = '') or ShowAccelChar and
    (Text[1] = '&') and (Text[2] = #0)) then Text := Text + ' ';

    if not ShowAccelChar then Flags := Flags or DT_NOPREFIX;
    {$IfDef Win32}
    If FEllipsesStyle = esEnd Then Flags := Flags Or DT_END_ELLIPSIS
    Else If FEllipsesStyle = esPath Then Flags := Flags Or DT_PATH_ELLIPSIS;
    {$EndIf}
    If FEscapement=0 Then
      Case {$IfNDef Win32}FLayout{$Else}Layout{$EndIf} of
        tlTop:Flags := Flags Or DT_TOP;
        tlCenter:Flags := Flags Or DT_VCENTER Or DT_SINGLELINE;
        tlBottom:Flags := Flags Or DT_BOTTOM Or DT_SINGLELINE;
      End;

    Canvas.Font := Font;

    If FEscapement in [46..134] Then  ;
    {special manipulation with shadow position is unsupported- J.B.}

    UpperColor := FColorRaise;
    LowerColor := FColorRecess;

    if FTextStyle <> tsNone then
    begin
      TmpRect := Rect;
      If FTextStyle <> tsShadow Then OffsetRect(TmpRect,1,1)
      Else OffsetRect(TmpRect,FShift,FShift);
      Case FTextStyle of
        tsRecessed: Canvas.Font.Color := UpperColor;
        tsHeavyRecessed: Canvas.Font.Color := UpperColor;
        tsRaised: Canvas.Font.Color := LowerColor;
        tsLightRaised: Canvas.Font.Color := LowerColor;
        tsShadow: Canvas.Font.Color := LowerColor;
      End;
      if fEscapement <> 0 then
        DrawAngleText(Canvas,TmpRect,fEscapement,Text)
      else
        DrawText(Canvas.Handle,{$IFDEF WIN32}pChar(Text){$ELSE}cStr{$ENDIF},Length(Text),TmpRect,Flags);

      if FTextStyle in [tsHeavyRecessed,tsLightRaised] then
      begin
        TmpRect := Rect;
        OffsetRect(TmpRect,-1,-1);
        Case FTextStyle of
          tsHeavyRecessed: Canvas.Font.Color := LowerColor;
          tsLightRaised: Canvas.Font.Color := UpperColor;
        End;
        if fEscapement <> 0 then
          DrawAngleText(Canvas,TmpRect,fEscapement,Text)
        else
          DrawText(Canvas.Handle,{$IFDEF WIN32}pChar(Text){$ELSE}cStr{$ENDIF},Length(Text),TmpRect,Flags);
      end
    end;
    Canvas.Font.Color := Font.Color;
    if not Enabled then Canvas.Font.Color := clGrayText;
    {main color on font is upper}
    if fEscapement <> 0 then
      DrawAngleText(Canvas,Rect,fEscapement,Text)
    else
      DrawText(Canvas.Handle,{$IFDEF WIN32}pChar(Text){$ELSE}cStr{$ENDIF},Length(Text),Rect,Flags);
end;

{=======================================================added 8.8.2001=====}

{=new features by J.B.=====================================================}
procedure TLabel3D.SetLabelStyle(aVal: TLabelStyle);
{==========================================================================}
begin
  if aVal <>FLabelStyle then
    FLabelStyle := aVal;
end;

{==========================================================================}
procedure TLabel3D.Click;
{==========================================================================}
{$IfDef Ver80}
Var P:PChar;
{$EndIf}
begin
  Try
    Try
      If FLabelStyle in [lsWWWAddress,lsEMailAddress] Then
      Begin
        If FAddress = '' Then Exit;
        {$IfNDef Ver80}
        Cursor := crAppStart;
        {$Else}
        Cursor := crHourGlass;
        {$EndIf}
        Application.ProcessMessages; {otherwise cursor change will be missed}
        {$IfNDef Ver80}
        if FLabelStyle=lsWWWAddress then
          ShellExecute(0, Nil, PChar(FAddress), Nil, Nil, SW_NORMAL)
        else
          ShellExecute(0, Nil, PChar('mailto:'+FAddress), Nil, Nil, SW_NORMAL);
        Cursor := crHandPoint;
        {$Else}
        if FLabelStyle=lsWWWAddress then
        Begin
          GetMem(P,Length(FAddress)+1);
          StrPCopy(P,FAddress);
          Try
            ShellExecute(0, Nil, P, Nil, Nil, SW_NORMAL)
          Finally
            FreeMem(P,Length(FAddress)+1);
          End;
        End
        else
        Begin
          GetMem(P,Length('mailto:'+FAddress)+1);
          StrPCopy(P,'mailto:'+FAddress);
          Try
            ShellExecute(0, Nil, P, Nil, Nil, SW_NORMAL);
          Finally
            FreeMem(P,Length('mailto:'+FAddress)+1);
          End;
        End;
        Cursor := crDefault;
        {$EndIf}
      End;{www,email only}
    Except
      {silent except, do nothing}
    End;
  Finally
    inherited Click;
  End;
end;

{==========================================================================}
procedure TLabel3D.CMMouseEnter(var Message: TMessage);
{==========================================================================}
begin
  If FLabelStyle in [lsWWWAddress,lsEMailAddress] Then
  Begin
    FOldColor:=Font.Color;
    Font.Style:=Font.Style+[fsUnderline];
    {$IfNDef Ver80}
    Cursor:=crHandPoint;
    {$Else}
    Cursor := crDefault;
    {$EndIf}
    Application.Processmessages;
    Font.Color:=FActiveColor;
  End;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(self);
end;

{==========================================================================}
procedure TLabel3D.CMMouseLeave(var Message: TMessage);
{==========================================================================}
begin
  If FLabelStyle in [lsWWWAddress,lsEMailAddress] Then
  Begin
    Cursor:=crDefault;
    Font.Style:=Font.Style-[fsUnderline];
    Application.Processmessages;
    Font.Color:=FOldColor;
  End;
  if Assigned(FOnMouseExit) then
    FOnMouseExit(self);
end;

{==========================================================================}
procedure TLabel3D.SetBorderColor(value : Tcolor);
{==========================================================================}
begin
  FBorderColor := value;
  Canvas.Pen.Color := value;
  Paint;
end;

{==========================================================================}
procedure TLabel3D.SetBorderWidth(value : integer);
{==========================================================================}
begin
  FBorderWidth := value;
  Canvas.Pen.Width := Value;
  Paint;
end;

{==========================================================================}
procedure TLabel3D.SetBorder(value : boolean);
{==========================================================================}
begin
  FBorder := value;
  Paint;
end;

{==========================================================================}
procedure TLabel3D.SetBorderStyle(value : TPenStyle);
{==========================================================================}
begin
  Canvas.Pen.Style := value;
  Paint;
end;

{==========================================================================}
procedure TLabel3D.SetBorderType(Value : TBorderType);
{==========================================================================}
begin
  If FBorderType <> Value Then
  Begin
    FBorderType := Value;
    Paint;
  End;
end;

{==========================================================================}
Procedure TLabel3D.SetColorRR(RecessColor,RaiseColor: TColor);
{==========================================================================}
Var DoRepaint:Boolean;
Begin
  DoRepaint := False;
  If FColorRecess <> RecessColor Then
  Begin
    FColorRecess := RecessColor;
    DoRepaint := True;
  End;
  If FColorRaise <> RaiseColor Then
  Begin
    FColorRaise := RaiseColor;
    DoRepaint := True;
  End;
  If DoRepaint Then
    Paint;
End;

{==========================================================================}
Procedure TLabel3D.SetEllipsesStyle(Value: TEllipsesStyle);
{==========================================================================}
Begin
  If FEllipsesStyle <> Value Then
  Begin
    if Value <> esNone then
      AutoSize := false;
    FEllipsesStyle := Value;
    Invalidate;
  End;
End;

{$IfNDef Win32}
{==========================================================================}
Procedure TLabel3D.SetLayout(Value: TTextLayout);
{==========================================================================}
Begin
  If Value <> FLayout Then
  Begin
    FLayout := Value;
    If FLayout in [tlCenter, tlBottom] Then
      AutoSize := False;
    Paint;
  End;
End;
{$EndIf}

{==========================================================================}
Procedure TLabel3D.SetShift(Value: Integer);
{==========================================================================}
Begin
  If Value <> FShift Then
  Begin
    FShift := Value;
    Paint;
  End;
End;

{=end of tail==============================================================}

end.
