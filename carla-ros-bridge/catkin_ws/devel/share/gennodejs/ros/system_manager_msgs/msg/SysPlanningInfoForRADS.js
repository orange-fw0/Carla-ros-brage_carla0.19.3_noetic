// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FunctionModeEnum = require('./FunctionModeEnum.js');
let TrajectoryPoint = require('./TrajectoryPoint.js');

//-----------------------------------------------------------

class SysPlanningInfoForRADS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.trajectory_points = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new FunctionModeEnum();
      }
      if (initObj.hasOwnProperty('trajectory_points')) {
        this.trajectory_points = initObj.trajectory_points
      }
      else {
        this.trajectory_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysPlanningInfoForRADS
    // Serialize message field [mode]
    bufferOffset = FunctionModeEnum.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [trajectory_points]
    // Serialize the length for message field [trajectory_points]
    bufferOffset = _serializer.uint32(obj.trajectory_points.length, buffer, bufferOffset);
    obj.trajectory_points.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysPlanningInfoForRADS
    let len;
    let data = new SysPlanningInfoForRADS(null);
    // Deserialize message field [mode]
    data.mode = FunctionModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_points]
    // Deserialize array length for message field [trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_points[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectory_points.forEach((val) => {
      length += TrajectoryPoint.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysPlanningInfoForRADS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '700944411c0d355f97bad6b53df332e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/FunctionModeEnum mode
    system_manager_msgs/TrajectoryPoint[] trajectory_points
    
    ================================================================================
    MSG: system_manager_msgs/FunctionModeEnum
    uint8 ACC = 0
    uint8 CP = 1
    uint8 HNP = 2
    uint8 APA = 3
    uint8 SVP = 4
    uint8 PLAC = 5
    uint8 ACE = 6
    uint8 PNP = 7
    uint8 LPNP = 8
    uint8 LPNP_MAPPING = 9
    uint8 MEB = 10
    uint8 RADS = 11
    uint8 MANUAL = 12
    uint8 NRP = 13
    uint8 UNP = 14
    uint8 RPA = 15
    uint8 MANUAL_WITH_CPP = 16
    uint8 EESF = 17
    uint8 LKC = 18
    uint8 SENTRY_MODE = 20
    uint8 ECO_ASSIST = 21
    uint8 MNP = 22
    uint8 MNP_MAPPING = 23
    uint8 L3_FADEIN = 24
    uint8 MANUAL_WITH_NPP = 66
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/TrajectoryPoint
    mla_localization_msgs/MLAPosLocal position
    float64 velocity
    float64 reserved
    bool is_reverse
    float32 steering_report
    float64 yaw
    string reserved_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysPlanningInfoForRADS(null);
    if (msg.mode !== undefined) {
      resolved.mode = FunctionModeEnum.Resolve(msg.mode)
    }
    else {
      resolved.mode = new FunctionModeEnum()
    }

    if (msg.trajectory_points !== undefined) {
      resolved.trajectory_points = new Array(msg.trajectory_points.length);
      for (let i = 0; i < resolved.trajectory_points.length; ++i) {
        resolved.trajectory_points[i] = TrajectoryPoint.Resolve(msg.trajectory_points[i]);
      }
    }
    else {
      resolved.trajectory_points = []
    }

    return resolved;
    }
};

module.exports = SysPlanningInfoForRADS;
