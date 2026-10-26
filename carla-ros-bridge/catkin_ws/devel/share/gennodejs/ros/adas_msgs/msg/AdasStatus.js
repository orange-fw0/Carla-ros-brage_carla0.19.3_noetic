// Auto-generated. Do not edit!

// (in-package adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LcaStatus = require('./LcaStatus.js');
let BsdStatus = require('./BsdStatus.js');
let DowStatus = require('./DowStatus.js');
let RcwStatus = require('./RcwStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AdasStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lca = null;
      this.bsd = null;
      this.dow = null;
      this.rcw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lca')) {
        this.lca = initObj.lca
      }
      else {
        this.lca = new LcaStatus();
      }
      if (initObj.hasOwnProperty('bsd')) {
        this.bsd = initObj.bsd
      }
      else {
        this.bsd = new BsdStatus();
      }
      if (initObj.hasOwnProperty('dow')) {
        this.dow = initObj.dow
      }
      else {
        this.dow = new DowStatus();
      }
      if (initObj.hasOwnProperty('rcw')) {
        this.rcw = initObj.rcw
      }
      else {
        this.rcw = new RcwStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdasStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lca]
    bufferOffset = LcaStatus.serialize(obj.lca, buffer, bufferOffset);
    // Serialize message field [bsd]
    bufferOffset = BsdStatus.serialize(obj.bsd, buffer, bufferOffset);
    // Serialize message field [dow]
    bufferOffset = DowStatus.serialize(obj.dow, buffer, bufferOffset);
    // Serialize message field [rcw]
    bufferOffset = RcwStatus.serialize(obj.rcw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdasStatus
    let len;
    let data = new AdasStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lca]
    data.lca = LcaStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [bsd]
    data.bsd = BsdStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [dow]
    data.dow = DowStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [rcw]
    data.rcw = RcwStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adas_msgs/AdasStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a42d809339d43d8842c3cbde6e229299';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    adas_msgs/LcaStatus lca
    adas_msgs/BsdStatus bsd
    adas_msgs/DowStatus dow
    adas_msgs/RcwStatus rcw
    
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
    MSG: adas_msgs/LcaStatus
    uint8 left_state
    uint8 right_state
    
    ================================================================================
    MSG: adas_msgs/BsdStatus
    uint8 left_state
    uint8 right_state
    
    ================================================================================
    MSG: adas_msgs/DowStatus
    uint8 left_front_state
    uint8 left_rear_state
    uint8 right_front_state
    uint8 right_rear_state
    
    ================================================================================
    MSG: adas_msgs/RcwStatus
    uint8 rcw_state
    uint8 rlw_state
    uint8 plw_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdasStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lca !== undefined) {
      resolved.lca = LcaStatus.Resolve(msg.lca)
    }
    else {
      resolved.lca = new LcaStatus()
    }

    if (msg.bsd !== undefined) {
      resolved.bsd = BsdStatus.Resolve(msg.bsd)
    }
    else {
      resolved.bsd = new BsdStatus()
    }

    if (msg.dow !== undefined) {
      resolved.dow = DowStatus.Resolve(msg.dow)
    }
    else {
      resolved.dow = new DowStatus()
    }

    if (msg.rcw !== undefined) {
      resolved.rcw = RcwStatus.Resolve(msg.rcw)
    }
    else {
      resolved.rcw = new RcwStatus()
    }

    return resolved;
    }
};

module.exports = AdasStatus;
