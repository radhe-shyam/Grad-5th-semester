VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu filemen 
      Caption         =   "File"
      Begin VB.Menu newop 
         Caption         =   "New"
      End
      Begin VB.Menu opop 
         Caption         =   "Open"
      End
      Begin VB.Menu saop 
         Caption         =   "Save"
      End
      Begin VB.Menu saasop 
         Caption         =   "Save as"
      End
      Begin VB.Menu clop 
         Caption         =   "Close"
      End
      Begin VB.Menu prop 
         Caption         =   "Print"
      End
      Begin VB.Menu exop 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu editmen 
      Caption         =   "Edit"
      Begin VB.Menu cuop 
         Caption         =   "Cut"
      End
      Begin VB.Menu copop 
         Caption         =   "Copy"
      End
      Begin VB.Menu paop 
         Caption         =   "Paste"
      End
      Begin VB.Menu pasop 
         Caption         =   "Paste Special"
      End
      Begin VB.Menu seop 
         Caption         =   "Select All"
      End
      Begin VB.Menu daop 
         Caption         =   "Date/Time"
      End
   End
   Begin VB.Menu formen 
      Caption         =   "Format"
      Begin VB.Menu foop 
         Caption         =   "Font"
      End
      Begin VB.Menu coop 
         Caption         =   "Color"
         Index           =   2
         Begin VB.Menu gop 
            Caption         =   "Green"
         End
         Begin VB.Menu rop 
            Caption         =   "Red"
         End
         Begin VB.Menu bop 
            Caption         =   "Blue"
         End
         Begin VB.Menu yop 
            Caption         =   "Yellow"
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bop_Click()
Form1.BackColor = &HFF0000
End Sub

Private Sub clop_Click()
Unload Form2
End Sub

Private Sub exop_Click()
Unload Form1
End Sub



Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = vbRightButton Then
PopupMenu formen
End If
End Sub


Private Sub gop_Click()
Form1.BackColor = &HFF00&
End Sub

Private Sub newop_Click()
Form2.Show (0)
End Sub

Private Sub opop_Click()
Form2.Show (0)
End Sub

Private Sub rop_Click()
Form1.BackColor = &HFF&
End Sub

Private Sub yop_Click()
Form1.BackColor = &HFFFF&
End Sub
