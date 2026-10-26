// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SsmState = require('./SsmState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SsmStateSwitchResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source_state = null;
      this.target_state = null;
      this.code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('source_state')) {
        this.source_state = initObj.source_state
      }
      else {
        this.source_state = new SsmState();
      }
      if (initObj.hasOwnProperty('target_state')) {
        this.target_state = initObj.target_state
      }
      else {
        this.target_state = new SsmState();
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SsmStateSwitchResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source_state]
    bufferOffset = SsmState.serialize(obj.source_state, buffer, bufferOffset);
    // Serialize message field [target_state]
    bufferOffset = SsmState.serialize(obj.target_state, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint8(obj.code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SsmStateSwitchResult
    let len;
    let data = new SsmStateSwitchResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_state]
    data.source_state = SsmState.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_state]
    data.target_state = SsmState.deserialize(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SsmStateSwitchResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1d323785535a9cacbe426edf8155aca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SUCCESS = 0
    uint8 PENDING = 1
    uint8 FAILED = 2
    uint8 TIMEOUT = 3
    uint8 INVALID_STATE = 4
    std_msgs/Header header
    system_manager_msgs/SsmState source_state
    system_manager_msgs/SsmState target_state
    uint8 code
    string message
    
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
    MSG: system_manager_msgs/SsmState
    uint8 NONE = 255
    uint8 INIT = 0
    uint8 SHUTDOWN = 1
    uint8 MANUAL = 2
    uint8 AD = 3
    uint8 SENTINEL = 4
    uint8 PLCA = 5
    uint8 SLCA = 6
    uint8 NORMAL = 2
    uint8 CALIB_PLAC_CAMERA = 9
    uint8 CALIB_PLAC_LIDAR = 10
    uint8 CALIB_ACE_CAMERA = 11
    uint8 CALIB_ACE_LIDAR = 12
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SsmStateSwitchResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.source_state !== undefined) {
      resolved.source_state = SsmState.Resolve(msg.source_state)
    }
    else {
      resolved.source_state = new SsmState()
    }

    if (msg.target_state !== undefined) {
      resolved.target_state = SsmState.Resolve(msg.target_state)
    }
    else {
      resolved.target_state = new SsmState()
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
SsmStateSwitchResult.Constants = {
  SUCCESS: 0,
  PENDING: 1,
  FAILED: 2,
  TIMEOUT: 3,
  INVALID_STATE: 4,
}

module.exports = SsmStateSwitchResult;
