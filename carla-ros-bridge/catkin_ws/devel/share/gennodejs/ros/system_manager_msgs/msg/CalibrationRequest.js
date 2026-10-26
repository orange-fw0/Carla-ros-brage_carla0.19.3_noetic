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

class CalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source = null;
      this.id = null;
      this.command = null;
      this.target_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('target_state')) {
        this.target_state = initObj.target_state
      }
      else {
        this.target_state = new SsmState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrationRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [target_state]
    bufferOffset = SsmState.serialize(obj.target_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrationRequest
    let len;
    let data = new CalibrationRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_state]
    data.target_state = SsmState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.source);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/CalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eecaef67e39a0b2d7e61379df4f82efe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 START = 1
    uint8 CONTINUE = 2
    uint8 STOP = 3
    std_msgs/Header header
    string source
    uint32 id
    uint8 command
    system_manager_msgs/SsmState target_state
    
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
    const resolved = new CalibrationRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.target_state !== undefined) {
      resolved.target_state = SsmState.Resolve(msg.target_state)
    }
    else {
      resolved.target_state = new SsmState()
    }

    return resolved;
    }
};

// Constants for message
CalibrationRequest.Constants = {
  START: 1,
  CONTINUE: 2,
  STOP: 3,
}

module.exports = CalibrationRequest;
