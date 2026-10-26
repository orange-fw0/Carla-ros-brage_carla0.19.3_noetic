// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneConnectDirection = require('./LaneConnectDirection.js');
let LaneType = require('./LaneType.js');

//-----------------------------------------------------------

class ReferenceLineSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.begin_index = null;
      this.end_index = null;
      this.direction = null;
      this.lane_type = null;
      this.is_in_intersection = null;
      this.is_in_route = null;
    }
    else {
      if (initObj.hasOwnProperty('begin_index')) {
        this.begin_index = initObj.begin_index
      }
      else {
        this.begin_index = 0;
      }
      if (initObj.hasOwnProperty('end_index')) {
        this.end_index = initObj.end_index
      }
      else {
        this.end_index = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new LaneConnectDirection();
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = new LaneType();
      }
      if (initObj.hasOwnProperty('is_in_intersection')) {
        this.is_in_intersection = initObj.is_in_intersection
      }
      else {
        this.is_in_intersection = false;
      }
      if (initObj.hasOwnProperty('is_in_route')) {
        this.is_in_route = initObj.is_in_route
      }
      else {
        this.is_in_route = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferenceLineSegment
    // Serialize message field [begin_index]
    bufferOffset = _serializer.uint16(obj.begin_index, buffer, bufferOffset);
    // Serialize message field [end_index]
    bufferOffset = _serializer.uint16(obj.end_index, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = LaneConnectDirection.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [lane_type]
    bufferOffset = LaneType.serialize(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [is_in_intersection]
    bufferOffset = _serializer.bool(obj.is_in_intersection, buffer, bufferOffset);
    // Serialize message field [is_in_route]
    bufferOffset = _serializer.bool(obj.is_in_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferenceLineSegment
    let len;
    let data = new ReferenceLineSegment(null);
    // Deserialize message field [begin_index]
    data.begin_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_index]
    data.end_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = LaneConnectDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_type]
    data.lane_type = LaneType.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_in_intersection]
    data.is_in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_in_route]
    data.is_in_route = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ReferenceLineSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f509e0e69594c073549ebbc315cf1a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 begin_index
    uint16 end_index
    worldmodel_msgs/LaneConnectDirection direction
    worldmodel_msgs/LaneType lane_type
    bool is_in_intersection
    bool is_in_route
    
    ================================================================================
    MSG: worldmodel_msgs/LaneConnectDirection
    uint8 NORMAL = 0
    uint8 SPLIT_TO_LEFT = 1
    uint8 SPLIT_TO_RIGHT = 2
    uint8 MERGE_FROM_LEFT = 3
    uint8 MERGE_FROM_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneType
    uint8 UNKNOWN = 0
    uint8 NORMAL = 1
    uint8 VIRTUAL = 2
    uint8 PARKING = 3
    uint8 ACCELERATE = 4
    uint8 DECELERATE = 5
    uint8 BUS = 6
    uint8 EMERGENCY = 7
    uint8 ACCELERATE_DECELERATE = 8
    uint8 LEFT_TURN_WAITTING_AREA = 9
    uint8 NON_MOTOR = 10
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReferenceLineSegment(null);
    if (msg.begin_index !== undefined) {
      resolved.begin_index = msg.begin_index;
    }
    else {
      resolved.begin_index = 0
    }

    if (msg.end_index !== undefined) {
      resolved.end_index = msg.end_index;
    }
    else {
      resolved.end_index = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = LaneConnectDirection.Resolve(msg.direction)
    }
    else {
      resolved.direction = new LaneConnectDirection()
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = LaneType.Resolve(msg.lane_type)
    }
    else {
      resolved.lane_type = new LaneType()
    }

    if (msg.is_in_intersection !== undefined) {
      resolved.is_in_intersection = msg.is_in_intersection;
    }
    else {
      resolved.is_in_intersection = false
    }

    if (msg.is_in_route !== undefined) {
      resolved.is_in_route = msg.is_in_route;
    }
    else {
      resolved.is_in_route = false
    }

    return resolved;
    }
};

module.exports = ReferenceLineSegment;
