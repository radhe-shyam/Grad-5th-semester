VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Event Tracer"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8100
   LinkTopic       =   "Form1"
   ScaleHeight     =   6720
   ScaleWidth      =   8100
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Event Name"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2415
      Begin VB.Label Label1 
         Caption         =   " "
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1935
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Label1.Caption = "Click_Event"
Form1.BackColor = RGB(0, 150, 0)
End Sub

Private Sub Form_DblClick()
Label1.Caption = "Double_Click_Event"
Form1.BackColor = RGB(150, 0, 0)
End Sub

Private Sub Form_Load()
Form1.WindowState = 2
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Caption = "Mouse_Down_Event"
Form1.BackColor = RGB(0, 0, 150)
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Caption = "Mouse_Move_Event"
Form1.BackColor = RGB(0, 0, 0)
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Caption = "Mouse_Up_Event"
Form1.BackColor = RGB(0, 150, 150)
End Sub
