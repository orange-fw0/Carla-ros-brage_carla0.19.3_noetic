// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HDMapIntersection = require('./HDMapIntersection.js');

//-----------------------------------------------------------

class HDMapTafficLightInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
      this.in_intersection = null;
      this.hdmap_intersecions = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('in_intersection')) {
        this.in_intersection = initObj.in_intersection
      }
      else {
        this.in_intersection = false;
      }
      if (initObj.hasOwnProperty('hdmap_intersecions')) {
        this.hdmap_intersecions = initObj.hdmap_intersecions
      }
      else {
        this.hdmap_intersecions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapTafficLightInformation
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [in_intersection]
    bufferOffset = _serializer.bool(obj.in_intersection, buffer, bufferOffset);
    // Serialize message field [hdmap_intersecions]
    // Serialize the length for message field [hdmap_intersecions]
    bufferOffset = _serializer.uint32(obj.hdmap_intersecions.length, buffer, bufferOffset);
    obj.hdmap_intersecions.forEach((val) => {
      bufferOffset = HDMapIntersection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapTafficLightInformation
    let len;
    let data = new HDMapTafficLightInformation(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_intersection]
    data.in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hdmap_intersecions]
    // Deserialize array length for message field [hdmap_intersecions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hdmap_intersecions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hdmap_intersecions[i] = HDMapIntersection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.hdmap_intersecions.forEach((val) => {
      length += HDMapIntersection.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/HDMapTafficLightInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '341f1dad7a2d7bb84b1c89cd015f6f35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid
    bool in_intersection
    perception_interface_msgs/HDMapIntersection[] hdmap_intersecions
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapIntersection
    perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
    perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapIntersectionStopLine
    float64 distance_to_stop_line
    float64 distance_buffer
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapTrafficLightGroup
    uint64 track_id
    perception_interface_msgs/HDMapTrafficLight[] traffic_lights
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapTrafficLight
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
    const resolved = new HDMapTafficLightInformation(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.in_intersection !== undefined) {
      resolved.in_intersection = msg.in_intersection;
    }
    else {
      resolved.in_intersection = false
    }

    if (msg.hdmap_intersecions !== undefined) {
      resolved.hdmap_intersecions = new Array(msg.hdmap_intersecions.length);
      for (let i = 0; i < resolved.hdmap_intersecions.length; ++i) {
        resolved.hdmap_intersecions[i] = HDMapIntersection.Resolve(msg.hdmap_intersecions[i]);
      }
    }
    else {
      resolved.hdmap_intersecions = []
    }

    return resolved;
    }
};

module.exports = HDMapTafficLightInformation;
