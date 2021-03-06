' hardwareinfo.bmx
' maximize windowed screen

Strict

Framework Openb3d.B3dglgraphics

Local width%=320,height%=240,depth%=0,hertz%=60

SetGraphicsDriver GLMax2DDriver() ' needed before init in Windows

Graphics width,height,depth,hertz ' get context

THardwareInfo.GetInfo
THardwareInfo.DisplayInfo 0 ' true for logfile output

EndGraphics

Graphics3D THardwareInfo.ScreenWidth,THardwareInfo.ScreenHeight,depth,2,THardwareInfo.ScreenHertz


Local cam:TCamera=CreateCamera()

Local cube:TMesh=CreateCube()
PositionEntity cube,0,0,3

While Not KeyDown(KEY_ESCAPE)		

	RenderWorld
	
	TurnEntity cube,0.0,0.5,-0.1
	
	Flip
	
Wend
End
