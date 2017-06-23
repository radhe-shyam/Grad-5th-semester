VERSION 5.00
Begin VB.Form BG_color 
   Caption         =   "BG color"
   ClientHeight    =   1455
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   ScaleHeight     =   1455
   ScaleWidth      =   3750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "!! Click Here !!"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   960
      Width           =   3495
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Text            =   "0"
      Top             =   480
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Text            =   "0"
      Top             =   480
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Text            =   "0"
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Blue"
      Height          =   255
      Left            =   2880
      TabIndex        =   5
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "Green"
      Height          =   255
      Left            =   1680
      TabIndex        =   4
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Red"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   120
      Width           =   375
   End
End
Attribute VB_Name = "BG_color"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.BackColor = RGB(Text1.Text, Text2.Text, Text3.Text)
End Sub
