VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8250
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   11235
   LinkTopic       =   "Form1"
   ScaleHeight     =   8250
   ScaleWidth      =   11235
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2880
      Top             =   7320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox rtf 
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11295
      _ExtentX        =   19923
      _ExtentY        =   13996
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
   Begin VB.Menu filemenu 
      Caption         =   "&File"
      Begin VB.Menu newmenu 
         Caption         =   "new "
         Shortcut        =   ^N
      End
      Begin VB.Menu openmenu 
         Caption         =   "open"
         Shortcut        =   ^O
      End
      Begin VB.Menu savemenu 
         Caption         =   "save"
         Shortcut        =   ^S
      End
      Begin VB.Menu closemenu 
         Caption         =   "close"
         Shortcut        =   ^Z
      End
   End
   Begin VB.Menu editmenu 
      Caption         =   "&edit"
      Begin VB.Menu cutmenu 
         Caption         =   "cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu copymenu 
         Caption         =   "copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu pastemenu 
         Caption         =   "paste"
      End
   End
   Begin VB.Menu format 
      Caption         =   "&format"
      Begin VB.Menu boldmenu 
         Caption         =   "bold"
      End
      Begin VB.Menu italicmenu 
         Caption         =   "italic"
      End
      Begin VB.Menu fontsize 
         Caption         =   "&fontsize"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Boolean

Private Sub boldmenu_Click()

rtf.Font.Bold = Not rtf.Font.Bold
End Sub

Private Sub closemenu_Click()
If flag = True Then
CommonDialog1.ShowSave
rtf.SaveFile (CommonDialog1.FileName)
End If

Unload Form1
End Sub

Private Sub copymenu_Click()
Clipboard.SetText (rtf.SelText)
End Sub

Private Sub cutmenu_Click()
Clipboard.SetText (rtf.SelText)
rtf.SelText = ""
End Sub

Private Sub fontsize_Click()
rtf.Font.Size = 16
End Sub

Private Sub italicmenu_Click()
rtf.Font.Italic = Not rtf.Font.Italic
End Sub

Private Sub newmenu_Click()
rtf.Text = ""
End Sub

Private Sub openmenu_Click()
CommonDialog1.Filter = "TEXT FILE (*.txt)|*.txt|All FILES(*.*)|*.*"
CommonDialog1.ShowOpen
rtf.LoadFile (CommonDialog1.FileName)
End Sub

Private Sub pastemenu_Click()
rtf.SelText = Clipboard.GetText
End Sub

Private Sub rtf_Change()
flag = True
End Sub

Private Sub savemenu_Click()
CommonDialog1.Filter = "TEXT FILE (*.txt)|*.txt|All FILES(*.*)|*.*"
CommonDialog1.ShowSave

rtf.SaveFile (CommonDialog1.FileName)
End Sub
