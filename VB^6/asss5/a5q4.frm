VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Notepad"
   ClientHeight    =   7170
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   10635
   LinkTopic       =   "Form1"
   ScaleHeight     =   7170
   ScaleWidth      =   10635
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10200
      Top             =   6360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Filter          =   "*.txt"
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   7215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10695
      _ExtentX        =   18865
      _ExtentY        =   12726
      _Version        =   393217
      TextRTF         =   $"a5q4.frx":0000
   End
   Begin VB.Menu filemenu 
      Caption         =   "&File"
      Begin VB.Menu filenew 
         Caption         =   "New"
         Shortcut        =   ^N
      End
      Begin VB.Menu fileopen 
         Caption         =   "Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu filesave 
         Caption         =   "Save as"
         Shortcut        =   ^S
      End
      Begin VB.Menu fileclose 
         Caption         =   "Close"
         Shortcut        =   ^Z
      End
   End
   Begin VB.Menu editmenu 
      Caption         =   "&Edit"
      Begin VB.Menu editcut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu editcopy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu editpaste 
         Caption         =   "Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu editfind 
         Caption         =   "Find"
         Shortcut        =   ^F
      End
      Begin VB.Menu editfindreplace 
         Caption         =   "Find & Replace"
         Shortcut        =   ^R
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub editcopy_Click()
Clipboard.SetText (RichTextBox1.SelText)
End Sub

Private Sub editcut_Click()
Clipboard.SetText (RichTextBox1.SelText)
RichTextBox1.SelText = ""
End Sub

Private Sub editfind_Click()
RichTextBox1.SelStart = 0
start = RichTextBox1.SelStart
pos = Len(RichTextBox1.Text)
a = InputBox("Text to find")
x = RichTextBox1.Find(a)
End Sub

Private Sub editfindreplace_Click()
RichTextBox1.SelStart = 0
start = RichTextBox1.SelStart
pos = Len(RichTextBox1.Text)
a = InputBox("Text to find")
b = InputBox("Text to replace")
'b = InputBox("Text to replace")
'RichTextBox1.SelText = b
RichTextBox1.Text = Replace(RichTextBox1.Text, a, b)
End Sub

Private Sub editpaste_Click()
RichTextBox1.SelText = Clipboard.GetText
End Sub

Private Sub fileclose_Click()
Close Form1
End Sub

Private Sub filenew_Click()
RichTextBox1.Text = ""
End Sub

Private Sub fileopen_Click()
CommonDialog1.ShowOpen
RichTextBox1.LoadFile (CommonDialog1.FileName)
End Sub
Private Sub filesave_Click()
CommonDialog1.ShowSave
RichTextBox1.SaveFile (CommonDialog1.FileName)
End Sub

