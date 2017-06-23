VERSION 5.00
Begin VB.Form Calculation 
   Caption         =   "Calculation"
   ClientHeight    =   2055
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2445
   LinkTopic       =   "Form1"
   ScaleHeight     =   2055
   ScaleWidth      =   2445
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Result"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   1815
      Left            =   1440
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "Form1.frx":0000
      Top             =   120
      Width           =   855
   End
   Begin VB.OptionButton Option3 
      Caption         =   "LCM"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   1095
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Fibbonaci"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1095
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Factorial"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   1095
   End
End
Attribute VB_Name = "Calculation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
If Option1.Value = True Then
    a = InputBox("Enter the Number")
    fact = 1
    For i = 1 To a
        fact = fact * i
    Next i
    Text1.Text = fact
Else
    If Option2.Value = True Then
        b = InputBox("Enter the Number")
        j = 0
        k = 1
        Text1.Text = j & vbCrLf
        Text1.Text = Text1.Text & k & vbCrLf
        For i = 0 To b - 3
            fib = j + k
            Text1.Text = Text1.Text & fib & vbCrLf
            j = k
            k = fib
        Next i
    Else
        m = InputBox("Enter the number")
        n = InputBox("Enter the number")
        pro = Val(m * n)
        Do
        If m < n Then
        temp = m
        m = n
        n = temp
        End If
        m = m Mod n
        Loop While m > 0
        lcm = pro / n
        Text1.Text = lcm
    End If
End If
End Sub

