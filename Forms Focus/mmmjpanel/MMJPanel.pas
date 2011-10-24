unit MMJPanel;
{TMMJPanel is classic TPanel component with two added object properties:
Silhuette and Background:

Silhuette determines the shape of a Panel: it can be default shape, shape based
          on a bitmap, or some classical shape (circle, triangle)
Background does custom drawing of component's background, and it may be gradient filled or bitmap tiled.

Happy Programming

Mihaela Mihaljevic Jakic
mickj@hi.hinet.hr
}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,Controls, ExtCtrls;

type
  TFDepth=0..5;
TMMJPanel = class;
TMMJSilhuette = class;
  //TMMJPictureShape_______________________________________________________________________________________________________
TMMJPictureShape = class (TComponent)
  private
  { Private declarations }
      FPicture :TPicture;
      FDisplayPicture:Boolean;
      FOnChange: TNotifyEvent;
      FMMJPanel: TMMJPanel;
      FMMJSilhuette: TMMJSilhuette;
      procedure SetPicture(Value:TPicture);
      procedure SetDisplayPicture(Value:Boolean);
      procedure PictureChanged(Sender:TObject);
      function CreateBitmapRegion(hBmp: TBitmap; TransColor: TColor):hRgn;
      constructor Create(AOwner: TComponent; AParent:TWinControl);
  protected
    { Protected declarations }
    procedure Changed;
  public
    { Public declarations }
     destructor	Destroy; override;
     procedure Assign(Source:TPersistent);override;
     procedure Draw(Can:TCanvas; Frame:Boolean; FrameColor:TColor; FrameDepth:TFDepth; FPicture:TPicture; FrmRgn:hRgn);
    property OnChange: TNotifyEvent
       read FOnChange
       write FOnChange;
  published
    { Published declarations }
    property Picture: TPicture read FPicture write SetPicture;
    property DisplayPicture : Boolean
       read FDisplayPicture
       write SetDisplayPicture default False;
  end;

    //TMMJShape__________________________________________________________________________________________
  TShapeType = (stTriangle, stRoundRectangle, stCircle, stRectangle, stEllipse,stText,stNotText);
  TMMJShape = class(TComponent) //Owner of the component must be TwinControl
  private
    { Private declarations }
    FMMJPanel: TMMJPanel;
    FMMJSilhuette: TMMJSilhuette;
    FShapeType : TShapeType;
    FMultiShape :Boolean;
    FShapeText : String;
    FOnChange: TNotifyEvent;
    FCanvas:TCanvas; //Pointer to canvas to draw on
    //___________________________________________________________________________

    //Writers
    procedure SetShapeType(Value:TShapeType);
    procedure SetMultiShape(Value:Boolean);
    procedure SetShapeText(Value:String);
    procedure CreateShapeRegion(MultShapes :Boolean;sKind:TShapeType; var BodyRgn,FrameRgn:hRgn );
    function  IsTrueTypeFont : Boolean;
    function  StringSize(Value:String;TheShape:TShapeType) : TSize;
    procedure CalcStringSize;
    constructor Create(AOwner: TComponent; AParent:TWinControl);
  protected
    { Protected declarations }
    procedure Changed; //dynamic;
    procedure ShapeResize(Sender :TObject);dynamic;
  public
    { Public declarations }
    procedure Assign(Source:TPersistent);override;
    destructor	Destroy; override;
    procedure Draw(Can:TCanvas; Frame:Boolean; FrameColor:TColor; FrameDepth:TFDepth; FrmRgn:hRgn);
    property OnChange: TNotifyEvent
       read FOnChange
       write FOnChange;

  published
    { Published declarations }
   property ShapeType : TShapeType
      read FShapeType
      write SetShapeType default stRoundRectangle;
   property MultiShape : Boolean
      read  FMultiShape
      write SetMultiShape default False;
    property ShapeText : String
       read FShapeText
       write SetShapeText;
  end;


  TMMJSilhuetteType = (sitDefault,sitShape,sitPicture);
  TMMJSilhuette = class(TComponent)
  private
    { Private declarations }
     BodyRgn,FrameRgn: hRgn;
     OrigRgn : hrgn;
     FOnChange: TNotifyEvent;
     FSilhuetteType:TMMJSilhuetteType;
     //subcomponents
     FShape:TMMJShape;
     FPictureShape:TMMJPictureShape;
     //subcomponents
     FFrame : Boolean;
     FFrameColor : TColor;
     FFrameDepth : TFDepth;
     procedure ReturnOriginalRegion;
     procedure SetSilhuetteType(Value:TMMJSilhuetteType);
     procedure SetShape(Value:TMMJShape);
     procedure SetPictureShape(Value:TMMJPictureShape);
     procedure SetFrame(Value:Boolean);
     procedure SetFrameColor(Value:TColor);
     procedure SetFrameDepth(Value:TFDepth);
     procedure ShapeChanged(AShape: TObject);
     procedure PictureShapeChanged(APictureShape: TObject);
  protected
    { Protected declarations }
    procedure Changed;
  public
    { Public declarations }
     procedure Assign(Source:TPersistent);override;
     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;
     procedure DoChangeShape;
    procedure Draw(Canv:TCanvas);
    property OnChange: TNotifyEvent
       read FOnChange
       write FOnChange;
  published
    { Published declarations }
   property SilhuetteType : TMMJSilhuetteType
      read FSilhuetteType
      write SetSilhuetteType default sitDefault;
   property Shape : TMMJShape
       read FShape
       write SetShape stored True;
   property PictureShape : TMMJPictureShape
       read FPictureShape
       write SetPictureShape stored True;
   property Frame : Boolean
       read FFrame
       write SetFrame default False;
   property FrameColor : TColor
       read FFrameColor
       write SetFrameColor default clBlack;
   property FrameDepth : TFDepth
       read FFrameDepth
       write SetFrameDepth default 1;
  end;

    //TMMJBackground___________________________________________________________________________________
  TBackgroundType = (btFill,btPicture,btDefault);
  TFillType =(GradUpDown, GradLeftRight, GradDiagonal1, GradDiagonal2);
  TMMJBackground = class(TComponent)
  private
    { Private declarations }
    FStartColor : TColor;
    FEndColor : TColor;
    FFillType : TFillType;
    FPicture: TPicture;
    FBackgroundType : TBackgroundType;
    FOnChange: TNotifyEvent;
    //Writers
    procedure SetStartColor(Value : TColor);
    procedure SetEndColor(Value : TColor);
    procedure SetFillType(Value:TFillType);
    procedure SetPicture(Value:TPicture);
    procedure SetBackgroundType(Value:TBackgroundType);
    //Gradient drawing rutines
    procedure DrawPicture(FCanvas:TCanvas;Wid,Hei:integer);
    procedure DrawGradient(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor; Wid,Hei:integer);
    procedure GradientUpDown(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor; Wid,Hei:integer);
    procedure GradientLeftRight(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
    procedure GradientDiagonal1(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
    procedure GradientDiagonal2(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
    procedure PictureChanged(Sender:TObject);
  protected
    { Protected declarations }
    procedure Changed; //dynamic;
  public
    { Public declarations }
    procedure Draw(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
    procedure Assign(Source:TPersistent);override;
    constructor Create(AOwner: TComponent); override;
    destructor	Destroy; override;
    property OnChange: TNotifyEvent
       read FOnChange
       write FOnChange;
  published
    { Published declarations }
    property StartColor : TColor
       read FStartColor
       write SetStartColor default clWhite;
    property EndColor : TColor
       read FEndColor
       write SetEndColor default clBlue;
    property FillType : TFillType
       read FFillType
       write SetFillType default GradLeftRight;
    property Picture: TPicture read FPicture write SetPicture;
    property BackgroundType : TBackgroundType
       read FBackgroundType
       write SetBackgroundType default btFill;
  end;

TMMJPanel = class(TPanel)
  private
    { Private declarations }
    FSilhuette:TMMJSilhuette;
    FBackground:TMMJBackground;
    procedure BackgroundChanged(ABackground: TObject);
    procedure SetBackground(Value: TMMJBackground);
    procedure SilhuetteChanged(ASilhuette: TObject);
    procedure SetSilhuette(Value: TMMJSilhuette);
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(Aowner:TComponent); override;
    destructor	Destroy; override;
  published
    property Silhuette : TMMJSilhuette
       read FSilhuette
       write SetSilhuette stored True;
    property Background : TMMJBackground
       read fBackground
       write SetBackground stored True;
end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Mihaela''s', [TMMJPanel]);
end;

//TMMJPictureShape________________________________________________________________________

constructor TMMJPictureShape.Create(AOwner: TComponent; AParent:TWinControl);
begin
   inherited Create(AOwner);
   SetSubComponent(True);
   FMMJSilhuette:=TMMJSilhuette(AOwner);
   FMMJPanel:=TMMJPanel(AParent);

   {if not TWInControl(AParent) is TMMJPanel then
         Raise Exception.Create('Subcomponent creation ERROR!!!');   }

   FPicture := TPicture.Create;
   FPicture.OnChange:=PictureChanged;

   FDisplayPicture:=True;
end;

destructor TMMJPictureShape.Destroy;
begin
   FPicture.Free;
   inherited Destroy;
end;

procedure TMMJPictureShape.Assign(Source:TPersistent);
begin
  if Source is TMMJPictureShape then begin
     FDisplayPicture:=TMMJPictureShape(Source).DisplayPicture;
     FPicture.Assign(TMMJPictureShape(Source).Picture);
     // FOnChange:=TMMJPictureShape(Source).OnChange;
  end;
     inherited Assign(Source);
end;

procedure TMMJPictureShape.Draw(Can:TCanvas; Frame:Boolean; FrameColor:TColor; FrameDepth:TFDepth; FPicture:TPicture; FrmRgn:hRgn);
begin
   if FPicture.Bitmap.Empty then
      Exit;
   if FDisplayPicture then
      Can.Draw(0,0,FPicture.Graphic);
   if Frame then begin
      Can.Brush.Color := FrameColor;
      FrameRgn(Can.Handle, FrmRgn,Can.Brush.Handle, FrameDepth, FrameDepth);
   end;
end;

procedure TMMJPictureShape.SetPicture(Value: TPicture);
begin
  FPicture.Assign(Value);
  Changed;
end;

procedure TMMJPictureShape.SetDisplayPicture(Value:Boolean);
 begin
   if FDisplayPicture<>Value then
      FDisplayPicture:=Value;
   Changed;
end;

procedure TMMJPictureShape.Changed;
begin
   if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TMMJPictureShape.PictureChanged(Sender:TObject);
begin
   if (FMMJPanel<>nil) and (not FPicture.Bitmap.Empty) then begin
         TMMJPanel(FMMJPanel).Width:=Picture.Bitmap.Width;
         TMMJPanel(FMMJPanel).Height:=Picture.Bitmap.height;
   end;
 //  DoChangeShape;
         //if HasFrame then SetHasFrame(True);
   Changed;
 //  end;
end;

function TMMJPictureShape.CreateBitmapRegion( hBmp: TBitmap; TransColor: TColor): HRGN;

  function MinByte(B1, B2: byte): byte;
  begin
    if B1 < B2 then
      Result := B1
    else
      Result := B2;
  end;

const
  ALLOC_UNIT = 100;
var
  MemDC, DC: HDC;
  BitmapInfo: TBitmapInfo;
  bmp1, holdBmp, holdMemBmp: HBitmap;
  pbits32 : Pointer;
  bm32 : BITMAP;
  maxRects: DWORD;
  hData: HGLOBAL;
  pData: PRgnData;
  b, LR, LG, LB, HR, HG, HB: Byte;
  p32: pByte;
  x, x0, y: integer;
  p: pLongInt;
  pr: PRect;
  h: HRGN;
begin
  Result := 0;
  if hBmp <> nil then
  begin
    MemDC := CreateCompatibleDC(0);
    if MemDC <> 0 then
    begin   //fill bmp header in order to create a DIB to directly access it
      with BitmapInfo.bmiHeader do
      begin
        biSize          := sizeof(TBitmapInfoHeader);
        biWidth         := hBmp.Width;
        biHeight        := hBmp.Height;
        biPlanes        := 1;
        biBitCount      := 32;
        biCompression   := BI_RGB;
        biSizeImage     := 0;
        biXPelsPerMeter := 0;
        biYPelsPerMeter := 0;
        biClrUsed       := 0;
        biClrImportant  := 0;
      end;
      bmp1 := CreateDIBSection(MemDC, BitmapInfo, DIB_RGB_COLORS, pbits32,0, 0);
      if bmp1 <> 0 then
      begin
        holdMemBmp := SelectObject(MemDC, bmp1);
        GetObject(bmp1, SizeOf(bm32), @bm32);
        while (bm32.bmWidthBytes mod 4) > 0 do
          inc(bm32.bmWidthBytes);
        DC := CreateCompatibleDC(MemDC);
        holdBmp := SelectObject(DC, hBmp.Handle);
        BitBlt(MemDC, 0, 0, hBmp.Width, hBmp.Height, DC, 0, 0, SRCCOPY);
        maxRects := ALLOC_UNIT;
        hData := GlobalAlloc(GMEM_MOVEABLE, sizeof(TRgnDataHeader) +
           SizeOf(TRect) * maxRects);
        pData := GlobalLock(hData);
        pData^.rdh.dwSize := SizeOf(TRgnDataHeader);
        pData^.rdh.iType := RDH_RECTANGLES;
        pData^.rdh.nCount := 0;
        pData^.rdh.nRgnSize := 0;
        SetRect(pData^.rdh.rcBound, MaxInt, MaxInt, 0, 0);
        LR := GetRValue(ColorToRGB(TransColor));
        LG := GetGValue(ColorToRGB(TransColor));
        LB := GetBValue(ColorToRGB(TransColor));
        HR := MinByte($FF, LR );
        HG := MinByte($FF, LG );
        HB := MinByte($FF, LB );
        p32 := bm32.bmBits;
        inc(PChar(p32), (bm32.bmHeight - 1) * bm32.bmWidthBytes);
        for y := 0 to hBmp.Height-1 do
        begin
          x := -1;
          while x+1 < hBmp.Width do
          begin
            inc(x);
            x0 := x;
            p := PLongInt(p32);
            inc(PChar(p), x * SizeOf(LongInt));
            while x < hBmp.Width do
            begin
              b := GetBValue(p^);
              if (b >= LR) and (b <= HR) then
              begin
                b := GetGValue(p^);
                if (b >= LG) and (b <= HG) then
                begin
                  b := GetRValue(p^);
                  if (b >= LB) and (b <= hb) then
                    break;
                end;
              end;
              inc(PChar(p), SizeOf(LongInt));
              inc(x);
            end;
            if x > x0 then
            begin
              if pData^.rdh.nCount >= maxRects then
              begin
                GlobalUnlock(hData);
                inc(maxRects, ALLOC_UNIT);
                hData := GlobalReAlloc(hData, SizeOf(TRgnDataHeader) +
                   SizeOf(TRect) * maxRects, GMEM_MOVEABLE);
                pData := GlobalLock(hData);
                Assert(pData <> NIL);
              end;
              pr := @pData^.Buffer[pData^.rdh.nCount * SizeOf(TRect)];
              SetRect(pr^, x0, y, x, y+1);
              if x0 < pData^.rdh.rcBound.Left then
                pData^.rdh.rcBound.Left := x0;
              if y < pData^.rdh.rcBound.Top then
                pData^.rdh.rcBound.Top := y;
              if x > pData^.rdh.rcBound.Right then
                pData^.rdh.rcBound.Left := x;
              if y+1 > pData^.rdh.rcBound.Bottom then
                pData^.rdh.rcBound.Bottom := y+1;
              inc(pData^.rdh.nCount);
              if pData^.rdh.nCount = 2000 then
              begin
                h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
                   (SizeOf(TRect) * maxRects), pData^);
                Assert(h <> 0);
                if Result <> 0 then
                begin
                  CombineRgn(Result, Result, h, RGN_OR);
                  DeleteObject(h);
                end else
                  Result := h;
                pData^.rdh.nCount := 0;
                SetRect(pData^.rdh.rcBound, MaxInt, MaxInt, 0, 0);
              end;
            end;
          end;
          Dec(PChar(p32), bm32.bmWidthBytes);
        end;
        h := ExtCreateRegion(NIL, SizeOf(TRgnDataHeader) +
           (SizeOf(TRect) * maxRects), pData^);
        Assert(h <> 0);
        if Result <> 0 then
        begin
          CombineRgn(Result, Result, h, RGN_OR);
          DeleteObject(h);
        end else
          Result := h;

        GlobalFree(hData);
        SelectObject(DC, holdBmp);
        DeleteDC(DC);
        DeleteObject(SelectObject(MemDC, holdMemBmp));
      end;
    end;
    DeleteDC(MemDC);
  end;
end;

//TMMJShape_______________________________________________________________________________

constructor TMMJShape.Create(AOwner: TComponent; AParent:TWinControl);
begin
   inherited Create(AOwner);
   SetSubComponent(True);

   FMMJSilhuette:=TMMJSilhuette(AOwner);
   FMMJPanel:=TMMJPanel(AParent);

   FCanvas:= TMMJPanel(FMMJPanel).Canvas;
   FMultiShape:=False;
   FShapeText:='Shape text';
   FShapeType:=stRoundRectangle;
end;

destructor TMMJShape.Destroy;
begin
  inherited Destroy;
end;

procedure TMMJShape.Assign(Source: TPersistent);
begin
  if Source is TMMJShape then begin
     FShapeType:=TMMJShape(Source).ShapeType;
     FShapeText:=TMMJShape(Source).ShapeText;
     FMultiShape:=TMMJShape(Source).MultiShape;
    // FOnChange:=TMMJShape(Source).OnChange;
  end;
     inherited Assign(Source);
end;


procedure TMMJShape.Draw(Can:TCanvas; Frame:Boolean; FrameColor:TColor; FrameDepth:TFDepth; FrmRgn:hRgn);
begin
   if Frame then begin
      Can.Brush.Color := FrameColor;
      FrameRgn(Can.Handle, FrmRgn, Can.Brush.Handle, FrameDepth, FrameDepth);
   end;
end;

procedure TMMJShape.Changed;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TMMJShape.ShapeResize(Sender :TObject);
begin
  // if FShapeType <> stDefault then begin
      SetShapeType(FShapeType);
      Changed;
 //  end;
   inherited;
end;

procedure TMMJShape.CalcStringSize;
var
   CurrentSize :TSize;
begin
   If Length(FShapeText)=0 then
      FShapetext:='ShapeText';
   CurrentSize:=StringSize(FShapeText,FShapeType);
   FMMJPanel.Width:=CurrentSize.cx;
   FMMJPanel.Height:=CurrentSize.cy;
end;

function TMMJShape.IsTrueTypeFont : Boolean;
var
  FontInfo: TTextMetric;            // holds the font metric information
begin
   result:=False;
   GetTextMetrics(FCanvas.Handle, FontInfo);
   with FontInfo do
      if ((tmPitchAndFamily and $0F) and TMPF_TRUETYPE) = TMPF_TRUETYPE then
         result:=True;

end;

procedure TMMJShape.SetMultiShape (Value:Boolean);
var
   AControl : TControl;
   i: integer;
   HasShapes:Boolean;
begin
   FMultiShape:=False; //For now________________________
   Exit;
   //________________________________________________
   HasShapes:=False;
   if FMultiShape <> Value then begin
      if Value = True then begin
      //cheking if there are any TShape objects on the form
         for i := 0 to FMMJPanel.ControlCount - 1 do begin
            AControl := FMMJPanel.Controls[i];
            if ( AControl is TShape ) then
               HasShapes:=True;
         end;
         if HasShapes then begin
            FMultiShape:=Value;
            Changed; //Update diplay
         end;
      end;
      if Value = False then begin
         FMultiShape:=Value;
      end;
   end;
end;

procedure TMMJShape.SetShapeText(Value:String);
begin
   if FShapeText <> Value then
      FShapeText:=Value;
   CalcStringSize;
   Changed;
end;

function  TMMJShape.StringSize(Value:String;TheShape:TShapeType):TSize;
var
   CurrentStringSize: TSize;
   TheString :PChar;
   FontRect,WRect :TRect;
   RNew:hRgn;
//determines the width and height of string that will serve as form's shape
begin
      TheString:=PChar(Value);
      if ((TheShape = stText) or (TheShape = stNotText)) and (not MultiShape) then begin
         if TheShape = stText then begin
            GetTextExtentPoint32(FCanvas.Handle, TheString,
                         Length(TheString), CurrentStringSize);
         end;
         if TheShape = stNotText then begin
            GetWindowRgn(FMMJPanel.Handle,RNew);
            GetRgnBox(RNew,FontRect);
            CurrentStringSize.cx:=abs(FontRect.Right - FontRect.Left);
            CurrentStringSize.cy:=abs(FontRect.Bottom - FontRect.Top);
         end;
      end
      else begin
          Windows.GetWindowRect( FMMJPanel.Handle, wRect );
          CurrentStringSize.cx:=abs(wRect.Right - wRect.Left);
          CurrentStringSize.cy:=abs(wRect.Bottom - wRect.Top);
      end;
   DeleteObject(RNew);
   result:=CurrentStringSize;
end;

procedure TMMJShape.SetShapeType(Value:TShapeType);

 begin
   if (FShapeType<>Value) then
      FShapeType:=Value;

   //if TMMJShapePanel(FWinControl).ShapeKind=skDefault then
   //   FShapeType:=stDefault;

   if (FShapeType = stText) or (FShapeType = stNotText) then begin
      if FShapeType = stNotText then
         FShapeType := stText;  //stNotText has a bug!!!
      if not IsTrueTypeFont then begin
         //FShapeType:=stText;
         FShapeType:=stRectangle;
         Raise Exception.Create('Please select a TrueTypefont for the TWinControl ' +
                 'when setting ShapeType as stText or stNotText!');
      end
      else begin
      //True Type Font is selected
         CalcStringSize;
      end;
   end;
   Changed;
end;

procedure TMMJShape.CreateShapeRegion(MultShapes :Boolean; sKind:TShapeType; var BodyRgn,FrameRgn:hRgn );
  var
    Ctlrgn: HRGN;
    points: array [ 0..4 ] of TPoint;
    wrect: TRect;
    Cwrect : TRect;
    CW,CH:integer;
    AControl : TControl;
    A,Margin, X, Y, CtlX, CtlY : Integer;
    wid,hei,Cwid,Chei : integer;
    RegionData: Pointer;
    RgnDataSize: DWORD;
begin
    //Visible:=False;
    Windows.GetClientRect(FMMJPanel.Handle,Cwrect);
    Cwid := abs(Cwrect.Right - Cwrect.Left);
    Chei:= abs(Cwrect.Bottom - Cwrect.Top);
    CalcStringSize;
    wid := FMMJPanel.Width;
    hei:= FMMJPanel.Height;
   if not MultShapes then begin
      case sKind Of
         stText:
         begin  //Working with form-s own font
              BeginPath(FCanvas.Handle);
              SetBkMode(FCanvas.Handle, TRANSPARENT);
              TextOut(FCanvas.Handle, 0, 0,PChar(FShapeText), Length(FShapeText));
              EndPath(FCanvas.Handle);
              BodyRgn := PathToRegion(FCanvas.Handle);

              RgnDataSize := GetRegionData(BodyRgn, 0, NIL);
              GetMem(RegionData, RgnDataSize);
              GetRegionData(BodyRgn, RgnDataSize, RegionData);
              //BodyRgn := PathToRegion(FCanvas.Handle);
              FrameRgn := ExtCreateRegion(nil, RgnDataSize, TRgnData(RegionData^));
              FreeMem(RegionData, RgnDataSize);
         end;
         stNotText:
         begin
              BeginPath(FCanvas.Handle);
              TextOut(FCanvas.Handle, 0, 0,PChar(FShapeText), Length(FShapeText));
              EndPath(FCanvas.Handle);
              BodyRgn := PathToRegion(FCanvas.Handle);
              
              RgnDataSize := GetRegionData(BodyRgn, 0, NIL);
              GetMem(RegionData, RgnDataSize);
              GetRegionData(BodyRgn, RgnDataSize, RegionData);
              //BodyRgn := PathToRegion(FCanvas.Handle);
              FrameRgn := ExtCreateRegion(nil, RgnDataSize, TRgnData(RegionData^));
              FreeMem(RegionData, RgnDataSize);
         end;
         stRectangle:
         begin
            BodyRgn:=CreateRectRgn(0, 0, Wid, Hei);
            FrameRgn:=CreateRectRgn(0, 0, Wid, Hei);
         end;
         stRoundRectangle:
         begin
            BodyRgn:=CreateRoundRectRgn(0, 0, Wid, Hei, 32, 32);
            FrameRgn:=CreateRoundRectRgn(0, 0, Wid, Hei, 32, 32);
         end;
         stEllipse:
         begin
              BodyRgn:=CreateEllipticRgn( 0,0,wid,hei);
              FrameRgn:=CreateEllipticRgn( 0,0,wid,hei);
         end;
         stCircle :
         begin
           CW:=Wid;
           CH:=Hei;
           if CW>CH  then  begin
              BodyRgn:=CreateEllipticRgn( CW div 2 - CH div 2,0,
                                         CW div 2 + CH div 2,CH);
              FrameRgn:=CreateEllipticRgn( CW div 2 - CH div 2,0,
                                         CW div 2 + CH div 2,CH);
           end
          else begin
              BodyRgn:=CreateEllipticRgn( 0,CH div 2 - CW div 2,CW,
                                        CH div 2 + CW div 2 );
              FrameRgn:=CreateEllipticRgn( 0,CH div 2 - CW div 2,CW,
                                        CH div 2 + CW div 2 );
          end;
         end;
         stTriangle:
         begin
           //GetWindowRect( FOwnerFormHandle, wrect );
           points[ 0 ].x := 0;
           points[ 0 ].y := 0;

           points[ 1 ].x := 0;
           points[ 1 ].y := 0;

           points[ 2 ].x := FMMJPanel.Width div 2;
           //points[ 2 ].x := ( wrect.right - wrect.left ) div 2;
           points[ 2 ].y := FMMJPanel.Height;
           //points[ 2 ].y := wrect.bottom - wrect.top;

           points[ 3 ].x := FMMJPanel.Width;
           //points[ 3 ].x := wrect.right - wrect.left;
           points[ 3 ].y := 0;

           points[ 4 ].x := FMMJPanel.Width;
           //points[ 4 ].x := wrect.right - wrect.left;
           points[ 4 ].y := 0;

          BodyRgn := CreatePolygonRgn( points, 5, WINDING );
          FrameRgn := CreatePolygonRgn( points, 5, WINDING );
         end;
      end;
   end;
   if MultShapes then begin
   //generating shapes accordingly to TShape component's tag property
      CreateShapeRegion(False,sKind,BodyRgn,FrameRgn); //recursive call
      //CreateShapeRegion(False,sKind);
      //RNew := CreateRoundRectRgn(0, 0, ClientWidth, ClientHeight, 32, 32);
      //BodyRgn := CreateRoundRectRgn(0, 0,ClientWidth, ClientHeight, 32, 32);
     Margin := ( wid - Cwid ) div 2;
     X := Margin;
     Y := Hei - CHei - Margin;
    for A := 0 to   FMMJPanel.ControlCount - 1 do begin
       AControl := FMMJPanel.Controls[A];
       if ( AControl is TShape )then with AControl do begin
         // if Visible then begin
             CtlX := X + Left;
             CtlY := Y + Top;
             TShape(AControl).Brush.Style:=bsClear;
             TShape(AControl).Visible:=False;
             //Za elipsu ili krug  Tag=0
             if ((TShape(AControl).Shape = ExtCtrls.stEllipse) or (TShape(AControl).Shape = ExtCtrls.stCircle)) and
                 (TShape(AControl).Tag = 0)  then begin
                CtlRgn := CreateEllipticRgn( CtlX, CtlY, CtlX + Width, CtlY + Height );
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_DIFF );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_DIFF );
             end; //Tag=1
             if ((TShape(AControl).Shape = ExtCtrls.stEllipse) or (TShape(AControl).Shape = ExtCtrls.stCircle)) and
                 (TShape(AControl).Tag = 1)  then begin
                CtlRgn := CreateEllipticRgn( CtlX, CtlY, CtlX + Width, CtlY + Height );
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_OR );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_OR );
             end;

             if ((TShape(AControl).Shape = stRoundRect) or (TShape(AControl).Shape = stRoundSquare))and
                 (TShape(AControl).Tag = 0)  then begin
                CtlRgn := CreateRoundRectRgn( CtlX, CtlY, CtlX + Width, CtlY + Height,33,33 );
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_DIFF );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_DIFF );
             end;
             if ((TShape(AControl).Shape = stRoundRect) or (TShape(AControl).Shape = stRoundSquare))and
                 (TShape(AControl).Tag = 1)  then begin
                CtlRgn := CreateRoundRectRgn( CtlX, CtlY, CtlX + Width, CtlY + Height,33,33 );
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_OR );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_OR );
             end;

             if ((TShape(AControl).Shape = ExtCtrls.stRectangle) or (TShape(AControl).Shape = ExtCtrls.stSquare))and
                 (TShape(AControl).Tag = 0)  then begin
                CtlRgn := CreateRectRgn( CtlX, CtlY, CtlX + Width, CtlY + Height);
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_DIFF );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_DIFF );
             end;
             if ((TShape(AControl).Shape = ExtCtrls.stRectangle) or (TShape(AControl).Shape = ExtCtrls.stSquare))and
                 (TShape(AControl).Tag = 1)  then begin
                CtlRgn := CreateRectRgn( CtlX, CtlY, CtlX + Width, CtlY + Height);
                CombineRgn( BodyRgn, BodyRgn, CtlRgn, RGN_OR );
                CombineRgn( FrameRgn, FrameRgn, CtlRgn, RGN_OR );
             end;
          end;
       end;
    end;
  // end;
end;


//TMMJSilhuette___________________________________________________________________________

constructor TMMJSilhuette.Create(AOwner:TComponent);
begin
   inherited Create(AOwner);

   FPictureShape:=TMMJPictureShape.Create(Self,TWinControl(AOwner));
   FShape:=TMMJShape.Create(Self,TWinControl(AOwner));

   FPictureShape.OnChange:=PictureShapeChanged;
   FShape.OnChange:=ShapeChanged;

   SetSubComponent(True);
   //GetWindowRgn(TMMJPanel(Owner).Handle,OrigRgn);

   FSilhuetteType:=sitDefault;
   FFrame:=False;
   FFrameColor:=clBlack;
   FFrameDepth:=1;
end;

destructor TMMJSilhuette.Destroy;
begin
  FPictureShape.Free;
  FShape.Free;
  DeleteObject(BodyRgn);
  DeleteObject(FrameRgn);
  DeleteObject(OrigRgn);
  inherited Destroy;
end;

procedure TMMJSilhuette.Assign(Source: TPersistent);
begin
  if Source is TMMJSilhuette then begin
     FSilhuetteType:=TMMJSilhuette(Source).SilhuetteType;
     FFrame:=TMMJSilhuette(Source).Frame;
     FFrameColor:=TMMJSilhuette(Source).FrameColor;
     FFrameDepth:=TMMJSilhuette(Source).FrameDepth;
    // FOnChange:=TMMJShape(Source).OnChange;
  end;
     inherited Assign(Source);
end;

procedure TMMJSilhuette.DoChangeShape;
var
   TransColor:TColor;
begin
   if FSilhuetteType<>sitDefault then begin
      if FSilhuetteType=sitShape then begin
         FShape.CreateShapeRegion(FShape.MultiShape,FShape.ShapeType,BodyRgn,FrameRgn);
      end;
      if FSilhuetteType=sitPicture then begin
         if FPictureShape.Picture.Bitmap.Empty then Exit;
         TMMJPanel(Owner).Width:=FPictureShape.Picture.Bitmap.Width;
         TMMJPanel(Owner).Height:=FPictureShape.Picture.Bitmap.Height;
         TransColor := FPictureShape.Picture.Bitmap.Canvas.Pixels[0,0];
         BodyRgn:=FPictureShape.CreateBitmapRegion(FPictureShape.Picture.Bitmap,TransColor);
         FrameRgn:=FPictureShape.CreateBitmapRegion(FPictureShape.Picture.Bitmap,TransColor);
      end;
      SetWindowRgn(TMMJPanel(Owner).Handle,BodyRgn,True);
   end
   else
      ReturnOriginalRegion;
end;

procedure TMMJSilhuette.ReturnOriginalRegion;
begin
   SetWindowRgn(TMMJPanel(Owner).Handle,0,True);
end;

procedure TMMJSilhuette.Draw(Canv:TCanvas);
begin
   if FSilhuetteType <> sitDefault then begin
      if FSilhuetteType=sitShape then
         FShape.Draw(Canv,FFrame,FFrameColor,FFrameDepth,FrameRgn);
      if FSilhuetteType=sitPicture then
         FPictureShape.Draw(Canv,FFrame,FFrameColor,FFrameDepth,FPictureShape.Picture,FrameRgn);
   end;
end;

procedure TMMJSilhuette.Changed;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TMMJSilhuette.SetPictureShape(Value: TMMJPictureShape);
begin
   FPictureShape.Assign(Value);
end;

procedure TMMJSilhuette.SetShape(Value: TMMJShape);
begin
   FShape.Assign(Value);
end;

procedure TMMJSilhuette.ShapeChanged(AShape: TObject);
begin
   //TMMJPanel(Owner).Width:=FPictureShape.Picture.Bitmap.Width;
   //TMMJPanel(Owner).Height:=FPictureShape.Picture.Bitmap.Height;
   DoChangeShape;
   Changed;
  // SetSilhuetteType(FSilhuetteType);
end;

procedure TMMJSilhuette.PictureShapeChanged(APictureShape: TObject);
begin
   if FPictureShape.Picture.Bitmap.Empty then
      Exit;
   TMMJPanel(Owner).Width:=FPictureShape.Picture.Bitmap.Width;
   TMMJPanel(Owner).Height:=FPictureShape.Picture.Bitmap.Height;
   Changed;
end;

procedure TMMJSilhuette.SetFrame(Value:Boolean);
 begin
   if FFrame<>Value then
      FFrame:=Value;
   Changed;
end;

procedure TMMJSilhuette.SetFrameColor(Value:TColor);
 begin
   if FFrameColor<>Value then
      FFrameColor:=Value;
   Changed;
end;

procedure TMMJSilhuette.SetFrameDepth(Value:TFDepth);
begin
   if FFrameDepth<>Value then
      FFrameDepth:=Value;
   Changed;
end;

procedure TMMJSilhuette.SetSilhuetteType(Value:TMMJSilhuetteType);
begin
   if FSilhuetteType<>Value then begin
      FSilhuetteType:=Value;
  //    DoChangeShape;
  //    Changed;
   end;
      DoChangeShape;
      Changed;
end;

//TMMJBackground___________________________________________________________________________________

procedure TMMJBackground.Assign(Source: TPersistent);
begin
  if Source is TMMJBackground then begin
     FStartColor:=TMMJBackground(Source).StartColor;
     FEndColor:=TMMJBackground(Source).EndColor;
     FFillType:=TMMJBackground(Source).FillType;
     FBackgroundType:=TMMJBackground(Source).BackgroundType;
     FPicture.Assign(TMMJBackground(Source).Picture);
     // FOnChange:=TMMJShape(Source).OnChange;
  end;
     inherited Assign(Source);
end;

procedure TMMJBackground.Changed;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TMMJBackground.SetFillType(Value:TFillType);
begin
   if FFillType <> Value then
      FFillType:=Value;
   //FOwnerControl.Invalidate;
   Changed;
end;

procedure TMMJBackground.SetStartColor(Value : TColor);
begin
   if FStartColor <> Value then
      FStartColor:=Value;
   Changed;
end;

procedure TMMJBackground.SetEndColor(Value : TColor);
begin
   if FEndColor <> Value then
      FEndColor:=Value;
   Changed;
end;

procedure TMMJBackground.SetBackgroundType(Value:TBackgroundType);
begin
   if FBackgroundType <> Value then
      FBackgroundType:=Value;
   Changed;
end;

procedure TMMJBackground.SetPicture(Value: TPicture);
begin
  FPicture.Assign(Value);
  Changed;
end;

constructor TMMJBackground.Create(AOwner:TComponent);
begin
   inherited Create(AOwner);
  // Name:='SubBackground';
   SetSubComponent(True);
   
   FBackgroundType:=btFill;
   FFillType :=GradUpDown;
   FStartColor:=clSilver;
   FEndColor:=clGreen;
   FPicture := TPicture.Create;
   FPicture.OnChange:=PictureChanged;
end;

procedure TMMJBackground.GradientUpDown(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
var
   RGBFrom : array[0..2] of Byte;
   RGBDiff : array[0..2] of integer;
   ColorBand : TRect;
   i : Integer;
   r, g, b : Byte;
begin
   RGBFrom[0] := GetRValue(ColorToRGB(FromRGB));
   RGBFrom[1] := GetGValue(ColorToRGB(FromRGB));
   RGBFrom[2] := GetBValue(ColorToRGB(FromRGB));
   RGBDiff[0] := GetRValue(ColorToRGB(ToRGB)) - RGBFrom[0];
   RGBDiff[1] := GetGValue(ColorToRGB(ToRGB)) - RGBFrom[1];
   RGBDiff[2] := GetBValue(ColorToRGB(ToRGB)) - RGBFrom[2];
   FCanvas.Pen.Style := psSolid;
   FCanvas.Pen.Mode := pmCopy;
   ColorBand.Left := 0;
   ColorBand.Right := Wid;
   for i := 0 to $FF do begin
      ColorBand.Top := MulDiv(i, Hei, $100);
      ColorBand.Bottom := MulDiv(i + 1, Hei, $100);
      r := RGBFrom[0] + MulDiv(i, RGBDiff[0], $FF);
      g := RGBFrom[1] + MulDiv(i, RGBDiff[1], $FF);
      b := RGBFrom[2] + MulDiv(i, RGBDiff[2], $FF);
      FCanvas.Brush.Color := RGB(r, g, b);
      FCanvas.FillRect(ColorBand);
   end;
end;


procedure TMMJBackground.GradientLeftRight(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
var
   RGBFrom : array[0..2] of Byte;
   RGBDiff : array[0..2] of integer;
   ColorBand : TRect;
   i : Integer;
   r, g, b : Byte;
begin
   RGBFrom[0] := GetRValue(ColorToRGB(FromRGB));
   RGBFrom[1] := GetGValue(ColorToRGB(FromRGB));
   RGBFrom[2] := GetBValue(ColorToRGB(FromRGB));
   RGBDiff[0] := GetRValue(ColorToRGB(ToRGB)) - RGBFrom[0];
   RGBDiff[1] := GetGValue(ColorToRGB(ToRGB)) - RGBFrom[1];
   RGBDiff[2] := GetBValue(ColorToRGB(ToRGB)) - RGBFrom[2];
   FCanvas.Pen.Style := psSolid;
   FCanvas.Pen.Mode := pmCopy;
   ColorBand.Top := 0;
   ColorBand.Bottom := Hei;

     for i := 0 to Wid do begin
     ColorBand.Left := i;
      ColorBand.Right := i+1;
      R := GetRValue(FromRGB)+i*(GetRValue(ToRGB)-GetRValue(FromRGB))div Wid;
      G := GetGValue(FromRGB)+i*(GetGValue(ToRGB)-GetGValue(FromRGB))div Wid;
      B := GetBValue(FromRGB)+i*(GetBValue(ToRGB)-GetBValue(FromRGB))div Wid;
      FCanvas.Brush.Color := RGB(r, g, b);
      FCanvas.FillRect(ColorBand);
   end;
end;


procedure TMMJBackground.GradientDiagonal1(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
var
   val,i: integer;
   R, G, B: Byte;
 //  wrect :TRect;
begin
    val := Wid+Hei;
    for i := 0 to val do begin
      R := GetRValue(FromRGB)+i*(GetRValue(ToRgb)-GetRValue(FromRGB))div val;
      G := GetGValue(FromRGB)+i*(GetGValue(ToRgb)-GetGValue(FromRGB))div val;
      B := GetBValue(FromRGB)+i*(GetBValue(ToRgb)-GetBValue(FromRGB))div val;
      FCanvas.Pen.Color := RGB(R, G, B);
      MoveToEx(FCanvas.Handle, i, 0, nil); LineTo(FCanvas.Handle, 0, i);
    end;
end;


procedure TMMJBackground.GradientDiagonal2(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
var
   val,i: integer;
   R, G, B: Byte;
begin
    val := Wid+Hei;
    for i := 0 to val do begin
      R := GetRValue(FromRGB)+i*(GetRValue(ToRGB)-GetRValue(FromRGB))div val;
      G := GetGValue(FromRGB)+i*(GetGValue(ToRGB)-GetGValue(FromRGB))div val;
      B := GetBValue(FromRGB)+i*(GetBValue(ToRGB)-GetBValue(FromRGB))div val;
      FCanvas.Pen.Color := RGB(R, G, B);
      MoveToEx(FCanvas.Handle, 0, Hei-i, nil); LineTo(FCanvas.Handle, i, Hei);
    end;
end;

procedure TMMJBackground.DrawPicture(FCanvas:TCanvas;Wid,Hei:integer);
var
   fw,fh,bw,bh,i,j,x,y:integer;
begin
   //Painting gradient
   if FBackgroundType= btPicture then begin
      if FPicture.Bitmap.Empty then begin
         FBackgroundType:=btFill;
         Exit;
      end;
         fw:=WId;
         fh:=Hei;
         bw:=FPicture.Graphic.Width;
         bh:=FPicture.Graphic.Height;
         x:=fw div bw;
         y:=fh div bh;
       for i:= 0 to x do begin
          for j:= 0 to y do begin
             FCanvas.Draw(i*bw,j*bh,FPicture.Graphic);
          end;
       end;
   end
end;

procedure TMMJBackground.DrawGradient(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor; Wid,Hei:integer);
begin
   if FBackgroundType = btFill then begin
      case FillType of
         GradUpDown    :GradientUpDown(FCanvas,FPen,FStartColor,FEndColor,Wid,Hei);
         GradLeftRight :GradientLeftRight(FCanvas,FPen,FStartColor,FEndColor,Wid,Hei);
         GradDiagonal1 :GradientDiagonal1(FCanvas,FPen,FStartColor,FEndColor,Wid,Hei);
         GradDiagonal2 :GradientDiagonal2(FCanvas,FPen,FStartColor,FEndColor,Wid,Hei);
      end;
   end;
end;

procedure TMMJBackground.Draw(FCanvas:TCanvas;FPen:TPen;FromRGB, ToRGB: TColor;Wid,Hei:integer);
begin
   if FBackgroundType = btFill then
      DrawGradient(FCanvas,FPen,FStartColor,FEndColor,Wid,Hei);
   if FBackgroundType = btPicture then
      DrawPicture(FCanvas,Wid,Hei);

end;
procedure TMMJBackground.PictureChanged(Sender:TObject);
begin
   if not Assigned(FPicture) then Exit;
   if FPicture.Bitmap.Empty then Exit;
   Changed;
end;

destructor TMMJBackground.Destroy;
begin
  FPicture.Free;
  inherited Destroy;
end;


//TMMJPanel_________________________________________________________________________________________________

procedure TMMJPanel.SetSilhuette(Value: TMMJSilhuette);
begin
   FSilhuette.Assign(Value);
end;

procedure TMMJPanel.SilhuetteChanged(ASilhuette: TObject);
begin
   //CalcPanelSize;
   Invalidate;
end;

constructor TMMJPanel.Create;
begin
  inherited ;
  FSilhuette:=TMMJSilhuette.Create(Self);
  fBackground:=TMMJBackground.Create(Self);
  fBackground.OnChange := BackgroundChanged;
  FSilhuette.OnChange := SilhuetteChanged;
  Self.OnResize:=FSilhuette.Shape.ShapeResize;
end;

destructor TMMJPanel.Destroy;
begin
  FSilhuette.Free;
  FBackground.Free;
  inherited Destroy;
end;

procedure TMMJPanel.Paint;
const
  Alignments: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
var
  Rect: TRect;
  TopColor, BottomColor: TColor;
  FontHeight: Integer;
  Flags: Longint;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;
begin
   inherited Paint;
      if fBackground.BackgroundType <> btDefault then begin
      fBackground.Draw(Canvas,Canvas.Pen,fBackground.FStartColor,fBackground.FEndColor,Width,Height);

      ControlStyle := ControlStyle - [csOpaque];    //transparency

     Rect := GetClientRect;
     if BevelOuter <> bvNone then begin
        AdjustColors(BevelOuter);
        Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
     end;
     Frame3D(Canvas, Rect, Color, Color, BorderWidth);
     if BevelInner <> bvNone then begin
        AdjustColors(BevelInner);
        Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
     end;
     with Canvas do begin
       //Brush.Color := Color;
       //FillRect(Rect);
       Brush.Style := bsClear;
       Font := Self.Font;
       FontHeight := TextHeight('W');
       with Rect do begin
          Top := ((Bottom + Top) - FontHeight) div 2;
          Bottom := Top + FontHeight;
       end;
       Flags := DT_EXPANDTABS or DT_VCENTER or Alignments[Alignment];
       Flags := DrawTextBiDiModeFlags(Flags);
       DrawText(Handle, PChar(Caption), -1, Rect, Flags);
     end;
   end;
   FSilhuette.Draw(Canvas);
end;


procedure TMMJPanel.BackgroundChanged(ABackground: TObject);
begin
   //CalcPanelSize;
   Invalidate;
   //SetBackground(TMMJBackground(ABackground));
end;

procedure TMMJPanel.SetBackground(Value: TMMJBackground);
begin
   //if Assigned(Value) then
      fBackground.Assign(Value);
end;

end.
