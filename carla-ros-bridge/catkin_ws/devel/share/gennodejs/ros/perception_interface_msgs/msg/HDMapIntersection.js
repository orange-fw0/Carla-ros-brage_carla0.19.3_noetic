// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HDMapIntersectionStopLine = require('./HDMapIntersectionStopLine.js');
let HDMapTrafficLightGroup = require('./HDMapTrafficLightGroup.js');

//-----------------------------------------------------------

class HDMapIntersection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_to_stop_line = null;
      this.traffic_light_groups = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_to_stop_line')) {
        this.distance_to_stop_line = initObj.distance_to_stop_line
      }
      else {
        this.distance_to_stop_line = new HDMapIntersectionStopLine();
      }
      if (initObj.hasOwnProperty('traffic_light_groups')) {
        this.traffic_light_groups = initObj.traffic_light_groups
      }
      else {
        this.traffic_light_groups = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapIntersection
    // Serialize message field [distance_to_stop_line]
    bufferOffset = HDMapIntersectionStopLine.serialize(obj.distance_to_stop_line, buffer, bufferOffset);
    // Serialize message field [traffic_light_groups]
    // Serialize the length for message field [traffic_light_groups]
    bufferOffset = _serializer.uint32(obj.traffic_light_groups.length, buffer, bufferOffset);
    obj.traffic_light_groups.forEach((val) => {
      bufferOffset = HDMapTrafficLightGroup.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapIntersection
    let len;
    let data = new HDMapIntersection(null);
    // Deserialize message field [distance_to_stop_line]
    data.distance_to_stop_line = HDMapIntersectionStopLine.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light_groups]
    // Deserialize array length for message field [traffic_light_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_groups[i] = HDMapTrafficLightGroup.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.traffic_light_groups.forEach((val) => {
      length += HDMapTrafficLightGroup.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/HDMapIntersection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80cd972c8e61675f20e8e962101def1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HDMapIntersection(null);
    if (msg.distance_to_stop_line !== undefined) {
      resolved.distance_to_stop_line = HDMapIntersectionStopLine.Resolve(msg.distance_to_stop_line)
    }
    else {
      resolved.distance_to_stop_line = new HDMapIntersectionStopLine()
    }

    if (msg.traffic_light_groups !== undefined) {
      resolved.traffic_light_groups = new Array(msg.traffic_light_groups.length);
      for (let i = 0; i < resolved.traffic_light_groups.length; ++i) {
        resolved.traffic_light_groups[i] = HDMapTrafficLightGroup.Resolve(msg.traffic_light_groups[i]);
      }
    }
    else {
      resolved.traffic_light_groups = []
    }

    return resolved;
    }
};

module.exports = HDMapIntersection;
