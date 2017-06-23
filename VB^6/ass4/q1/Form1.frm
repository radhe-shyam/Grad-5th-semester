VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4665
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7365
   LinkTopic       =   "Form1"
   ScaleHeight     =   4665
   ScaleWidth      =   7365
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Caption = "Radhe"
Label1.Top = Y
Label1.Left = X
End Sub
