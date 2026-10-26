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

class UltrasonicPaingslotType {
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
    // Serializes a message object of type UltrasonicPaingslotType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicPaingslotType
    let len;
    let data = new UltrasonicPaingslotType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicPaingslotType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35697edc54f0ef1154e5cc48e5582b14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PSC_SLOT_PARALLE_LE = 0
    uint8 PSC_SLOT_PARALLE_RI = 1
    uint8 PSC_SLOT_CROSS_LE = 2
    uint8 PSC_SLOT_CROSS_RI = 3
    uint8 PSC_SLOT_OBLIQUE_LE = 4
    uint8 PSC_SLOT_OBLIQUE_RI = 5
    uint8 PSC_COMMON_SLOT_LE = 6
    uint8 PSC_COMMON_SLOT_RI = 7
    uint8 POC_SLOT_PARALLE_LE = 8
    uint8 POC_SLOT_PARALLE_RI = 9
    uint8 POC_SLOT_CROSS_LE = 10
    uint8 POC_SLOT_CROSS_RI = 11
    uint8 POC_COMMON_SLOT_LE = 12
    uint8 POC_COMMON_SLOT_RI = 13
    uint8 RESERVED_INFO1 = 14
    uint8 RESERVED_INFO2 = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicPaingslotType(null);
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
UltrasonicPaingslotType.Constants = {
  PSC_SLOT_PARALLE_LE: 0,
  PSC_SLOT_PARALLE_RI: 1,
  PSC_SLOT_CROSS_LE: 2,
  PSC_SLOT_CROSS_RI: 3,
  PSC_SLOT_OBLIQUE_LE: 4,
  PSC_SLOT_OBLIQUE_RI: 5,
  PSC_COMMON_SLOT_LE: 6,
  PSC_COMMON_SLOT_RI: 7,
  POC_SLOT_PARALLE_LE: 8,
  POC_SLOT_PARALLE_RI: 9,
  POC_SLOT_CROSS_LE: 10,
  POC_SLOT_CROSS_RI: 11,
  POC_COMMON_SLOT_LE: 12,
  POC_COMMON_SLOT_RI: 13,
  RESERVED_INFO1: 14,
  RESERVED_INFO2: 15,
}

module.exports = UltrasonicPaingslotType;
