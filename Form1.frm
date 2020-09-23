VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   120
      ScaleHeight     =   495
      ScaleWidth      =   375
      TabIndex        =   0
      Top             =   120
      Width           =   375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim retregion As Long

Private Sub Form_Click()
End
End Sub

Private Sub Form_Load()
Picture1.Picture = LoadPicture(App.Path + "\mtvclips.bmp")
Picture1.Top = 0
Picture1.Left = 0
Me.Width = Picture1.Width
Me.Height = Picture1.Height
retregion = MakeRgn(App.Path + "\mtvclips.bmp", 255, 0, 255)
ret = SetWindowRgn(Me.hWnd, retregion, True)
End Sub


Private Sub Form_Unload(Cancel As Integer)
DeleteRgn (retregion)
End Sub
