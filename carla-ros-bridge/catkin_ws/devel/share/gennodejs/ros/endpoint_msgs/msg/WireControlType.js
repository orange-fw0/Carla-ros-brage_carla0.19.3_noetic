// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WireControlType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wire_control_type = null;
    }
    else {
      if (initObj.hasOwnProperty('wire_control_type')) {
        this.wire_control_type = initObj.wire_control_type
      }
      else {
        this.wire_control_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WireControlType
    // Serialize message field [wire_control_type]
    bufferOffset = _serializer.uint8(obj.wire_control_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WireControlType
    let len;
    let data = new WireControlType(null);
    // Deserialize message field [wire_control_type]
    data.wire_control_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WireControlType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee0dd491a418b1e44e75e53ab91ecd8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SYETEM_REQ_NONE = 0
    uint8 SYSTEM_REQ_PILOT = 1
    uint8 SYSTEM_REQ_APA = 2
    uint8 SYSTEM_REQ_ACC = 3
    uint8 SYSTEM_REQ_AVP = 4
    uint8 SYSTEM_REQ_LVP = 5
    uint8 SYSTEM_REQ_MRC = 6
    uint8 RESERVED = 7
    uint8 wire_control_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WireControlType(null);
    if (msg.wire_control_type !== undefined) {
      resolved.wire_control_type = msg.wire_control_type;
    }
    else {
      resolved.wire_control_type = 0
    }

    return resolved;
    }
};

// Constants for message
WireControlType.Constants = {
  SYETEM_REQ_NONE: 0,
  SYSTEM_REQ_PILOT: 1,
  SYSTEM_REQ_APA: 2,
  SYSTEM_REQ_ACC: 3,
  SYSTEM_REQ_AVP: 4,
  SYSTEM_REQ_LVP: 5,
  SYSTEM_REQ_MRC: 6,
  RESERVED: 7,
}

module.exports = WireControlType;
