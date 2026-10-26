// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MergeType = require('./MergeType.js');

//-----------------------------------------------------------

class MergePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new MergeType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MergePoint
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = MergeType.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MergePoint
    let len;
    let data = new MergePoint(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = MergeType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/MergePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc4aa91f76393862e9bc4f6ac3c197a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    worldmodel_msgs/MergeType type
    
    ================================================================================
    MSG: worldmodel_msgs/MergeType
    uint8 UNKNOWN = 0
    uint8 UNRELATED = 1
    uint8 FROM_RIGHT = 2
    uint8 FROM_LEFT = 3
    uint8 FROM_BOTH = 4
    uint8 LANE_END = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MergePoint(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = MergeType.Resolve(msg.type)
    }
    else {
      resolved.type = new MergeType()
    }

    return resolved;
    }
};

module.exports = MergePoint;
