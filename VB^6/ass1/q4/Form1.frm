VERSION 5.00
Begin VB.Form Logical_operations 
   Caption         =   "Logical Operations"
   ClientHeight    =   1080
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3600
   LinkTopic       =   "Form1"
   ScaleHeight     =   1080
   ScaleWidth      =   3600
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "NOT"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OR"
      Height          =   375
      Left            =   1320
      TabIndex        =   4
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "AND"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2520
      TabIndex        =   2
      Text            =   "Result"
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Text            =   "Num2 "
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Num 1"
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "Logical_operations"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text3.Text = CBool(Text1.Text) + CBool(Text2.Text)
End Sub
Private Sub Command2_Click()
Text3.Text = CBool(Text1.Text) - CBool(Text2.Text)
End Sub
Private Sub Command3_Click()
Text3.Text = CBool(Text1.Text) / CBool(Text2.Text)
End Sub
Private Sub Command4_Click()
Text3.Text = Val(Text1.Text) * Val(Text2.Text)
End Sub

Private Sub Text2_Change()

End Sub

Private Sub Text3_Change()

End Sub
