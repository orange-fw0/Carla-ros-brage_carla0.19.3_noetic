// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class InterpolationType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.addition_values = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('addition_values')) {
        this.addition_values = initObj.addition_values
      }
      else {
        this.addition_values = [];
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterpolationType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [addition_values]
    bufferOffset = _arraySerializer.float32(obj.addition_values, buffer, bufferOffset, null);
    // Serialize message field [params]
    bufferOffset = _arraySerializer.float32(obj.params, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterpolationType
    let len;
    let data = new InterpolationType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [addition_values]
    data.addition_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [params]
    data.params = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.addition_values.length;
    length += 4 * object.params.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/InterpolationType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '982ed9650ff59d021b6cb1ccc2662eda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 STEP = 1
    uint8 LINEAR = 2
    uint8 GENERAL = 3
    uint8 OHTERS = 255
    uint8 type
    float32[] addition_values
    float32[] params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InterpolationType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.addition_values !== undefined) {
      resolved.addition_values = msg.addition_values;
    }
    else {
      resolved.addition_values = []
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

// Constants for message
InterpolationType.Constants = {
  UNKNOWN: 0,
  STEP: 1,
  LINEAR: 2,
  GENERAL: 3,
  OHTERS: 255,
}

module.exports = InterpolationType;
