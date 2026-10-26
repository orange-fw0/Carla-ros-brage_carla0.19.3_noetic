// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneBoundaryForm {
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
    // Serializes a message object of type LaneBoundaryForm
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryForm
    let len;
    let data = new LaneBoundaryForm(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneBoundaryForm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3e5dbf248ad13ce55de91eac8c461c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 SOLID = 1
    uint8 DASH = 2
    uint8 VIRTUAL = 3
    uint8 PHYSICAL = 4
    uint8 DOUBLE_SOLID = 5
    uint8 DASH_SOLID = 6
    uint8 SOLID_DASH = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryForm(null);
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
LaneBoundaryForm.Constants = {
  UNKNOWN: 0,
  SOLID: 1,
  DASH: 2,
  VIRTUAL: 3,
  PHYSICAL: 4,
  DOUBLE_SOLID: 5,
  DASH_SOLID: 6,
  SOLID_DASH: 7,
}

module.exports = LaneBoundaryForm;
