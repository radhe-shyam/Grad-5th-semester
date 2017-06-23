VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5205
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   9210
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   9210
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   5175
      Left            =   -480
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   -720
      Width           =   9255
   End
   Begin VB.Menu Fmen 
      Caption         =   "&File"
      Begin VB.Menu Nopt 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu Oopt 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu Sopt 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu Saopt 
         Caption         =   "Save &As..."
      End
      Begin VB.Menu Eopt 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu Emen 
      Caption         =   "&Edit"
      Begin VB.Menu topt 
         Caption         =   "Cu&t"
         Shortcut        =   ^X
      End
      Begin VB.Menu Copt 
         Caption         =   "&Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu Popt 
         Caption         =   "&Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu Dopt 
         Caption         =   "De&lete"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu Sep 
         Caption         =   "-"
      End
      Begin VB.Menu Selopt 
         Caption         =   "Select &All"
         Shortcut        =   ^A
      End
   End
   Begin VB.Menu Formen 
      Caption         =   "F&ormat"
      Begin VB.Menu Fopt 
         Caption         =   "&Font"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Nopt_Click()
Form1.BackColor = vbRed
End Sub

