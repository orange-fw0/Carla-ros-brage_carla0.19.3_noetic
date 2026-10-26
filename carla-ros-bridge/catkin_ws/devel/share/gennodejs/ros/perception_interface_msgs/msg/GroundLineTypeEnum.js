// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GroundLineTypeEnum {
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
    // Serializes a message object of type GroundLineTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GroundLineTypeEnum
    let len;
    let data = new GroundLineTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/GroundLineTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '171d775aedfea010466399b07d1420ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GROUND_LINE_TYPE_UNKNOWN = 0
    uint8 GROUND_LINE_TYPE_WALL = 1
    uint8 GROUND_LINE_TYPE_PILLAR = 2
    uint8 GROUND_LINE_TYPE_FENCE = 3
    uint8 GROUND_LINE_TYPE_STEP = 4
    uint8 GROUND_LINE_TYPE_SPECIAL = 5
    uint8 GROUND_LINE_TYPE_POLE = 6
    uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
    uint8 GROUNDLINE_TYPE_BARRIER = 8
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GroundLineTypeEnum(null);
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
GroundLineTypeEnum.Constants = {
  GROUND_LINE_TYPE_UNKNOWN: 0,
  GROUND_LINE_TYPE_WALL: 1,
  GROUND_LINE_TYPE_PILLAR: 2,
  GROUND_LINE_TYPE_FENCE: 3,
  GROUND_LINE_TYPE_STEP: 4,
  GROUND_LINE_TYPE_SPECIAL: 5,
  GROUND_LINE_TYPE_POLE: 6,
  GROUND_LINE_TYPE_WHEELSTOP: 7,
  GROUNDLINE_TYPE_BARRIER: 8,
  GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE: 9,
  GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE: 10,
  GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE: 11,
  GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE: 12,
}

module.exports = GroundLineTypeEnum;
