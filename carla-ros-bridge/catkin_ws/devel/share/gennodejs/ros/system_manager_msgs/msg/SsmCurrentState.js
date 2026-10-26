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

class SsmCurrentState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.switching_state = null;
      this.can_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new SsmState();
      }
      if (initObj.hasOwnProperty('switching_state')) {
        this.switching_state = initObj.switching_state
      }
      else {
        this.switching_state = new SsmState();
      }
      if (initObj.hasOwnProperty('can_switch')) {
        this.can_switch = initObj.can_switch
      }
      else {
        this.can_switch = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SsmCurrentState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = SsmState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [switching_state]
    bufferOffset = SsmState.serialize(obj.switching_state, buffer, bufferOffset);
    // Serialize message field [can_switch]
    bufferOffset = _serializer.bool(obj.can_switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SsmCurrentState
    let len;
    let data = new SsmCurrentState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = SsmState.deserialize(buffer, bufferOffset);
    // Deserialize message field [switching_state]
    data.switching_state = SsmState.deserialize(buffer, bufferOffset);
    // Deserialize message field [can_switch]
    data.can_switch = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SsmCurrentState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e3993b5e79fbd1989ad29d974ce7e35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    system_manager_msgs/SsmState state
    system_manager_msgs/SsmState switching_state
    bool can_switch
    
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
    const resolved = new SsmCurrentState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = SsmState.Resolve(msg.state)
    }
    else {
      resolved.state = new SsmState()
    }

    if (msg.switching_state !== undefined) {
      resolved.switching_state = SsmState.Resolve(msg.switching_state)
    }
    else {
      resolved.switching_state = new SsmState()
    }

    if (msg.can_switch !== undefined) {
      resolved.can_switch = msg.can_switch;
    }
    else {
      resolved.can_switch = false
    }

    return resolved;
    }
};

module.exports = SsmCurrentState;
