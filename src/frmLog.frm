VERSION 5.00
Begin VB.Form frmLog 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Log"
   ClientHeight    =   9540
   ClientLeft      =   12150
   ClientTop       =   6150
   ClientWidth     =   7560
   BeginProperty Font 
      Name            =   "Fixedsys"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9540
   ScaleWidth      =   7560
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblLog 
      Caption         =   "Label1"
      Height          =   9255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7215
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
 lblLog.Caption = lalala
End Sub

