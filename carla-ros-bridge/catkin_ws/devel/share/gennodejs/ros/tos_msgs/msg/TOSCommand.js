// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TOSSetSpeedCmd = require('./TOSSetSpeedCmd.js');
let TOSNudgeCmd = require('./TOSNudgeCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TOSCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tos_set_speed_cmd = null;
      this.tos_nudge_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tos_set_speed_cmd')) {
        this.tos_set_speed_cmd = initObj.tos_set_speed_cmd
      }
      else {
        this.tos_set_speed_cmd = new TOSSetSpeedCmd();
      }
      if (initObj.hasOwnProperty('tos_nudge_cmd')) {
        this.tos_nudge_cmd = initObj.tos_nudge_cmd
      }
      else {
        this.tos_nudge_cmd = new TOSNudgeCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tos_set_speed_cmd]
    bufferOffset = TOSSetSpeedCmd.serialize(obj.tos_set_speed_cmd, buffer, bufferOffset);
    // Serialize message field [tos_nudge_cmd]
    bufferOffset = TOSNudgeCmd.serialize(obj.tos_nudge_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSCommand
    let len;
    let data = new TOSCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tos_set_speed_cmd]
    data.tos_set_speed_cmd = TOSSetSpeedCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [tos_nudge_cmd]
    data.tos_nudge_cmd = TOSNudgeCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa0e281be7190eefeb03ee59f35c1ab1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    tos_msgs/TOSSetSpeedCmd tos_set_speed_cmd
    tos_msgs/TOSNudgeCmd tos_nudge_cmd
    
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
    MSG: tos_msgs/TOSSetSpeedCmd
    uint8 available
    float64 tos_set_speed
    
    ================================================================================
    MSG: tos_msgs/TOSNudgeCmd
    uint8 available
    tos_msgs/TOSNudgeEnum nudge_cmd
    
    ================================================================================
    MSG: tos_msgs/TOSNudgeEnum
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tos_set_speed_cmd !== undefined) {
      resolved.tos_set_speed_cmd = TOSSetSpeedCmd.Resolve(msg.tos_set_speed_cmd)
    }
    else {
      resolved.tos_set_speed_cmd = new TOSSetSpeedCmd()
    }

    if (msg.tos_nudge_cmd !== undefined) {
      resolved.tos_nudge_cmd = TOSNudgeCmd.Resolve(msg.tos_nudge_cmd)
    }
    else {
      resolved.tos_nudge_cmd = new TOSNudgeCmd()
    }

    return resolved;
    }
};

module.exports = TOSCommand;
