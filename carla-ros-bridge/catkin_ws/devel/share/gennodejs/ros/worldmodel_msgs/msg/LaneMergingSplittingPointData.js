// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Orientation = require('./Orientation.js');

//-----------------------------------------------------------

class LaneMergingSplittingPointData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.is_split = null;
      this.is_continue = null;
      this.orientation = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('is_split')) {
        this.is_split = initObj.is_split
      }
      else {
        this.is_split = false;
      }
      if (initObj.hasOwnProperty('is_continue')) {
        this.is_continue = initObj.is_continue
      }
      else {
        this.is_continue = false;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Orientation();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneMergingSplittingPointData
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [is_split]
    bufferOffset = _serializer.bool(obj.is_split, buffer, bufferOffset);
    // Serialize message field [is_continue]
    bufferOffset = _serializer.bool(obj.is_continue, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Orientation.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneMergingSplittingPointData
    let len;
    let data = new LaneMergingSplittingPointData(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_split]
    data.is_split = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_continue]
    data.is_continue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Orientation.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneMergingSplittingPointData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6ab8f133a0f27d68d0ff3515eec7e23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    bool is_split
    bool is_continue
    worldmodel_msgs/Orientation orientation
    float64 length
    
    ================================================================================
    MSG: worldmodel_msgs/Orientation
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 INTERSECT = 3
    uint8 IGNORED = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneMergingSplittingPointData(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.is_split !== undefined) {
      resolved.is_split = msg.is_split;
    }
    else {
      resolved.is_split = false
    }

    if (msg.is_continue !== undefined) {
      resolved.is_continue = msg.is_continue;
    }
    else {
      resolved.is_continue = false
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Orientation.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Orientation()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = LaneMergingSplittingPointData;
