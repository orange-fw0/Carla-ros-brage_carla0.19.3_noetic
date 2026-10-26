// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TOSResponseDecisionEnum = require('./TOSResponseDecisionEnum.js');
let TOSResponseCandidate = require('./TOSResponseCandidate.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TOSResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.decision = null;
      this.candidate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('decision')) {
        this.decision = initObj.decision
      }
      else {
        this.decision = new TOSResponseDecisionEnum();
      }
      if (initObj.hasOwnProperty('candidate')) {
        this.candidate = initObj.candidate
      }
      else {
        this.candidate = new TOSResponseCandidate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [decision]
    bufferOffset = TOSResponseDecisionEnum.serialize(obj.decision, buffer, bufferOffset);
    // Serialize message field [candidate]
    bufferOffset = TOSResponseCandidate.serialize(obj.candidate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSResponse
    let len;
    let data = new TOSResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [decision]
    data.decision = TOSResponseDecisionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [candidate]
    data.candidate = TOSResponseCandidate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a4d73c8f2338d30ec9e7e8bed564936';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    tos_msgs/TOSResponseDecisionEnum decision
    tos_msgs/TOSResponseCandidate candidate
    
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
    MSG: tos_msgs/TOSResponseDecisionEnum
    uint8 UNKNOWN = 0
    uint8 YES = 1
    uint8 NO = 2
    uint8 value
    
    ================================================================================
    MSG: tos_msgs/TOSResponseCandidate
    uint32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.decision !== undefined) {
      resolved.decision = TOSResponseDecisionEnum.Resolve(msg.decision)
    }
    else {
      resolved.decision = new TOSResponseDecisionEnum()
    }

    if (msg.candidate !== undefined) {
      resolved.candidate = TOSResponseCandidate.Resolve(msg.candidate)
    }
    else {
      resolved.candidate = new TOSResponseCandidate()
    }

    return resolved;
    }
};

module.exports = TOSResponse;
