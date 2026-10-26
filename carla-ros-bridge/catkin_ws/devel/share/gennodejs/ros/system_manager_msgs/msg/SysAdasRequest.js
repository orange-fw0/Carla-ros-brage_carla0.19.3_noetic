// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SysAdasInfo = require('./SysAdasInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SysAdasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new SysAdasInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysAdasRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = SysAdasInfo.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysAdasRequest
    let len;
    let data = new SysAdasRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = SysAdasInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysAdasRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c17d8b04f612d47ae9f2958b0cc738f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    system_manager_msgs/SysAdasInfo info
    
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
    MSG: system_manager_msgs/SysAdasInfo
    system_manager_msgs/FunctionModeEnum function_mode
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysAdasRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.info !== undefined) {
      resolved.info = SysAdasInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new SysAdasInfo()
    }

    return resolved;
    }
};

module.exports = SysAdasRequest;
