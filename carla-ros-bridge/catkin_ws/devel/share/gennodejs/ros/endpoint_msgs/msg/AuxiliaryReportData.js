// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RearviewMirrorStatus = require('./RearviewMirrorStatus.js');
let PowerModeType = require('./PowerModeType.js');
let RainSensorLevel = require('./RainSensorLevel.js');
let VehicleSpeedonDashboardUnit = require('./VehicleSpeedonDashboardUnit.js');
let VehicleModeState = require('./VehicleModeState.js');
let VehicledrivingMode = require('./VehicledrivingMode.js');
let ChargeConnectState = require('./ChargeConnectState.js');
let AutoDriveStatus = require('./AutoDriveStatus.js');
let RearviewMirrorAdjustSwitch = require('./RearviewMirrorAdjustSwitch.js');

//-----------------------------------------------------------

class AuxiliaryReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.rearview_mirror = null;
      this.vehicle_power_mode = null;
      this.vehicle_power_valid = null;
      this.vehicle_lock = null;
      this.vehicle_horn = null;
      this.rain_sensor_level = null;
      this.vehicle_speed_on_dashboard = null;
      this.vehicle_speed_on_dashboard_valid = null;
      this.vehicle_speed_on_dashboard_unit = null;
      this.vehicle_outside_temp = null;
      this.vehicle_outside_temp_valid = null;
      this.vechile_inside_temp = null;
      this.vechile_inside_temp_valid = null;
      this.vehicle_mode_state = null;
      this.vehicle_driving_mode = null;
      this.charge_connect_status = null;
      this.auto_driver_status = null;
      this.shared_control_state = null;
      this.shared_control_enable = null;
      this.rearview_mirror_adjust_switch = null;
      this.horizontal_light_lumens = null;
      this.horizontal_light_lumens_valid = null;
      this.vertical_light_lumens = null;
      this.vertical_light_lumens_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('rearview_mirror')) {
        this.rearview_mirror = initObj.rearview_mirror
      }
      else {
        this.rearview_mirror = new RearviewMirrorStatus();
      }
      if (initObj.hasOwnProperty('vehicle_power_mode')) {
        this.vehicle_power_mode = initObj.vehicle_power_mode
      }
      else {
        this.vehicle_power_mode = new PowerModeType();
      }
      if (initObj.hasOwnProperty('vehicle_power_valid')) {
        this.vehicle_power_valid = initObj.vehicle_power_valid
      }
      else {
        this.vehicle_power_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_lock')) {
        this.vehicle_lock = initObj.vehicle_lock
      }
      else {
        this.vehicle_lock = false;
      }
      if (initObj.hasOwnProperty('vehicle_horn')) {
        this.vehicle_horn = initObj.vehicle_horn
      }
      else {
        this.vehicle_horn = false;
      }
      if (initObj.hasOwnProperty('rain_sensor_level')) {
        this.rain_sensor_level = initObj.rain_sensor_level
      }
      else {
        this.rain_sensor_level = new RainSensorLevel();
      }
      if (initObj.hasOwnProperty('vehicle_speed_on_dashboard')) {
        this.vehicle_speed_on_dashboard = initObj.vehicle_speed_on_dashboard
      }
      else {
        this.vehicle_speed_on_dashboard = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_speed_on_dashboard_valid')) {
        this.vehicle_speed_on_dashboard_valid = initObj.vehicle_speed_on_dashboard_valid
      }
      else {
        this.vehicle_speed_on_dashboard_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_speed_on_dashboard_unit')) {
        this.vehicle_speed_on_dashboard_unit = initObj.vehicle_speed_on_dashboard_unit
      }
      else {
        this.vehicle_speed_on_dashboard_unit = new VehicleSpeedonDashboardUnit();
      }
      if (initObj.hasOwnProperty('vehicle_outside_temp')) {
        this.vehicle_outside_temp = initObj.vehicle_outside_temp
      }
      else {
        this.vehicle_outside_temp = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_outside_temp_valid')) {
        this.vehicle_outside_temp_valid = initObj.vehicle_outside_temp_valid
      }
      else {
        this.vehicle_outside_temp_valid = false;
      }
      if (initObj.hasOwnProperty('vechile_inside_temp')) {
        this.vechile_inside_temp = initObj.vechile_inside_temp
      }
      else {
        this.vechile_inside_temp = 0.0;
      }
      if (initObj.hasOwnProperty('vechile_inside_temp_valid')) {
        this.vechile_inside_temp_valid = initObj.vechile_inside_temp_valid
      }
      else {
        this.vechile_inside_temp_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_mode_state')) {
        this.vehicle_mode_state = initObj.vehicle_mode_state
      }
      else {
        this.vehicle_mode_state = new VehicleModeState();
      }
      if (initObj.hasOwnProperty('vehicle_driving_mode')) {
        this.vehicle_driving_mode = initObj.vehicle_driving_mode
      }
      else {
        this.vehicle_driving_mode = new VehicledrivingMode();
      }
      if (initObj.hasOwnProperty('charge_connect_status')) {
        this.charge_connect_status = initObj.charge_connect_status
      }
      else {
        this.charge_connect_status = new ChargeConnectState();
      }
      if (initObj.hasOwnProperty('auto_driver_status')) {
        this.auto_driver_status = initObj.auto_driver_status
      }
      else {
        this.auto_driver_status = new AutoDriveStatus();
      }
      if (initObj.hasOwnProperty('shared_control_state')) {
        this.shared_control_state = initObj.shared_control_state
      }
      else {
        this.shared_control_state = false;
      }
      if (initObj.hasOwnProperty('shared_control_enable')) {
        this.shared_control_enable = initObj.shared_control_enable
      }
      else {
        this.shared_control_enable = false;
      }
      if (initObj.hasOwnProperty('rearview_mirror_adjust_switch')) {
        this.rearview_mirror_adjust_switch = initObj.rearview_mirror_adjust_switch
      }
      else {
        this.rearview_mirror_adjust_switch = new RearviewMirrorAdjustSwitch();
      }
      if (initObj.hasOwnProperty('horizontal_light_lumens')) {
        this.horizontal_light_lumens = initObj.horizontal_light_lumens
      }
      else {
        this.horizontal_light_lumens = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_light_lumens_valid')) {
        this.horizontal_light_lumens_valid = initObj.horizontal_light_lumens_valid
      }
      else {
        this.horizontal_light_lumens_valid = false;
      }
      if (initObj.hasOwnProperty('vertical_light_lumens')) {
        this.vertical_light_lumens = initObj.vertical_light_lumens
      }
      else {
        this.vertical_light_lumens = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_light_lumens_valid')) {
        this.vertical_light_lumens_valid = initObj.vertical_light_lumens_valid
      }
      else {
        this.vertical_light_lumens_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [rearview_mirror]
    bufferOffset = RearviewMirrorStatus.serialize(obj.rearview_mirror, buffer, bufferOffset);
    // Serialize message field [vehicle_power_mode]
    bufferOffset = PowerModeType.serialize(obj.vehicle_power_mode, buffer, bufferOffset);
    // Serialize message field [vehicle_power_valid]
    bufferOffset = _serializer.bool(obj.vehicle_power_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_lock]
    bufferOffset = _serializer.bool(obj.vehicle_lock, buffer, bufferOffset);
    // Serialize message field [vehicle_horn]
    bufferOffset = _serializer.bool(obj.vehicle_horn, buffer, bufferOffset);
    // Serialize message field [rain_sensor_level]
    bufferOffset = RainSensorLevel.serialize(obj.rain_sensor_level, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_on_dashboard]
    bufferOffset = _serializer.float32(obj.vehicle_speed_on_dashboard, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_on_dashboard_valid]
    bufferOffset = _serializer.bool(obj.vehicle_speed_on_dashboard_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_on_dashboard_unit]
    bufferOffset = VehicleSpeedonDashboardUnit.serialize(obj.vehicle_speed_on_dashboard_unit, buffer, bufferOffset);
    // Serialize message field [vehicle_outside_temp]
    bufferOffset = _serializer.float32(obj.vehicle_outside_temp, buffer, bufferOffset);
    // Serialize message field [vehicle_outside_temp_valid]
    bufferOffset = _serializer.bool(obj.vehicle_outside_temp_valid, buffer, bufferOffset);
    // Serialize message field [vechile_inside_temp]
    bufferOffset = _serializer.float32(obj.vechile_inside_temp, buffer, bufferOffset);
    // Serialize message field [vechile_inside_temp_valid]
    bufferOffset = _serializer.bool(obj.vechile_inside_temp_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_mode_state]
    bufferOffset = VehicleModeState.serialize(obj.vehicle_mode_state, buffer, bufferOffset);
    // Serialize message field [vehicle_driving_mode]
    bufferOffset = VehicledrivingMode.serialize(obj.vehicle_driving_mode, buffer, bufferOffset);
    // Serialize message field [charge_connect_status]
    bufferOffset = ChargeConnectState.serialize(obj.charge_connect_status, buffer, bufferOffset);
    // Serialize message field [auto_driver_status]
    bufferOffset = AutoDriveStatus.serialize(obj.auto_driver_status, buffer, bufferOffset);
    // Serialize message field [shared_control_state]
    bufferOffset = _serializer.bool(obj.shared_control_state, buffer, bufferOffset);
    // Serialize message field [shared_control_enable]
    bufferOffset = _serializer.bool(obj.shared_control_enable, buffer, bufferOffset);
    // Serialize message field [rearview_mirror_adjust_switch]
    bufferOffset = RearviewMirrorAdjustSwitch.serialize(obj.rearview_mirror_adjust_switch, buffer, bufferOffset);
    // Serialize message field [horizontal_light_lumens]
    bufferOffset = _serializer.float32(obj.horizontal_light_lumens, buffer, bufferOffset);
    // Serialize message field [horizontal_light_lumens_valid]
    bufferOffset = _serializer.bool(obj.horizontal_light_lumens_valid, buffer, bufferOffset);
    // Serialize message field [vertical_light_lumens]
    bufferOffset = _serializer.float32(obj.vertical_light_lumens, buffer, bufferOffset);
    // Serialize message field [vertical_light_lumens_valid]
    bufferOffset = _serializer.bool(obj.vertical_light_lumens_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryReportData
    let len;
    let data = new AuxiliaryReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror]
    data.rearview_mirror = RearviewMirrorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_power_mode]
    data.vehicle_power_mode = PowerModeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_power_valid]
    data.vehicle_power_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_lock]
    data.vehicle_lock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_horn]
    data.vehicle_horn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rain_sensor_level]
    data.rain_sensor_level = RainSensorLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_on_dashboard]
    data.vehicle_speed_on_dashboard = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_on_dashboard_valid]
    data.vehicle_speed_on_dashboard_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_on_dashboard_unit]
    data.vehicle_speed_on_dashboard_unit = VehicleSpeedonDashboardUnit.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_outside_temp]
    data.vehicle_outside_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_outside_temp_valid]
    data.vehicle_outside_temp_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vechile_inside_temp]
    data.vechile_inside_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vechile_inside_temp_valid]
    data.vechile_inside_temp_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_mode_state]
    data.vehicle_mode_state = VehicleModeState.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_driving_mode]
    data.vehicle_driving_mode = VehicledrivingMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [charge_connect_status]
    data.charge_connect_status = ChargeConnectState.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_driver_status]
    data.auto_driver_status = AutoDriveStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [shared_control_state]
    data.shared_control_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shared_control_enable]
    data.shared_control_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror_adjust_switch]
    data.rearview_mirror_adjust_switch = RearviewMirrorAdjustSwitch.deserialize(buffer, bufferOffset);
    // Deserialize message field [horizontal_light_lumens]
    data.horizontal_light_lumens = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [horizontal_light_lumens_valid]
    data.horizontal_light_lumens_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vertical_light_lumens]
    data.vertical_light_lumens = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vertical_light_lumens_valid]
    data.vertical_light_lumens_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AuxiliaryReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0917d93c1e7202420b8b4c45178a9f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxiliaryReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.rearview_mirror !== undefined) {
      resolved.rearview_mirror = RearviewMirrorStatus.Resolve(msg.rearview_mirror)
    }
    else {
      resolved.rearview_mirror = new RearviewMirrorStatus()
    }

    if (msg.vehicle_power_mode !== undefined) {
      resolved.vehicle_power_mode = PowerModeType.Resolve(msg.vehicle_power_mode)
    }
    else {
      resolved.vehicle_power_mode = new PowerModeType()
    }

    if (msg.vehicle_power_valid !== undefined) {
      resolved.vehicle_power_valid = msg.vehicle_power_valid;
    }
    else {
      resolved.vehicle_power_valid = false
    }

    if (msg.vehicle_lock !== undefined) {
      resolved.vehicle_lock = msg.vehicle_lock;
    }
    else {
      resolved.vehicle_lock = false
    }

    if (msg.vehicle_horn !== undefined) {
      resolved.vehicle_horn = msg.vehicle_horn;
    }
    else {
      resolved.vehicle_horn = false
    }

    if (msg.rain_sensor_level !== undefined) {
      resolved.rain_sensor_level = RainSensorLevel.Resolve(msg.rain_sensor_level)
    }
    else {
      resolved.rain_sensor_level = new RainSensorLevel()
    }

    if (msg.vehicle_speed_on_dashboard !== undefined) {
      resolved.vehicle_speed_on_dashboard = msg.vehicle_speed_on_dashboard;
    }
    else {
      resolved.vehicle_speed_on_dashboard = 0.0
    }

    if (msg.vehicle_speed_on_dashboard_valid !== undefined) {
      resolved.vehicle_speed_on_dashboard_valid = msg.vehicle_speed_on_dashboard_valid;
    }
    else {
      resolved.vehicle_speed_on_dashboard_valid = false
    }

    if (msg.vehicle_speed_on_dashboard_unit !== undefined) {
      resolved.vehicle_speed_on_dashboard_unit = VehicleSpeedonDashboardUnit.Resolve(msg.vehicle_speed_on_dashboard_unit)
    }
    else {
      resolved.vehicle_speed_on_dashboard_unit = new VehicleSpeedonDashboardUnit()
    }

    if (msg.vehicle_outside_temp !== undefined) {
      resolved.vehicle_outside_temp = msg.vehicle_outside_temp;
    }
    else {
      resolved.vehicle_outside_temp = 0.0
    }

    if (msg.vehicle_outside_temp_valid !== undefined) {
      resolved.vehicle_outside_temp_valid = msg.vehicle_outside_temp_valid;
    }
    else {
      resolved.vehicle_outside_temp_valid = false
    }

    if (msg.vechile_inside_temp !== undefined) {
      resolved.vechile_inside_temp = msg.vechile_inside_temp;
    }
    else {
      resolved.vechile_inside_temp = 0.0
    }

    if (msg.vechile_inside_temp_valid !== undefined) {
      resolved.vechile_inside_temp_valid = msg.vechile_inside_temp_valid;
    }
    else {
      resolved.vechile_inside_temp_valid = false
    }

    if (msg.vehicle_mode_state !== undefined) {
      resolved.vehicle_mode_state = VehicleModeState.Resolve(msg.vehicle_mode_state)
    }
    else {
      resolved.vehicle_mode_state = new VehicleModeState()
    }

    if (msg.vehicle_driving_mode !== undefined) {
      resolved.vehicle_driving_mode = VehicledrivingMode.Resolve(msg.vehicle_driving_mode)
    }
    else {
      resolved.vehicle_driving_mode = new VehicledrivingMode()
    }

    if (msg.charge_connect_status !== undefined) {
      resolved.charge_connect_status = ChargeConnectState.Resolve(msg.charge_connect_status)
    }
    else {
      resolved.charge_connect_status = new ChargeConnectState()
    }

    if (msg.auto_driver_status !== undefined) {
      resolved.auto_driver_status = AutoDriveStatus.Resolve(msg.auto_driver_status)
    }
    else {
      resolved.auto_driver_status = new AutoDriveStatus()
    }

    if (msg.shared_control_state !== undefined) {
      resolved.shared_control_state = msg.shared_control_state;
    }
    else {
      resolved.shared_control_state = false
    }

    if (msg.shared_control_enable !== undefined) {
      resolved.shared_control_enable = msg.shared_control_enable;
    }
    else {
      resolved.shared_control_enable = false
    }

    if (msg.rearview_mirror_adjust_switch !== undefined) {
      resolved.rearview_mirror_adjust_switch = RearviewMirrorAdjustSwitch.Resolve(msg.rearview_mirror_adjust_switch)
    }
    else {
      resolved.rearview_mirror_adjust_switch = new RearviewMirrorAdjustSwitch()
    }

    if (msg.horizontal_light_lumens !== undefined) {
      resolved.horizontal_light_lumens = msg.horizontal_light_lumens;
    }
    else {
      resolved.horizontal_light_lumens = 0.0
    }

    if (msg.horizontal_light_lumens_valid !== undefined) {
      resolved.horizontal_light_lumens_valid = msg.horizontal_light_lumens_valid;
    }
    else {
      resolved.horizontal_light_lumens_valid = false
    }

    if (msg.vertical_light_lumens !== undefined) {
      resolved.vertical_light_lumens = msg.vertical_light_lumens;
    }
    else {
      resolved.vertical_light_lumens = 0.0
    }

    if (msg.vertical_light_lumens_valid !== undefined) {
      resolved.vertical_light_lumens_valid = msg.vertical_light_lumens_valid;
    }
    else {
      resolved.vertical_light_lumens_valid = false
    }

    return resolved;
    }
};

module.exports = AuxiliaryReportData;
