// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneChangeState = require('./LaneChangeState.js');
let Interval = require('./Interval.js');

//-----------------------------------------------------------

class LaneStrategyData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strategy_start_with_current_lane = null;
      this.strategy_start_with_left_lane = null;
      this.strategy_start_with_right_lane = null;
      this.current_lane_change_available_interval = null;
      this.left_lane_change_available_interval = null;
      this.right_lane_change_available_interval = null;
    }
    else {
      if (initObj.hasOwnProperty('strategy_start_with_current_lane')) {
        this.strategy_start_with_current_lane = initObj.strategy_start_with_current_lane
      }
      else {
        this.strategy_start_with_current_lane = [];
      }
      if (initObj.hasOwnProperty('strategy_start_with_left_lane')) {
        this.strategy_start_with_left_lane = initObj.strategy_start_with_left_lane
      }
      else {
        this.strategy_start_with_left_lane = [];
      }
      if (initObj.hasOwnProperty('strategy_start_with_right_lane')) {
        this.strategy_start_with_right_lane = initObj.strategy_start_with_right_lane
      }
      else {
        this.strategy_start_with_right_lane = [];
      }
      if (initObj.hasOwnProperty('current_lane_change_available_interval')) {
        this.current_lane_change_available_interval = initObj.current_lane_change_available_interval
      }
      else {
        this.current_lane_change_available_interval = [];
      }
      if (initObj.hasOwnProperty('left_lane_change_available_interval')) {
        this.left_lane_change_available_interval = initObj.left_lane_change_available_interval
      }
      else {
        this.left_lane_change_available_interval = [];
      }
      if (initObj.hasOwnProperty('right_lane_change_available_interval')) {
        this.right_lane_change_available_interval = initObj.right_lane_change_available_interval
      }
      else {
        this.right_lane_change_available_interval = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneStrategyData
    // Serialize message field [strategy_start_with_current_lane]
    // Serialize the length for message field [strategy_start_with_current_lane]
    bufferOffset = _serializer.uint32(obj.strategy_start_with_current_lane.length, buffer, bufferOffset);
    obj.strategy_start_with_current_lane.forEach((val) => {
      bufferOffset = LaneChangeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [strategy_start_with_left_lane]
    // Serialize the length for message field [strategy_start_with_left_lane]
    bufferOffset = _serializer.uint32(obj.strategy_start_with_left_lane.length, buffer, bufferOffset);
    obj.strategy_start_with_left_lane.forEach((val) => {
      bufferOffset = LaneChangeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [strategy_start_with_right_lane]
    // Serialize the length for message field [strategy_start_with_right_lane]
    bufferOffset = _serializer.uint32(obj.strategy_start_with_right_lane.length, buffer, bufferOffset);
    obj.strategy_start_with_right_lane.forEach((val) => {
      bufferOffset = LaneChangeState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_lane_change_available_interval]
    // Serialize the length for message field [current_lane_change_available_interval]
    bufferOffset = _serializer.uint32(obj.current_lane_change_available_interval.length, buffer, bufferOffset);
    obj.current_lane_change_available_interval.forEach((val) => {
      bufferOffset = Interval.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_lane_change_available_interval]
    // Serialize the length for message field [left_lane_change_available_interval]
    bufferOffset = _serializer.uint32(obj.left_lane_change_available_interval.length, buffer, bufferOffset);
    obj.left_lane_change_available_interval.forEach((val) => {
      bufferOffset = Interval.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_lane_change_available_interval]
    // Serialize the length for message field [right_lane_change_available_interval]
    bufferOffset = _serializer.uint32(obj.right_lane_change_available_interval.length, buffer, bufferOffset);
    obj.right_lane_change_available_interval.forEach((val) => {
      bufferOffset = Interval.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneStrategyData
    let len;
    let data = new LaneStrategyData(null);
    // Deserialize message field [strategy_start_with_current_lane]
    // Deserialize array length for message field [strategy_start_with_current_lane]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.strategy_start_with_current_lane = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.strategy_start_with_current_lane[i] = LaneChangeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [strategy_start_with_left_lane]
    // Deserialize array length for message field [strategy_start_with_left_lane]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.strategy_start_with_left_lane = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.strategy_start_with_left_lane[i] = LaneChangeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [strategy_start_with_right_lane]
    // Deserialize array length for message field [strategy_start_with_right_lane]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.strategy_start_with_right_lane = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.strategy_start_with_right_lane[i] = LaneChangeState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_lane_change_available_interval]
    // Deserialize array length for message field [current_lane_change_available_interval]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_lane_change_available_interval = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_lane_change_available_interval[i] = Interval.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_lane_change_available_interval]
    // Deserialize array length for message field [left_lane_change_available_interval]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_lane_change_available_interval = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_lane_change_available_interval[i] = Interval.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_lane_change_available_interval]
    // Deserialize array length for message field [right_lane_change_available_interval]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_lane_change_available_interval = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_lane_change_available_interval[i] = Interval.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strategy_start_with_current_lane.length;
    length += object.strategy_start_with_left_lane.length;
    length += object.strategy_start_with_right_lane.length;
    length += 16 * object.current_lane_change_available_interval.length;
    length += 16 * object.left_lane_change_available_interval.length;
    length += 16 * object.right_lane_change_available_interval.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneStrategyData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c4049161b57995c7a9f1a3f35dc74a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane
    worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane
    worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane
    worldmodel_msgs/Interval[] current_lane_change_available_interval
    worldmodel_msgs/Interval[] left_lane_change_available_interval
    worldmodel_msgs/Interval[] right_lane_change_available_interval
    
    ================================================================================
    MSG: worldmodel_msgs/LaneChangeState
    uint8 FOLLOW = 0
    uint8 TURN_LEFT = 1
    uint8 TURN_RIGHT = 2
    uint8 value
    
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
    const resolved = new LaneStrategyData(null);
    if (msg.strategy_start_with_current_lane !== undefined) {
      resolved.strategy_start_with_current_lane = new Array(msg.strategy_start_with_current_lane.length);
      for (let i = 0; i < resolved.strategy_start_with_current_lane.length; ++i) {
        resolved.strategy_start_with_current_lane[i] = LaneChangeState.Resolve(msg.strategy_start_with_current_lane[i]);
      }
    }
    else {
      resolved.strategy_start_with_current_lane = []
    }

    if (msg.strategy_start_with_left_lane !== undefined) {
      resolved.strategy_start_with_left_lane = new Array(msg.strategy_start_with_left_lane.length);
      for (let i = 0; i < resolved.strategy_start_with_left_lane.length; ++i) {
        resolved.strategy_start_with_left_lane[i] = LaneChangeState.Resolve(msg.strategy_start_with_left_lane[i]);
      }
    }
    else {
      resolved.strategy_start_with_left_lane = []
    }

    if (msg.strategy_start_with_right_lane !== undefined) {
      resolved.strategy_start_with_right_lane = new Array(msg.strategy_start_with_right_lane.length);
      for (let i = 0; i < resolved.strategy_start_with_right_lane.length; ++i) {
        resolved.strategy_start_with_right_lane[i] = LaneChangeState.Resolve(msg.strategy_start_with_right_lane[i]);
      }
    }
    else {
      resolved.strategy_start_with_right_lane = []
    }

    if (msg.current_lane_change_available_interval !== undefined) {
      resolved.current_lane_change_available_interval = new Array(msg.current_lane_change_available_interval.length);
      for (let i = 0; i < resolved.current_lane_change_available_interval.length; ++i) {
        resolved.current_lane_change_available_interval[i] = Interval.Resolve(msg.current_lane_change_available_interval[i]);
      }
    }
    else {
      resolved.current_lane_change_available_interval = []
    }

    if (msg.left_lane_change_available_interval !== undefined) {
      resolved.left_lane_change_available_interval = new Array(msg.left_lane_change_available_interval.length);
      for (let i = 0; i < resolved.left_lane_change_available_interval.length; ++i) {
        resolved.left_lane_change_available_interval[i] = Interval.Resolve(msg.left_lane_change_available_interval[i]);
      }
    }
    else {
      resolved.left_lane_change_available_interval = []
    }

    if (msg.right_lane_change_available_interval !== undefined) {
      resolved.right_lane_change_available_interval = new Array(msg.right_lane_change_available_interval.length);
      for (let i = 0; i < resolved.right_lane_change_available_interval.length; ++i) {
        resolved.right_lane_change_available_interval[i] = Interval.Resolve(msg.right_lane_change_available_interval[i]);
      }
    }
    else {
      resolved.right_lane_change_available_interval = []
    }

    return resolved;
    }
};

module.exports = LaneStrategyData;
