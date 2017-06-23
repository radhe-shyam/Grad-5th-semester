VERSION 5.00
Begin VB.Form Swap_and_Concate 
   Caption         =   "Swap and Concate"
   ClientHeight    =   1470
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4095
   ScaleHeight     =   1470
   ScaleWidth      =   4095
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Concate"
      Height          =   375
      Left            =   2160
      TabIndex        =   4
      Top             =   960
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Swap"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   960
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "Result String"
      Top             =   480
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2160
      TabIndex        =   1
      Text            =   "String 2"
      Top             =   120
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "String 1"
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Swap_and_Concate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
temp = Text1.Text
Text1.Text = Text2.Text
Text2.Text = temp
End Sub

Private Sub Command2_Click()
Text3.Text = Text1.Text & Text2.Text
End Sub
