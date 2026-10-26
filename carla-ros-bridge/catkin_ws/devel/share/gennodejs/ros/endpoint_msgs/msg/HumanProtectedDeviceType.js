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

class HumanProtectedDeviceType {
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
    // Serializes a message object of type HumanProtectedDeviceType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanProtectedDeviceType
    let len;
    let data = new HumanProtectedDeviceType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/HumanProtectedDeviceType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f86a8be5ee82122d8d4bf0bfca43b3a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DRIVER_SEATBELT = 0
    uint8 PASSENGER_SEATBELT = 1
    uint8 PASSENGER_DETECT = 2
    uint8 PASSENGER_AIRBAG = 3
    uint8 SECOND_LEFT_BELT = 4
    uint8 SECOND_MID_BELT = 5
    uint8 SECOND_RIGHT_BELT = 6
    uint8 RESERVED1 = 7
    uint8 RESERVED2 = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanProtectedDeviceType(null);
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
HumanProtectedDeviceType.Constants = {
  DRIVER_SEATBELT: 0,
  PASSENGER_SEATBELT: 1,
  PASSENGER_DETECT: 2,
  PASSENGER_AIRBAG: 3,
  SECOND_LEFT_BELT: 4,
  SECOND_MID_BELT: 5,
  SECOND_RIGHT_BELT: 6,
  RESERVED1: 7,
  RESERVED2: 8,
}

module.exports = HumanProtectedDeviceType;
