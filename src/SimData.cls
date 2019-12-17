VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "SimData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'
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
'
'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
' SimData - Class with all needed information to display in sim
'
' Written by: MiHi, based on code from Flareless
'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Option Explicit

  Private siocIndex(500) As Long
  ' use vars 0-9 for special flags



Public Property Get siocIxData(ByVal idx As Long)
  siocIxData = siocIndex(idx)
End Property

Public Property Let internalFlags(ByVal vData As Long)
  siocIndex(mInternalFlags) = vData
End Property
Public Property Get internalFlags() As Long
  internalFlags = siocIndex(mInternalFlags)
End Property

Public Property Let cautionPanelLights(ByVal vData As Long)
  siocIndex(mCautionPanelLights) = vData
End Property
Public Property Get cautionPanelLights() As Long
  cautionPanelLights = siocIndex(mCautionPanelLights)
End Property

Public Property Let frontPanelLights(ByVal vData As Long)
  siocIndex(mFrontPanelLights) = vData
End Property
Public Property Get frontPanelLights() As Long
  frontPanelLights = siocIndex(mFrontPanelLights)
End Property

Public Property Let consoleLights(ByVal vData As Long)
  siocIndex(mConsoleLights) = vData
End Property
Public Property Get consoleLights() As Long
  consoleLights = siocIndex(mConsoleLights)
End Property

Public Property Let flags(ByVal vData As Long)
  siocIndex(mFlags) = vData
End Property
Public Property Get flags() As Long
  flags = siocIndex(mFlags)
End Property

Public Property Let lightbits(ByVal vData As Long)
  siocIndex(mLightbits) = vData
End Property
Public Property Get lightbits() As Long
  lightbits = siocIndex(mLightbits)
End Property

Public Property Let lightbits2(ByVal vData As Long)
  siocIndex(mLightbits2) = vData
End Property
Public Property Get lightbits2() As Long
  lightbits2 = siocIndex(mLightbits2)
End Property

Public Property Let lightbits3(ByVal vData As Long)
  siocIndex(mLightbits3) = vData
End Property
Public Property Get lightbits3() As Long
  lightbits3 = siocIndex(mLightbits3)
End Property

Public Property Let hsiBits(ByVal vData As Long)
  siocIndex(mHsiBits) = vData
End Property
Public Property Get hsiBits() As Long
  hsiBits = siocIndex(mHsiBits)
End Property

Public Property Let altRadar(ByVal vData As Long)
  siocIndex(mAltRadar) = vData
End Property
Public Property Get altRadar() As Long
  altRadar = siocIndex(mAltRadar)
End Property

Public Property Let altBaro(ByVal vData As Long)
  siocIndex(mAltBaro) = vData
End Property
Public Property Get altBaro() As Long
  altBaro = siocIndex(mAltBaro)
End Property

Public Property Let altSetting(ByVal vData As Long)
  siocIndex(mAltSetting) = vData
End Property
Public Property Get altSetting() As Long
  altSetting = siocIndex(mAltSetting)
End Property

Public Property Let kias(ByVal vData As Long)
  siocIndex(mKias) = vData
End Property
Public Property Get kias() As Long
  kias = siocIndex(mKias)
End Property

Public Property Let mach(ByVal vData As Long)
  siocIndex(mMach) = vData
End Property
Public Property Get mach() As Long
  mach = siocIndex(mMach)
End Property

Public Property Let vtrue(ByVal vData As Long)
  siocIndex(mVtrue) = vData
End Property
Public Property Get vtrue() As Long
  vtrue = siocIndex(mVtrue)
End Property

Public Property Let aoa(ByVal vData As Long)
  siocIndex(mAoa) = vData
End Property
Public Property Get aoa() As Long
  aoa = siocIndex(mAoa)
End Property

Public Property Let roll(ByVal vData As Long)
  siocIndex(mRoll) = vData
End Property
Public Property Get roll() As Long
  roll = siocIndex(mRoll)
End Property

Public Property Let pitch(ByVal vData As Long)
  siocIndex(mPitch) = vData
End Property
Public Property Get pitch() As Long
  pitch = siocIndex(mPitch)
End Property

Public Property Let yaw(ByVal vData As Long)
  siocIndex(mYaw) = vData
End Property
Public Property Get yaw() As Long
  yaw = siocIndex(mYaw)
End Property

Public Property Let ilsHorPos(ByVal vData As Long)
  siocIndex(mIlsHorPos) = vData
End Property
Public Property Get ilsHorPos() As Long
  ilsHorPos = siocIndex(mIlsHorPos)
End Property

Public Property Let ilsVerPos(ByVal vData As Long)
  siocIndex(mIlsVerPos) = vData
End Property
Public Property Get ilsVerPos() As Long
  ilsVerPos = siocIndex(mIlsVerPos)
End Property

Public Property Let vvi(ByVal vData As Long)
  siocIndex(mVvi) = vData
End Property
Public Property Get vvi() As Long
  vvi = siocIndex(mVvi)
End Property

Public Property Let hsiSelectedCourse(ByVal vData As Long)
  siocIndex(mHsiSelectedCourse) = vData
End Property
Public Property Get hsiSelectedCourse() As Long
  hsiSelectedCourse = siocIndex(mHsiSelectedCourse)
End Property

Public Property Let hsiCourseDeviation(ByVal vData As Long)
  siocIndex(mHsiCourseDeviation) = vData
End Property
Public Property Get hsiCourseDeviation() As Long
  hsiCourseDeviation = siocIndex(mHsiCourseDeviation)
End Property

Public Property Let hsiSelectedHeading(ByVal vData As Long)
  siocIndex(mHsiSelectedHeading) = vData
End Property
Public Property Get hsiSelectedHeading() As Long
  hsiSelectedHeading = siocIndex(mHsiSelectedHeading)
End Property

Public Property Let hsiCurrentHeading(ByVal vData As Long)
  siocIndex(mHsiCurrentHeading) = vData
End Property
Public Property Get hsiCurrentHeading() As Long
  hsiCurrentHeading = siocIndex(mHsiCurrentHeading)
End Property

Public Property Let hsiDistanceToBeacon(ByVal vData As Long)
  siocIndex(mHsiDistanceToBeacon) = vData
End Property
Public Property Get hsiDistanceToBeacon() As Long
  hsiDistanceToBeacon = siocIndex(mHsiDistanceToBeacon)
End Property

Public Property Let hsiBearingToBeacon(ByVal vData As Long)
  siocIndex(mHsiBearingToBeacon) = vData
End Property
Public Property Get hsiBearingToBeacon() As Long
  hsiBearingToBeacon = siocIndex(mHsiBearingToBeacon)
End Property

Public Property Let fuelFlow(ByVal vData As Long)
  siocIndex(mFuelFlow) = vData
End Property
Public Property Get fuelFlow() As Long
  fuelFlow = siocIndex(mFuelFlow)
End Property

Public Property Let oilPress(ByVal vData As Long)
  siocIndex(mOilPress) = vData
End Property
Public Property Get oilPress() As Long
  oilPress = siocIndex(mOilPress)
End Property

Public Property Let nozzlePos(ByVal vData As Long)
  siocIndex(mNozzlePos) = vData
End Property
Public Property Get nozzlePos() As Long
  nozzlePos = siocIndex(mNozzlePos)
End Property

Public Property Let rpm(ByVal vData As Long)
  siocIndex(mRpm) = vData
End Property
Public Property Get rpm() As Long
  rpm = siocIndex(mRpm)
End Property

Public Property Let ftit(ByVal vData As Long)
  siocIndex(mFtit) = vData
End Property
Public Property Get ftit() As Long
  ftit = siocIndex(mFtit)
End Property

Public Property Let heading(ByVal vData As Long)
  siocIndex(mHeading) = vData
End Property
Public Property Get heading() As Long
  heading = siocIndex(mHeading)
End Property

Public Property Let fuelFwd(ByVal vData As Long)
  siocIndex(mFuelFwd) = vData
End Property
Public Property Get fuelFwd() As Long
  fuelFwd = siocIndex(mFuelFwd)
End Property

Public Property Let fuelAft(ByVal vData As Long)
  siocIndex(mFuelAft) = vData
End Property
Public Property Get fuelAft() As Long
  fuelAft = siocIndex(mFuelAft)
End Property

Public Property Let fuelTotal(ByVal vData As Long)
  siocIndex(mFuelTotal) = vData
End Property
Public Property Get fuelTotal() As Long
  fuelTotal = siocIndex(mFuelTotal)
End Property

Public Property Let fuelInternal(ByVal vData As Long)
  siocIndex(mFuelInternal) = vData
End Property
Public Property Get fuelInternal() As Long
  fuelInternal = siocIndex(mFuelInternal)
End Property

Public Property Let fuelExternal(ByVal vData As Long)
  siocIndex(mFuelExternal) = vData
End Property
Public Property Get fuelExternal() As Long
  fuelExternal = siocIndex(mFuelExternal)
End Property

Public Property Let hydPressA(ByVal vData As Long)
  siocIndex(mHydPressA) = vData
End Property
Public Property Get hydPressA() As Long
  hydPressA = siocIndex(mHydPressA)
End Property

Public Property Let hydPressB(ByVal vData As Long)
  siocIndex(mHydPressB) = vData
End Property
Public Property Get hydPressB() As Long
  hydPressB = siocIndex(mHydPressB)
End Property

Public Property Let epuFuel(ByVal vData As Long)
  siocIndex(mEpuFuel) = vData
End Property
Public Property Get epuFuel() As Long
  epuFuel = siocIndex(mEpuFuel)
End Property

Public Property Let liquidOxygen(ByVal vData As Long)
  siocIndex(mLiquidOxygen) = vData
End Property
Public Property Get liquidOxygen() As Long
  liquidOxygen = siocIndex(mLiquidOxygen)
End Property

Public Property Let cabinPressAlt(ByVal vData As Long)
  siocIndex(mCabinPressAlt) = vData
End Property
Public Property Get cabinPressAlt() As Long
  cabinPressAlt = siocIndex(mCabinPressAlt)
End Property

Public Property Let speedBrakePos(ByVal vData As Long)
  siocIndex(mSpeedBrakePos) = vData
End Property
Public Property Get speedBrakePos() As Long
  speedBrakePos = siocIndex(mSpeedBrakePos)
End Property

Public Property Let chaffCount(ByVal vData As Long)
  siocIndex(mChaffCount) = vData
End Property
Public Property Get chaffCount() As Long
  chaffCount = siocIndex(mChaffCount)
End Property
    
Public Property Let flareCount(ByVal vData As Long)
  siocIndex(mFlareCount) = vData
End Property
Public Property Get flareCount() As Long
  flareCount = siocIndex(mFlareCount)
End Property

Public Property Let uhfAuxChan(ByVal vData As Long)
  siocIndex(mUhfAuxChan) = vData
End Property
Public Property Get uhfAuxChan() As Long
  uhfAuxChan = siocIndex(mUhfAuxChan)
End Property

Public Property Let uhfAuxFreq(ByVal vData As Long)
  siocIndex(mUhfAuxFreq) = vData
End Property
Public Property Get uhfAuxFreq() As Long
  uhfAuxFreq = siocIndex(mUhfAuxFreq)
End Property

Public Property Let auxTacan(ByVal vData As Long)
  siocIndex(mAuxTacan) = vData
End Property
Public Property Get auxTacan() As Long
  auxTacan = siocIndex(mAuxTacan)
End Property

Public Property Let trimPitch(ByVal vData As Long)
  siocIndex(mTrimPitch) = vData
End Property
Public Property Get trimPitch() As Long
  trimPitch = siocIndex(mTrimPitch)
End Property

Public Property Let trimRoll(ByVal vData As Long)
  siocIndex(mTrimRoll) = vData
End Property
Public Property Get trimRoll() As Long
  trimRoll = siocIndex(mTrimRoll)
End Property

Public Property Let trimYaw(ByVal vData As Long)
  siocIndex(mTrimYaw) = vData
End Property
Public Property Get trimYaw() As Long
  trimYaw = siocIndex(mTrimYaw)
End Property

Public Property Let gforce(ByVal vData As Long)
  siocIndex(mGforce) = vData
End Property
Public Property Get gforce() As Long
  gforce = siocIndex(mGforce)
End Property

Public Property Let windOffset(ByVal vData As Long)
  siocIndex(mWindOffset) = vData
End Property
Public Property Get windOffset() As Long
  windOffset = siocIndex(mWindOffset)
End Property

Public Property Let posX(ByVal vData As Long)
  siocIndex(mPosX) = vData
End Property
Public Property Get posX() As Long
  posX = siocIndex(mPosX)
End Property

Public Property Let posY(ByVal vData As Long)
  siocIndex(mPosY) = vData
End Property
Public Property Get posY() As Long
  posY = siocIndex(mPosY)
End Property

Public Property Let posZ(ByVal vData As Long)
  siocIndex(mPosZ) = vData
End Property
Public Property Get posZ() As Long
  posZ = siocIndex(mPosZ)
End Property

Public Property Let courseState(ByVal vData As Long)
  siocIndex(mCourseState) = vData
End Property
Public Property Get courseState() As Long
  courseState = siocIndex(mCourseState)
End Property

' every DED and PFL character will be converted to the ASCII value

Public Property Let dedLine1(ByVal vData As String)
  Dim dedLen, i As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mDedLine1 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get dedLine1() As String
  dedLine1 = Chr$(siocIndex(mDedLine1))
End Property

Public Property Let dedLine2(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mDedLine2 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get dedLine2() As String
  dedLine2 = Chr$(siocIndex(mDedLine2))
End Property

Public Property Let dedLine3(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mDedLine3 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get dedLine3() As String
  dedLine3 = Chr$(siocIndex(mDedLine3))
End Property

Public Property Let dedLine4(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mDedLine4 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get dedLine4() As String
  dedLine4 = Chr$(siocIndex(mDedLine4))
End Property

Public Property Let dedLine5(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mDedLine5 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get dedLine5() As String
  dedLine5 = Chr$(siocIndex(mDedLine5))
End Property

' inverted characters for DED

Public Property Let dedInv1(ByVal vData As Long)
  siocIndex(mDedInv1) = vData
End Property
Public Property Get dedInv1() As Long
  dedInv1 = siocIndex(mDedInv1)
End Property

Public Property Let dedInv2(ByVal vData As Long)
  siocIndex(mDedInv2) = vData
End Property
Public Property Get dedInv2() As Long
  dedInv2 = siocIndex(mDedInv2)
End Property

Public Property Let dedInv3(ByVal vData As Long)
  siocIndex(mDedInv3) = vData
End Property
Public Property Get dedInv3() As Long
  dedInv3 = siocIndex(mDedInv3)
End Property

Public Property Let dedInv4(ByVal vData As Long)
  siocIndex(mDedInv4) = vData
End Property
Public Property Get dedInv4() As Long
  dedInv4 = siocIndex(mDedInv4)
End Property

Public Property Let dedInv5(ByVal vData As Long)
  siocIndex(mDedInv5) = vData
End Property
Public Property Get dedInv5() As Long
  dedInv5 = siocIndex(mDedInv5)
End Property

Public Property Let pflLine1(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mPflLine1 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get pflLine1() As String
  pflLine1 = Chr$(siocIndex(mPflLine1))
End Property

Public Property Let pflLine2(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mPflLine2 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get pflLine2() As String
  pflLine2 = Chr$(siocIndex(mPflLine2))
End Property

Public Property Let pflLine3(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mPflLine3 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get pflLine3() As String
  pflLine3 = Chr$(siocIndex(mPflLine3))
End Property

Public Property Let pflLine4(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mPflLine4 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get pflLine4() As String
  pflLine4 = Chr$(siocIndex(mPflLine4))
End Property

Public Property Let pflLine5(ByVal vData As String)
  Dim dedLen, i  As Integer
  dedLen = Len(vData)
  If dedLen < 26 Then
    For i = 0 To 24
      siocIndex(mPflLine5 + i) = Asc(Mid(vData, i + 1, 1))
    Next i
  End If
End Property
Public Property Get pflLine5() As String
  pflLine5 = Chr$(siocIndex(mPflLine5))
End Property

Private Sub SetCPLBit(newBit As Long)
  siocIndex(mCautionPanelLights) = siocIndex(mCautionPanelLights) Or newBit
End Sub
Private Sub ClearCPLBit(newBit As Long)
  siocIndex(mCautionPanelLights) = siocIndex(mCautionPanelLights) And (Not newBit)
End Sub

Private Sub SetFPLBit(newBit As Long)
  siocIndex(mFrontPanelLights) = siocIndex(mFrontPanelLights) Or newBit
End Sub
Private Sub ClearFPLBit(newBit As Long)
  siocIndex(mFrontPanelLights) = siocIndex(mFrontPanelLights) And (Not newBit)
End Sub

Private Sub SetCOLBit(newBit As Long)
  siocIndex(mConsoleLights) = siocIndex(mConsoleLights) Or newBit
End Sub
Private Sub ClearCOLBit(newBit As Long)
  siocIndex(mConsoleLights) = siocIndex(mConsoleLights) And (Not newBit)
End Sub

Private Sub SetFlagBit(newBit As Long)
  siocIndex(mFlags) = siocIndex(mFlags) Or newBit
End Sub
Private Sub ClearFlagBit(newBit As Long)
  siocIndex(mFlags) = siocIndex(mFlags) And (Not newBit)
End Sub

Private Sub SetIntBit(newBit As Long)
  siocIndex(mInternalFlags) = siocIndex(mInternalFlags) Or newBit
End Sub
Private Sub ClearIntBit(newBit As Long)
  siocIndex(mInternalFlags) = siocIndex(mInternalFlags) And (Not newBit)
End Sub

Public Sub FillFlightData()
  ' Populate Flight Data Variables from Shared Memory

  On Error GoTo FFDErr

  ' debug variables
  Dim x As Integer
  Dim a As Integer
  Dim strRwr As String
  Dim tempRpm As Long
  
  ' variables common on both MemoryModels
  
  Dim actualAlt As Long

  Select Case gsFalconVersion                                      ' Determine Model to Use
'****************************************************************
'*
'*    AlliedForce Data
''
'****************************************************************
  Case "AF"                                                        ' Allied Force Memory Model
    With FDAF
      
      ' There's not RadarAltitude available in shared mem, so use baro alt
      actualAlt = (-1) * CLng(.ShipDown)
      If actualAlt < 0 Then
        altBaro = actualAlt
        altRadar = 0
      Else
        altBaro = actualAlt
        altRadar = actualAlt ' // N/A in AF
      End If
      
      altSetting = 2992 ' // hardcoded, not readable in AF
      
      aoa = CLng((.Alpha) * 1000)

      auxTacan = CLng(.AUXTChan)

'    /* cabinPressureAltitude dependend on actual height:
'    according to the dash1:
'    0-8000 feet: same as height
'    8000 - 23000 feet: constant 8000ft
'    23000 - 60000 feet: 23000:8000, >=60000:24000 */
      If altBaro < 8000 Then
        siocIndex(mCabinPressAlt) = altBaro
      ElseIf (altBaro > 8000) And (altBaro < 23000) Then
        cabinPressAlt = 8000
      ElseIf (altBaro > 23000) And (altBaro < 60000) Then
        cabinPressAlt = CLng((altBaro - 23000) * 0.432 + 8000)
      Else
        cabinPressAlt = 24000
      End If
      
      chaffCount = CLng(.chaffCount)
      flareCount = CLng(.flareCount)
'     AF will count to negative values, so set to 0 if <0
      If (chaffCount < 0) Then
        chaffCount = 0
      End If
      If (flareCount < 0) Then
        flareCount = 0
      End If
      
      tempRpm = CLng(.rpm)
      rpm = CLng((.rpm * 100))
      
'     ftit value in shared mem does not fit to instrument value in 2D pit
'     now ftit is dependend on rpm and fits instrument
      If tempRpm < 60 Then
          ftit = 240
      ElseIf ((tempRpm >= 60) And (tempRpm < 70)) Then
          siocIndex(mFtit) = CLng((tempRpm * 36) - 1920)
      ElseIf ((tempRpm >= 70) And (tempRpm <= 93)) Then
          ftit = CLng((tempRpm * 4.7826) + 265)
      ElseIf (tempRpm > 93) Then
          ftit = CLng((tempRpm * 6.82) + 75.91)
      End If
      
      fuelAft = CLng((.AFTFuel * 100))
      fuelFwd = CLng((.FWDFuel * 100))
      fuelTotal = CLng(.TotalFuel)
      fuelInternal = CLng(.InternalFuel)
      fuelExternal = CLng(.ExternalFuel)
      
      epuFuel = CLng((.epuFuel * 100))
      
      fuelFlow = CLng(.fuelFlow)
  
      gforce = CLng(.GS * 100)      ' convert to integer by "*100", reconvert in SIOC
      
      ' although HUD displays 1.0, shared mem says 0.99
      If (gforce = 99) Then gforce = 100
      
      heading = CLng((.CurrentHeading * 100))
      
      ' integer conversion here too
      hsiBearingToBeacon = CLng(.BearingToBeacon * 1000)
      hsiCourseDeviation = CLng(.CourseDeviation * 1000) ' important 10° - (-10)°
      hsiCurrentHeading = CLng((.CurrentHeading * 100))
      hsiDistanceToBeacon = CLng(.DistanceToBeacon * 1000)
      hsiSelectedCourse = CLng(.DesiredCourse)
      hsiSelectedHeading = CLng(.DesiredHeading)
      
      '// hydraulic pressure not in shared mem
      '// actually hardcoded, maybe later any algorithm
      hydPressA = 2500
      hydPressB = 2500
  
      ilsHorPos = CLng(.AdiIlsHorPos * 100)
      ilsVerPos = CLng(.AdiIlsVerPos * 100)
      
      kias = CLng((.kias * 100))
      
      '// liquid oxygen not in shared mem
      liquidOxygen = 5000
  
      mach = CLng(.mach * 100)
      
      nozzlePos = CLng((.nozzlePos * 100))
  
      oilPress = CLng((.OilPressure * 100))
      
      pitch = CLng(.pitch * 180 / Pi)
      roll = CLng(.roll * 180 / Pi)
      
      posX = CLng(.ShipNorth)
      posY = CLng(.ShipEast)
      posZ = CLng(.ShipDown)
  
      speedBrakePos = CLng(.SpeedBrake * 100)
  
      trimPitch = CLng(.trimPitch * 100)
      trimRoll = CLng(.trimRoll * 100)
      trimYaw = CLng(.trimYaw * 100)
  
      '// UHF AUX data not in shared mem
      uhfAuxChan = 7
      uhfAuxFreq = 226350  ' divide by 1000 to 226.350
      
      vtrue = CLng((.VT * 100))
      
      vvi = CLng((-1) * (.ShipDownRate * 60)) ' divide by 1000
  
      windOffset = CLng(.windOffset * 100)
  
      yaw = CLng(.Beta * 100)
 
' testlauf
      Dim dedCount, testChar
      For dedCount = 0 To 24
        testChar = Mid(.Invert, dedCount + 1, 1)
        If (Asc(testChar) = 2) Then  ' char at position is inverted, set bit
          dedInv1 = dedInv1 Or (2 ^ dedCount)
        Else
          dedInv1 = dedInv1 And (Not (2 ^ dedCount))
        End If
        ' 2nd line
        testChar = Mid(.Invert, dedCount + 27, 1)
        If (Asc(testChar) = 2) Then  ' char at position is inverted, set bit
          dedInv2 = dedInv2 Or (2 ^ dedCount)
        Else
          dedInv2 = dedInv2 And (Not (2 ^ dedCount))
        End If
        ' 3rd line
        testChar = Mid(.Invert, dedCount + 53, 1)
        If (Asc(testChar) = 2) Then  ' char at position is inverted, set bit
          dedInv3 = dedInv3 Or (2 ^ dedCount)
        Else
          dedInv3 = dedInv3 And (Not (2 ^ dedCount))
        End If
        ' 4th line
        testChar = Mid(.Invert, dedCount + 79, 1)
        If (Asc(testChar) = 2) Then  ' char at position is inverted, set bit
          dedInv4 = dedInv4 Or (2 ^ dedCount)
        Else
          dedInv4 = dedInv4 And (Not (2 ^ dedCount))
        End If
        ' 5th line
        testChar = Mid(.Invert, dedCount + 105, 1)
        If (Asc(testChar) = 2) Then  ' char at position is inverted, set bit
          dedInv5 = dedInv5 Or (2 ^ dedCount)
        Else
          dedInv5 = dedInv5 And (Not (2 ^ dedCount))
        End If
      Next dedCount

      dedLine1 = Mid(.DEDLines, 1, 25)
      dedLine2 = Mid(.DEDLines, 27, 25)
      dedLine3 = Mid(.DEDLines, 53, 25)
      dedLine4 = Mid(.DEDLines, 79, 25)
      dedLine5 = Mid(.DEDLines, 105, 25)
                  
      pflLine1 = Mid(.PFLLines, 1, 25)
      pflLine2 = Mid(.PFLLines, 27, 25)
      pflLine3 = Mid(.PFLLines, 53, 25)
      pflLine4 = Mid(.PFLLines, 79, 25)
      pflLine5 = Mid(.PFLLines, 105, 25)
      
      lightbits = .lightbits
      lightbits2 = .lightbits2
      lightbits3 = .lightbits3
      hsiBits = .hsiBits
      
      ' ##########################
      ' # special internal flags
      ' ##########################
'  ELEC_ON
      If (.MainPower > 0) Then ' ELEC switch on
        SetIntBit (ELEC_ON)
      Else
        ClearIntBit (ELEC_ON)
      End If
'  WOW
      If (vvi = 0) Then
        SetIntBit (WOW)
      Else
        ClearIntBit (WOW)
      End If
'  SPDBRAKE_ON
      If (speedBrakePos > 0) Then
        SetIntBit (SPDBRAKE_ON)
      Else
        ClearIntBit (SPDBRAKE_ON)
      End If
'  FAST_ON
      SetIntBit (FAST_ON)
'  PARKBRAKE_SNAP
      If (.rpm < 85) Then
        SetIntBit (PARKBRAKE_SNAP)
      Else
        ClearIntBit (PARKBRAKE_SNAP)
      End If
'  JFS_SNAP
      If ((.rpm < 45) Or (checkBit(lightbits2, &H200000))) Then
        SetIntBit (PARKBRAKE_SNAP)
      Else
        ClearIntBit (PARKBRAKE_SNAP)
      End If
'  MAINGEN_ON
      If Not checkBit(lightbits3, &H2) Then
        SetIntBit (MAINGEN_ON)
      Else
        ClearIntBit (MAINGEN_ON)
      End If

      ' #####################
      ' # flag bits
      ' #####################
'  HSI_To = &H1&          ' HSI_FLAG_TO_TRUE
      If checkBit(hsiBits, &H1&) Then
        SetFlagBit (HSI_TO)
      Else
        ClearFlagBit (HSI_TO)
      End If
'  HSI_Ils = &H2&         ' HSI_FLAG_ILS_WARN
      If checkBit(hsiBits, &H2&) Then
        SetFlagBit (HSI_Ils)
      Else
        ClearFlagBit (HSI_Ils)
      End If
'  HSI_Course = &H4&      ' HSI_FLAG_CRS_WARN
      If checkBit(hsiBits, &H4&) Then
        SetFlagBit (HSI_Course)
      Else
        ClearFlagBit (HSI_Course)
      End If
'  HSI_Init = &H8&        ' HSI_FLAG_INIT
      If checkBit(hsiBits, &H8&) Then
        SetFlagBit (HSI_Init)
      Else
        ClearFlagBit (HSI_Init)
      End If
'  TotalFlags = &H10&     ' HSI_FLAG_TOTAL_FLAGS ??? Should not be needed in SimData
      ClearFlagBit (TotalFlags)
'  ADI_OFF = &H20&        ' ADI OFF Flag
      If checkBit(hsiBits, &H20&) Then
        SetFlagBit (ADI_OFF)
      Else
        ClearFlagBit (ADI_OFF)
      End If
'  ADI_AUX = &H40&        ' ADI AUX Flag
      If checkBit(hsiBits, &H40&) Then
        SetFlagBit (ADI_AUX)
      Else
        ClearFlagBit (ADI_AUX)
      End If
'  ADI_GS = &H80&         ' ADI GS FLAG
      If checkBit(hsiBits, &H80&) Then
        SetFlagBit (ADI_GS)
      Else
        ClearFlagBit (ADI_GS)
      End If
'  ADI_LOC = &H100&        ' ADI LOC FLAG
      If checkBit(hsiBits, &H100&) Then
        SetFlagBit (ADI_LOC)
      Else
        ClearFlagBit (ADI_LOC)
      End If
'  HSI_OFF = &H200&        ' HSI OFF Flag
      If checkBit(hsiBits, &H200&) Then
        SetFlagBit (HSI_OFF)
      Else
        ClearFlagBit (HSI_OFF)
      End If
'  BUP_ADI_OFF = &H400&    ' Backup ADI Off Flag
      If checkBit(hsiBits, &H400&) Then
        SetFlagBit (BUP_ADI_OFF)
      Else
        ClearFlagBit (BUP_ADI_OFF)
      End If
'  VVI_OFF = &H800&            ' VVI OFF Flag
      If checkBit(hsiBits, &H800&) Then
        SetFlagBit (VVI_OFF)
      Else
        ClearFlagBit (VVI_OFF)
      End If
'  AOA_OFF = &H1000&            ' AOA OFF Flag
      If checkBit(hsiBits, &H1000&) Then
        SetFlagBit (AOA_OFF)
      Else
        ClearFlagBit (AOA_OFF)
      End If


      ' #####################
      ' # console lights
      ' #####################
      If checkBit(lightbits2, &H200000) Then
        SetCOLBit (JFSON)
      Else
        ClearCOLBit (JFSON)
      End If
      If checkBit(hsiBits, &H2000) Then
        SetCOLBit (AVTRON)
      Else
        ClearCOLBit (AVTRON)
      End If
      If checkBit(lightbits2, &H100000) Then
        SetCOLBit (EPUON)
      Else
        ClearCOLBit (EPUON)
      End If
      If checkBit(lightbits3, &H100) Then
        SetCOLBit (HYDRAZIN)
      Else
        ClearCOLBit (HYDRAZIN)
      End If
      If checkBit(lightbits3, &H200) Then
        SetCOLBit (AIR)
      Else
        ClearCOLBit (AIR)
      End If
      If checkBit(lightbits3, &H1) Then
        SetCOLBit (FLCSPMG)
      Else
        ClearCOLBit (FLCSPMG)
      End If
            
      If checkBit(lightbits3, &H2) Then
        SetCOLBit (MAINGEN)
      Else
        ClearCOLBit (MAINGEN)
      End If
      If checkBit(lightbits3, &H4) Then
        SetCOLBit (STBYGEN)
      Else
        ClearCOLBit (STBYGEN)
      End If
      
      If checkBit(lightbits3, &H8) Then
        SetCOLBit (EPUGEN)
      Else
        ClearCOLBit (EPUGEN)
      End If
      If checkBit(lightbits3, &H10) Then
        SetCOLBit (EPUPMG)
      Else
        ClearCOLBit (EPUPMG)
      End If
      If checkBit(lightbits3, &H20) Then
        SetCOLBit (TOFLCS)
      Else
        ClearCOLBit (TOFLCS)
      End If
      If checkBit(lightbits3, &H40) Then
        SetCOLBit (FLCSRLY)
      Else
        ClearCOLBit (FLCSRLY)
      End If
      If checkBit(lightbits3, &H80) Then
        SetCOLBit (BATFAIL)
      Else
        ClearCOLBit (BATFAIL)
      End If
      If checkBit(lightbits, &H40000) Then ' not implemented, using CP FltCtrlSys
        SetCOLBit (FLTCTRLFAIL)
      Else
        ClearCOLBit (FLTCTRLFAIL)
      End If
      
      ' Marker Beacon distances:
      ' OM: 4 NM, MM: 0.6 NM, IM: 0.1 NM
      '
      ' distanceToBeacon in AF doesn't change from x.000 to (x-1).500
      ' i.e. it stays at 3 NM and suddenly changes to 2.500 NM
      If (.DistanceToBeacon < 4.4) And (.DistanceToBeacon > 4) Then
        SetCOLBit (MARKER_OUTER)
      Else
        ClearCOLBit (MARKER_OUTER)
      End If
      If (.DistanceToBeacon < 1.5) And (.DistanceToBeacon > 1) Then
        SetCOLBit (MARKER_MIDDLE)
      Else
        ClearCOLBit (MARKER_MIDDLE)
      End If
      If (.DistanceToBeacon < 0.3) And (.DistanceToBeacon > 0.1) Then
        SetCOLBit (MARKER_INNER)
      Else
        ClearCOLBit (MARKER_INNER)
      End If
      
      '
      ' lights only light when MAIN PWR is active!!!
            
      If Not checkBit(lightbits3, &H2) Then ' Lights only on, when MainGen running
      ' FIXXXME - change these values in AF 1.08
        If .NoseGearPos = 1 Then
          SetCOLBit (NOSEWHEEL)
        Else
          ClearCOLBit (NOSEWHEEL)
        End If
        If .LeftGearPos = 1 Then
          SetCOLBit (LEFTWHEEL)
        Else
          ClearCOLBit (LEFTWHEEL)
        End If
        If .RightGearPos = 1 Then
          SetCOLBit (RIGHTWHEEL)
        Else
          ClearCOLBit (RIGHTWHEEL)
        End If
        
          ' TWS Aux
        If checkBit(lightbits2, &H1000) Then
          SetCOLBit (AUXSRCH)
        Else
          ClearCOLBit (AUXSRCH)
        End If
        If checkBit(lightbits2, &H2000) Then
          SetCOLBit (AUXACT)
        Else
          ClearCOLBit (AUXACT)
        End If
        If checkBit(lightbits2, &H4000) Then
          SetCOLBit (AUXLOW)
        Else
          ClearCOLBit (AUXLOW)
        End If
        If checkBit(lightbits2, &H8000) Then
          SetCOLBit (AUXPWR)
        Else
          ClearCOLBit (AUXPWR)
        End If
        
        ' turn NOGO light on, once chaff or flare 0
        ' else turn on GO light on CMDS
        If ((.chaffCount < 1) Or (.flareCount < 1)) Then
          SetCOLBit (CMDS_NOGO)
          ClearCOLBit (CMDS_GO)
        Else
          ClearCOLBit (CMDS_NOGO)
          SetCOLBit (CMDS_GO)
        End If
        
        ' FIXXXME - which values for dispense rdy?
        SetCOLBit (CMDS_DISPRDY)
        
      Else
        ClearCOLBit (LEFTWHEEL)
        ClearCOLBit (RIGHTWHEEL)
        ClearCOLBit (NOSEWHEEL)
        
        ClearCOLBit (AUXSRCH)
        ClearCOLBit (AUXACT)
        ClearCOLBit (AUXLOW)
        ClearCOLBit (AUXPWR)
        
        ClearCOLBit (CMDS_GO)
        ClearCOLBit (CMDS_NOGO)
        ClearCOLBit (CMDS_DISPRDY)
      End If
      
      If checkBit(lightbits2, &H40000000) Then
        SetCOLBit (GEARHANDLE)
      Else
        ClearCOLBit (GEARHANDLE)
      End If
      
      
      ' ######################
      ' # front panel lights
      ' ######################
      
      ' Left Eyebrow Lights
      If checkBit(lightbits, &H1&) Then
        SetFPLBit (MASTERCAUTION)
      Else
        ClearFPLBit (MASTERCAUTION)
      End If
      If checkBit(lightbits, &H2&) Then
        SetFPLBit (TFFAIL)
      Else
        ClearFPLBit (TFFAIL)
      End If
      
      ' Indexer Lights
      If checkBit(lightbits, &H1000&) Then
        SetFPLBit (AOAHIGH)
      Else
        ClearFPLBit (AOAHIGH)
      End If
      If checkBit(lightbits, &H2000&) Then
        SetFPLBit (AOAMIDDLE)
      Else
        ClearFPLBit (AOAMIDDLE)
      End If
      If checkBit(lightbits, &H4000&) Then
        SetFPLBit (AOALOW)
      Else
        ClearFPLBit (AOALOW)
      End If
      If checkBit(lightbits, &H8000&) Then
        SetFPLBit (RDY)
      Else
        ClearFPLBit (RDY)
      End If
      If checkBit(lightbits, &H10000) Then
        SetFPLBit (ARNWS)
      Else
        ClearFPLBit (ARNWS)
      End If
      If checkBit(lightbits, &H20000) Then
        SetFPLBit (DISC)
      Else
        ClearFPLBit (DISC)
      End If
      
      ' Right Eyebrow Lights
      
      ' ENGINE_FIRE lightbit seems not to light up the same light, but ENGINE eybrow
      ' so checking bit &H20 turns on the "ENGINE" eyebrow, ENGFIRE seems to light up with the CP
      If checkBit(lightbits, &H20) Then
        SetFPLBit (ENGINE)
      Else
        ClearFPLBit (ENGINE)
      End If
      If checkBit(lightbits, &H100000) Then   ' not directly implemented, using EngineFault from CP
        SetFPLBit (ENGFIRE)
      Else
        ClearFPLBit (ENGFIRE)
      End If
      If (checkBit(lightbits, &H80&)) Or (checkBit(lightbits, &H100)) Then
        SetFPLBit (HYDOILPRESS)
      Else
        ClearFPLBit (HYDOILPRESS)
      End If
      If checkBit(lightbits, &H40000) Then  ' not directly implemented, using FLTCTRLSYS from CP
        SetFPLBit (FLCS)
      Else
        ClearFPLBit (FLCS)
      End If
      If checkBit(lightbits, &H200&) Then ' FIXXXME - DUAL??
        SetFPLBit (DBUON)
      Else
        ClearFPLBit (DBUON)
      End If
      If checkBit(lightbits, &H800&) Then
        SetFPLBit (TOLDGCONFIG)
      Else
        ClearFPLBit (TOLDGCONFIG)
      End If
      If checkBit(lightbits, &H400&) Then
        SetFPLBit (CANOPY)
      Else
        ClearFPLBit (CANOPY)
      End If
      If checkBit(lightbits2, &H800000) Then
        SetFPLBit (OXYLOW)
      Else
        ClearFPLBit (OXYLOW)
      End If
      
      ' TWSPrime
      If checkBit(lightbits2, &H1&) Then
        SetFPLBit (HANDOFF)
      Else
        ClearFPLBit (HANDOFF)
      End If
      If checkBit(lightbits2, &H2&) Then
        SetFPLBit (LAUNCH)
      Else
        ClearFPLBit (LAUNCH)
      End If
      If checkBit(lightbits2, &H4&) Then
        SetFPLBit (PRIMODE)
      Else
        ClearFPLBit (PRIMODE)
      End If
      If checkBit(lightbits2, &H8&) Then
        SetFPLBit (NAVAL)
      Else
        ClearFPLBit (NAVAL)
      End If
      If checkBit(lightbits2, &H10&) Then
        SetFPLBit (UNKNOWN)
      Else
        ClearFPLBit (UNKNOWN)
      End If
      If checkBit(lightbits2, &H20&) Then
        SetFPLBit (TGTSEP)
      Else
        ClearFPLBit (TGTSEP)
      End If
      If checkBit(lightbits2, &H10000) Then
        SetFPLBit (ECMON)
      Else
        ClearFPLBit (ECMON)
      End If
      If checkBit(lightbits2, &H20000000) Then
        SetFPLBit (TFRACTIVE)
      Else
        ClearFPLBit (TFRACTIVE)
      End If
      
      ClearFPLBit (TFRSTDBY)
      
      ' ################################
      ' # caution Panel
      ' ################################
      If checkBit(lightbits, &H40000) Then
        SetCPLBit (FLCSFAULT)
      Else
        ClearCPLBit (FLCSFAULT)
      End If
      If checkBit(lightbits, &H100000) Then
        SetCPLBit (ENGINEFAULT)
      Else
        ClearCPLBit (ENGINEFAULT)
      End If
      If checkBit(lightbits, &H800000) Then
        SetCPLBit (AVIONICSFAULT)
      Else
        ClearCPLBit (AVIONICSFAULT)
      End If
      If checkBit(lightbits2, &H2000000) Then
        SetCPLBit (SEATNOTARMED)
      Else
        ClearCPLBit (SEATNOTARMED)
      End If
      If checkBit(lightbits3, &H400&) Then ' FIXXXME - looks like ELEC SYS is connected to MAIN GEN
        SetCPLBit (ELECSYS)
      Else
        ClearCPLBit (ELECSYS)
      End If
      If checkBit(lightbits2, &H400000) Then
        SetCPLBit (SEC)
      Else
        ClearCPLBit (SEC)
      End If
      If checkBit(lightbits, &H200000) Then  ' not implemented! FIXXXME using OVERHEAT value
        SetCPLBit (EQUIPHOT)
      Else
        ClearCPLBit (EQUIPHOT)
      End If
      If checkBit(lightbits, &H10000000) Then
        SetCPLBit (NWSFAIL)
      Else
        ClearCPLBit (NWSFAIL)
      End If
      If checkBit(lightbits2, &H1000000) Then
        SetCPLBit (PROBEHEAT)
      Else
        ClearCPLBit (PROBEHEAT)
      End If
      If checkBit(lightbits2, &H8000000) Then
        SetCPLBit (FUELOILHOT)
      Else
        ClearCPLBit (FUELOILHOT)
      End If
      If checkBit(lightbits, &H1000000) Then
        SetCPLBit (RADARALT)
      Else
        ClearCPLBit (RADARALT)
      End If
      If checkBit(lightbits2, &H10000000) Then
        SetCPLBit (ANTISKID)
      Else
        ClearCPLBit (ANTISKID)
      End If
      'If checkBit(lightbits, &H1) Then  ' FIXXXME not implemented
      '  SetCPLBit (CADC)
      'Else
        ClearCPLBit (CADC)
      'End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (INLETICING)
      'Else
        ClearCPLBit (INLETICING)
      'End If
      If checkBit(lightbits, &H2000000) Then
        SetCPLBit (IFF)
      Else
        ClearCPLBit (IFF)
      End If
      If checkBit(lightbits, &H8000000) Then
        SetCPLBit (HOOK)
      Else
        ClearCPLBit (HOOK)
      End If
      If checkBit(lightbits, &H40&) Then
        SetCPLBit (STORESCONFIG)
      Else
        ClearCPLBit (STORESCONFIG)
      End If
      If checkBit(lightbits, &H200000) Then
        SetCPLBit (OVERHEAT)
      Else
        ClearCPLBit (OVERHEAT)
      End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (NUCLEAR)
      'Else
        ClearCPLBit (NUCLEAR)
      'End If
      If checkBit(lightbits2, &H800000) Then
        SetCPLBit (OXY_LOW)
      Else
        ClearCPLBit (OXY_LOW)
      End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (ATFNOTENGAGED)
      'Else
        ClearCPLBit (ATFNOTENGAGED)
      'End If
      If checkBit(lightbits, &H4000000) Then ' FIXXXME using ECM here
        SetCPLBit (EEC)
      Else
        ClearCPLBit (EEC)
      End If
      If checkBit(lightbits, &H20000000) Then
        SetCPLBit (CABINPRESS)
      Else
        ClearCPLBit (CABINPRESS)
      End If
      If checkBit(lightbits2, &H40000) Then
        SetCPLBit (FWDFUELLOW)
      Else
        ClearCPLBit (FWDFUELLOW)
      End If
      If checkBit(lightbits2, &H80000) Then
        SetCPLBit (AFTFUELLOW)
      Else
        ClearCPLBit (AFTFUELLOW)
      End If
      If checkBit(lightbits2, &H4000000) Then
        SetCPLBit (BUC)
      Else
        ClearCPLBit (BUC)
      End If
      
'  ////////////   DEBUG OUTPUT  /////////////
  
    If (gbDebug) Then
                
        For x = 0 To 29
          If (.lightbits And 2 ^ x) Then
            frmLights.cmdLight(x).Enabled = True
          Else
            frmLights.cmdLight(x).Enabled = False
          End If
        Next x
        
        For x = 0 To 5
          If (.lightbits2 And 2 ^ x) Then
            frmLights.cmdLight2(x).Enabled = True
          Else
            frmLights.cmdLight2(x).Enabled = False
          End If
        Next x
        
        For x = 12 To 30
          If (.lightbits2 And 2 ^ x) Then
            frmLights.cmdLight2(x - 4).Enabled = True
          Else
            frmLights.cmdLight2(x - 4).Enabled = False
          End If
        Next x
        
        For x = 0 To 12
          If (.lightbits3 And 2 ^ x) Then
            frmLights.cmdLight3(x).Enabled = True
          Else
            frmLights.cmdLight3(x).Enabled = False
          End If
        Next x
        
        If (.hsiBits And &H2000) Then
          frmLights.cmdAVTR.Enabled = True
        Else
          frmLights.cmdAVTR.Enabled = False
        End If
        
'  ////////////   DEBUG OUTPUT  /////////////
        
    
    strRwr = "symbol  bearing    activity" & Chr$(13)
    For a = 0 To 39
      strRwr = strRwr & .RWRSymbol(a) & " ### " & .Bearing(a) & " ### " & .MissileActivity(a) & Chr$(13)
    Next a
    
    strRwr = ""
    Dim invChar
    Dim intLength
    intLength = Len(.Invert)
    For a = 1 To intLength
      If ((a - 1) Mod 26 = 0) Then
        strRwr = strRwr & Chr$(13)
      End If
      invChar = Mid(.Invert, a, 1)
      strRwr = strRwr & Asc(invChar) & "_"
    Next a
    frmF4Dat.writeLog ("intLength=" & intLength) & Chr$(13) _
    & (strRwr) & Chr$(13) _
    & "dedInv1=" & dedInv1 & Chr$(13) _
    & "dedInv2=" & dedInv2 & Chr$(13) _
    & "dedInv3=" & dedInv3 & Chr$(13) _
    & "dedInv4=" & dedInv4 & Chr$(13) _
    & "dedInv5=" & dedInv5
  '  frmF4Dat.writeLog ("AUXTacan:" & .AUXTChan & " UFC: " & .UFCTChan & Chr$(13) _
  '  & " RWRCount: " & .RWRObjectCount & Chr$(13) _
  '      & .TotalFuel & " pounds, version: " & .VersionNum & Chr$(13) _
  '      & " mainPower: " & .MainPower & " headX: " & .headX & Chr$(13) _
  '      & "headingstate: " & .HeadingState & " courseState: " & .courseState & Chr$(13) _
  '    & "vvi: " & vvi & Chr$(13) _
  '    & "lightbits : " & .lightbits & Chr$(13) _
  '    & "lightbits2: " & .lightbits2 & Chr$(13) _
  '    & "lightbits3: " & .lightbits3 & Chr$(13) _
  '    & "nosegearpos" & .NoseGearPos & Chr$(13) _
  '    & "leftgearpos" & .LeftGearPos & Chr$(13) _
  '    & "rightgearpos" & .RightGearPos & Chr$(13) _
  '    & "alpha: " & .Alpha & Chr$(13) _
  '    & "beta:  " & .Beta & Chr$(13) _
  '    & "gamma: " & .Gamma & Chr$(13) _
  '    & "gamDeg:" & (.Gamma * 180 / Pi) & Chr$(13) _
  '    & "gforce: " & gforce & Chr$(13)) & Chr$(13) _
  '    & "inverted: " & Len(.Invert)
  
      End If
    End With
    
'****************************************************************
'*
'*    BMS Data
''
'****************************************************************
  Case "BMS"                                                       ' BMS Memory Model
    With FDBMS
      ' There's not RadarAltitude available in shared mem, so use baro alt
      actualAlt = (-1) * CLng(.ShipDown)
      If actualAlt < 0 Then
        altBaro = actualAlt
        altRadar = 0
      Else
        altBaro = actualAlt
        altRadar = actualAlt ' // N/A in AF
      End If
      
      altSetting = 2992 ' // hardcoded, not readable in AF
      
      aoa = CLng((.Alpha) * 1000)

      auxTacan = CLng(.AUXTChan)

'    /* cabinPressureAltitude dependend on actual height:
'    according to the dash1:
'    0-8000 feet: same as height
'    8000 - 23000 feet: constant 8000ft
'    23000 - 60000 feet: 23000:8000, >=60000:24000 */
      If altBaro < 8000 Then
        siocIndex(mCabinPressAlt) = altBaro
      ElseIf (altBaro > 8000) And (altBaro < 23000) Then
        cabinPressAlt = 8000
      ElseIf (altBaro > 23000) And (altBaro < 60000) Then
        cabinPressAlt = CLng((altBaro - 23000) * 0.432 + 8000)
      Else
        cabinPressAlt = 24000
      End If
      
      chaffCount = CLng(.chaffCount)
      flareCount = CLng(.flareCount)
'     AF will count to negative values, so set to 0 if <0
      If (chaffCount < 0) Then
        chaffCount = 0
      End If
      If (flareCount < 0) Then
        flareCount = 0
      End If
      
      tempRpm = CLng(.rpm)
      rpm = CLng(.rpm * 100)
      
'     ftit value in shared mem does not fit to instrument value in 2D pit
'     now ftit is dependend on rpm and fits instrument
      If tempRpm < 60 Then
          ftit = 240
      ElseIf ((tempRpm >= 60) And (tempRpm < 70)) Then
          siocIndex(mFtit) = CLng((tempRpm * 36) - 1920)
      ElseIf ((tempRpm >= 70) And (tempRpm <= 93)) Then
          ftit = CLng((tempRpm * 4.7826) + 265)
      ElseIf (tempRpm > 93) Then
          ftit = CLng((tempRpm * 6.82) + 75.91)
      End If
      
      fuelAft = CLng(.AFTFuel * 100)
      fuelFwd = CLng(.FWDFuel * 100)
      fuelTotal = CLng(.TotalFuel)
      fuelInternal = CLng(.InternalFuel * 100)
      fuelExternal = CLng(.ExternalFuel * 100)
      
      epuFuel = CLng(.epuFuel * 100)
      
      fuelFlow = CLng(.fuelFlow)
  
      gforce = CLng(.GS * 100)      ' convert to integer by "*100", reconvert in SIOC
      
      ' although HUD displays 1.0, shared mem says 0.99
      If (gforce = 99) Then gforce = 100
      
      heading = CLng(.CurrentHeading * 100)
      
      ' integer conversion here too
      hsiBearingToBeacon = CLng(.BearingToBeacon * 1000)
      hsiCourseDeviation = CLng(.CourseDeviation * 1000) ' important 10° - (-10)°
      hsiCurrentHeading = CLng(.CurrentHeading * 100)
      hsiDistanceToBeacon = CLng(.DistanceToBeacon * 1000)
      hsiSelectedCourse = CLng(.DesiredCourse)
      hsiSelectedHeading = CLng(.DesiredHeading)
      
      '// hydraulic pressure not in shared mem
      '// actually hardcoded, maybe later any algorithm
      hydPressA = 2500
      hydPressB = 2500
  
      ilsHorPos = CLng(.AdiIlsHorPos * 100)
      ilsVerPos = CLng(.AdiIlsVerPos * 100)
      
      kias = CLng(.kias * 100)
      
      '// liquid oxygen not in shared mem
      liquidOxygen = 5000
  
      mach = CLng(.mach * 100)
      
      nozzlePos = CLng(.nozzlePos * 100)
  
      oilPress = CLng(.OilPressure * 100)
      
      pitch = CLng(.pitch * 180 / Pi)
      roll = CLng(.roll * 180 / Pi)
      
      posX = CLng(.ShipNorth)
      posY = CLng(.ShipEast)
      posZ = CLng(.ShipDown)
  
      speedBrakePos = CLng(.SpeedBrake * 100)
  
      trimPitch = CLng(.trimPitch * 100)
      trimRoll = CLng(.trimRoll * 100)
      trimYaw = CLng(.trimYaw * 100)
  
      '// UHF AUX data not in shared mem
      uhfAuxChan = 7
      uhfAuxFreq = 226350  ' divide by 1000 to 226.350
      
      vtrue = CLng(.VT * 100)
      
      vvi = CLng((-1) * (.ShipDownRate * 60)) ' divide by 1000
  
      windOffset = CLng(.windOffset * 100)
  
      yaw = CLng(.Beta * 100)
 
      dedLine1 = Mid(.DEDLines, 1, 25)
      dedLine2 = Mid(.DEDLines, 27, 25)
      dedLine3 = Mid(.DEDLines, 53, 25)
      dedLine4 = Mid(.DEDLines, 79, 25)
      dedLine5 = Mid(.DEDLines, 105, 25)
      
      pflLine1 = Mid(.PFLLines, 1, 25)
      pflLine2 = Mid(.PFLLines, 27, 25)
      pflLine3 = Mid(.PFLLines, 53, 25)
      pflLine4 = Mid(.PFLLines, 79, 25)
      pflLine5 = Mid(.PFLLines, 105, 25)
      
      lightbits = .lightbits
      lightbits2 = .lightbits2
      lightbits3 = .lightbits3
      hsiBits = .hsiBits
      
      ' ##########################
      ' # special internal flags
      ' ##########################
'  ELEC_ON
      ' check Power_Off bit in lightbits3
      If (Not checkBit(lightbits3, &H1000&)) Then ' ELEC switch on
        SetIntBit (ELEC_ON)
      Else
        ClearIntBit (ELEC_ON)
      End If
'  WOW
      If (checkBit(lightbits, &H10&)) Then
        SetIntBit (WOW)
      Else
        ClearIntBit (WOW)
      End If
'  SPDBRAKE_ON
      If (speedBrakePos > 0) Then
        SetIntBit (SPDBRAKE_ON)
      Else
        ClearIntBit (SPDBRAKE_ON)
      End If

'  FAST_ON
      SetIntBit (FAST_ON)

      ' #####################
      ' # flag bits
      ' #####################
'  HSI_To = &H1&          ' HSI_FLAG_TO_TRUE
      If checkBit(hsiBits, &H1&) Then
        SetFlagBit (HSI_TO)
      Else
        ClearFlagBit (HSI_TO)
      End If
'  HSI_Ils = &H2&         ' HSI_FLAG_ILS_WARN
      If checkBit(hsiBits, &H2&) Then
        SetFlagBit (HSI_Ils)
      Else
        ClearFlagBit (HSI_Ils)
      End If
'  HSI_Course = &H4&      ' HSI_FLAG_CRS_WARN
      If checkBit(hsiBits, &H4&) Then
        SetFlagBit (HSI_Course)
      Else
        ClearFlagBit (HSI_Course)
      End If
'  HSI_Init = &H8&        ' HSI_FLAG_INIT
      If checkBit(hsiBits, &H8&) Then
        SetFlagBit (HSI_Init)
      Else
        ClearFlagBit (HSI_Init)
      End If
'  TotalFlags = &H10&     ' HSI_FLAG_TOTAL_FLAGS ??? Should not be needed in SimData
      ClearFlagBit (TotalFlags)
'  ADI_OFF = &H20&        ' ADI OFF Flag
      If checkBit(hsiBits, &H20&) Then
        SetFlagBit (ADI_OFF)
      Else
        ClearFlagBit (ADI_OFF)
      End If
'  ADI_AUX = &H40&        ' ADI AUX Flag
      If checkBit(hsiBits, &H40&) Then
        SetFlagBit (ADI_AUX)
      Else
        ClearFlagBit (ADI_AUX)
      End If
'  ADI_GS = &H80&         ' ADI GS FLAG
      If checkBit(hsiBits, &H80&) Then
        SetFlagBit (ADI_GS)
      Else
        ClearFlagBit (ADI_GS)
      End If
'  ADI_LOC = &H100&        ' ADI LOC FLAG
      If checkBit(hsiBits, &H100&) Then
        SetFlagBit (ADI_LOC)
      Else
        ClearFlagBit (ADI_LOC)
      End If
'  HSI_OFF = &H200&        ' HSI OFF Flag
      If checkBit(hsiBits, &H200&) Then
        SetFlagBit (HSI_OFF)
      Else
        ClearFlagBit (HSI_OFF)
      End If
'  BUP_ADI_OFF = &H400&    ' Backup ADI Off Flag
      If checkBit(hsiBits, &H400&) Then
        SetFlagBit (BUP_ADI_OFF)
      Else
        ClearFlagBit (BUP_ADI_OFF)
      End If
'  VVI_OFF = &H800&            ' VVI OFF Flag
      If checkBit(hsiBits, &H800&) Then
        SetFlagBit (VVI_OFF)
      Else
        ClearFlagBit (VVI_OFF)
      End If
'  AOA_OFF = &H1000&            ' AOA OFF Flag
      If checkBit(hsiBits, &H1000&) Then
        SetFlagBit (AOA_OFF)
      Else
        ClearFlagBit (AOA_OFF)
      End If


      ' #####################
      ' # console lights
      ' #####################
      If checkBit(lightbits2, &H200000) Then
        SetCOLBit (JFSON)
      Else
        ClearCOLBit (JFSON)
      End If
      If checkBit(hsiBits, &H2000) Then
        SetCOLBit (AVTRON)
      Else
        ClearCOLBit (AVTRON)
      End If
      If checkBit(lightbits2, &H100000) Then
        SetCOLBit (EPUON)
      Else
        ClearCOLBit (EPUON)
      End If
      If checkBit(lightbits3, &H100) Then
        SetCOLBit (HYDRAZIN)
      Else
        ClearCOLBit (HYDRAZIN)
      End If
      If checkBit(lightbits3, &H200) Then
        SetCOLBit (AIR)
      Else
        ClearCOLBit (AIR)
      End If
      If checkBit(lightbits3, &H1) Then
        SetCOLBit (FLCSPMG)
      Else
        ClearCOLBit (FLCSPMG)
      End If
            
      If checkBit(lightbits3, &H2) Then
        SetCOLBit (MAINGEN)
      Else
        ClearCOLBit (MAINGEN)
      End If
      If checkBit(lightbits3, &H4) Then
        SetCOLBit (STBYGEN)
      Else
        ClearCOLBit (STBYGEN)
      End If
      
      If checkBit(lightbits3, &H8) Then
        SetCOLBit (EPUGEN)
      Else
        ClearCOLBit (EPUGEN)
      End If
      If checkBit(lightbits3, &H10) Then
        SetCOLBit (EPUPMG)
      Else
        ClearCOLBit (EPUPMG)
      End If
      If checkBit(lightbits3, &H20) Then
        SetCOLBit (TOFLCS)
      Else
        ClearCOLBit (TOFLCS)
      End If
      If checkBit(lightbits3, &H40) Then
        SetCOLBit (FLCSRLY)
      Else
        ClearCOLBit (FLCSRLY)
      End If
      If checkBit(lightbits3, &H80) Then
        SetCOLBit (BATFAIL)
      Else
        ClearCOLBit (BATFAIL)
      End If
      If checkBit(lightbits, &H40000) Then ' not implemented, using CP FltCtrlSys
        SetCOLBit (FLTCTRLFAIL)
      Else
        ClearCOLBit (FLTCTRLFAIL)
      End If
      
      ' Marker Beacon distances:
      ' OM: 4 NM, MM: 0.6 NM, IM: 0.1 NM
      '
      ' distanceToBeacon in AF doesn't change from x.000 to (x-1).500
      ' i.e. it stays at 3 NM and suddenly changes to 2.500 NM
      If (.DistanceToBeacon < 4.4) And (.DistanceToBeacon > 4) Then
        SetCOLBit (MARKER_OUTER)
      Else
        ClearCOLBit (MARKER_OUTER)
      End If
      If (.DistanceToBeacon < 1.5) And (.DistanceToBeacon > 1) Then
        SetCOLBit (MARKER_MIDDLE)
      Else
        ClearCOLBit (MARKER_MIDDLE)
      End If
      If (.DistanceToBeacon < 0.3) And (.DistanceToBeacon > 0.1) Then
        SetCOLBit (MARKER_INNER)
      Else
        ClearCOLBit (MARKER_INNER)
      End If
      
      ' GEAR LIGHTS
      ' Gear lights only light when MAIN PWR is active!!!
            
      If (checkBit(lightbits3, &H2&)) Then    ' check MainPwr lightbit -> ELEC switch in "PWR"

        If (checkBit(lightbits3, &H10000)) Then
          SetCOLBit (NOSEWHEEL)
        Else
          ClearCOLBit (NOSEWHEEL)
        End If
        If (checkBit(lightbits3, &H20000)) Then
          SetCOLBit (LEFTWHEEL)
        Else
          ClearCOLBit (LEFTWHEEL)
        End If
        If (checkBit(lightbits3, &H40000)) Then
          SetCOLBit (RIGHTWHEEL)
        Else
          ClearCOLBit (RIGHTWHEEL)
        End If
      Else
        ClearCOLBit (LEFTWHEEL)
        ClearCOLBit (RIGHTWHEEL)
        ClearCOLBit (NOSEWHEEL)
      End If
      
      If checkBit(lightbits2, &H40000000) Then
        SetCOLBit (GEARHANDLE)
      Else
        ClearCOLBit (GEARHANDLE)
      End If
      
      ' TWS Aux
      If checkBit(lightbits2, &H1000) Then
        SetCOLBit (AUXSRCH)
      Else
        ClearCOLBit (AUXSRCH)
      End If
      If checkBit(lightbits2, &H2000) Then
        SetCOLBit (AUXACT)
      Else
        ClearCOLBit (AUXACT)
      End If
      If checkBit(lightbits2, &H4000) Then
        SetCOLBit (AUXLOW)
      Else
        ClearCOLBit (AUXLOW)
      End If
      If checkBit(lightbits2, &H8000) Then
        SetCOLBit (AUXPWR)
      Else
        ClearCOLBit (AUXPWR)
      End If
      
      ' turn NOGO light on, once chaff or flare 0
      ' else turn on GO light on CMDS
      If ((.chaffCount < 1) Or (.flareCount < 1)) Then
        SetCOLBit (CMDS_NOGO)
        ClearCOLBit (CMDS_GO)
      Else
        ClearCOLBit (CMDS_NOGO)
        SetCOLBit (CMDS_GO)
      End If
     
      ' FIXXXME - which values for dispense rdy?
      'ClearCOLBit (CMDS_DISPRDY)
      SetCOLBit (CMDS_DISPRDY)
     
      ' ######################
      ' # front panel lights
      ' ######################
      
      ' Left Eyebrow Lights
      If checkBit(lightbits, &H1&) Then
        SetFPLBit (MASTERCAUTION)
      Else
        ClearFPLBit (MASTERCAUTION)
      End If
      If checkBit(lightbits, &H2&) Then
        SetFPLBit (TFFAIL)
      Else
        ClearFPLBit (TFFAIL)
      End If
      
      ' Indexer Lights
      If checkBit(lightbits, &H1000&) Then
        SetFPLBit (AOAHIGH)
      Else
        ClearFPLBit (AOAHIGH)
      End If
      If checkBit(lightbits, &H2000&) Then
        SetFPLBit (AOAMIDDLE)
      Else
        ClearFPLBit (AOAMIDDLE)
      End If
      If checkBit(lightbits, &H4000&) Then
        SetFPLBit (AOALOW)
      Else
        ClearFPLBit (AOALOW)
      End If
      If checkBit(lightbits, &H8000&) Then
        SetFPLBit (RDY)
      Else
        ClearFPLBit (RDY)
      End If
      If checkBit(lightbits, &H10000) Then
        SetFPLBit (ARNWS)
      Else
        ClearFPLBit (ARNWS)
      End If
      If checkBit(lightbits, &H20000) Then
        SetFPLBit (DISC)
      Else
        ClearFPLBit (DISC)
      End If
      
      ' Right Eyebrow Lights
      If checkBit(lightbits, &H20) Then
        SetFPLBit (ENGFIRE)
      Else
        ClearFPLBit (ENGFIRE)
      End If
      If checkBit(lightbits, &H100000) Then   ' not directly implemented, using EngineFault from CP
        SetFPLBit (ENGINE)
      Else
        ClearFPLBit (ENGINE)
      End If
      If (checkBit(lightbits, &H80&)) Or (checkBit(lightbits, &H100)) Then
        SetFPLBit (HYDOILPRESS)
      Else
        ClearFPLBit (HYDOILPRESS)
      End If
      If checkBit(lightbits, &H40000) Then  ' not directly implemented, using FLTCTRLSYS from CP
        SetFPLBit (FLCS)
      Else
        ClearFPLBit (FLCS)
      End If
      If checkBit(lightbits, &H200&) Then ' FIXXXME - DUAL??
        SetFPLBit (DBUON)
      Else
        ClearFPLBit (DBUON)
      End If
      If checkBit(lightbits, &H800&) Then
        SetFPLBit (TOLDGCONFIG)
      Else
        ClearFPLBit (TOLDGCONFIG)
      End If
      If checkBit(lightbits, &H400&) Then
        SetFPLBit (CANOPY)
      Else
        ClearFPLBit (CANOPY)
      End If
      If checkBit(lightbits2, &H800000) Then
        SetFPLBit (OXYLOW)
      Else
        ClearFPLBit (OXYLOW)
      End If
      
      ' TWSPrime
      If checkBit(lightbits2, &H1&) Then
        SetFPLBit (HANDOFF)
      Else
        ClearFPLBit (HANDOFF)
      End If
      If checkBit(lightbits2, &H2&) Then
        SetFPLBit (LAUNCH)
      Else
        ClearFPLBit (LAUNCH)
      End If
      If checkBit(lightbits2, &H4&) Then
        SetFPLBit (PRIMODE)
      Else
        ClearFPLBit (PRIMODE)
      End If
      If checkBit(lightbits2, &H8&) Then
        SetFPLBit (NAVAL)
      Else
        ClearFPLBit (NAVAL)
      End If
      If checkBit(lightbits2, &H10&) Then
        SetFPLBit (UNKNOWN)
      Else
        ClearFPLBit (UNKNOWN)
      End If
      If checkBit(lightbits2, &H20&) Then
        SetFPLBit (TGTSEP)
      Else
        ClearFPLBit (TGTSEP)
      End If
      If checkBit(lightbits2, &H10000) Then
        SetFPLBit (ECMON)
      Else
        ClearFPLBit (ECMON)
      End If
      If checkBit(lightbits2, &H20000000) Then
        SetFPLBit (TFRACTIVE)
      Else
        ClearFPLBit (TFRACTIVE)
      End If
      
      If checkBit(lightbits, &H80000000) Then
        SetFPLBit (TFRSTDBY)
      Else
        ClearFPLBit (TFRSTDBY)
      End If
      
      
      ' ################################
      ' # caution Panel
      ' ################################
      If checkBit(lightbits, &H40000) Then
        SetCPLBit (FLCSFAULT)
      Else
        ClearCPLBit (FLCSFAULT)
      End If
      If checkBit(lightbits, &H100000) Then
        SetCPLBit (ENGINEFAULT)
      Else
        ClearCPLBit (ENGINEFAULT)
      End If
      If checkBit(lightbits, &H800000) Then
        SetCPLBit (AVIONICSFAULT)
      Else
        ClearCPLBit (AVIONICSFAULT)
      End If
      If checkBit(lightbits2, &H2000000) Then
        SetCPLBit (SEATNOTARMED)
      Else
        ClearCPLBit (SEATNOTARMED)
      End If
      If checkBit(lightbits3, &H400&) Then ' FIXXXME - looks like ELEC SYS is connected to MAIN GEN
        SetCPLBit (ELECSYS)
      Else
        ClearCPLBit (ELECSYS)
      End If
      If checkBit(lightbits2, &H400000) Then
        SetCPLBit (SEC)
      Else
        ClearCPLBit (SEC)
      End If
      If checkBit(lightbits, &H200000) Then  ' not implemented! FIXXXME using OVERHEAT value
        SetCPLBit (EQUIPHOT)
      Else
        ClearCPLBit (EQUIPHOT)
      End If
      If checkBit(lightbits, &H10000000) Then
        SetCPLBit (NWSFAIL)
      Else
        ClearCPLBit (NWSFAIL)
      End If
      If checkBit(lightbits2, &H1000000) Then
        SetCPLBit (PROBEHEAT)
      Else
        ClearCPLBit (PROBEHEAT)
      End If
      If checkBit(lightbits2, &H8000000) Then
        SetCPLBit (FUELOILHOT)
      Else
        ClearCPLBit (FUELOILHOT)
      End If
      If checkBit(lightbits, &H1000000) Then
        SetCPLBit (RADARALT)
      Else
        ClearCPLBit (RADARALT)
      End If
      If checkBit(lightbits2, &H10000000) Then
        SetCPLBit (ANTISKID)
      Else
        ClearCPLBit (ANTISKID)
      End If
      'If checkBit(lightbits, &H1) Then  ' FIXXXME not implemented
      '  SetCPLBit (CADC)
      'Else
        ClearCPLBit (CADC)
      'End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (INLETICING)
      'Else
        ClearCPLBit (INLETICING)
      'End If
      If checkBit(lightbits, &H2000000) Then
        SetCPLBit (IFF)
      Else
        ClearCPLBit (IFF)
      End If
      If checkBit(lightbits, &H8000000) Then
        SetCPLBit (HOOK)
      Else
        ClearCPLBit (HOOK)
      End If
      If checkBit(lightbits, &H40&) Then
        SetCPLBit (STORESCONFIG)
      Else
        ClearCPLBit (STORESCONFIG)
      End If
      If checkBit(lightbits, &H200000) Then
        SetCPLBit (OVERHEAT)
      Else
        ClearCPLBit (OVERHEAT)
      End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (NUCLEAR)
      'Else
        ClearCPLBit (NUCLEAR)
      'End If
      If checkBit(lightbits2, &H800000) Then
        SetCPLBit (OXY_LOW)
      Else
        ClearCPLBit (OXY_LOW)
      End If
      'If checkBit(lightbits, &H1) Then
      '  SetCPLBit (ATFNOTENGAGED)
      'Else
        ClearCPLBit (ATFNOTENGAGED)
      'End If
      If checkBit(lightbits, &H4000000) Then ' FIXXXME using ECM here
        SetCPLBit (EEC)
      Else
        ClearCPLBit (EEC)
      End If
      If checkBit(lightbits, &H20000000) Then
        SetCPLBit (CABINPRESS)
      Else
        ClearCPLBit (CABINPRESS)
      End If
      If checkBit(lightbits2, &H40000) Then
        SetCPLBit (FWDFUELLOW)
      Else
        ClearCPLBit (FWDFUELLOW)
      End If
      If checkBit(lightbits2, &H80000) Then
        SetCPLBit (AFTFUELLOW)
      Else
        ClearCPLBit (AFTFUELLOW)
      End If
      If checkBit(lightbits2, &H4000000) Then
        SetCPLBit (BUC)
      Else
        ClearCPLBit (BUC)
      End If
  
 '  ////////////   DEBUG OUTPUT  /////////////
  If (gbDebug) Then
  
          For x = 0 To 29
            If (.lightbits And 2 ^ x) Then
              frmLights.cmdLight(x).Enabled = True
            Else
              frmLights.cmdLight(x).Enabled = False
            End If
          Next x
          
          For x = 0 To 5
            If (.lightbits2 And 2 ^ x) Then
              frmLights.cmdLight2(x).Enabled = True
            Else
              frmLights.cmdLight2(x).Enabled = False
            End If
          Next x
          
          For x = 12 To 30
            If (.lightbits2 And 2 ^ x) Then
              frmLights.cmdLight2(x - 4).Enabled = True
            Else
              frmLights.cmdLight2(x - 4).Enabled = False
            End If
          Next x
          
          For x = 0 To 12
            If (.lightbits3 And 2 ^ x) Then
              frmLights.cmdLight3(x).Enabled = True
            Else
              frmLights.cmdLight3(x).Enabled = False
            End If
          Next x
          
          If (.hsiBits And &H2000) Then
            frmLights.cmdAVTR.Enabled = True
          Else
            frmLights.cmdAVTR.Enabled = False
          End If
          
      strRwr = "symbol  bearing    activity" & Chr$(13)
      For a = 0 To 19
        strRwr = strRwr & .RWRSymbol(a) & " ### " & .Bearing(a) & " ### " & .MissileActivity(a) & Chr$(13)
      Next a
      frmF4Dat.writeLog ("AUXTacan:" & .AUXTChan & " UFC: " & .UFCTChan & Chr$(13) _
      & " RWRCount: " & .RWRObjectCount & Chr$(13) _
          & .TotalFuel & " pounds, version: " & .VersionNum & Chr$(13) _
          & "headingstate: " & .HeadingState & " courseState: " & .courseState & Chr$(13) _
        & "vvi: " & vvi & Chr$(13) _
        & "lightbits : " & .lightbits & Chr$(13) _
        & "lightbits2: " & .lightbits2 & Chr$(13) _
        & "lightbits3: " & .lightbits3 & Chr$(13) _
        & "hsiSelCourse: " & hsiSelectedCourse & Chr$(13) _
        & "hsiCrsDeviat: " & hsiCourseDeviation & Chr$(13) _
        & "hsiSelHeading: " & hsiSelectedHeading & Chr$(13) _
        & "hsiCurHeading: " & hsiCurrentHeading & Chr$(13) _
        & "hsiDistToBeac: " & hsiDistanceToBeacon & Chr$(13) _
        & "hsiBearToBeac: " & hsiBearingToBeacon & Chr$(13) _
        & "alpha: " & .Alpha & Chr$(13) _
        & "beta:  " & .Beta & Chr$(13) _
        & "gamma: " & .Gamma & Chr$(13) _
        & "gamDeg:" & (.Gamma * 180 / Pi) & Chr$(13) _
        & "gforce: " & gforce & Chr$(13) _
        & "hsiBits   : " & .hsiBits & Chr$(13))

    End If
  End With
      
  End Select
   
  Exit Sub

FFDErr:
  frmF4Dat.writeLog (Err.Description & vbCr & "Generated by: FillFlightData" & vbCr & "Source: " & Err.Source & "(" & Err.number & ")")
  Exit Sub
  
End Sub

Public Function getSiocArray() As Long()
  getSiocArray = siocIndex
End Function

Public Sub setSiocArray(ByRef valueArray() As Long)
  Dim i As Integer
  
  For i = LBound(valueArray) To UBound(valueArray)
    siocIndex(i) = valueArray(i)
  Next i
End Sub

Private Function checkBit(number As Long, bit As Long) As Boolean
  If (number And bit) Then
    checkBit = True
  Else
    checkBit = False
  End If
End Function
