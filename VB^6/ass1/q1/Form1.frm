VERSION 5.00
Begin VB.Form Disable_and_Hide_the_text_boxes 
   Caption         =   "Disable and Hide the Text Boxes"
   ClientHeight    =   1245
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2895
   LinkTopic       =   "Form1"
   ScaleHeight     =   1245
   ScaleWidth      =   2895
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Hide"
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Disable"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Text            =   "Enable"
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Text            =   "Enable"
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Disable_and_Hide_the_text_boxes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If (Text1.Enabled = True) Then
Text1.Enabled = False
Text2.Enabled = False
Command1.Caption = "Enable"
Text1.Text = "Disable"
Text2.Text = "Disable"
Else
Text1.Enabled = True
Text2.Enabled = True
Command1.Caption = "Disable"
Text1.Text = "Enable"
Text2.Text = "Enable"
End If




End Sub

Private Sub Command2_Click()
If (Text1.Visible = True) Then
Text1.Visible = False
Text2.Visible = False
Command2.Caption = "Show"
Else
Text1.Visible = True
Text2.Visible = True
Command2.Caption = "Hide"
End If

End Sub
