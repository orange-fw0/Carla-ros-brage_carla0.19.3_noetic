// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2d = require('./Point2d.js');

//-----------------------------------------------------------

class AvdMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.property = null;
      this.ignore = null;
      this.avd_direction = null;
      this.avd_priority = null;
      this.blocked_time_begin = null;
      this.blocked_time_end = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('property')) {
        this.property = initObj.property
      }
      else {
        this.property = '';
      }
      if (initObj.hasOwnProperty('ignore')) {
        this.ignore = initObj.ignore
      }
      else {
        this.ignore = false;
      }
      if (initObj.hasOwnProperty('avd_direction')) {
        this.avd_direction = initObj.avd_direction
      }
      else {
        this.avd_direction = '';
      }
      if (initObj.hasOwnProperty('avd_priority')) {
        this.avd_priority = initObj.avd_priority
      }
      else {
        this.avd_priority = 0;
      }
      if (initObj.hasOwnProperty('blocked_time_begin')) {
        this.blocked_time_begin = initObj.blocked_time_begin
      }
      else {
        this.blocked_time_begin = 0.0;
      }
      if (initObj.hasOwnProperty('blocked_time_end')) {
        this.blocked_time_end = initObj.blocked_time_end
      }
      else {
        this.blocked_time_end = 0.0;
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvdMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [property]
    bufferOffset = _serializer.string(obj.property, buffer, bufferOffset);
    // Serialize message field [ignore]
    bufferOffset = _serializer.bool(obj.ignore, buffer, bufferOffset);
    // Serialize message field [avd_direction]
    bufferOffset = _serializer.string(obj.avd_direction, buffer, bufferOffset);
    // Serialize message field [avd_priority]
    bufferOffset = _serializer.int32(obj.avd_priority, buffer, bufferOffset);
    // Serialize message field [blocked_time_begin]
    bufferOffset = _serializer.float32(obj.blocked_time_begin, buffer, bufferOffset);
    // Serialize message field [blocked_time_end]
    bufferOffset = _serializer.float32(obj.blocked_time_end, buffer, bufferOffset);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvdMsg
    let len;
    let data = new AvdMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [property]
    data.property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ignore]
    data.ignore = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [avd_direction]
    data.avd_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [avd_priority]
    data.avd_priority = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [blocked_time_begin]
    data.blocked_time_begin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blocked_time_end]
    data.blocked_time_end = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.property);
    length += _getByteLength(object.avd_direction);
    length += 16 * object.polygon.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/AvdMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb26dfd71fdfbbf1bd461ce100bc9db8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string property
    bool ignore
    string avd_direction
    int32 avd_priority
    float32 blocked_time_begin
    float32 blocked_time_end
    planning_msgs/Point2d[] polygon
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvdMsg(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.property !== undefined) {
      resolved.property = msg.property;
    }
    else {
      resolved.property = ''
    }

    if (msg.ignore !== undefined) {
      resolved.ignore = msg.ignore;
    }
    else {
      resolved.ignore = false
    }

    if (msg.avd_direction !== undefined) {
      resolved.avd_direction = msg.avd_direction;
    }
    else {
      resolved.avd_direction = ''
    }

    if (msg.avd_priority !== undefined) {
      resolved.avd_priority = msg.avd_priority;
    }
    else {
      resolved.avd_priority = 0
    }

    if (msg.blocked_time_begin !== undefined) {
      resolved.blocked_time_begin = msg.blocked_time_begin;
    }
    else {
      resolved.blocked_time_begin = 0.0
    }

    if (msg.blocked_time_end !== undefined) {
      resolved.blocked_time_end = msg.blocked_time_end;
    }
    else {
      resolved.blocked_time_end = 0.0
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = new Array(msg.polygon.length);
      for (let i = 0; i < resolved.polygon.length; ++i) {
        resolved.polygon[i] = Point2d.Resolve(msg.polygon[i]);
      }
    }
    else {
      resolved.polygon = []
    }

    return resolved;
    }
};

module.exports = AvdMsg;
