VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   585
   ClientLeft      =   3735
   ClientTop       =   5070
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   ScaleHeight     =   585
   ScaleWidth      =   7155
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   600
      Top             =   120
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   375
      Left            =   -120
      TabIndex        =   0
      Top             =   240
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   661
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   4800
      TabIndex        =   1
      Top             =   0
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
If ProgressBar1.Value < 100 Then
    ProgressBar1.Value = ProgressBar1.Value + 1
    Label1.Caption = ProgressBar1.Value & "% Completed"
Else
    Unload Form1
End If
End Sub
