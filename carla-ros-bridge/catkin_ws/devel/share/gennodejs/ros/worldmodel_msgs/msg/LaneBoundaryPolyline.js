// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Interval = require('./Interval.js');

//-----------------------------------------------------------

class LaneBoundaryPolyline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.poly_coefficient = null;
      this.available_interval = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('poly_coefficient')) {
        this.poly_coefficient = initObj.poly_coefficient
      }
      else {
        this.poly_coefficient = [];
      }
      if (initObj.hasOwnProperty('available_interval')) {
        this.available_interval = initObj.available_interval
      }
      else {
        this.available_interval = new Interval();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundaryPolyline
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [poly_coefficient]
    bufferOffset = _arraySerializer.float64(obj.poly_coefficient, buffer, bufferOffset, null);
    // Serialize message field [available_interval]
    bufferOffset = Interval.serialize(obj.available_interval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryPolyline
    let len;
    let data = new LaneBoundaryPolyline(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [poly_coefficient]
    data.poly_coefficient = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [available_interval]
    data.available_interval = Interval.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.poly_coefficient.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneBoundaryPolyline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73d1ce9f545be02950ccc75118f40d8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
    float64[] poly_coefficient
    worldmodel_msgs/Interval available_interval
    
    ================================================================================
    MSG: worldmodel_msgs/Interval
    float64 begin
    float64 end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryPolyline(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.poly_coefficient !== undefined) {
      resolved.poly_coefficient = msg.poly_coefficient;
    }
    else {
      resolved.poly_coefficient = []
    }

    if (msg.available_interval !== undefined) {
      resolved.available_interval = Interval.Resolve(msg.available_interval)
    }
    else {
      resolved.available_interval = new Interval()
    }

    return resolved;
    }
};

module.exports = LaneBoundaryPolyline;
