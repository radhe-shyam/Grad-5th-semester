VERSION 5.00
Begin VB.Form Mouse_Trace 
   BackColor       =   &H80000009&
   Caption         =   "Mouse Tracer"
   ClientHeight    =   4380
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7185
   LinkTopic       =   "Form1"
   ScaleHeight     =   4380
   ScaleWidth      =   7185
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      BackColor       =   &H80000009&
      Height          =   255
      Left            =   2160
      TabIndex        =   0
      Top             =   960
      Width           =   1695
   End
End
Attribute VB_Name = "Mouse_Trace"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Left = X
Label1.Top = Y
Label1.Caption = "X = " & X & " Y = " & Y
End Sub

