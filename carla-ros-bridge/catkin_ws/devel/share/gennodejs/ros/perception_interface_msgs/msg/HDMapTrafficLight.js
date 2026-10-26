// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3d = require('./Point3d.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');

//-----------------------------------------------------------

class HDMapTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.boundary = null;
      this.pattern = null;
      this.on_route = null;
    }
    else {
      if (initObj.hasOwnProperty('boundary')) {
        this.boundary = initObj.boundary
      }
      else {
        this.boundary = [];
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = new TrafficLightPatternEnum();
      }
      if (initObj.hasOwnProperty('on_route')) {
        this.on_route = initObj.on_route
      }
      else {
        this.on_route = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapTrafficLight
    // Serialize message field [boundary]
    // Serialize the length for message field [boundary]
    bufferOffset = _serializer.uint32(obj.boundary.length, buffer, bufferOffset);
    obj.boundary.forEach((val) => {
      bufferOffset = Point3d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pattern]
    bufferOffset = TrafficLightPatternEnum.serialize(obj.pattern, buffer, bufferOffset);
    // Serialize message field [on_route]
    bufferOffset = _serializer.bool(obj.on_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapTrafficLight
    let len;
    let data = new HDMapTrafficLight(null);
    // Deserialize message field [boundary]
    // Deserialize array length for message field [boundary]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boundary = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundary[i] = Point3d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pattern]
    data.pattern = TrafficLightPatternEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [on_route]
    data.on_route = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.boundary.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/HDMapTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92cc1ecc74c79b99531efbce87361743';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point3d[] boundary
    perception_interface_msgs/TrafficLightPatternEnum pattern
    bool on_route
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDMapTrafficLight(null);
    if (msg.boundary !== undefined) {
      resolved.boundary = new Array(msg.boundary.length);
      for (let i = 0; i < resolved.boundary.length; ++i) {
        resolved.boundary[i] = Point3d.Resolve(msg.boundary[i]);
      }
    }
    else {
      resolved.boundary = []
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = TrafficLightPatternEnum.Resolve(msg.pattern)
    }
    else {
      resolved.pattern = new TrafficLightPatternEnum()
    }

    if (msg.on_route !== undefined) {
      resolved.on_route = msg.on_route;
    }
    else {
      resolved.on_route = false
    }

    return resolved;
    }
};

module.exports = HDMapTrafficLight;
