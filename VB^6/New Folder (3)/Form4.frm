VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4995
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   7290
   LinkTopic       =   "Form1"
   ScaleHeight     =   4995
   ScaleWidth      =   7290
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3360
      Top             =   2280
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox rtf 
      Height          =   5055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   8916
      _Version        =   393217
      BorderStyle     =   0
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"Form4.frx":0000
   End
   Begin VB.Menu file_mnu 
      Caption         =   "&file"
      Begin VB.Menu new_mnu 
         Caption         =   "new"
         Shortcut        =   ^N
      End
      Begin VB.Menu open_mnu 
         Caption         =   "open"
         Shortcut        =   ^O
      End
      Begin VB.Menu save_mnu 
         Caption         =   "save"
         Shortcut        =   ^S
      End
      Begin VB.Menu savea_mnu 
         Caption         =   "saveAs"
      End
      Begin VB.Menu close_mnu 
         Caption         =   "close"
      End
      Begin VB.Menu do1_mnu 
         Caption         =   "-"
      End
      Begin VB.Menu print_mnu 
         Caption         =   "print"
      End
      Begin VB.Menu do_mnu 
         Caption         =   "-"
      End
      Begin VB.Menu exit_mnu 
         Caption         =   "exit"
      End
   End
   Begin VB.Menu edit_mnu 
      Caption         =   "&edit"
      Begin VB.Menu cut_mnu 
         Caption         =   "cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu copy_mnu 
         Caption         =   "copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu paste_mnu 
         Caption         =   "paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu pspecial_mnu 
         Caption         =   "pasteSpecial"
      End
      Begin VB.Menu delete_mnu 
         Caption         =   "delete"
      End
      Begin VB.Menu sall_mnu 
         Caption         =   "selectAll"
         Shortcut        =   ^A
      End
      Begin VB.Menu find 
         Caption         =   "Find"
      End
      Begin VB.Menu replace 
         Caption         =   "Replace"
      End
      Begin VB.Menu replaceall 
         Caption         =   "Replace All"
      End
   End
   Begin VB.Menu format_mnu 
      Caption         =   "format"
      Begin VB.Menu bold_mnu 
         Caption         =   "bold"
      End
      Begin VB.Menu italic_mnu 
         Caption         =   "italic"
      End
      Begin VB.Menu font_mnu 
         Caption         =   "color"
      End
      Begin VB.Menu uline_mnu 
         Caption         =   "underLine"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub bold_mnu_Click()
rtf.SelBold = True
End Sub

Private Sub delete_mnu_Click()
rtf.SelText = ""
End Sub

Private Sub find_Click()
a = InputBox("Find What", "find")
rtf.SelStart = 0
rtf.find (a)
End Sub

Private Sub font_mnu_Click()
CommonDialog1.ShowColor
rtf.SelColor = CommonDialog1.Color
End Sub

Private Sub italic_mnu_Click()
rtf.SelItalic = True
End Sub

Private Sub new_mnu_Click()
rtf.Text = ""
End Sub

Private Sub open_mnu_Click()
CommonDialog1.Filter = "All files|*.*|Text files(*.txt)|*.txt"
CommonDialog1.ShowOpen
rtf.LoadFile (CommonDialog1.FileName)
End Sub

Private Sub paste_mnu_Click()
rtf.SelText = Clipboard.GetText
End Sub

Private Sub print_mnu_Click()
CommonDialog1.ShowPrinter
End Sub


Private Sub replace_Click()
a = InputBox("Find What", find)
rtf.SelStart = 0
rtf.find (a)
b = InputBox("Replace with", "replace")
rtf.SelText = b
End Sub

Private Sub replaceall_Click()
a = InputBox("Find What", find)
rtf.SelStart = 0
rtf.find (a)
b = InputBox("Replace with")
rtf.Text = replace(rtf.Text, a, b)

End Sub

Private Sub sall_mnu_Click()
rtf.SelStart = 0
rtf.SelText

End Sub

Private Sub save_mnu_Click()
CommonDialog1.Filter = "All files|*.*|Text files(*.txt)|*.txt"
CommonDialog1.ShowSave
rtf.SaveFile (CommonDialog1.FileName)
End Sub


Private Sub uline_mnu_Click()
rtf.SelUnderline = True
End Sub


