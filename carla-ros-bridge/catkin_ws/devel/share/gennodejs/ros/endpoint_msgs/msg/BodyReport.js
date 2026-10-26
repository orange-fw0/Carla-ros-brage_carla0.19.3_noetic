// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StateReportMeta = require('./StateReportMeta.js');
let VehicleLightReport = require('./VehicleLightReport.js');
let ButtonEventReport = require('./ButtonEventReport.js');
let DoorReport = require('./DoorReport.js');
let TirePressureReport = require('./TirePressureReport.js');
let WindowReport = require('./WindowReport.js');
let WiperReport = require('./WiperReport.js');
let EnergyRemainingReport = require('./EnergyRemainingReport.js');
let VehicleAlarmReport = require('./VehicleAlarmReport.js');
let VehicleExtraReport = require('./VehicleExtraReport.js');
let HumanProtectedDeviceReport = require('./HumanProtectedDeviceReport.js');
let AuxiliaryReport = require('./AuxiliaryReport.js');
let SuspensionReport = require('./SuspensionReport.js');
let AirConditioningReport = require('./AirConditioningReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BodyReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.vehicle_light_report = null;
      this.button_report = null;
      this.door_report = null;
      this.tire_report = null;
      this.window_report = null;
      this.wiper_report = null;
      this.energy_remaining_report = null;
      this.vehicle_alarm_report = null;
      this.vehicle_extra_report = null;
      this.human_protected_device_report = null;
      this.auxiliary_report = null;
      this.suspension_report = null;
      this.air_conditioning_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new StateReportMeta();
      }
      if (initObj.hasOwnProperty('vehicle_light_report')) {
        this.vehicle_light_report = initObj.vehicle_light_report
      }
      else {
        this.vehicle_light_report = new VehicleLightReport();
      }
      if (initObj.hasOwnProperty('button_report')) {
        this.button_report = initObj.button_report
      }
      else {
        this.button_report = new ButtonEventReport();
      }
      if (initObj.hasOwnProperty('door_report')) {
        this.door_report = initObj.door_report
      }
      else {
        this.door_report = new DoorReport();
      }
      if (initObj.hasOwnProperty('tire_report')) {
        this.tire_report = initObj.tire_report
      }
      else {
        this.tire_report = new TirePressureReport();
      }
      if (initObj.hasOwnProperty('window_report')) {
        this.window_report = initObj.window_report
      }
      else {
        this.window_report = new WindowReport();
      }
      if (initObj.hasOwnProperty('wiper_report')) {
        this.wiper_report = initObj.wiper_report
      }
      else {
        this.wiper_report = new WiperReport();
      }
      if (initObj.hasOwnProperty('energy_remaining_report')) {
        this.energy_remaining_report = initObj.energy_remaining_report
      }
      else {
        this.energy_remaining_report = new EnergyRemainingReport();
      }
      if (initObj.hasOwnProperty('vehicle_alarm_report')) {
        this.vehicle_alarm_report = initObj.vehicle_alarm_report
      }
      else {
        this.vehicle_alarm_report = new VehicleAlarmReport();
      }
      if (initObj.hasOwnProperty('vehicle_extra_report')) {
        this.vehicle_extra_report = initObj.vehicle_extra_report
      }
      else {
        this.vehicle_extra_report = new VehicleExtraReport();
      }
      if (initObj.hasOwnProperty('human_protected_device_report')) {
        this.human_protected_device_report = initObj.human_protected_device_report
      }
      else {
        this.human_protected_device_report = new HumanProtectedDeviceReport();
      }
      if (initObj.hasOwnProperty('auxiliary_report')) {
        this.auxiliary_report = initObj.auxiliary_report
      }
      else {
        this.auxiliary_report = new AuxiliaryReport();
      }
      if (initObj.hasOwnProperty('suspension_report')) {
        this.suspension_report = initObj.suspension_report
      }
      else {
        this.suspension_report = new SuspensionReport();
      }
      if (initObj.hasOwnProperty('air_conditioning_report')) {
        this.air_conditioning_report = initObj.air_conditioning_report
      }
      else {
        this.air_conditioning_report = new AirConditioningReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = StateReportMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [vehicle_light_report]
    bufferOffset = VehicleLightReport.serialize(obj.vehicle_light_report, buffer, bufferOffset);
    // Serialize message field [button_report]
    bufferOffset = ButtonEventReport.serialize(obj.button_report, buffer, bufferOffset);
    // Serialize message field [door_report]
    bufferOffset = DoorReport.serialize(obj.door_report, buffer, bufferOffset);
    // Serialize message field [tire_report]
    bufferOffset = TirePressureReport.serialize(obj.tire_report, buffer, bufferOffset);
    // Serialize message field [window_report]
    bufferOffset = WindowReport.serialize(obj.window_report, buffer, bufferOffset);
    // Serialize message field [wiper_report]
    bufferOffset = WiperReport.serialize(obj.wiper_report, buffer, bufferOffset);
    // Serialize message field [energy_remaining_report]
    bufferOffset = EnergyRemainingReport.serialize(obj.energy_remaining_report, buffer, bufferOffset);
    // Serialize message field [vehicle_alarm_report]
    bufferOffset = VehicleAlarmReport.serialize(obj.vehicle_alarm_report, buffer, bufferOffset);
    // Serialize message field [vehicle_extra_report]
    bufferOffset = VehicleExtraReport.serialize(obj.vehicle_extra_report, buffer, bufferOffset);
    // Serialize message field [human_protected_device_report]
    bufferOffset = HumanProtectedDeviceReport.serialize(obj.human_protected_device_report, buffer, bufferOffset);
    // Serialize message field [auxiliary_report]
    bufferOffset = AuxiliaryReport.serialize(obj.auxiliary_report, buffer, bufferOffset);
    // Serialize message field [suspension_report]
    bufferOffset = SuspensionReport.serialize(obj.suspension_report, buffer, bufferOffset);
    // Serialize message field [air_conditioning_report]
    bufferOffset = AirConditioningReport.serialize(obj.air_conditioning_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyReport
    let len;
    let data = new BodyReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = StateReportMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_light_report]
    data.vehicle_light_report = VehicleLightReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [button_report]
    data.button_report = ButtonEventReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [door_report]
    data.door_report = DoorReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [tire_report]
    data.tire_report = TirePressureReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_report]
    data.window_report = WindowReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wiper_report]
    data.wiper_report = WiperReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [energy_remaining_report]
    data.energy_remaining_report = EnergyRemainingReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_alarm_report]
    data.vehicle_alarm_report = VehicleAlarmReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_extra_report]
    data.vehicle_extra_report = VehicleExtraReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [human_protected_device_report]
    data.human_protected_device_report = HumanProtectedDeviceReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [auxiliary_report]
    data.auxiliary_report = AuxiliaryReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [suspension_report]
    data.suspension_report = SuspensionReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [air_conditioning_report]
    data.air_conditioning_report = AirConditioningReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ButtonEventReport.getMessageSize(object.button_report);
    length += DoorReport.getMessageSize(object.door_report);
    length += VehicleExtraReport.getMessageSize(object.vehicle_extra_report);
    length += HumanProtectedDeviceReport.getMessageSize(object.human_protected_device_report);
    length += AirConditioningReport.getMessageSize(object.air_conditioning_report);
    return length + 203;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BodyReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91d305a1630d685d53b157567caebe85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/StateReportMeta meta
    endpoint_msgs/VehicleLightReport vehicle_light_report
    endpoint_msgs/ButtonEventReport button_report
    endpoint_msgs/DoorReport door_report
    endpoint_msgs/TirePressureReport tire_report
    endpoint_msgs/WindowReport window_report
    endpoint_msgs/WiperReport wiper_report
    endpoint_msgs/EnergyRemainingReport energy_remaining_report
    endpoint_msgs/VehicleAlarmReport vehicle_alarm_report
    endpoint_msgs/VehicleExtraReport vehicle_extra_report
    endpoint_msgs/HumanProtectedDeviceReport human_protected_device_report
    endpoint_msgs/AuxiliaryReport auxiliary_report
    endpoint_msgs/SuspensionReport suspension_report
    endpoint_msgs/AirConditioningReport air_conditioning_report
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: endpoint_msgs/StateReportMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLightReport
    uint8 VEHICLE_LIGHT_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleLightReportData vehicle_light_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLightReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/TurnSignal turn_signal_type
    endpoint_msgs/FrontLightState front_light
    bool width_light
    bool reversing_light
    bool front_fog_light
    bool rear_fog_light
    endpoint_msgs/LeverStatus lever_state
    bool position_light_status
    endpoint_msgs/BrakeLightStatus brake_light
    endpoint_msgs/LeverType lever_type
    bool auto_light_ctrl_state
    endpoint_msgs/LightModeState light_mode_status
    endpoint_msgs/FrontLightSwitchState front_light_switch_state
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightState
    uint8 LIGHT_OFF = 0
    uint8 LOW_BEAM_LIGHT = 1
    uint8 HIGH_BEAM_LIGHT = 2
    uint8 OVERTAKING_FLASH = 3
    uint8 LIGHT_AUTO = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LeverStatus
    uint8 LEVER_STATE_OFF = 0
    uint8 LEVER_STATE_LEFT = 1
    uint8 LEVER_STATE_RIGHT = 2
    uint8 LEVER_STATE_LEFT_INVALID = 3
    uint8 LEVER_STATE_RIGHT_INVALID = 4
    uint8 LEVER_STATE_LEFT_LIGHT = 5
    uint8 LEVER_STATE_RIGHT_LIGHT = 6
    uint8 LEVER_STATE_RESERVED1 = 7
    uint8 LEVER_STATE_RESERVED3 = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeLightStatus
    uint8 BRAKE_LIGHT_NONE = 0
    uint8 BRAKE_LIGHT_OFF = 1
    uint8 BRAKE_LIGHT_ON = 2
    uint8 BRAKE_LIGHT_INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LeverType
    uint8 LEVER_TYPE_MECHANICAL = 0
    uint8 LEVER_TYPE_ELECTRONIC = 1
    uint8 LEVER_STATE_RESERVED1 = 2
    uint8 LEVER_STATE_RESERVED2 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LightModeState
    uint8 LIGHT_OFF = 0
    uint8 LIGHT_AUTO = 1
    uint8 LIGHT_LOW_BEAM = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightSwitchState
    uint8 FRONT_LIGHT_OFF = 0
    uint8 FRONT_LIGHT_LOW = 1
    uint8 FRONT_LIGHT_HIGH = 2
    uint8 FRONT_LIGHT_FLASH = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ButtonEventReport
    uint8 BUTTON_EVENT_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/ButtonEventReportData button_event_report_data
    int16 roller_steps_L
    int16 roller_steps_R
    
    ================================================================================
    MSG: endpoint_msgs/ButtonEventReportData
    uint64 timestamp_us
    endpoint_msgs/ButtonEvent[] button_event_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/ButtonEvent
    uint8 BUTTON1 = 0
    uint8 BUTTON2 = 1
    uint8 BUTTON3 = 2
    uint8 BUTTON4 = 3
    uint8 BUTTON5 = 4
    uint8 BUTTON6 = 5
    uint8 BUTTON7 = 6
    uint8 BUTTON8 = 7
    uint8 BUTTON9 = 8
    uint8 BUTTON10 = 9
    uint8 BUTTON11 = 10
    uint8 BUTTON12 = 11
    uint8 BUTTON13 = 12
    uint8 BUTTON14 = 13
    uint8 BUTTON15 = 14
    uint8 BUTTON16 = 15
    uint8 BUTTON17 = 16
    uint8 BUTTON18 = 17
    uint8 BUTTON19 = 18
    uint8 BUTTON20 = 19
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/DoorReport
    uint8 DOOR_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/DoorReportData door_report_data
    
    ================================================================================
    MSG: endpoint_msgs/DoorReportData
    uint64 timestamp_us
    endpoint_msgs/DoorType[] opened_door_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/DoorType
    uint8 DRIVER = 0
    uint8 PASSENGER = 1
    uint8 REAR_LEFT = 2
    uint8 REAR_RIGHT = 3
    uint8 HOOD = 4
    uint8 TRUNK = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/TirePressureReport
    uint8 TIRE_PRESSURE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/TirePressureReportData tire_pressure_report_data
    
    ================================================================================
    MSG: endpoint_msgs/TirePressureReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WindowReport
    uint8 WINDOW_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WindowReportData window_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WindowReportData
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowState window_state_left_front
    endpoint_msgs/WindowState window_state_right_front
    endpoint_msgs/WindowState window_state_left_rear
    endpoint_msgs/WindowState window_state_right_rear
    endpoint_msgs/WindowState window_state_top
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WindowState
    uint8 WINDOW_CLOSED = 0
    uint8 WINDOW_OPENED = 1
    uint8 WINDOW_MIDDLE = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/WiperReport
    uint8 WIPER_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WiperReportData wiper_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WiperReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/WiperStateType front_wiper_state
    endpoint_msgs/WiperStateType rear_wiper_state
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WiperStateType
    uint8 OFF = 0
    uint8 AUTO_OFF = 1
    uint8 AUTO_MOVING = 2
    uint8 MANUAL_OFF = 3
    uint8 MANUAL_ON = 4
    uint8 MANUAL_LOW = 5
    uint8 MANUAL_HIGH = 6
    uint8 MIST_FLICK = 7
    uint8 WASH = 8
    uint8 AUTO_LOW = 9
    uint8 AUTO_HIGH = 10
    uint8 COURTESY_WIPE = 11
    uint8 AUTO_ADJUST = 12
    uint8 RESERVED = 13
    uint8 STALLED = 14
    uint8 NONE = 15
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/EnergyRemainingReport
    uint8 ENERGY_REMAINING_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data
    
    ================================================================================
    MSG: endpoint_msgs/EnergyRemainingReportData
    uint64 timestamp_us
    float32 level
    float32 remaining_mileage
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/VehicleAlarmReport
    uint8 VEHICLE_ALARM_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleAlarmReportData
    uint64 timestamp_us
    bool seat_belt_alarm
    bool seat_belt_tightening
    bool steering_wheel_alarm
    bool buzzer_alarm
    endpoint_msgs/HandOffStatus steering_handoff
    endpoint_msgs/FeetOffStatus feet_off
    bool pkg_fastswitch_enable
    bool tire_alarm
    endpoint_msgs/VehicleCrashStatus vehicle_crash_status
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/HandOffStatus
    uint8 HAND_OFF_STATUS_NONE = 0
    uint8 HAND_OFF_STATUS_TRUE = 1
    uint8 HAND_OFF_STATUS_FALSE = 2
    uint8 HAND_OFF_STATUS_INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FeetOffStatus
    uint8 FEET_OFF_STATUS_NONE = 0
    uint8 FEET_OFF_STATUS_TRUE = 1
    uint8 FEET_OFF_STATUS_FALSE = 2
    uint8 FEET_OFF_STATUS_INVALUD = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleCrashStatus
    uint8 NONE = 0
    uint8 NO_CRASH = 1
    uint8 CRASH = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleExtraReport
    uint8 VEHICLE_EXTRA_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleExtraReportData
    uint64 timestamp_us
    endpoint_msgs/CtaState cta_lf
    endpoint_msgs/CtaState cta_rf
    endpoint_msgs/CtaState cta_lr
    endpoint_msgs/CtaState cta_rr
    bool cta_valid
    endpoint_msgs/DlpStatus dlp_state
    bool dlp_valid
    endpoint_msgs/HdcState hdc_state
    bool hdc_valid
    endpoint_msgs/LdpStatus ldp_status_left_lane
    endpoint_msgs/LdpStatus ldp_status_right_lane
    bool ldp_valid
    endpoint_msgs/LdwStatus ldw_status
    bool ldw_valid
    endpoint_msgs/SrsCollosion srs_collosion
    endpoint_msgs/ExtraReport extra
    
    ================================================================================
    MSG: endpoint_msgs/CtaState
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVE_1 = 1
    uint8 WARNING_LEVE_2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/DlpStatus
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVEL1 = 1
    uint8 WARNING_LEVEL2 = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HdcState
    uint8 NORMAL = 0
    uint8 ENABLED = 1
    uint8 ACTIVED = 2
    uint8 FAILED = 3
    uint8 TEMPORARILY_INHIBITED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdpStatus
    uint8 LDP_STATUS_OFF = 0
    uint8 LDP_STATUS_STANDBY = 1
    uint8 LDP_STATUS_ACTIVE = 2
    uint8 LDP_STATUS_RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdwStatus
    uint8 LDW_STATUS_OFF = 0
    uint8 LDW_STATUS_STANDBY = 1
    uint8 LDW_STATUS_DISABLED = 2
    uint8 LDW_STATUS_OVERIDE = 3
    uint8 LDW_STATUS_ACTIVE = 4
    uint8 LDW_STATUS_RESERVED1 = 5
    uint8 LDW_STATUS_RESERVED2 = 6
    uint8 LDW_STATUS_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SrsCollosion
    uint8 NONE = 0
    uint8 NOT_COLLOSION = 1
    uint8 COLLOSION = 2
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ExtraReport
    uint8 available
    string json
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceReport
    uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data
    endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceReportData
    uint64 timestamp_us
    endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceType
    uint8 DRIVER_SEATBELT = 0
    uint8 PASSENGER_SEATBELT = 1
    uint8 PASSENGER_DETECT = 2
    uint8 PASSENGER_AIRBAG = 3
    uint8 SECOND_LEFT_BELT = 4
    uint8 SECOND_MID_BELT = 5
    uint8 SECOND_RIGHT_BELT = 6
    uint8 RESERVED1 = 7
    uint8 RESERVED2 = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SeatSensorStatusReportData
    uint64 timestamp_us
    endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/SeatSensorStatusType
    uint8 DRIVER_SEAT_STATUS = 0
    uint8 PASSENGER_SEAT_STATUS = 1
    uint8 SECOND_LEFT_SEAT_STATUS = 2
    uint8 SECOND_MID_SEAT_STATUS = 3
    uint8 SECOND_RIGHT_SEAT_STATUS = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AuxiliaryReport
    uint8 AUXILIARY_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/AuxiliaryReportData auxiliary_report_data
    
    ================================================================================
    MSG: endpoint_msgs/AuxiliaryReportData
    uint64 timestamp_us
    endpoint_msgs/RearviewMirrorStatus rearview_mirror
    endpoint_msgs/PowerModeType vehicle_power_mode
    bool vehicle_power_valid
    bool vehicle_lock
    bool vehicle_horn
    endpoint_msgs/RainSensorLevel rain_sensor_level
    float32 vehicle_speed_on_dashboard
    bool vehicle_speed_on_dashboard_valid
    endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit
    float32 vehicle_outside_temp
    bool vehicle_outside_temp_valid
    float32 vechile_inside_temp
    bool vechile_inside_temp_valid
    endpoint_msgs/VehicleModeState vehicle_mode_state
    endpoint_msgs/VehicledrivingMode vehicle_driving_mode
    endpoint_msgs/ChargeConnectState charge_connect_status
    endpoint_msgs/AutoDriveStatus auto_driver_status
    bool shared_control_state
    bool shared_control_enable
    endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch
    float32 horizontal_light_lumens
    bool horizontal_light_lumens_valid
    float32 vertical_light_lumens
    bool vertical_light_lumens_valid
    
    ================================================================================
    MSG: endpoint_msgs/RearviewMirrorStatus
    uint8 NONE = 0
    uint8 OPEN = 1
    uint8 CLOSE = 2
    uint8 OPENING = 3
    uint8 CLOSING = 4
    uint8 PROCESSING = 5
    uint8 RESERVED = 6
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/PowerModeType
    uint8 VEHILCE_POWER_MODE_OFF = 0
    uint8 VEHILCE_POWER_MODE_NORMAL = 1
    uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
    uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RainSensorLevel
    uint8 RAIN_SENSOR_OFF = 0
    uint8 RARIN_SENSOR_LEVEL_LOW = 1
    uint8 RARIN_SENSOR_LEVEL_MID = 2
    uint8 RARIN_SENSOR_LEVEL_HIGH = 3
    uint8 RARIN_SENSOR_LEVEL_RESERVED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleSpeedonDashboardUnit
    uint8 NONE = 0
    uint8 KMH = 1
    uint8 MILEH = 2
    uint8 UNKNOWN = 3
    uint8 RESVERD = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleModeState
    uint8 NONE = 0
    uint8 NORMAL_MODE = 1
    uint8 MANUFACTURE_MODE = 2
    uint8 TRANSPORT_MODE = 3
    uint8 SHOWROOM_MODE = 4
    uint8 POSTCRASH_MODE = 5
    uint8 MAINTENANCE_MODE = 6
    uint8 CARWASH_MODE = 7
    uint8 BENCHTEST_MODE = 8
    uint8 DRAG_MODE = 9
    uint8 RESERVED1 = 10
    uint8 RESERVED2 = 11
    uint8 RESERVED3 = 12
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicledrivingMode
    uint8 NONE = 0
    uint8 NORMAL = 1
    uint8 DRIFT_EXP = 2
    uint8 WINTER_SPORT = 3
    uint8 OFFROAD = 4
    uint8 RACE_TRACK = 5
    uint8 ROCK = 6
    uint8 SAND = 7
    uint8 SPORT = 8
    uint8 ECO = 9
    uint8 MUD = 10
    uint8 OPD = 11
    uint8 WADING = 12
    uint8 SNOW = 13
    uint8 ICE = 14
    uint8 GRASS = 15
    uint8 GRIT = 16
    uint8 MOUNTAIN = 17
    uint8 SUPER_WADING = 18
    uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19
    uint8 TURN_IN_PLACE = 20
    uint8 ECO_PLUS = 21
    uint8 RALLY = 22
    uint8 LIMP_MODE = 23
    uint8 SPORT_PLUS = 24
    uint8 CREEP = 25
    uint8 OVERCLOCKING_MODE = 26
    uint8 ANTISKID_CHAIN = 27
    uint8 STRUCK_ASSISTANT = 28
    uint8 TERRAIN_ASSISTANT = 29
    uint8 ITAC = 30
    uint8 Ext_Endurance = 31
    uint8 DEEPSNOW = 32
    uint8 TBS_Detn = 33
    uint8 AUTOMATIC_MODE = 34
    uint8 CUSTOM_MODE = 35
    uint8 RESERVED1 = 36
    uint8 RESERVED2 = 37
    uint8 RESERVED3 = 38
    uint8 mode
    uint8 sub_mode
    
    ================================================================================
    MSG: endpoint_msgs/ChargeConnectState
    uint8 NONE = 0
    uint8 NOT_CONNECTED = 1
    uint8 CONNECTED = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AutoDriveStatus
    uint8 NONE = 0
    uint8 READY = 1
    uint8 NOT_READY = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RearviewMirrorAdjustSwitch
    uint8 NONE = 0
    uint8 ON = 1
    uint8 OFF = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionReport
    uint8 SUSPENSION_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/SuspensionReportData suspension_report_data
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionReportData
    uint64 timestamp_us
    bool calibration_completed
    endpoint_msgs/HeightLevel requested_target_level
    endpoint_msgs/HeightLevel cur_height_status
    endpoint_msgs/SuspensionHeight suspension_height
    endpoint_msgs/SuspensionHeightValid suspension_hight_valid
    endpoint_msgs/FailureStatus failure_status
    float32 reserved1
    float32 reserved2
    endpoint_msgs/SuspensionAdjustStatus adjust_status
    
    ================================================================================
    MSG: endpoint_msgs/HeightLevel
    uint8 NONE = 0
    uint8 LEVEL1 = 1
    uint8 LEVEL2 = 2
    uint8 LEVEL3 = 3
    uint8 LEVEL4 = 4
    uint8 LEVEL5 = 5
    uint8 LEVEL6 = 6
    uint8 LEVEL7 = 7
    uint8 LEVEL8 = 8
    uint8 LEVEL9 = 9
    uint8 LEVEL10 = 10
    uint8 RESERVED1 = 11
    uint8 RESERVED2 = 12
    uint8 RESERVED3 = 13
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeight
    int8 front_left
    int8 front_right
    int8 rear_left
    int8 rear_right
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeightValid
    bool front_left
    bool front_right
    bool rear_left
    bool rear_right
    
    ================================================================================
    MSG: endpoint_msgs/FailureStatus
    uint8 NOFAILURE = 0
    uint8 TEMPORARYFAILURE = 1
    uint8 FAILURE = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionAdjustStatus
    uint8 NOACTION = 0
    uint8 LOWERING = 1
    uint8 LIFTING = 2
    uint8 PENDING = 3
    uint8 ADJUSTING = 4
    uint8 RESERVED = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirConditioningReport
    uint8 AIR_CONDITIONING_DATA = 1
    uint8 available
    endpoint_msgs/AirConditioningReportData air_conditioning_data
    
    ================================================================================
    MSG: endpoint_msgs/AirConditioningReportData
    uint64 timestamp_us
    endpoint_msgs/AirOutletMode[] air_outlet_mode_array
    bool air_outlet_mode_array_valid
    endpoint_msgs/AirTempMode[] air_temp_mode_array
    bool air_temp_mode_array_valid
    endpoint_msgs/AirDefrostMode[] air_defrost_mode_array
    bool air_defrost_mode_array_valid
    endpoint_msgs/AirWorkStatus air_work_status
    
    ================================================================================
    MSG: endpoint_msgs/AirOutletMode
    uint8 AIR_OUTLET_MODE_FACE = 0
    uint8 AIR_OUTLET_MODE_FOOT = 1
    uint8 AIR_OUTLET_MODE_BODY = 2
    uint8 AIR_OUTLET_MODE_KNEE = 3
    uint8 AIR_OUTLET_MODE_AUTO = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirTempMode
    uint8 AIR_TEMP_MODE_NORMAL = 0
    uint8 AIR_TEMP_MODE_COLD = 1
    uint8 AIR_TEMP_MODE_HOT = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirDefrostMode
    uint8 AIR_DEFROS_MODE_OFF = 0
    uint8 AIR_DEFROS_MODE_FONT = 1
    uint8 AIR_DEFROS_MODE_REAR = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirWorkStatus
    uint8 AIR_WORK_STATUS_NONE = 0
    uint8 AIR_WORK_STATUS_CLOSE = 1
    uint8 AIR_WORK_STATUS_OPEN = 2
    uint8 AIR_WORK_STATUS_INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = StateReportMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new StateReportMeta()
    }

    if (msg.vehicle_light_report !== undefined) {
      resolved.vehicle_light_report = VehicleLightReport.Resolve(msg.vehicle_light_report)
    }
    else {
      resolved.vehicle_light_report = new VehicleLightReport()
    }

    if (msg.button_report !== undefined) {
      resolved.button_report = ButtonEventReport.Resolve(msg.button_report)
    }
    else {
      resolved.button_report = new ButtonEventReport()
    }

    if (msg.door_report !== undefined) {
      resolved.door_report = DoorReport.Resolve(msg.door_report)
    }
    else {
      resolved.door_report = new DoorReport()
    }

    if (msg.tire_report !== undefined) {
      resolved.tire_report = TirePressureReport.Resolve(msg.tire_report)
    }
    else {
      resolved.tire_report = new TirePressureReport()
    }

    if (msg.window_report !== undefined) {
      resolved.window_report = WindowReport.Resolve(msg.window_report)
    }
    else {
      resolved.window_report = new WindowReport()
    }

    if (msg.wiper_report !== undefined) {
      resolved.wiper_report = WiperReport.Resolve(msg.wiper_report)
    }
    else {
      resolved.wiper_report = new WiperReport()
    }

    if (msg.energy_remaining_report !== undefined) {
      resolved.energy_remaining_report = EnergyRemainingReport.Resolve(msg.energy_remaining_report)
    }
    else {
      resolved.energy_remaining_report = new EnergyRemainingReport()
    }

    if (msg.vehicle_alarm_report !== undefined) {
      resolved.vehicle_alarm_report = VehicleAlarmReport.Resolve(msg.vehicle_alarm_report)
    }
    else {
      resolved.vehicle_alarm_report = new VehicleAlarmReport()
    }

    if (msg.vehicle_extra_report !== undefined) {
      resolved.vehicle_extra_report = VehicleExtraReport.Resolve(msg.vehicle_extra_report)
    }
    else {
      resolved.vehicle_extra_report = new VehicleExtraReport()
    }

    if (msg.human_protected_device_report !== undefined) {
      resolved.human_protected_device_report = HumanProtectedDeviceReport.Resolve(msg.human_protected_device_report)
    }
    else {
      resolved.human_protected_device_report = new HumanProtectedDeviceReport()
    }

    if (msg.auxiliary_report !== undefined) {
      resolved.auxiliary_report = AuxiliaryReport.Resolve(msg.auxiliary_report)
    }
    else {
      resolved.auxiliary_report = new AuxiliaryReport()
    }

    if (msg.suspension_report !== undefined) {
      resolved.suspension_report = SuspensionReport.Resolve(msg.suspension_report)
    }
    else {
      resolved.suspension_report = new SuspensionReport()
    }

    if (msg.air_conditioning_report !== undefined) {
      resolved.air_conditioning_report = AirConditioningReport.Resolve(msg.air_conditioning_report)
    }
    else {
      resolved.air_conditioning_report = new AirConditioningReport()
    }

    return resolved;
    }
};

module.exports = BodyReport;
