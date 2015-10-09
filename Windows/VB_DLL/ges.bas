Attribute VB_Name = "ges"
Public Type TDoublePnt
    x As Double
    y As Double
    z As Double
    a As Double
End Type

Public Type TLongData
    product_vrsn As Long
    platform_vrsn As Long
End Type

'/*************Base GE Command Start**************/
Declare Function GT_AddList Lib "ges.dll" () As Integer
Declare Function GT_AddLookData Lib "ges.dll" (ByVal Code As Byte, ByVal PlaneGroup As Byte, ByVal R As Double, _
                 ByVal x As Double, ByVal y As Double, ByVal z As Double, ByVal vel As Double, ByVal cx As Double, _
                 ByVal cy As Double, ByVal i As Integer, ByVal n As Long, ByVal flag As Integer) As Integer
Declare Function GT_AlarmOff Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_AlarmOn Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_ArcXY Lib "ges.dll" (ByVal x_center As Double, ByVal y_center As Double, ByVal angle As Double) As Integer
Declare Function GT_ArcXYP Lib "ges.dll" (ByVal x_end As Double, ByVal y_end As Double, ByVal R As Double, ByVal direction As Integer) As Integer
Declare Function GT_AuStpOff Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_AuStpOn Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_AxisOff Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_AxisOn Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_BufIO Lib "ges.dll" (ByVal value As Integer) As Integer
Declare Function GT_BufIOBit Lib "ges.dll" (ByVal bit As Integer, ByVal status As Integer) As Integer
Declare Function GT_CalVel Lib "ges.dll" (vel As Double, number As Long) As Integer
Declare Function GT_CalVelEx Lib "ges.dll" (vel As Double, number As Long, F As Double) As Integer
Declare Function GT_CaptHome Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_CaptIndex Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_CaptProb Lib "ges.dll" () As Integer
Declare Function GT_Close Lib "ges.dll" () As Integer
Declare Function GT_ClrEncPos Lib "ges.dll" (ByVal encoder As Integer) As Integer
Declare Function GT_ClrSts Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_Delay Lib "ges.dll" (ByVal time As Long) As Integer
Declare Function GT_DrvRst Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_EncVel Lib "ges.dll" (ByVal encoder As Integer, vel As Double) As Integer
Declare Function GT_EncOff Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_EncOn Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_EncPos Lib "ges.dll" (ByVal encoder As Integer, pos As Long) As Integer
Declare Function GT_EncSns Lib "ges.dll" (ByVal sense As Integer) As Integer
Declare Function GT_EndList Lib "ges.dll" () As Integer
Declare Function GT_EStpMtn Lib "ges.dll" () As Integer
Declare Function GT_ExInpt Lib "ges.dll" (ninput As Integer) As Integer
Declare Function GT_ExOpt Lib "ges.dll" (ByVal value As Integer) As Integer
Declare Function GT_ExOptBit Lib "ges.dll" (ByVal bit As Integer, ByVal value As Integer) As Integer
Declare Function GT_GetAtlPos Lib "ges.dll" (ByVal axis As Integer, pos As Long) As Integer
Declare Function GT_GetAtlErr Lib "ges.dll" (ByVal axis As Integer, err As Long) As Integer
Declare Function GT_GetAtlVel Lib "ges.dll" (ByVal axis As Integer, vel As Double) As Integer
Declare Function GT_GetBrkPnt Lib "ges.dll" (point As TDoublePnt) As Integer
Declare Function GT_GetCapt Lib "ges.dll" (ByVal axis As Integer, pos As Long) As Integer
Declare Function GT_GetCmdSts Lib "ges.dll" (status As Integer) As Integer
Declare Function GT_GetCrdSts Lib "ges.dll" (status As Integer) As Integer
Declare Function GT_GetExOpt Lib "ges.dll" (exopt As Integer) As Integer
Declare Function GT_GetHomeSwt Lib "ges.dll" (home As Integer) As Integer
Declare Function GT_GetLmtSwt Lib "ges.dll" (limit As Integer) As Integer
Declare Function GT_GetMtnNm Lib "ges.dll" (number As Integer) As Integer
Declare Function GT_GetPosErr Lib "ges.dll" (ByVal axis As Integer, err As Integer) As Integer
Declare Function GT_GetPrfPnt Lib "ges.dll" (point As TDoublePnt) As Integer
Declare Function GT_GetPrfVel Lib "ges.dll" (vel As Double) As Integer
Declare Function GT_GetSegPnt Lib "ges.dll" (point As TDoublePnt) As Integer
Declare Function GT_GetSts Lib "ges.dll" (ByVal axis As Integer, status As Integer) As Integer
Declare Function GT_HardRst Lib "ges.dll" () As Integer
Declare Function GT_HomeSns Lib "ges.dll" (ByVal sense As Integer) As Integer
Declare Function GT_HookCommand Lib "ges.dll" (ByVal TCommandHandle As Long) As Integer
Declare Function GT_IndexSns Lib "ges.dll" (ByVal sense As Integer) As Integer
Declare Function GT_InitLookAhead Lib "ges.dll" (ByVal T As Double, ByVal acc_max As Double, ByVal acc As Double, _
                 ByVal vel As Double, ByVal n As Integer, ByVal con As Double) As Integer
Declare Function GT_LmtSns Lib "ges.dll" (ByVal sense As Integer) As Integer
Declare Function GT_LmtsOff Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_LmtsOn Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_LnXY Lib "ges.dll" (ByVal x As Double, ByVal y As Double) As Integer
Declare Function GT_LnXYG0 Lib "ges.dll" (ByVal x As Double, ByVal y As Double) As Integer
Declare Function GT_MapCnt Lib "ges.dll" (ByVal axis As Integer, ByVal count As Double) As Integer
Declare Function GT_MltiUpdt Lib "ges.dll" (ByVal mask As Integer) As Integer
Declare Function GT_MvXY Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal vel As Double, ByVal acc As Double) As Integer
Declare Function GT_Open Lib "ges.dll" (Optional ByVal address As Long = 65535) As Integer
Declare Function GT_Override Lib "ges.dll" (ByVal override As Double) As Integer
Declare Function GT_OverrideG0 Lib "ges.dll" (ByVal override As Double) As Integer
Declare Function GT_Reset Lib "ges.dll" () As Integer
Declare Function GT_RestoreMtn Lib "ges.dll" () As Integer
Declare Function GT_RstSts Lib "ges.dll" (ByVal axis As Integer, ByVal mask As Integer) As Integer
Declare Function GT_SetAtlPos Lib "ges.dll" (ByVal axis As Integer, ByVal pos As Double) As Integer
Declare Function GT_SetDccVel Lib "ges.dll" (ByVal vel As Double) As Integer
Declare Function GT_SetMaxVel Lib "ges.dll" (ByVal vel As Double) As Integer
Declare Function GT_SetPosErr Lib "ges.dll" (ByVal axis As Integer, ByVal err As Integer) As Integer
Declare Function GT_SetStpAcc Lib "ges.dll" (ByVal acc As Double) As Integer
Declare Function GT_SetEStpAcc Lib "ges.dll" (ByVal acc As Double) As Integer
Declare Function GT_SetStrtVel Lib "ges.dll" (ByVal vel As Double) As Integer
Declare Function GT_SetSynAcc Lib "ges.dll" (ByVal acc As Double) As Integer
Declare Function GT_SetSynVel Lib "ges.dll" (ByVal vel As Double) As Integer
Declare Function GT_StepDir Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_StepPulse Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_StpMtn Lib "ges.dll" () As Integer
Declare Function GT_StrtList Lib "ges.dll" () As Integer
Declare Function GT_StrtMtn Lib "ges.dll" () As Integer
Declare Function GT_Update Lib "ges.dll" (ByVal axis As Integer) As Integer
Declare Function GT_ZeroPos Lib "ges.dll" (ByVal axis As Integer) As Integer

'/*************HANDWHEEL**************/
Declare Function GT_HandWheel Lib "ges.dll" (ByVal axis As Integer, ByVal value As Double) As Integer
Declare Function GT_ExitHWheel Lib "ges.dll" () As Integer

'/*************ADC**************/
'/*********************this function is not available for standard card**********************/
Declare Function GT_GetAdc Lib "ges.dll" (ByVal channel As Integer, D_data As Integer) As Integer
Declare Function GT_SetAdcChn Lib "ges.dll" (ByVal value As Integer) As Integer

'/*************multi card**************/
'/*********************this function is for multi-card **********************/
Declare Function GT_SwitchtoCardNo Lib "ges.dll" (ByVal number As Integer) As Integer
Declare Function GT_GetCurrentCardNo Lib "ges.dll" () As Integer

'/*************servo safe**************/
Declare Function GT_SrvGrdOff Lib "ges.dll" () As Integer
Declare Function GT_SrvGrdOn Lib "ges.dll" () As Integer
Declare Function GT_SrvGrdErr Lib "ges.dll" (ByVal axis As Integer, error As Integer) As Integer
Declare Function GT_AuEncSnsOff Lib "ges.dll" () As Integer
Declare Function GT_AuEncSnsOn Lib "ges.dll" () As Integer
Declare Function GT_RunGrdOff Lib "ges.dll" () As Integer
Declare Function GT_RunGrdOn Lib "ges.dll" () As Integer
Declare Function GT_RunGrdOp Lib "ges.dll" (ByVal axis As Integer, ByVal operation As Integer) As Integer
Declare Function GT_RunGrdPrm Lib "ges.dll" (ByVal voltage As Double, ByVal time As Integer, ByVal relative As Integer) As Integer
Declare Function GT_AuBiasOff Lib "ges.dll" () As Integer
Declare Function GT_AuBiasOn Lib "ges.dll" () As Integer
Declare Function GT_AuBiasTm Lib "ges.dll" (ByVal time As Integer) As Integer


'/*************voltage function**************/
Declare Function GT_CloseSpindle Lib "ges.dll" () As Integer
Declare Function GT_CtrlMode Lib "ges.dll" (ByVal axis As Integer, ByVal mode As Integer) As Integer
Declare Function GT_GetIntgr Lib "ges.dll" (ByVal axis As Integer, integral As Integer) As Integer
Declare Function GT_GetILmt Lib "ges.dll" (ByVal axis As Integer, limit As Integer) As Integer
Declare Function GT_GetKaff Lib "ges.dll" (ByVal axis As Integer, kaff As Double) As Integer
Declare Function GT_GetKd Lib "ges.dll" (ByVal axis As Integer, kd As Double) As Integer
Declare Function GT_GetKi Lib "ges.dll" (ByVal axis As Integer, ki As Double) As Integer
Declare Function GT_GetKp Lib "ges.dll" (ByVal axis As Integer, kp As Double) As Integer
Declare Function GT_GetKvff Lib "ges.dll" (ByVal axis As Integer, kvff As Double) As Integer
Declare Function GT_GetMtrBias Lib "ges.dll" (ByVal axis As Integer, bias As Integer) As Integer
Declare Function GT_GetMtrCmd Lib "ges.dll" (ByVal axis As Integer, voltage As Integer) As Integer
Declare Function GT_GetMtrLmt Lib "ges.dll" (ByVal axis As Integer, limit As Integer) As Integer
Declare Function GT_SetILmt Lib "ges.dll" (ByVal axis As Integer, ByVal limit As Integer) As Integer
Declare Function GT_SetKaff Lib "ges.dll" (ByVal axis As Integer, ByVal kaff As Double) As Integer
Declare Function GT_SetKd Lib "ges.dll" (ByVal axis As Integer, ByVal kd As Double) As Integer
Declare Function GT_SetKi Lib "ges.dll" (ByVal axis As Integer, ByVal ki As Double) As Integer
Declare Function GT_SetKp Lib "ges.dll" (ByVal axis As Integer, ByVal kp As Double) As Integer
Declare Function GT_SetKvff Lib "ges.dll" (ByVal axis As Integer, ByVal kvff As Double) As Integer
Declare Function GT_SetMtrBias Lib "ges.dll" (ByVal axis As Integer, ByVal bias As Integer) As Integer
Declare Function GT_SetMtrLmt Lib "ges.dll" (ByVal axis As Integer, ByVal limit As Integer) As Integer
Declare Function GT_SetSpindleVel Lib "ges.dll" (ByVal value As Integer) As Integer

'/************GE300SX only***************/
Declare Function GT_ArcYZ Lib "ges.dll" (ByVal y_center As Double, ByVal z_center As Double, ByVal angle As Double) As Integer
Declare Function GT_ArcYZP Lib "ges.dll" (ByVal y_end As Double, ByVal z_end As Double, ByVal R As Double, ByVal dirction As Integer) As Integer
Declare Function GT_ArcZX Lib "ges.dll" (ByVal z_center As Double, ByVal x_center As Double, ByVal angle As Double) As Integer
Declare Function GT_ArcZXP Lib "ges.dll" (ByVal z_end As Double, ByVal x_end As Double, ByVal R As Double, ByVal dirction As Integer) As Integer
Declare Function GT_LnXYZ Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double) As Integer
Declare Function GT_LnXYZG0 Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double) As Integer
Declare Function GT_MvXYZ Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double, ByVal vel As Double, ByVal acc As Double) As Integer

'/************GE400SX only***************/
Declare Function GT_LnXYZA Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double, ByVal a As Double) As Integer
Declare Function GT_LnXYZAG0 Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double, ByVal a As Double) As Integer
Declare Function GT_MvXYZA Lib "ges.dll" (ByVal x As Double, ByVal y As Double, ByVal z As Double, ByVal a As Double, ByVal vel As Double, ByVal acc As Double) As Integer

'/*************special function**************/
Declare Function GT_SetBacklash Lib "ges.dll" (ByVal axis As Integer, ByVal backlash As Integer) As Integer
Declare Function GT_ScrewXYP Lib "ges.dll" (ByVal EndX As Long, ByVal EndY As Long, ByVal R As Long, ByVal Dir As Integer, ByVal ScrewPitch As Long) As Integer
Declare Function GT_SetCutFllw Lib "ges.dll" (ByVal CutPulse As Long, ByVal CutInitPulse As Long) As Integer
Declare Function GT_SetCutStrtPos Lib "ges.dll" (ByVal CutStartPos As Long, ByVal CutDir As Integer) As Integer
Declare Function GT_DisCutFllw Lib "ges.dll" () As Integer


'/*************special function**************/
Declare Function GT_GetDllVrsn Lib "ges.dll" (version As Long) As Integer
Declare Function GT_GetDSPVrsn Lib "ges.dll" (version As TLongData) As Integer

