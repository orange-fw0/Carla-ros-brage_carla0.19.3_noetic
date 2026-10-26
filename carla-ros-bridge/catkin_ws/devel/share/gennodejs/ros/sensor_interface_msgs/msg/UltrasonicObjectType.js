// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UltrasonicObjectType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicObjectType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicObjectType
    let len;
    let data = new UltrasonicObjectType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicObjectType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4103fd470a08ca292cf1bccf6b0ac127';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 POINT = 1
    uint8 STRAIGHT_LINE = 2
    uint8 RAYS = 3
    uint8 LINE_SEGMENT = 5
    uint8 SNA = 7
    uint8 RESERVED_INFO = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicObjectType(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
UltrasonicObjectType.Constants = {
  NONE: 0,
  POINT: 1,
  STRAIGHT_LINE: 2,
  RAYS: 3,
  LINE_SEGMENT: 5,
  SNA: 7,
  RESERVED_INFO: 8,
}

module.exports = UltrasonicObjectType;
