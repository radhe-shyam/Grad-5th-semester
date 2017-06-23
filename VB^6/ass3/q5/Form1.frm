VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Interest"
   ClientHeight    =   2130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4230
   LinkTopic       =   "Form1"
   ScaleHeight     =   2130
   ScaleWidth      =   4230
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   1680
      TabIndex        =   10
      Text            =   "Result"
      Top             =   1680
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "!!Calculate!!"
      Height          =   375
      Left            =   2520
      TabIndex        =   8
      Top             =   960
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Compound Interest"
      Height          =   255
      Left            =   2400
      TabIndex        =   7
      Top             =   480
      Width           =   2415
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Simple Interest"
      Height          =   255
      Left            =   2400
      TabIndex        =   6
      Top             =   120
      Value           =   -1  'True
      Width           =   2655
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1080
      TabIndex        =   5
      Text            =   "0"
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1080
      TabIndex        =   4
      Text            =   "0"
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1080
      TabIndex        =   3
      Text            =   "0"
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "Total Interest"
      Height          =   255
      Left            =   480
      TabIndex        =   9
      Top             =   1680
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "Time"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "Rate"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label1 
      Caption         =   "Principle"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
Text4.Text = (Val(Text1.Text) * Val(Text2.Text) * Val(Text3.Text)) / 100
Else
Text4.Text = Val(Text1.Text) * (1 + (Val(Text2.Text) / 100)) ^ Val(Text3.Text)
End If
End Sub
