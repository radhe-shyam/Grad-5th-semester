VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000009&
   Caption         =   "Form1"
   ClientHeight    =   7230
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9840
   LinkTopic       =   "Form1"
   ScaleHeight     =   7230
   ScaleWidth      =   9840
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim oldx, oldy, a As Integer

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
oldx = X
oldy = Y
a = 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If a = 1 Then
Form1.Line (oldx, oldy)-(X, Y)
oldx = X
oldy = Y
End If
End Sub
