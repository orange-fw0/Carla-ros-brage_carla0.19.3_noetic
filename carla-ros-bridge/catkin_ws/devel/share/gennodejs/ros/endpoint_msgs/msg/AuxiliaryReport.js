// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AuxiliaryReportData = require('./AuxiliaryReportData.js');

//-----------------------------------------------------------

class AuxiliaryReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.auxiliary_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('auxiliary_report_data')) {
        this.auxiliary_report_data = initObj.auxiliary_report_data
      }
      else {
        this.auxiliary_report_data = new AuxiliaryReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [auxiliary_report_data]
    bufferOffset = AuxiliaryReportData.serialize(obj.auxiliary_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryReport
    let len;
    let data = new AuxiliaryReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auxiliary_report_data]
    data.auxiliary_report_data = AuxiliaryReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AuxiliaryReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6651f4ec1683fcefcc01e5bcd9a9df24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxiliaryReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.auxiliary_report_data !== undefined) {
      resolved.auxiliary_report_data = AuxiliaryReportData.Resolve(msg.auxiliary_report_data)
    }
    else {
      resolved.auxiliary_report_data = new AuxiliaryReportData()
    }

    return resolved;
    }
};

// Constants for message
AuxiliaryReport.Constants = {
  AUXILIARY_REPORT_DATA: 1,
}

module.exports = AuxiliaryReport;
