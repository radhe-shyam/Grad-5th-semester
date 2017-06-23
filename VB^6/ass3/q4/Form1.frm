VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Verification"
   ClientHeight    =   1605
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3930
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1605
   ScaleWidth      =   3930
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "!! Verify !!"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Text            =   "String"
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Then
    t = MsgBox("The string is null", vbOKOnly, "Verfication")
Else
    If IsNumeric(Text1.Text) Then
        t = MsgBox("The string is Numeric", vbOKOnly, "Verfication")
    Else
        t = MsgBox("The string is Alphabetic", vbOKOnly, "Verfication")
    End If
End If
End Sub
