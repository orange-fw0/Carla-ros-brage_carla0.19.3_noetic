// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RunningModeEnum = require('./RunningModeEnum.js');
let ModuleControlCmdEnum = require('./ModuleControlCmdEnum.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModuleControlCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.running_mode = null;
      this.module_control_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('running_mode')) {
        this.running_mode = initObj.running_mode
      }
      else {
        this.running_mode = new RunningModeEnum();
      }
      if (initObj.hasOwnProperty('module_control_cmd')) {
        this.module_control_cmd = initObj.module_control_cmd
      }
      else {
        this.module_control_cmd = new ModuleControlCmdEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleControlCmdRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [running_mode]
    bufferOffset = RunningModeEnum.serialize(obj.running_mode, buffer, bufferOffset);
    // Serialize message field [module_control_cmd]
    bufferOffset = ModuleControlCmdEnum.serialize(obj.module_control_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleControlCmdRequest
    let len;
    let data = new ModuleControlCmdRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [running_mode]
    data.running_mode = RunningModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_control_cmd]
    data.module_control_cmd = ModuleControlCmdEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/ModuleControlCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bef79cd45830defc2dfa2dd2fd1e7f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    system_manager_msgs/RunningModeEnum running_mode
    system_manager_msgs/ModuleControlCmdEnum module_control_cmd
    
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
    MSG: system_manager_msgs/RunningModeEnum
    uint8 PILOT = 0
    uint8 PARKING = 1
    uint8 MANUAL_DRIVING = 2
    uint8 PRODUCTION_LINE = 3
    uint8 MEB = 4
    uint8 RADS = 5
    uint8 PILOT_WITH_PSD = 6
    uint8 SENTRY_MODE = 7
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ModuleControlCmdEnum
    uint8 PAUSE = 0
    uint8 RESUME = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleControlCmdRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.running_mode !== undefined) {
      resolved.running_mode = RunningModeEnum.Resolve(msg.running_mode)
    }
    else {
      resolved.running_mode = new RunningModeEnum()
    }

    if (msg.module_control_cmd !== undefined) {
      resolved.module_control_cmd = ModuleControlCmdEnum.Resolve(msg.module_control_cmd)
    }
    else {
      resolved.module_control_cmd = new ModuleControlCmdEnum()
    }

    return resolved;
    }
};

module.exports = ModuleControlCmdRequest;
