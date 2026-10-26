// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneStrategyData = require('./LaneStrategyData.js');

//-----------------------------------------------------------

class LaneStrategy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lane_strategy_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lane_strategy_data')) {
        this.lane_strategy_data = initObj.lane_strategy_data
      }
      else {
        this.lane_strategy_data = new LaneStrategyData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneStrategy
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lane_strategy_data]
    bufferOffset = LaneStrategyData.serialize(obj.lane_strategy_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneStrategy
    let len;
    let data = new LaneStrategy(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_strategy_data]
    data.lane_strategy_data = LaneStrategyData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LaneStrategyData.getMessageSize(object.lane_strategy_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneStrategy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6b2b82a3f6242a39f4e3afb39f6a2c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_STRATEGY_DATA = 1
    uint8 available
    worldmodel_msgs/LaneStrategyData lane_strategy_data
    
    ================================================================================
    MSG: worldmodel_msgs/LaneStrategyData
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
    const resolved = new LaneStrategy(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lane_strategy_data !== undefined) {
      resolved.lane_strategy_data = LaneStrategyData.Resolve(msg.lane_strategy_data)
    }
    else {
      resolved.lane_strategy_data = new LaneStrategyData()
    }

    return resolved;
    }
};

// Constants for message
LaneStrategy.Constants = {
  LANE_STRATEGY_DATA: 1,
}

module.exports = LaneStrategy;
