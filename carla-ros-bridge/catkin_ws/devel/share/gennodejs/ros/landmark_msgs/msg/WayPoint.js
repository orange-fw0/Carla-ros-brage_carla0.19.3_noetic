// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Direction = require('./Direction.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class WayPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.position = null;
      this.heading_angle = null;
      this.offset = null;
      this.speed_mean = null;
      this.speed_std = null;
      this.turn_direction = null;
      this.on_route = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('heading_angle')) {
        this.heading_angle = initObj.heading_angle
      }
      else {
        this.heading_angle = 0.0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('speed_mean')) {
        this.speed_mean = initObj.speed_mean
      }
      else {
        this.speed_mean = 0.0;
      }
      if (initObj.hasOwnProperty('speed_std')) {
        this.speed_std = initObj.speed_std
      }
      else {
        this.speed_std = 0.0;
      }
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = new Direction();
      }
      if (initObj.hasOwnProperty('on_route')) {
        this.on_route = initObj.on_route
      }
      else {
        this.on_route = false;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WayPoint
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [heading_angle]
    bufferOffset = _serializer.float32(obj.heading_angle, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [speed_mean]
    bufferOffset = _serializer.float32(obj.speed_mean, buffer, bufferOffset);
    // Serialize message field [speed_std]
    bufferOffset = _serializer.float32(obj.speed_std, buffer, bufferOffset);
    // Serialize message field [turn_direction]
    bufferOffset = Direction.serialize(obj.turn_direction, buffer, bufferOffset);
    // Serialize message field [on_route]
    bufferOffset = _serializer.bool(obj.on_route, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WayPoint
    let len;
    let data = new WayPoint(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_angle]
    data.heading_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_mean]
    data.speed_mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_std]
    data.speed_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turn_direction]
    data.turn_direction = Direction.deserialize(buffer, bufferOffset);
    // Deserialize message field [on_route]
    data.on_route = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/WayPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cabc2718605473323b68cec3729c6753';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 POSITION_VALID = 2
    uint16 HEADING_ANGLE_VALID = 4
    uint16 OFFSET_VALID = 8
    uint16 SPEED_MEAN_VALID = 16
    uint16 SPEED_STD_VALID = 32
    uint16 TURN_DIRECTION_VALID = 64
    uint16 ON_ROUTE_VALID = 128
    uint16 available
    float32 score
    perception_interface_msgs/Point3f position
    float32 heading_angle
    float32 offset
    float32 speed_mean
    float32 speed_std
    landmark_msgs/Direction turn_direction
    bool on_route
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/Direction
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 LEFT_LEFT = 10
    uint8 LEFT_LEFT_UT = 11
    uint8 LEFT_RIGHT = 12
    uint8 LEFT_RIGHT_UT = 13
    uint8 LEFT_GO_STRAIGHT = 14
    uint8 LEFT_UNKNOWN = 15
    uint8 RIGHT_RIGHT = 20
    uint8 RIGHT_RIGHT_UT = 21
    uint8 RIGHT_LEFT = 22
    uint8 RIGHT_LEFT_UT = 23
    uint8 RIGHT_GO_STRAIGHT = 24
    uint8 RIGHT_UNKNOWN = 25
    uint8 LEFT_UT_LEFT_UT = 30
    uint8 LEFT_UT_LEFT = 31
    uint8 LEFT_UT_RIGHT = 32
    uint8 LEFT_UT_RIGHT_UT = 33
    uint8 LEFT_UT_GO_STRAIGHT = 34
    uint8 LEFT_UT_UNKNOWN = 35
    uint8 RIGHT_UT_RIGHT_UT = 40
    uint8 RIGHT_UT_RIGHT = 41
    uint8 RIGHT_UT_LEFT = 42
    uint8 RIGHT_UT_LEFT_UT = 43
    uint8 RIGHT_UT_GO_STRAIGHT = 44
    uint8 RIGHT_UT_UNKNOWN = 45
    uint8 GO_STRAIGHT_GO_STRAIGHT = 50
    uint8 GO_STRAIGHT_LEFT = 51
    uint8 GO_STRAIGHT_LEFT_UT = 52
    uint8 GO_STRAIGHT_RIGHT = 53
    uint8 GO_STRAIGHT_RIGHT_UT = 54
    uint8 GO_STRAIGHT_UNKNOWN = 55
    uint8 OTHER_LEFT = 61
    uint8 OTHER_LEFT_UT = 62
    uint8 OTHER_RIGHT = 63
    uint8 OTHER_RIGHT_UT = 64
    uint8 OTHER_GO_STRAIGHT = 65
    uint8 OTHER_UNKNOWN = 66
    uint8 UNKNOWN_LEFT = 91
    uint8 UNKNOWN_LEFT_UT = 92
    uint8 UNKNOWN_RIGHT = 93
    uint8 UNKNOWN_RIGHT_UT = 94
    uint8 UNKNOWN_GO_STRAIGHT = 95
    uint8 UNKNOWN_UNKNOWN = 96
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WayPoint(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = perception_interface_msgs.msg.Point3f.Resolve(msg.position)
    }
    else {
      resolved.position = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.heading_angle !== undefined) {
      resolved.heading_angle = msg.heading_angle;
    }
    else {
      resolved.heading_angle = 0.0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.speed_mean !== undefined) {
      resolved.speed_mean = msg.speed_mean;
    }
    else {
      resolved.speed_mean = 0.0
    }

    if (msg.speed_std !== undefined) {
      resolved.speed_std = msg.speed_std;
    }
    else {
      resolved.speed_std = 0.0
    }

    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = Direction.Resolve(msg.turn_direction)
    }
    else {
      resolved.turn_direction = new Direction()
    }

    if (msg.on_route !== undefined) {
      resolved.on_route = msg.on_route;
    }
    else {
      resolved.on_route = false
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
WayPoint.Constants = {
  SCORE_VALID: 1,
  POSITION_VALID: 2,
  HEADING_ANGLE_VALID: 4,
  OFFSET_VALID: 8,
  SPEED_MEAN_VALID: 16,
  SPEED_STD_VALID: 32,
  TURN_DIRECTION_VALID: 64,
  ON_ROUTE_VALID: 128,
}

module.exports = WayPoint;
