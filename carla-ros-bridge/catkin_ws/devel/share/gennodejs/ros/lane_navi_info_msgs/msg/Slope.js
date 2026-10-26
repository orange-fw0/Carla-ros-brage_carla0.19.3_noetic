// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InterpolationType = require('./InterpolationType.js');

//-----------------------------------------------------------

class Slope {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.start_offset = null;
      this.end_offset = null;
      this.interpolation_type = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('end_offset')) {
        this.end_offset = initObj.end_offset
      }
      else {
        this.end_offset = 0.0;
      }
      if (initObj.hasOwnProperty('interpolation_type')) {
        this.interpolation_type = initObj.interpolation_type
      }
      else {
        this.interpolation_type = new InterpolationType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Slope
    // Serialize message field [value]
    bufferOffset = _serializer.float32(obj.value, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    // Serialize message field [interpolation_type]
    bufferOffset = InterpolationType.serialize(obj.interpolation_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Slope
    let len;
    let data = new Slope(null);
    // Deserialize message field [value]
    data.value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_offset]
    data.end_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interpolation_type]
    data.interpolation_type = InterpolationType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += InterpolationType.getMessageSize(object.interpolation_type);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Slope';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eaa6f0473111dadc3e0e90330027926';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/InterpolationType
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
    const resolved = new Slope(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.end_offset !== undefined) {
      resolved.end_offset = msg.end_offset;
    }
    else {
      resolved.end_offset = 0.0
    }

    if (msg.interpolation_type !== undefined) {
      resolved.interpolation_type = InterpolationType.Resolve(msg.interpolation_type)
    }
    else {
      resolved.interpolation_type = new InterpolationType()
    }

    return resolved;
    }
};

module.exports = Slope;
