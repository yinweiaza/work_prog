unit ges;

interface

type
  TCommandHandle = procedure(command:PChar;rtn: SmallInt);stdcall;
  TDoublePnt=Array [0..3] of Double;
  TLongWord=Array [0..1] of LongWord;
  
  pLongInt = ^LongInt;
	pSmallInt = ^SmallInt;
	pDouble = ^Double;

/////////////////Base GE Command Start/////////////////
function GT_AddList():SmallInt;stdcall;External 'ges.dll';
function GT_AddLookData(code,plane_group:char;r,x,y,z,vel,cx,cy:Double;i:Word;n:LongInt;flag:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_AlarmOff(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_AlarmOn(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_ArcXY(x_center,y_center,angle:Double):SmallInt;stdcall;External 'ges.dll';
function GT_ArcXYP(x_end,y_end,r:Double;direction:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_AuStpOff(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_AuStpOn(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_AxisOff(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_AxisOn(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_BufIO(status:Word):SmallInt;stdcall;External 'ges.dll';
function GT_BufIOBit(bit:Word;status:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_CalVel(out vel:Double;out number:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_CalVelEx(out vel:Double;out number:LongInt;out f:Double):SmallInt;stdcall;External 'ges.dll';
function GT_CaptHome(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_CaptIndex(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_CaptProb():SmallInt;stdcall;External 'ges.dll';
function GT_Close():SmallInt;stdcall;External 'ges.dll';
function GT_ClrEncPos(encoder:Word):SmallInt;stdcall;External 'ges.dll';
function GT_ClrSts(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_Delay(time:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_DrvRst(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_EncPos(encoder:Word;out pos:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_EncOff(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_EncOn(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_EncVel(encoder:Word;out vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_EncSns(sense:Word):SmallInt;stdcall;External 'ges.dll';
function GT_EndList():SmallInt;stdcall;External 'ges.dll';
function GT_EStpMtn():SmallInt;stdcall;External 'ges.dll';
function GT_ExInpt(out input:Word):SmallInt;stdcall;External 'ges.dll';
function GT_ExOpt(value:Word):SmallInt;stdcall;External 'ges.dll';
function GT_ExOptBit(bit,value:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetAtlPos(axis:Word;out pos:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetAtlErr(axis:Word;out error:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetAtlVel(axis:Word;out vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetBrkPnt(out point:TDoublePnt):SmallInt;stdcall;External 'ges.dll';
function GT_GetCapt(axis:Word;out pos:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetCmdSts(out status:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetCrdSts(out status:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetExOpt(out exopt:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetHomeSwt(out home:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetLmtSwt(out limit:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetMtnNm(out number:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetPosErr(axis:Word;out error:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetPrfPnt(out point:TDoublePnt):SmallInt;stdcall;External 'ges.dll';
function GT_GetPrfVel(out vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetSegPnt(out point:TDoublePnt):SmallInt;stdcall;External 'ges.dll';
function GT_GetSts(axis:Word;out status:Word):SmallInt;stdcall;External 'ges.dll';
function GT_HardRst():SmallInt;stdcall;External 'ges.dll';
function GT_HomeSns(sense:Word):SmallInt;stdcall;External 'ges.dll';
function GT_HookCommand(CommandHandle:TCommandHandle):SmallInt;stdcall;External 'ges.dll';
function GT_IndexSns(sense:Word):SmallInt;stdcall;External 'ges.dll';
function GT_InitLookAhead(t,acc_max,acc,vel:Double;n:SmallInt;con:Double):SmallInt;stdcall;External 'ges.dll';
function GT_LmtSns(sense:Word):SmallInt;stdcall;External 'ges.dll';
function GT_LmtsOff(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_LmtsOn(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_LnXY( x,y:Double):SmallInt;stdcall;External 'ges.dll';
function GT_LnXYG0(x,y:Double):SmallInt;stdcall;External 'ges.dll';
function GT_MapCnt(axis:Word;count:Double):SmallInt;stdcall;External 'ges.dll';
function GT_MvXY(x,y,vel,acc:Double):SmallInt;stdcall;External 'ges.dll';
function GT_Open(address:LongWord=65535):SmallInt;stdcall;External 'ges.dll';
function GT_Override(over_ride:Double):SmallInt;stdcall;External 'ges.dll';
function GT_OverrideG0(over_ride:Double):SmallInt;stdcall;External 'ges.dll';
function GT_Reset():SmallInt;stdcall;External 'ges.dll';
function GT_RestoreMtn():SmallInt;stdcall;External 'ges.dll';
function GT_RstSts(axis,mask:Word):SmallInt;stdcall;External 'ges.dll';
function GT_SetAtlPos(axis:Word;pos:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetDccVel(vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetMaxVel(vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetPosErr(axis:Word;error:Word):SmallInt;stdcall;External 'ges.dll';
function GT_SetStpAcc(acc:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetEStpAcc(acc:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetStrtVel(value:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetSynAcc(acc:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetSynVel(vel:Double):SmallInt;stdcall;External 'ges.dll';
function GT_StepDir(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_StepPulse(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_StpMtn():SmallInt;stdcall;External 'ges.dll';
function GT_StrtList():SmallInt;stdcall;External 'ges.dll';
function GT_StrtMtn():SmallInt;stdcall;External 'ges.dll';
function GT_Update(axis:Word):SmallInt;stdcall;External 'ges.dll';
function GT_ZeroPos(axis:Word):SmallInt;stdcall;External 'ges.dll';

/////////////////HandWheel////////////////////
function GT_HandWheel(axis:Word;value:Double):SmallInt;stdcall;External 'ges.dll';
function GT_ExitHWheel():SmallInt;stdcall;External 'ges.dll';

///////*************ADC**************//////////////
function  GT_GetAdc(channel:Word;out voltage:SmallInt):SmallInt;stdcall;External 'ges.dll';
function  GT_SetAdcChn(value:Word):SmallInt;stdcall;External 'ges.dll';

///////*************multi card**************//////
function  GT_SwitchtoCardNo(card:Word):SmallInt;stdcall;External 'ges.dll';
function  GT_GetCurrentCardNo():SmallInt;stdcall;External 'ges.dll';

///////*************servo safe**************//////
function  GT_SrvGrdOff():SmallInt;stdcall;External 'ges.dll';
function  GT_SrvGrdOn():SmallInt;stdcall;External 'ges.dll';
function  GT_SrvGrdErr(axis:Word;out error:SmallInt):SmallInt;stdcall;External 'ges.dll';
function  GT_AuEncSnsOff():SmallInt;stdcall;External 'ges.dll';
function  GT_AuEncSnsOn():SmallInt;stdcall;External 'ges.dll';
function  GT_RunGrdOff():SmallInt;stdcall;External 'ges.dll';
function  GT_RunGrdOn():SmallInt;stdcall;External 'ges.dll';
function  GT_RunGrdOp(axis:Word;operation:Word):SmallInt;stdcall;External 'ges.dll';
function  GT_RunGrdPrm(voltage:Double;time:Word;relative:Word):SmallInt;stdcall;External 'ges.dll';
function  GT_AuBiasOff():SmallInt;stdcall;External 'ges.dll';
function  GT_AuBiasOn():SmallInt;stdcall;External 'ges.dll';
function  GT_AuBiasTm(time:Word):SmallInt;stdcall;External 'ges.dll';


/////////////////voltage function/////////////////
function GT_CloseSpindle():SmallInt;stdcall;External 'ges.dll';
function GT_CtrlMode(axis:Word;mode:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetIntgr(axis:Word;out integral:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetILmt(axis:Word;out limit:Word):SmallInt;stdcall;External 'ges.dll';
function GT_GetKaff(axis:Word;out kaff:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetKd(axis:Word;out kd:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetKi(axis:Word;out ki:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetKp(axis:Word;out kp:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetKvff(axis:Word;out kvff:Double):SmallInt;stdcall;External 'ges.dll';
function GT_GetMtrBias(axis:Word;out bias:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetMtrCmd(axis:Word;out voltage:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_GetMtrLmt(axis:Word;out limit:Word):SmallInt;stdcall;External 'ges.dll';
function GT_SetILmt(axis:Word;limit:Word):SmallInt;stdcall;External 'ges.dll';
function GT_SetKaff(axis:Word;kaff:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetKd(axis:Word;kd:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetKi(axis:Word;ki:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetKp(axis:Word;kp:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetKvff(axis:Word;kvff:Double):SmallInt;stdcall;External 'ges.dll';
function GT_SetMtrBias(axis:Word;bias:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_SetMtrLmt(axis:Word;limit:Word):SmallInt;stdcall;External 'ges.dll';
function GT_SetSpindleVel(value:SmallInt):SmallInt;stdcall;External 'ges.dll';

/////////////////GE300SX only/////////////////
function GT_ArcYZ(y_center,z_center,angle:Double):SmallInt;stdcall;External 'ges.dll';
function GT_ArcYZP(y_end,z_end,r:Double;direction:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_ArcZX(z_center,x_center,angle:Double):SmallInt;stdcall;External 'ges.dll';
function GT_ArcZXP(z_end,x_end,r:Double;direction:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_LnXYZ(x,y,z:Double):SmallInt;stdcall;External 'ges.dll';
function GT_LnXYZG0(x,y,z:Double):SmallInt;stdcall;External 'ges.dll';
function GT_MvXYZ(x,y,z,vel,acc:Double):SmallInt;stdcall;External 'ges.dll';

/////////////////GE400SX only/////////////////
function GT_LnXYZA(x,y,z,a:Double):SmallInt;stdcall;External 'ges.dll';
function GT_LnXYZAG0(x,y,z,a:Double):SmallInt;stdcall;External 'ges.dll';
function GT_MvXYZA(x,y,z,a,vel,acc:Double):SmallInt;stdcall;External 'ges.dll';

/////////////////special function/////////////////
function GT_ScrewXYP(EndX:LongInt;EndY:LongInt;R:LongInt;Dir:SmallInt;ScrewPitch:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_SetCutFllw(CutPulse:LongWord;CutInitPulse:LongInt):SmallInt;stdcall;External 'ges.dll';
function GT_SetCutStrtPos(CutStartPos:LongInt;CutDir:SmallInt):SmallInt;stdcall;External 'ges.dll';
function GT_SetBacklash(axis:Word;backlash:Word):SmallInt;stdcall;External 'ges.dll';
function GT_DisCutFllw():SmallInt;stdcall;External 'ges.dll';

/////////////////special function/////////////////
function GT_GetDllVrsn(out version:LongWord):SmallInt;stdcall;External 'ges.dll';
function GT_GetDSPVrsn(out version:TLongWord):SmallInt;stdcall;External 'ges.dll';

implementation

end.