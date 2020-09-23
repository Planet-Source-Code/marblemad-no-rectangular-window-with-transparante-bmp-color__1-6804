Attribute VB_Name = "Module1"
Public Declare Function SetWindowRgn Lib "user32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long

Public Declare Function MakeRgn Lib "region.dll" (ByVal filename As String, ByVal R As Integer, ByVal G As Integer, ByVal B As Integer) As Long
Public Declare Function DeleteRgn Lib "region.dll" (ByVal region As Long)
