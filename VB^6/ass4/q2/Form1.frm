VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Matrix"
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5775
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   5775
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   26
      Left            =   3360
      TabIndex        =   24
      Text            =   "1"
      Top             =   3480
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   25
      Left            =   2640
      TabIndex        =   25
      Text            =   "2"
      Top             =   3480
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   24
      Left            =   1920
      TabIndex        =   26
      Text            =   "3"
      Top             =   3480
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   23
      Left            =   3360
      TabIndex        =   21
      Text            =   "1"
      Top             =   3000
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   22
      Left            =   2640
      TabIndex        =   22
      Text            =   "2"
      Top             =   3000
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   21
      Left            =   1920
      TabIndex        =   23
      Text            =   "3"
      Top             =   3000
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   20
      Left            =   3360
      TabIndex        =   18
      Text            =   "1"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   19
      Left            =   2640
      TabIndex        =   19
      Text            =   "2"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Index           =   18
      Left            =   1920
      TabIndex        =   20
      Text            =   "3"
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   17
      Left            =   4920
      TabIndex        =   15
      Text            =   "9"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   16
      Left            =   4200
      TabIndex        =   16
      Text            =   "8"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   15
      Left            =   3480
      TabIndex        =   17
      Text            =   "7"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   14
      Left            =   4920
      TabIndex        =   12
      Text            =   "6"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   13
      Left            =   4200
      TabIndex        =   13
      Text            =   "5"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   12
      Left            =   3480
      TabIndex        =   14
      Text            =   "4"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   11
      Left            =   4920
      TabIndex        =   9
      Text            =   "3"
      Top             =   480
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   10
      Left            =   4200
      TabIndex        =   10
      Text            =   "2"
      Top             =   480
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   9
      Left            =   3480
      TabIndex        =   11
      Text            =   "1"
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Multiplication"
      Height          =   495
      Left            =   4320
      TabIndex        =   32
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Subtraction"
      Height          =   495
      Left            =   120
      TabIndex        =   31
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Addition"
      Height          =   495
      Left            =   120
      TabIndex        =   30
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Frame Frame3 
      Caption         =   "Result"
      Height          =   1815
      Left            =   1560
      TabIndex        =   29
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Frame Frame2 
      Caption         =   "Matrix 2"
      Height          =   1815
      Left            =   3120
      TabIndex        =   28
      Top             =   120
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   8
      Left            =   1920
      TabIndex        =   6
      Text            =   "9"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   7
      Left            =   1200
      TabIndex        =   7
      Text            =   "8"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   6
      Left            =   480
      TabIndex        =   8
      Text            =   "7"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   5
      Left            =   1920
      TabIndex        =   3
      Text            =   "6"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   4
      Left            =   1200
      TabIndex        =   4
      Text            =   "5"
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   3
      Left            =   480
      TabIndex        =   5
      Text            =   "4"
      Top             =   960
      Width           =   495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Matrix 1"
      Height          =   1815
      Left            =   120
      TabIndex        =   27
      Top             =   120
      Width           =   2535
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   2
         Left            =   1800
         TabIndex        =   2
         Text            =   "3"
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   1
         Left            =   1080
         TabIndex        =   1
         Text            =   "2"
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   0
         Left            =   360
         TabIndex        =   0
         Text            =   "1"
         Top             =   360
         Width           =   495
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For i = 0 To 8
Text1(i + 18).Text = CInt(Text1(i).Text) + CInt(Text1(i + 9).Text)
Next i
End Sub

Private Sub Command2_Click()
For i = 0 To 8
Text1(i + 18).Text = CInt(Text1(i).Text) - CInt(Text1(i + 9).Text)
Next i
End Sub

Private Sub Command3_Click()
Dim a(3, 3) As Integer
Dim b(3, 3) As Integer
Dim c(3, 3) As Integer
j = 0
For i = 0 To 2
        a(i, 0) = CInt(Text1(j).Text)
        a(i, 1) = CInt(Text1(j + 1).Text)
        a(i, 2) = CInt(Text1(j + 2).Text)
        b(i, 0) = CInt(Text1(j + 9).Text)
        b(i, 1) = CInt(Text1(j + 10).Text)
        b(i, 2) = CInt(Text1(j + 11).Text)
        j = j + 3
Next i
For i = 0 To 2
    For j = 0 To 2
        For k = 0 To 2
            c(i, j) = c(i, j) + a(i, k) * b(k, j)
        Next k
    Next j
Next i
j = 0
For i = 0 To 2
    Text1(j + 18).Text = c(i, 0)
    Text1(j + 19).Text = c(i, 1)
    Text1(j + 20).Text = c(i, 2)
    j = j + 3
Next i

End Sub

