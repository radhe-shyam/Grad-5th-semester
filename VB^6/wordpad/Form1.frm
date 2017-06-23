VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6345
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   9930
   LinkTopic       =   "Form1"
   ScaleHeight     =   6345
   ScaleWidth      =   9930
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox rtf 
      Height          =   6495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10095
      _ExtentX        =   17806
      _ExtentY        =   11456
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10320
      Top             =   3600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu file_mnu 
      Caption         =   "&file"
      Begin VB.Menu new_mnu 
         Caption         =   "new"
      End
      Begin VB.Menu open_mnu 
         Caption         =   "open"
      End
      Begin VB.Menu save_mnu 
         Caption         =   "save"
      End
      Begin VB.Menu print_mnu 
         Caption         =   "print"
      End
      Begin VB.Menu close_mnu 
         Caption         =   "close"
      End
   End
   Begin VB.Menu edit_mnu 
      Caption         =   "&edit"
      Begin VB.Menu cut_mnu 
         Caption         =   "cut"
      End
      Begin VB.Menu copy_mnu 
         Caption         =   "copy"
      End
      Begin VB.Menu paste_mnu 
         Caption         =   "paste"
      End
      Begin VB.Menu clear_mnu 
         Caption         =   "clear"
      End
   End
   Begin VB.Menu format_mnu 
      Caption         =   "format"
      Begin VB.Menu font_mnu 
         Caption         =   "font"
         Begin VB.Menu italic_mnu 
            Caption         =   "italic"
         End
         Begin VB.Menu bold_mnu 
            Caption         =   "bold"
         End
         Begin VB.Menu st_mnu 
            Caption         =   "strike through"
         End
         Begin VB.Menu under_mnu 
            Caption         =   "under line"
         End
      End
      Begin VB.Menu s1_mnu 
         Caption         =   "-"
      End
      Begin VB.Menu color_mnu 
         Caption         =   "color"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bold_mnu_Click()
rtf.Font.Bold = Not rtf.Font.Bold
End Sub

Private Sub clear_mnu_Click()
rtf.SelText = ""
End Sub

Private Sub close_mnu_Click()
Unload Form1
End Sub

Private Sub color_mnu_Click()
CommonDialog1.ShowColor
rtf.BackColor = CommonDialog1.Color
End Sub

Private Sub copy_mnu_Click()
Clipboard.SetText (rtf.SelText)
End Sub

Private Sub cut_mnu_Click()
Clipboard.SetText (rtf.SelText)
rtf.SelText = ""
End Sub

Private Sub italic_mnu_Click()
rtf.Font.Italic = Not rtf.Font.Italic
End Sub

Private Sub new_mnu_Click()
rtf.Text = ""
End Sub

Private Sub open_mnu_Click()
CommonDialog1.ShowOpen
CommonDialog1.Filter = "TEXT FILE (*.txt)|*.txt|All FILES(*.*)|*.*"
rtf.LoadFile (CommonDialog1.FileName)
End Sub

Private Sub paste_mnu_Click()
rtf.SelText = Clipboard.GetText
End Sub

Private Sub print_mnu_Click()
CommonDialog1.ShowPrinter
End Sub

Private Sub save_mnu_Click()
CommonDialog1.ShowSave
CommonDialog1.Filter = "TEXT FILE (*.txt)|*.txt|All FILES(*.*)|*.*"
rtf.SaveFile (CommonDialog1.FileName)
End Sub

Private Sub st_mnu_Click()
rtf.Font.Strikethrough = Not rtf.Font.Strikethrough
End Sub

Private Sub under_mnu_Click()
rtf.Font.Underline = Not rtf.Font.Underline
End Sub
