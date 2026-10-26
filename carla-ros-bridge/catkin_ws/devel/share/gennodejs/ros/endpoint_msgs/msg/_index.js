
"use strict";

let WirelessChargerReport = require('./WirelessChargerReport.js');
let GearReject = require('./GearReject.js');
let VehicleLockType = require('./VehicleLockType.js');
let SentryEmergencyFlasherLevel = require('./SentryEmergencyFlasherLevel.js');
let ThrottleReportData = require('./ThrottleReportData.js');
let SpeedCommand = require('./SpeedCommand.js');
let AebDclResp = require('./AebDclResp.js');
let ExtraReport = require('./ExtraReport.js');
let AebSysStatus = require('./AebSysStatus.js');
let SwcStatus = require('./SwcStatus.js');
let VehicleAlarmReport = require('./VehicleAlarmReport.js');
let AebStatusReport = require('./AebStatusReport.js');
let WireControlTypeCommandData = require('./WireControlTypeCommandData.js');
let BrakeType = require('./BrakeType.js');
let HeightLevel = require('./HeightLevel.js');
let ThrottleInfoReport = require('./ThrottleInfoReport.js');
let MffCommand = require('./MffCommand.js');
let VehicleCrashStatus = require('./VehicleCrashStatus.js');
let WiperReport = require('./WiperReport.js');
let EpbReportData = require('./EpbReportData.js');
let SentryHornLevel = require('./SentryHornLevel.js');
let SteeringReport = require('./SteeringReport.js');
let ApaVcurCtlMode = require('./ApaVcurCtlMode.js');
let FcwStatus = require('./FcwStatus.js');
let ThrottleCommandData = require('./ThrottleCommandData.js');
let LeverStatus = require('./LeverStatus.js');
let MffVehicleCommandData = require('./MffVehicleCommandData.js');
let TirePressureReport = require('./TirePressureReport.js');
let ThrottleType = require('./ThrottleType.js');
let ChassisReport = require('./ChassisReport.js');
let RWhSteerModType = require('./RWhSteerModType.js');
let MotorSpeedControlStatus = require('./MotorSpeedControlStatus.js');
let WheelAngleReportData = require('./WheelAngleReportData.js');
let VehicleModeState = require('./VehicleModeState.js');
let AebBrkJerkResp = require('./AebBrkJerkResp.js');
let HumanProtectedDeviceReportData = require('./HumanProtectedDeviceReportData.js');
let BrakeReport = require('./BrakeReport.js');
let VehicleImuReportData = require('./VehicleImuReportData.js');
let WheelPositionReport = require('./WheelPositionReport.js');
let SuspensionHeight = require('./SuspensionHeight.js');
let SeatSensorStatusReportData = require('./SeatSensorStatusReportData.js');
let HdcState = require('./HdcState.js');
let WheelBrakePadTempReport = require('./WheelBrakePadTempReport.js');
let WheelSpeedReportData = require('./WheelSpeedReportData.js');
let CalibrationType = require('./CalibrationType.js');
let RainSensorLevel = require('./RainSensorLevel.js');
let WorkType = require('./WorkType.js');
let WheelFrctTorqueReport = require('./WheelFrctTorqueReport.js');
let WrlsChrgWifiSts = require('./WrlsChrgWifiSts.js');
let BrakeCommandData = require('./BrakeCommandData.js');
let FeetOffStatus = require('./FeetOffStatus.js');
let AutoDriveStatus = require('./AutoDriveStatus.js');
let ButtonEventReportData = require('./ButtonEventReportData.js');
let WheelBrakePadTempData = require('./WheelBrakePadTempData.js');
let TurnSignal = require('./TurnSignal.js');
let VehicleSpeedonDashboardUnit = require('./VehicleSpeedonDashboardUnit.js');
let WindowState = require('./WindowState.js');
let StateReportMeta = require('./StateReportMeta.js');
let Gear = require('./Gear.js');
let GearCommand = require('./GearCommand.js');
let AirOutletMode = require('./AirOutletMode.js');
let AirWorkStatus = require('./AirWorkStatus.js');
let SteeringCommand = require('./SteeringCommand.js');
let VehicleLightReport = require('./VehicleLightReport.js');
let WiperReportData = require('./WiperReportData.js');
let TurnSignalCommand = require('./TurnSignalCommand.js');
let LdpStatus = require('./LdpStatus.js');
let AcceCommand = require('./AcceCommand.js');
let WheelAngleReport = require('./WheelAngleReport.js');
let RearviewMirrorAdjustSwitch = require('./RearviewMirrorAdjustSwitch.js');
let AirConditioningReport = require('./AirConditioningReport.js');
let DoorType = require('./DoorType.js');
let HeatWireCommand = require('./HeatWireCommand.js');
let SuspensionCommand = require('./SuspensionCommand.js');
let AebCommandData = require('./AebCommandData.js');
let SpeedCommandData = require('./SpeedCommandData.js');
let AebBrkJerkReq = require('./AebBrkJerkReq.js');
let BrakeReportData = require('./BrakeReportData.js');
let BrakeInfoReport = require('./BrakeInfoReport.js');
let AirDefrostMode = require('./AirDefrostMode.js');
let ControlCommandExtra = require('./ControlCommandExtra.js');
let ControlCommandMeta = require('./ControlCommandMeta.js');
let WheelPositionReportData = require('./WheelPositionReportData.js');
let EpbReport = require('./EpbReport.js');
let SpdctlFaultMode = require('./SpdctlFaultMode.js');
let EnergyRemainingReport = require('./EnergyRemainingReport.js');
let LeverType = require('./LeverType.js');
let AuxiliaryCommandData = require('./AuxiliaryCommandData.js');
let RearviewMirrorCommand = require('./RearviewMirrorCommand.js');
let AuxiliaryReport = require('./AuxiliaryReport.js');
let BrakeControlType = require('./BrakeControlType.js');
let AuxiliaryCommand = require('./AuxiliaryCommand.js');
let WindowType = require('./WindowType.js');
let WindowCommandData = require('./WindowCommandData.js');
let SpdctlRollingbackStatus = require('./SpdctlRollingbackStatus.js');
let HbaStatus = require('./HbaStatus.js');
let BrakeLightStatus = require('./BrakeLightStatus.js');
let AccStandstillType = require('./AccStandstillType.js');
let SteeringCommandData = require('./SteeringCommandData.js');
let SuspensionAdjustStatus = require('./SuspensionAdjustStatus.js');
let VseSysState = require('./VseSysState.js');
let WrlsChrgDetResult = require('./WrlsChrgDetResult.js');
let AebDclReqSts = require('./AebDclReqSts.js');
let AirTempMode = require('./AirTempMode.js');
let AebSysFaultStatus = require('./AebSysFaultStatus.js');
let VehicledrivingMode = require('./VehicledrivingMode.js');
let RwsSysStatus = require('./RwsSysStatus.js');
let AebPrflResp = require('./AebPrflResp.js');
let WheelCylinderPressReport = require('./WheelCylinderPressReport.js');
let CtaState = require('./CtaState.js');
let RearviewMirrorStatus = require('./RearviewMirrorStatus.js');
let GearReportData = require('./GearReportData.js');
let GearCommandData = require('./GearCommandData.js');
let VehicleLightCommandData = require('./VehicleLightCommandData.js');
let EnergyRemainingReportData = require('./EnergyRemainingReportData.js');
let ChargeConnectState = require('./ChargeConnectState.js');
let HeatWireControlType = require('./HeatWireControlType.js');
let WirelessChargeReport = require('./WirelessChargeReport.js');
let VehicleLightReportData = require('./VehicleLightReportData.js');
let WheelDrvTorqueReportData = require('./WheelDrvTorqueReportData.js');
let DoorReport = require('./DoorReport.js');
let VehicleExtraReport = require('./VehicleExtraReport.js');
let WiperStateType = require('./WiperStateType.js');
let SuspensionReport = require('./SuspensionReport.js');
let HandOffStatus = require('./HandOffStatus.js');
let WheelFrctTorqueReportData = require('./WheelFrctTorqueReportData.js');
let BrakeInfoReportData = require('./BrakeInfoReportData.js');
let ButtonEvent = require('./ButtonEvent.js');
let FrontLightState = require('./FrontLightState.js');
let BodyReport = require('./BodyReport.js');
let TargetControlMode = require('./TargetControlMode.js');
let AcceCommandData = require('./AcceCommandData.js');
let ControlCommand = require('./ControlCommand.js');
let VehicleAlarmReportData = require('./VehicleAlarmReportData.js');
let DoorReportData = require('./DoorReportData.js');
let AutoHoldStatus = require('./AutoHoldStatus.js');
let FrontLightSwitchState = require('./FrontLightSwitchState.js');
let SuspensionHeightValid = require('./SuspensionHeightValid.js');
let McuStandstillStatus = require('./McuStandstillStatus.js');
let McuStuckStatus = require('./McuStuckStatus.js');
let SteeringType = require('./SteeringType.js');
let VehicleExtraReportData = require('./VehicleExtraReportData.js');
let AebCommand = require('./AebCommand.js');
let TirePressureReportData = require('./TirePressureReportData.js');
let WheelReport = require('./WheelReport.js');
let WirelessChargerReportData = require('./WirelessChargerReportData.js');
let FailureStatus = require('./FailureStatus.js');
let WireControlType = require('./WireControlType.js');
let AuxiliaryReportData = require('./AuxiliaryReportData.js');
let MffVehicleCommand = require('./MffVehicleCommand.js');
let AirConditioningReportData = require('./AirConditioningReportData.js');
let MotorSpeedReportData = require('./MotorSpeedReportData.js');
let DlpStatus = require('./DlpStatus.js');
let SentryModeCommand = require('./SentryModeCommand.js');
let SuspensionReportData = require('./SuspensionReportData.js');
let MirrorState = require('./MirrorState.js');
let AebHydBrkReq = require('./AebHydBrkReq.js');
let WiperCommandType = require('./WiperCommandType.js');
let WindowReport = require('./WindowReport.js');
let Point2d = require('./Point2d.js');
let WheelSpeedReport = require('./WheelSpeedReport.js');
let RWhSteerDirection = require('./RWhSteerDirection.js');
let AebStatusReportData = require('./AebStatusReportData.js');
let CameraSurfaceCondition = require('./CameraSurfaceCondition.js');
let TargetControlMotor = require('./TargetControlMotor.js');
let LdwStatus = require('./LdwStatus.js');
let ButtonEventReport = require('./ButtonEventReport.js');
let ThrottleCommand = require('./ThrottleCommand.js');
let WheelDrvTorqueReport = require('./WheelDrvTorqueReport.js');
let WindowReportData = require('./WindowReportData.js');
let SuspensionLevel = require('./SuspensionLevel.js');
let WheelCylinderPressReportData = require('./WheelCylinderPressReportData.js');
let VehESPSwitch = require('./VehESPSwitch.js');
let SeatSensorStatusType = require('./SeatSensorStatusType.js');
let EpbStatus = require('./EpbStatus.js');
let MotorSpeedReport = require('./MotorSpeedReport.js');
let BrakeCommand = require('./BrakeCommand.js');
let HumanProtectedDeviceReport = require('./HumanProtectedDeviceReport.js');
let VehicleImuReport = require('./VehicleImuReport.js');
let ThrottleReport = require('./ThrottleReport.js');
let HumanProtectedDeviceType = require('./HumanProtectedDeviceType.js');
let ThrottleInfoReportData = require('./ThrottleInfoReportData.js');
let SteeringReportData = require('./SteeringReportData.js');
let WireControlTypeCommand = require('./WireControlTypeCommand.js');
let SrsCollosion = require('./SrsCollosion.js');
let VehicleLightCommand = require('./VehicleLightCommand.js');
let LightModeState = require('./LightModeState.js');
let GearReport = require('./GearReport.js');
let PowerModeType = require('./PowerModeType.js');
let WindowCommand = require('./WindowCommand.js');

module.exports = {
  WirelessChargerReport: WirelessChargerReport,
  GearReject: GearReject,
  VehicleLockType: VehicleLockType,
  SentryEmergencyFlasherLevel: SentryEmergencyFlasherLevel,
  ThrottleReportData: ThrottleReportData,
  SpeedCommand: SpeedCommand,
  AebDclResp: AebDclResp,
  ExtraReport: ExtraReport,
  AebSysStatus: AebSysStatus,
  SwcStatus: SwcStatus,
  VehicleAlarmReport: VehicleAlarmReport,
  AebStatusReport: AebStatusReport,
  WireControlTypeCommandData: WireControlTypeCommandData,
  BrakeType: BrakeType,
  HeightLevel: HeightLevel,
  ThrottleInfoReport: ThrottleInfoReport,
  MffCommand: MffCommand,
  VehicleCrashStatus: VehicleCrashStatus,
  WiperReport: WiperReport,
  EpbReportData: EpbReportData,
  SentryHornLevel: SentryHornLevel,
  SteeringReport: SteeringReport,
  ApaVcurCtlMode: ApaVcurCtlMode,
  FcwStatus: FcwStatus,
  ThrottleCommandData: ThrottleCommandData,
  LeverStatus: LeverStatus,
  MffVehicleCommandData: MffVehicleCommandData,
  TirePressureReport: TirePressureReport,
  ThrottleType: ThrottleType,
  ChassisReport: ChassisReport,
  RWhSteerModType: RWhSteerModType,
  MotorSpeedControlStatus: MotorSpeedControlStatus,
  WheelAngleReportData: WheelAngleReportData,
  VehicleModeState: VehicleModeState,
  AebBrkJerkResp: AebBrkJerkResp,
  HumanProtectedDeviceReportData: HumanProtectedDeviceReportData,
  BrakeReport: BrakeReport,
  VehicleImuReportData: VehicleImuReportData,
  WheelPositionReport: WheelPositionReport,
  SuspensionHeight: SuspensionHeight,
  SeatSensorStatusReportData: SeatSensorStatusReportData,
  HdcState: HdcState,
  WheelBrakePadTempReport: WheelBrakePadTempReport,
  WheelSpeedReportData: WheelSpeedReportData,
  CalibrationType: CalibrationType,
  RainSensorLevel: RainSensorLevel,
  WorkType: WorkType,
  WheelFrctTorqueReport: WheelFrctTorqueReport,
  WrlsChrgWifiSts: WrlsChrgWifiSts,
  BrakeCommandData: BrakeCommandData,
  FeetOffStatus: FeetOffStatus,
  AutoDriveStatus: AutoDriveStatus,
  ButtonEventReportData: ButtonEventReportData,
  WheelBrakePadTempData: WheelBrakePadTempData,
  TurnSignal: TurnSignal,
  VehicleSpeedonDashboardUnit: VehicleSpeedonDashboardUnit,
  WindowState: WindowState,
  StateReportMeta: StateReportMeta,
  Gear: Gear,
  GearCommand: GearCommand,
  AirOutletMode: AirOutletMode,
  AirWorkStatus: AirWorkStatus,
  SteeringCommand: SteeringCommand,
  VehicleLightReport: VehicleLightReport,
  WiperReportData: WiperReportData,
  TurnSignalCommand: TurnSignalCommand,
  LdpStatus: LdpStatus,
  AcceCommand: AcceCommand,
  WheelAngleReport: WheelAngleReport,
  RearviewMirrorAdjustSwitch: RearviewMirrorAdjustSwitch,
  AirConditioningReport: AirConditioningReport,
  DoorType: DoorType,
  HeatWireCommand: HeatWireCommand,
  SuspensionCommand: SuspensionCommand,
  AebCommandData: AebCommandData,
  SpeedCommandData: SpeedCommandData,
  AebBrkJerkReq: AebBrkJerkReq,
  BrakeReportData: BrakeReportData,
  BrakeInfoReport: BrakeInfoReport,
  AirDefrostMode: AirDefrostMode,
  ControlCommandExtra: ControlCommandExtra,
  ControlCommandMeta: ControlCommandMeta,
  WheelPositionReportData: WheelPositionReportData,
  EpbReport: EpbReport,
  SpdctlFaultMode: SpdctlFaultMode,
  EnergyRemainingReport: EnergyRemainingReport,
  LeverType: LeverType,
  AuxiliaryCommandData: AuxiliaryCommandData,
  RearviewMirrorCommand: RearviewMirrorCommand,
  AuxiliaryReport: AuxiliaryReport,
  BrakeControlType: BrakeControlType,
  AuxiliaryCommand: AuxiliaryCommand,
  WindowType: WindowType,
  WindowCommandData: WindowCommandData,
  SpdctlRollingbackStatus: SpdctlRollingbackStatus,
  HbaStatus: HbaStatus,
  BrakeLightStatus: BrakeLightStatus,
  AccStandstillType: AccStandstillType,
  SteeringCommandData: SteeringCommandData,
  SuspensionAdjustStatus: SuspensionAdjustStatus,
  VseSysState: VseSysState,
  WrlsChrgDetResult: WrlsChrgDetResult,
  AebDclReqSts: AebDclReqSts,
  AirTempMode: AirTempMode,
  AebSysFaultStatus: AebSysFaultStatus,
  VehicledrivingMode: VehicledrivingMode,
  RwsSysStatus: RwsSysStatus,
  AebPrflResp: AebPrflResp,
  WheelCylinderPressReport: WheelCylinderPressReport,
  CtaState: CtaState,
  RearviewMirrorStatus: RearviewMirrorStatus,
  GearReportData: GearReportData,
  GearCommandData: GearCommandData,
  VehicleLightCommandData: VehicleLightCommandData,
  EnergyRemainingReportData: EnergyRemainingReportData,
  ChargeConnectState: ChargeConnectState,
  HeatWireControlType: HeatWireControlType,
  WirelessChargeReport: WirelessChargeReport,
  VehicleLightReportData: VehicleLightReportData,
  WheelDrvTorqueReportData: WheelDrvTorqueReportData,
  DoorReport: DoorReport,
  VehicleExtraReport: VehicleExtraReport,
  WiperStateType: WiperStateType,
  SuspensionReport: SuspensionReport,
  HandOffStatus: HandOffStatus,
  WheelFrctTorqueReportData: WheelFrctTorqueReportData,
  BrakeInfoReportData: BrakeInfoReportData,
  ButtonEvent: ButtonEvent,
  FrontLightState: FrontLightState,
  BodyReport: BodyReport,
  TargetControlMode: TargetControlMode,
  AcceCommandData: AcceCommandData,
  ControlCommand: ControlCommand,
  VehicleAlarmReportData: VehicleAlarmReportData,
  DoorReportData: DoorReportData,
  AutoHoldStatus: AutoHoldStatus,
  FrontLightSwitchState: FrontLightSwitchState,
  SuspensionHeightValid: SuspensionHeightValid,
  McuStandstillStatus: McuStandstillStatus,
  McuStuckStatus: McuStuckStatus,
  SteeringType: SteeringType,
  VehicleExtraReportData: VehicleExtraReportData,
  AebCommand: AebCommand,
  TirePressureReportData: TirePressureReportData,
  WheelReport: WheelReport,
  WirelessChargerReportData: WirelessChargerReportData,
  FailureStatus: FailureStatus,
  WireControlType: WireControlType,
  AuxiliaryReportData: AuxiliaryReportData,
  MffVehicleCommand: MffVehicleCommand,
  AirConditioningReportData: AirConditioningReportData,
  MotorSpeedReportData: MotorSpeedReportData,
  DlpStatus: DlpStatus,
  SentryModeCommand: SentryModeCommand,
  SuspensionReportData: SuspensionReportData,
  MirrorState: MirrorState,
  AebHydBrkReq: AebHydBrkReq,
  WiperCommandType: WiperCommandType,
  WindowReport: WindowReport,
  Point2d: Point2d,
  WheelSpeedReport: WheelSpeedReport,
  RWhSteerDirection: RWhSteerDirection,
  AebStatusReportData: AebStatusReportData,
  CameraSurfaceCondition: CameraSurfaceCondition,
  TargetControlMotor: TargetControlMotor,
  LdwStatus: LdwStatus,
  ButtonEventReport: ButtonEventReport,
  ThrottleCommand: ThrottleCommand,
  WheelDrvTorqueReport: WheelDrvTorqueReport,
  WindowReportData: WindowReportData,
  SuspensionLevel: SuspensionLevel,
  WheelCylinderPressReportData: WheelCylinderPressReportData,
  VehESPSwitch: VehESPSwitch,
  SeatSensorStatusType: SeatSensorStatusType,
  EpbStatus: EpbStatus,
  MotorSpeedReport: MotorSpeedReport,
  BrakeCommand: BrakeCommand,
  HumanProtectedDeviceReport: HumanProtectedDeviceReport,
  VehicleImuReport: VehicleImuReport,
  ThrottleReport: ThrottleReport,
  HumanProtectedDeviceType: HumanProtectedDeviceType,
  ThrottleInfoReportData: ThrottleInfoReportData,
  SteeringReportData: SteeringReportData,
  WireControlTypeCommand: WireControlTypeCommand,
  SrsCollosion: SrsCollosion,
  VehicleLightCommand: VehicleLightCommand,
  LightModeState: LightModeState,
  GearReport: GearReport,
  PowerModeType: PowerModeType,
  WindowCommand: WindowCommand,
};
