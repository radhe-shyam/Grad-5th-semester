VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5550
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9090
   LinkTopic       =   "Form1"
   ScaleHeight     =   5550
   ScaleWidth      =   9090
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   8520
      Top             =   4560
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   5175
      Width           =   9090
      _ExtentX        =   16034
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub form_Load()
a = StatusBar1.Panels.Add(1, "Date")
b = StatusBar1.Panels.Add(2, "Time")
c = StatusBar1.Panels.Add(3, "mouse")
StatusBar1.Panels(1).Text = DateValue(Now)

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
StatusBar1.Panels(3).Text = "X = " & X & " Y = " & Y
End Sub

Private Sub Timer1_Timer()
StatusBar1.Panels(2).Text = TimeValue(Now)
End Sub
