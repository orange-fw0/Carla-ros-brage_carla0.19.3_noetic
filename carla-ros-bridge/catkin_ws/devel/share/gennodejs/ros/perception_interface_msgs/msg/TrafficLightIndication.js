// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3f = require('./Point3f.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');

//-----------------------------------------------------------

class TrafficLightIndication {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bounding_box_3d = null;
      this.pattern = null;
    }
    else {
      if (initObj.hasOwnProperty('bounding_box_3d')) {
        this.bounding_box_3d = initObj.bounding_box_3d
      }
      else {
        this.bounding_box_3d = [];
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = new TrafficLightPatternEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightIndication
    // Serialize message field [bounding_box_3d]
    // Serialize the length for message field [bounding_box_3d]
    bufferOffset = _serializer.uint32(obj.bounding_box_3d.length, buffer, bufferOffset);
    obj.bounding_box_3d.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pattern]
    bufferOffset = TrafficLightPatternEnum.serialize(obj.pattern, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightIndication
    let len;
    let data = new TrafficLightIndication(null);
    // Deserialize message field [bounding_box_3d]
    // Deserialize array length for message field [bounding_box_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bounding_box_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bounding_box_3d[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pattern]
    data.pattern = TrafficLightPatternEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.bounding_box_3d.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightIndication';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0beed876db032f4b25f262014ae4840f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point3f[] bounding_box_3d
    perception_interface_msgs/TrafficLightPatternEnum pattern
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
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
    const resolved = new TrafficLightIndication(null);
    if (msg.bounding_box_3d !== undefined) {
      resolved.bounding_box_3d = new Array(msg.bounding_box_3d.length);
      for (let i = 0; i < resolved.bounding_box_3d.length; ++i) {
        resolved.bounding_box_3d[i] = Point3f.Resolve(msg.bounding_box_3d[i]);
      }
    }
    else {
      resolved.bounding_box_3d = []
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = TrafficLightPatternEnum.Resolve(msg.pattern)
    }
    else {
      resolved.pattern = new TrafficLightPatternEnum()
    }

    return resolved;
    }
};

module.exports = TrafficLightIndication;
