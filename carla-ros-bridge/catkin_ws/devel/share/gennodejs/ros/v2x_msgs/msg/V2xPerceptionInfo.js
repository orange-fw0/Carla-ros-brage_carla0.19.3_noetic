// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xPerceptionObject = require('./V2xPerceptionObject.js');

//-----------------------------------------------------------

class V2xPerceptionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.v2x_perception_object = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('v2x_perception_object')) {
        this.v2x_perception_object = initObj.v2x_perception_object
      }
      else {
        this.v2x_perception_object = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xPerceptionInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [v2x_perception_object]
    // Serialize the length for message field [v2x_perception_object]
    bufferOffset = _serializer.uint32(obj.v2x_perception_object.length, buffer, bufferOffset);
    obj.v2x_perception_object.forEach((val) => {
      bufferOffset = V2xPerceptionObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xPerceptionInfo
    let len;
    let data = new V2xPerceptionInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [v2x_perception_object]
    // Deserialize array length for message field [v2x_perception_object]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.v2x_perception_object = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.v2x_perception_object[i] = V2xPerceptionObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 68 * object.v2x_perception_object.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xPerceptionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a147861573f52ac4a82123b87cb1ba5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 V2X_PERCEPTION_OBJECT = 1
    uint8 available
    v2x_msgs/V2xPerceptionObject[] v2x_perception_object
    
    ================================================================================
    MSG: v2x_msgs/V2xPerceptionObject
    v2x_msgs/V2xPerceptionObjectType type
    float64 longitude
    float64 latitude
    float64 elevation
    float64 speed
    float64 heading
    float64 width
    float64 length
    float64 height
    
    ================================================================================
    MSG: v2x_msgs/V2xPerceptionObjectType
    uint32 UNKNOWN = 0
    uint32 PEDESTRIAN = 1
    uint32 NON_MOTOR = 2
    uint32 MOTOR = 3
    uint32 OTHER = 4
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xPerceptionInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.v2x_perception_object !== undefined) {
      resolved.v2x_perception_object = new Array(msg.v2x_perception_object.length);
      for (let i = 0; i < resolved.v2x_perception_object.length; ++i) {
        resolved.v2x_perception_object[i] = V2xPerceptionObject.Resolve(msg.v2x_perception_object[i]);
      }
    }
    else {
      resolved.v2x_perception_object = []
    }

    return resolved;
    }
};

// Constants for message
V2xPerceptionInfo.Constants = {
  V2X_PERCEPTION_OBJECT: 1,
}

module.exports = V2xPerceptionInfo;
