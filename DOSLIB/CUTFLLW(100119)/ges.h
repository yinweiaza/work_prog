#ifndef _GOOGOL_GES_H_
#define _GOOGOL_GES_H_

typedef void (* TCommandHandle)(char *,short);

typedef struct
{
	char code;
	char planeGroup;
	double r;
	double x;
	double y;
	double z;
	double F;
	double cx;
	double cy;
	unsigned short i;
	long n;
	short flag;
}TLookData;

/*************Base GE Command Start**************/
short  GT_AddList(void);
short  GT_AddLookData(char Code,char PlaneGroup,double r,double x,double y,double z,double F,double cx,double cy,int i,long n,short flag);
short  GT_AddLookDataEx(TLookData *pLookData);
short  GT_AlarmOff(unsigned short axis);
short  GT_AlarmOn(unsigned short axis);
short  GT_ArcXY(double x_center,double y_center,double angle);
short  GT_ArcXYP(double x_end,double y_end,double r,short dir);
short  GT_AuStpOff(unsigned short axis);
short  GT_AuStpOn(unsigned short axis);
short  GT_AxisOff(unsigned short axis);
short  GT_AxisOn(unsigned short axis);
short  GT_BufIO(unsigned short value);
short  GT_BufIOBit(unsigned short io_bit,short bit_status);
short  GT_CalVel(double *vel,long *num);
short  GT_CalVelEx(double *Vend,long *num,double *Vfeed);
short  GT_CaptHome(unsigned short axis);
short  GT_CaptIndex(unsigned short axis);
short  GT_CaptProb(void);
short  GT_Close(void);
short  GT_ClrEncPos(unsigned short encoder);
short  GT_ClrSts(unsigned short axis);
short  GT_Delay(long delay_time);
short  GT_DrvRst(unsigned short axis);
short  GT_EncVel(unsigned short encoder,double *vel);
short  GT_EncOff(unsigned short axis);
short  GT_EncOn(unsigned short axis);
short  GT_EncPos(unsigned short encoder,long *pos);
short  GT_EncSns(unsigned short value); 
short  GT_EndList(void);
short  GT_EStpMtn(void);
short  GT_ExInpt(unsigned short *value);
short  GT_ExOpt(unsigned short value);
short  GT_ExOptBit(unsigned short bit,unsigned short value);
short  GT_GetAtlPos(unsigned short axis,long *pos);
short  GT_GetAtlErr(unsigned short axis,long *error);
short  GT_GetAtlVel(unsigned short axis,double *vel);
short  GT_GetBrkPnt(double *pnt);
short  GT_GetCapt(unsigned short axis,long *value);
short  GT_GetCmdSts(unsigned short *value);
short  GT_GetCrdSts(unsigned short *coord_status);
short  GT_GetExOpt(unsigned short *exopt);
short  GT_GetHomeSwt(unsigned short *home);
short  GT_GetLmtSwt(unsigned short *value);
short  GT_GetMtnNm(unsigned short *motion_linenum);
short  GT_GetPosErr(unsigned short axis,unsigned short *value);
short  GT_GetPrfPnt(double* pnt);
short  GT_GetPrfVel(double *vel);
short  GT_GetSegPnt(double* pnt);
short  GT_GetSts(unsigned short axis, unsigned short *value);
short  GT_HardRst(void); 
short  GT_HomeSns(unsigned short value);
short  GT_HookCommand(TCommandHandle CommandHandle);
short  GT_IndexSns(unsigned short value);
short  GT_InitLookAhead(double T,double amax,double am,double vmax,int n,double con);
short  GT_LmtSns(unsigned short value);
short  GT_LmtsOff(unsigned short axis);
short  GT_LmtsOn(unsigned short axis);
short  GT_LnXY(double x, double y);
short  GT_LnXYG0(double x, double y);
short  GT_MapCnt(unsigned short axis,double Count);
short  GT_MvXY(double x,double y,double vel,double accel);
short  GT_Open(unsigned long PortBase=65535);
short  GT_Override(double value);          //laser scanner do not have this function
short  GT_OverrideG0(double value);        //laser scanner do not have this function
short  GT_Reset(void);
short  GT_RestoreMtn(void);
short  GT_RstSts(unsigned short Axis,unsigned short value);
short  GT_SetAtlPos(unsigned short AxisNum, double pos);
short  GT_SetDccVel(double vel);
short  GT_SetMaxVel(double value);
short  GT_SetPosErr(unsigned short axis,unsigned short value);
short  GT_SetStpAcc(double value);
short  GT_SetEStpAcc(double value);
short  GT_SetStrtVel(double value);
short  GT_SetSynAcc(double accel);
short  GT_SetSynVel(double vel);
short  GT_StepDir(unsigned short axis);
short  GT_StepPulse(unsigned short axis);
short  GT_StpMtn(void);
short  GT_StrtList(void);
short  GT_StrtMtn();
short  GT_Update(unsigned short axis);
short  GT_ZeroPos(unsigned short AxisNum);

/*************HandWheel**************/
short  GT_HandWheel(unsigned short axis,double value);
short  GT_ExitHWheel(void);

/*************ADC**************/
/*********************this function is not available for standard card**********************/
short  GT_GetAdc(unsigned short channel, short* D_data);
short  GT_SetAdcChn(unsigned short value); 

/*************multi card**************/
/*********************this function is for multi-card **********************/ 
short  GT_SwitchtoCardNo(unsigned short number);          
short  GT_GetCurrentCardNo(void);

/*************servo safe**************/
short  GT_SrvGrdOff(void);
short  GT_SrvGrdOn(void);
short  GT_SrvGrdErr(unsigned short axis,short *error);
short  GT_AuEncSnsOff(void);
short  GT_AuEncSnsOn(void);
short  GT_RunGrdOff(void);
short  GT_RunGrdOn(void);
short  GT_RunGrdOp(unsigned short axis,unsigned short operation);
short  GT_RunGrdPrm(double voltage,unsigned short time,unsigned short relative);
short  GT_AuBiasOff(void);
short  GT_AuBiasOn(void);
short  GT_AuBiasTm(unsigned short time);

/*************voltage function**************/
short  GT_CloseSpindle(void);
short  GT_CtrlMode(unsigned short axis,unsigned short value);
short  GT_GetIntgr(unsigned short axis,short *value);
short  GT_GetILmt(unsigned short axis,unsigned short *limit);
short  GT_GetKaff(unsigned short axis,double *kaff);
short  GT_GetKd(unsigned short axis,double *kd);
short  GT_GetKi(unsigned short axis,double *ki);
short  GT_GetKp(unsigned short axis,double *kp);
short  GT_GetKvff(unsigned short axis,double *kvff);
short  GT_GetMtrBias(unsigned short axis,short *bias);
short  GT_GetMtrCmd(unsigned short axis,short *voltage);
short  GT_GetMtrLmt(unsigned short axis,unsigned short *limit);
short  GT_SetILmt(unsigned short axis,unsigned short limit);
short  GT_SetKaff(unsigned short axis,double kaff);
short  GT_SetKd(unsigned short axis,double kd);
short  GT_SetKi(unsigned short axis,double ki);
short  GT_SetKp(unsigned short axis,double kp);
short  GT_SetKvff(unsigned short axis,double kvff);
short  GT_SetMtrBias(unsigned short axis,short bias);
short  GT_SetMtrLmt(unsigned short axis,unsigned short limit);
short  GT_SetSpindleVel(short value);

/************GE300SX only***************/
short  GT_ArcYZ(double y_center,double z_center,double angle);
short  GT_ArcYZP(double y_end,double z_end,double r,short direction);
short  GT_ArcZX(double z_center,double x_center,double angle);
short  GT_ArcZXP(double z_end,double x_end,double r,short direction);
short  GT_LnXYZ(double x,double y,double z);
short  GT_LnXYZG0(double x,double y,double z);
short  GT_MvXYZ(double x,double y,double z,double vel,double accel);

/************GE400SX only***************/
short  GT_LnXYZA(double x,double y,double z,double a);
short  GT_LnXYZAG0(double x,double y,double z,double a);
short  GT_MvXYZA(double x,double y,double z,double a,double vel,double accel);

/*************special function**************/
short GT_SetBacklash(unsigned short axis,unsigned short backlash);
short GT_SetCutFllw(unsigned long CutPulse, long CutInitPulse);
short GT_DisCutFllw(void);
short GT_SetCutStrtPos(long CutStartPos,short CutDir);

/*************special function**************/
short GT_GetDllVrsn(unsigned  long *version);
short GT_GetDSPVrsn(unsigned  long *version);

#endif  //_GOOGOL_GES_H_