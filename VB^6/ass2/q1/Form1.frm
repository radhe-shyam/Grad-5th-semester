VERSION 5.00
Begin VB.Form Different_Msg_Boxes 
   ClientHeight    =   630
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2550
   LinkTopic       =   "Form1"
   ScaleHeight     =   630
   ScaleWidth      =   2550
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "!!Click Here!!"
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Different_Msg_Boxes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
t = MsgBox("Hello", Text1.Text, "Msg_Box")
End Sub
