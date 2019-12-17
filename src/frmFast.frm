VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmF4Dat 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "SimControl"
   ClientHeight    =   2130
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7155
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmFast.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2130
   ScaleWidth      =   7155
   StartUpPosition =   3  'Windows Default
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   5520
      Top             =   1320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Frame FrameSIOC 
      Caption         =   "SIOC/IOCP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   30
      TabIndex        =   11
      Top             =   1320
      Width           =   5415
      Begin VB.CommandButton cmdDisconnect 
         Caption         =   "disconnect"
         Enabled         =   0   'False
         Height          =   255
         Left            =   4200
         TabIndex        =   18
         Top             =   360
         Width           =   1095
      End
      Begin VB.CommandButton cmdConnect 
         Caption         =   "connect"
         Height          =   255
         Left            =   4200
         TabIndex        =   17
         Top             =   120
         Width           =   1095
      End
      Begin VB.TextBox siocServerPort 
         Height          =   315
         Left            =   2160
         TabIndex        =   15
         Text            =   "8092"
         Top             =   240
         Width           =   615
      End
      Begin VB.TextBox siocServerIP 
         Height          =   315
         Left            =   840
         TabIndex        =   13
         Text            =   "localhost"
         Top             =   240
         Width           =   855
      End
      Begin VB.Label siocStatus 
         Caption         =   "disconnected"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3120
         TabIndex        =   16
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Port:"
         Height          =   255
         Left            =   1800
         TabIndex        =   14
         Top             =   270
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "ServerIP:"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   270
         Width           =   735
      End
   End
   Begin VB.Frame fraF4Dat 
      Caption         =   "Memory Model"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   1
      Left            =   4575
      TabIndex        =   8
      Top             =   120
      Width           =   2475
      Begin VB.OptionButton OptMemModel 
         Caption         =   "Falcon 4: Allied Force"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   105
         TabIndex        =   10
         Top             =   732
         Value           =   -1  'True
         Width           =   2220
      End
      Begin VB.OptionButton OptMemModel 
         Caption         =   "BMS 2.x"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   105
         TabIndex        =   9
         Top             =   360
         Width           =   2220
      End
   End
   Begin VB.Frame fraF4Dat 
      Caption         =   "Program Status"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1200
      Index           =   0
      Left            =   30
      TabIndex        =   1
      Top             =   120
      Width           =   4455
      Begin VB.TextBox fldF4Dat 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   1
         Left            =   3585
         TabIndex        =   7
         Text            =   "250"
         Top             =   660
         Width           =   750
      End
      Begin VB.TextBox fldF4Dat 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   0
         Left            =   3600
         TabIndex        =   6
         Text            =   "50"
         Top             =   210
         Width           =   750
      End
      Begin VB.CheckBox chkF4Dat 
         Caption         =   "Transmit TCP/IP"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   75
         TabIndex        =   3
         Top             =   795
         Width           =   1815
      End
      Begin VB.Label lblF4Dat 
         Alignment       =   1  'Right Justify
         Caption         =   "TCP/IP Timer (ms):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   2
         Left            =   1965
         TabIndex        =   5
         Top             =   675
         Width           =   1600
      End
      Begin VB.Label lblF4Dat 
         Alignment       =   1  'Right Justify
         Caption         =   "F4 Timer (ms):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   1
         Left            =   1965
         TabIndex        =   4
         Top             =   240
         Width           =   1600
      End
      Begin VB.Label lblF4Dat 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Falcon Active"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   435
         Index           =   0
         Left            =   90
         TabIndex        =   2
         Top             =   270
         Width           =   1770
      End
   End
   Begin VB.Timer tmrF4Dat 
      Index           =   0
      Interval        =   50
      Left            =   6000
      Top             =   1320
   End
   Begin VB.CommandButton cmdF4Dat 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   0
      Left            =   6450
      TabIndex        =   0
      Top             =   1410
      Width           =   570
   End
End
Attribute VB_Name = "frmF4Dat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Falcon->SIOC DataTransfer
'  ______
'  L,.   ',
'   \      ',_
'    \   @   ',
'     \ ^~^    ',
'      \    SC   ',
'       \___157FS  ',_                          _..----.._
'       [______       "'==.I\_____________..--"<__\\_n@___4\,_
'     ,..-=T         __   ____________          \/  "'" 0<==  "'-+.._
'     I____|_____    }_>=========I>=**""''==-------------==-   " |   "'-.,___
'   [_____,.--'"                             ""--=<""-----=====+==--''""
'     ""'-=+..,,__,-----,_____                  -=* |
'                 |__   /-----'#------.,I_---------'"
'                    """"'--..__         _.>
'                               ""'''''""

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' FAST by Michi "MiHi" Hirczy
'
' Adapted from code by Rich "Flareless" Sherkin and Erwin "Eagle9" Neyt
'
' Graphic Courtesy of Unknown artists via Angel
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  
  Option Explicit
 
  Dim glPSharedMem As Long                                         ' Shared memory
  Dim ghSharedMem                                                  ' Shared Memory Handle
  Dim mnErrorCounter As Integer                                    ' Error Counter
'  Dim gbTCPIPConnect As Boolean                                    ' Connect via TCP/IP option
'  Dim gsPacket(80) As String                                       ' TCP/IP Packet (80=all Instrument Array Elements Including LightBits & HSI Bits)
'  Dim mbSocketInUse() As Boolean                                   ' Socket In Use Indicator
  
  Const tmrFlightData = 0
  
  Const cmdExit = 0                                                ' Exit Button
  Const fldFalconActive = 0
  Const chkTCPIP = 0
  
  Const fldF4TimerValue = 0
  Const fldTCPIPTimerValue = 1
  
  Const lblF4TimerValue = 0
  Const lblTCPIPTimerValue = 1

  Const rowTCP_Max = 80                               ' Maximum TCP/IP Packet
  Dim mnMaxSocket As Integer                          ' Maximum # of TCP/IP Sockets

  Const optBMSMemModel = 0                            ' BMS Memory Model
  Const optAFMemModel = 1                             ' Allied Force Memory Model
  
  Const configFile = "fast.cfg"
  
Private Sub cmdConnect_Click()
  ConnectToSIOC
  writeLog ("winsockState = " & Winsock1.State & " sckConnected=" & sckConnected)
  
  ' InitializeSiocData
End Sub

Private Sub cmdDisconnect_Click()
  If Winsock1.State = sckConnected Then
    Winsock1.SendData "ArnFin:"
    Winsock1.Close
    siocStatus.Caption = "disconnected"
    siocStatus.ForeColor = &HFF&
    gbSiocConnected = False
    cmdConnect.Enabled = True
    cmdDisconnect.Enabled = False
    writeLog ("winsockState = " & Winsock1.State & " sckConnected=" & sckConnected)
  End If
End Sub

Private Sub cmdF4Dat_Click(Index As Integer)
' Button Support
  Select Case Index
  Case cmdExit
    Unload Me
    End
  End Select

End Sub


Private Sub fldF4Dat_LostFocus(Index As Integer)
  Select Case Index
  Case fldF4TimerValue
    tmrF4Dat(tmrFlightData).Interval = Val(fldF4Dat(fldF4TimerValue).Text)              ' Change Timer to new value
  End Select
End Sub


Private Sub Form_Load()
  ' Startup Procedure
  Dim mnCounter As Integer
  Set displayData = New SimData
  Set tempDisplayData = New SimData
  
  On Error GoTo FLErr
  With App
    If .PrevInstance Then
      MsgBox "A Previous Instance of FAST Is Running.  Please Press Ok", vbOKOnly, "Duplicate Execution"
      End
    End If
    Me.Caption = .FileDescription & " (v" & .Major & "." & .Minor & .Revision & ")"
  End With
  
  With Me
    .Left = Screen.Width - .Width - 100
    .Top = 500
  End With

  ' Chose the version you want to work with
  OptMemModel(optAFMemModel).Value = True
  
  gbFalconActive = False
  If OptMemModel(optBMSMemModel).Value = True Then
    gsFalconVersion = "BMS"
  ElseIf OptMemModel(optAFMemModel).Value = True Then
    gsFalconVersion = "AF"
  End If
  
  With lblF4Dat(fldFalconActive)
    .Caption = "Falcon Inactive"
    .ForeColor = &HFF&
  End With
  
  tmrF4Dat(tmrFlightData).Interval = Val(fldF4Dat(fldF4TimerValue).Text)
    
  DoEvents
  mnErrorCounter = 0
  gbFalconActive = False                                           ' Set Falcon Open Bit to False on Startup
  tmrF4Dat(tmrFlightData).Enabled = True
  
  ' SIOC configuration data
  With siocStatus
    .Caption = "disconnected"
    .ForeColor = &HFF&
  End With
  
  gbDebug = False
  
  ReadConfiguration (configFile)
  ConnectToSIOC
  
  Exit Sub
  
FLErr:
  MsgBox Err.Description & vbCr & "Generated by: " & Err.Source & "(" & Err.number & ")" & vbCr & Err.HelpFile & vbCr & Err.HelpContext, vbOKOnly, "Falcon-A Error"
  YouAreTerminated

End Sub

Private Sub Form_Terminate()
  YouAreTerminated
End Sub

Private Sub Form_Unload(Cancel As Integer)
  YouAreTerminated
End Sub

Private Sub OpenF4SharedMemFile()
' Open the Falcon 4 Shared Memory File

  On Error GoTo OSMFErr
  
  ' Attempt to open F4 Shared Memory
  ghSharedMem = OpenFileMapping(FILE_MAP_READ, True, "FalconSharedMemoryArea")
  
  If ghSharedMem > 0 Then                                         ' Successful Open - Handle Obtained
    glPSharedMem = MapViewOfFile(ghSharedMem, FILE_MAP_READ, 0, 0, 0)
    gbFalconActive = True
  Else                                                            ' Unable to open the shared memory file
    'UnmapViewOfFile (glPSharedMem)
    CloseHandle (ghSharedMem)
    gbFalconActive = False
  End If
  
  ' Set Falcon Active Indicator
  With lblF4Dat(fldFalconActive)
    .Caption = IIf(gbFalconActive, "Falcon-A", "Falcon Inactive")
    .ForeColor = IIf(gbFalconActive, &HFF00&, &HFF&)
    .FontBold = gbFalconActive
  End With
  DoEvents
  Exit Sub
  
OSMFErr:
  MsgBox Err.Description & vbCr & "Generated by: " & Err.Source & "(" & Err.number & ")" & vbCr & Err.HelpFile & vbCr & Err.HelpContext, vbOKOnly, "Falcon-A Error"
  YouAreTerminated
  
End Sub

Private Sub YouAreTerminated()
  Dim mnCounter As Integer
  On Error Resume Next
  tmrF4Dat(tmrFlightData).Enabled = False
  UnmapViewOfFile (glPSharedMem)
  CloseHandle (ghSharedMem)                                        ' Close Shared Memory File
  If Winsock1.State = sckConnected Then
    Winsock1.SendData "Arn.Fin:" & vbCrLf         ' Send SIOC the disconnect command
    Winsock1.Close
  End If
  End
End Sub


Private Sub OptMemModel_Click(Index As Integer)
' Set appropriate Shared Memory Model
  If OptMemModel(optBMSMemModel).Value = True Then
    gsFalconVersion = "BMS"
  ElseIf OptMemModel(optAFMemModel).Value = True Then
    gsFalconVersion = "AF"
  End If
  
End Sub

Private Sub tmrF4Dat_Timer(Index As Integer)
  ' Process Timer Events
  Dim mnCounter As Integer
  
  On Error GoTo F4DatError
   
  If Not gbFalconActive Then                                       ' Check for F4
    OpenF4SharedMemFile                                            ' Attempt to open Memory file
    Exit Sub
  End If

  If OptMemModel(optBMSMemModel).Value = True Then                 ' BMS Memory Model
    CopyMemory FDBMS, ByVal glPSharedMem, Len(FDBMS)               ' Copy Shared Memory to BMS Flight Data
  ElseIf OptMemModel(optAFMemModel).Value = True Then              ' Allied Force Memory Model
    CopyMemory FDAF, ByVal glPSharedMem, Len(FDAF)                 ' Copy Shared Memory to AF Flight Data
  End If
  
  OutputSimData
  
  DoEvents
  Exit Sub
  
F4DatError:
  mnErrorCounter = mnErrorCounter + 1
  MsgBox "Error: " & Err.Description & vbCr & "Has Occurred In Falcon-A", vbOKOnly, "Falcon-A Error Message"
  If mnErrorCounter = 5 Then YouAreTerminated

End Sub

Private Sub OutputSimData()
  Dim siocOutput As String
  siocOutput = ""

  Dim valueArray() As Long

  valueArray = displayData.getSiocArray
  tempDisplayData.setSiocArray valueArray
  
  displayData.FillFlightData
  
  ' To keep SIOC's event model, just send changes of the data
  With displayData
    Dim i As Integer
    For i = 1 To 499
      If .siocIxData(i) <> tempDisplayData.siocIxData(i) Then
        siocOutput = siocOutput & i & "=" & .siocIxData(i) & ":"
      End If
    Next i
  End With

  If siocOutput <> "" Then
    sendSiocData (siocOutput)
  End If

End Sub

Private Sub ConnectToSIOC()
    On Error GoTo CTSErr
    If Winsock1.State <> sckConnected Then
      Winsock1.Connect siocServerIP.Text, siocServerPort.Text
    End If
    
    Exit Sub
CTSErr:
  writeLog ("Error connecting to SIOC")
  Winsock1.Close

End Sub

Private Sub InitializeSiocData()
  If Not gbFalconActive Then                                       ' Check for F4
    OpenF4SharedMemFile                                            ' Attempt to open Memory file
  End If

  If gbFalconActive Then
    Dim siocOutput As String
    siocOutput = ""
    
    displayData.FillFlightData
    Dim tempArray() As Long
    
    tempArray() = displayData.getSiocArray
    
    With displayData
      Dim i As Integer
      For i = 1 To 499
      ' For i = 1 To UBound(tempArray)
          siocOutput = siocOutput & i & "=" & .siocIxData(i) & ":"
      Next i
    End With
    sendSiocData (siocOutput)
  End If
End Sub

Private Sub sendSiocData(output As String)
  If Winsock1.State = sckConnected Then
    Winsock1.SendData "Arn.Resp:" & output & vbCrLf
  Else
    ConnectToSIOC
  End If
End Sub


Private Sub Winsock1_Connect()
  siocStatus.Caption = "connected"
  siocStatus.ForeColor = &HC000&
  gbSiocConnected = True
  cmdConnect.Enabled = False
  cmdDisconnect.Enabled = True
  writeLog ("connected to SIOC, winsockState=" & Winsock1.State)
  InitializeSiocData

End Sub

Private Function ReadConfiguration(sConfigurationFile As String)
    On Error Resume Next
    If Dir$(sConfigurationFile) <> "" Then
        Dim fs As Object
        Dim sLine As String
        If (fs.FileExists(sConfigurationFile)) Then
            Open sConfigurationFile For Input As #1
            Do While Not EOF(1)
                Line Input #1, sLine
                sLine = Trim(sLine)
                If (LCase(Left(sLine, 11)) = "siocserver=") Then
                    siocServerIP.Text = Mid(sLine, 12)
                End If
                If (LCase(Left(sLine, 9)) = "siocport=") Then
                    siocServerPort.Text = Mid(sLine, 10)
                End If
                If (LCase(Left(sLine, 10)) = "datamodel=") Then
                    If (Mid(sLine, 11) = "AF") Then ' Use AlliedForeData
                        OptMemModel(optAFMemModel).Value = True
                    Else ' use BMS data
                        OptMemModel(optBMSMemModel).Value = True
                    End If
                End If
                If (LCase(Left(sLine, 6)) = "debug=") Then
                    If Mid(sLine, 7) = "1" Then ' Debug = True, show debug window
                      gbDebug = True
                      frmLog.Show
                      frmLights.Show
                    End If
                End If
                If (LCase(Left(sLine, 8)) = "f4timer=") Then
                    fldF4Dat(fldF4TimerValue).Text = Mid(sLine, 9)
                End If
            Loop
            Close #1
        Else
            ' MsgBox "File " & sConfigurationFile & " does not exist"
        End If
    End If
End Function
 
Public Function writeLog(sMessage As String)
  frmLog.lblLog.Caption = sMessage
End Function

