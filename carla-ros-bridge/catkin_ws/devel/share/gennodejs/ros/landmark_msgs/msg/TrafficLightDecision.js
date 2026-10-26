// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');
let TrafficLightStatusEnum = require('./TrafficLightStatusEnum.js');
let TrafficLightPositionFeature = require('./TrafficLightPositionFeature.js');
let TrackId = require('./TrackId.js');

//-----------------------------------------------------------

class TrafficLightDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern = null;
      this.status = null;
      this.duration = null;
      this.remaining = null;
      this.count_number = null;
      this.score = null;
      this.reserved_info = null;
      this.pos_feature = null;
      this.physical_node_list = null;
      this.available = null;
    }
    else {
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = new TrafficLightPatternEnum();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new TrafficLightStatusEnum();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('remaining')) {
        this.remaining = initObj.remaining
      }
      else {
        this.remaining = 0.0;
      }
      if (initObj.hasOwnProperty('count_number')) {
        this.count_number = initObj.count_number
      }
      else {
        this.count_number = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('pos_feature')) {
        this.pos_feature = initObj.pos_feature
      }
      else {
        this.pos_feature = new TrafficLightPositionFeature();
      }
      if (initObj.hasOwnProperty('physical_node_list')) {
        this.physical_node_list = initObj.physical_node_list
      }
      else {
        this.physical_node_list = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightDecision
    // Serialize message field [pattern]
    bufferOffset = TrafficLightPatternEnum.serialize(obj.pattern, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = TrafficLightStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [remaining]
    bufferOffset = _serializer.float32(obj.remaining, buffer, bufferOffset);
    // Serialize message field [count_number]
    bufferOffset = _serializer.uint8(obj.count_number, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [pos_feature]
    bufferOffset = TrafficLightPositionFeature.serialize(obj.pos_feature, buffer, bufferOffset);
    // Serialize message field [physical_node_list]
    // Serialize the length for message field [physical_node_list]
    bufferOffset = _serializer.uint32(obj.physical_node_list.length, buffer, bufferOffset);
    obj.physical_node_list.forEach((val) => {
      bufferOffset = TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightDecision
    let len;
    let data = new TrafficLightDecision(null);
    // Deserialize message field [pattern]
    data.pattern = TrafficLightPatternEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = TrafficLightStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [remaining]
    data.remaining = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [count_number]
    data.count_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos_feature]
    data.pos_feature = TrafficLightPositionFeature.deserialize(buffer, bufferOffset);
    // Deserialize message field [physical_node_list]
    // Deserialize array length for message field [physical_node_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.physical_node_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.physical_node_list[i] = TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    length += 18 * object.physical_node_list.length;
    return length + 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficLightDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c701e5aee496088a1703b308041a79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 PATTERN_VALID = 1
    uint32 STATUS_VALID = 2
    uint32 DURATION_VALID = 4
    uint32 REMAINING_VALID = 8
    uint32 COUNT_NUMBER_VALID = 16
    uint32 SCORE_VALID = 32
    uint32 RESERVED_INFO_VALID = 64
    uint32 POS_FEATURE_VALID = 128
    uint32 PHYSICAL_NODE_LIST_VALID = 256
    landmark_msgs/TrafficLightPatternEnum pattern
    landmark_msgs/TrafficLightStatusEnum status
    float32 duration
    float32 remaining
    uint8 count_number
    float32 score
    string reserved_info
    landmark_msgs/TrafficLightPositionFeature pos_feature
    landmark_msgs/TrackId[] physical_node_list
    uint32 available
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPatternEnum
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
    uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
    uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
    uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
    uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 TRAFFIC_LIGHT_STATUS_ON = 13
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPositionFeature
    perception_interface_msgs/Point3f position
    float32 yaw
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightDecision(null);
    if (msg.pattern !== undefined) {
      resolved.pattern = TrafficLightPatternEnum.Resolve(msg.pattern)
    }
    else {
      resolved.pattern = new TrafficLightPatternEnum()
    }

    if (msg.status !== undefined) {
      resolved.status = TrafficLightStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new TrafficLightStatusEnum()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.remaining !== undefined) {
      resolved.remaining = msg.remaining;
    }
    else {
      resolved.remaining = 0.0
    }

    if (msg.count_number !== undefined) {
      resolved.count_number = msg.count_number;
    }
    else {
      resolved.count_number = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.pos_feature !== undefined) {
      resolved.pos_feature = TrafficLightPositionFeature.Resolve(msg.pos_feature)
    }
    else {
      resolved.pos_feature = new TrafficLightPositionFeature()
    }

    if (msg.physical_node_list !== undefined) {
      resolved.physical_node_list = new Array(msg.physical_node_list.length);
      for (let i = 0; i < resolved.physical_node_list.length; ++i) {
        resolved.physical_node_list[i] = TrackId.Resolve(msg.physical_node_list[i]);
      }
    }
    else {
      resolved.physical_node_list = []
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    return resolved;
    }
};

// Constants for message
TrafficLightDecision.Constants = {
  PATTERN_VALID: 1,
  STATUS_VALID: 2,
  DURATION_VALID: 4,
  REMAINING_VALID: 8,
  COUNT_NUMBER_VALID: 16,
  SCORE_VALID: 32,
  RESERVED_INFO_VALID: 64,
  POS_FEATURE_VALID: 128,
  PHYSICAL_NODE_LIST_VALID: 256,
}

module.exports = TrafficLightDecision;
