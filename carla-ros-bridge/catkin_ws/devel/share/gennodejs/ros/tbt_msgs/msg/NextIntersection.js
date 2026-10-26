// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneActionEnum = require('./LaneActionEnum.js');
let HighLightLaneEnum = require('./HighLightLaneEnum.js');

//-----------------------------------------------------------

class NextIntersection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_of_lanes = null;
      this.lane_guidance_list = null;
      this.highlight_lane_list = null;
      this.origin_highlight_lane_list = null;
    }
    else {
      if (initObj.hasOwnProperty('number_of_lanes')) {
        this.number_of_lanes = initObj.number_of_lanes
      }
      else {
        this.number_of_lanes = 0;
      }
      if (initObj.hasOwnProperty('lane_guidance_list')) {
        this.lane_guidance_list = initObj.lane_guidance_list
      }
      else {
        this.lane_guidance_list = [];
      }
      if (initObj.hasOwnProperty('highlight_lane_list')) {
        this.highlight_lane_list = initObj.highlight_lane_list
      }
      else {
        this.highlight_lane_list = [];
      }
      if (initObj.hasOwnProperty('origin_highlight_lane_list')) {
        this.origin_highlight_lane_list = initObj.origin_highlight_lane_list
      }
      else {
        this.origin_highlight_lane_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NextIntersection
    // Serialize message field [number_of_lanes]
    bufferOffset = _serializer.uint8(obj.number_of_lanes, buffer, bufferOffset);
    // Serialize message field [lane_guidance_list]
    // Serialize the length for message field [lane_guidance_list]
    bufferOffset = _serializer.uint32(obj.lane_guidance_list.length, buffer, bufferOffset);
    obj.lane_guidance_list.forEach((val) => {
      bufferOffset = LaneActionEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [highlight_lane_list]
    // Serialize the length for message field [highlight_lane_list]
    bufferOffset = _serializer.uint32(obj.highlight_lane_list.length, buffer, bufferOffset);
    obj.highlight_lane_list.forEach((val) => {
      bufferOffset = HighLightLaneEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [origin_highlight_lane_list]
    // Serialize the length for message field [origin_highlight_lane_list]
    bufferOffset = _serializer.uint32(obj.origin_highlight_lane_list.length, buffer, bufferOffset);
    obj.origin_highlight_lane_list.forEach((val) => {
      bufferOffset = LaneActionEnum.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NextIntersection
    let len;
    let data = new NextIntersection(null);
    // Deserialize message field [number_of_lanes]
    data.number_of_lanes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_guidance_list]
    // Deserialize array length for message field [lane_guidance_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_guidance_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_guidance_list[i] = LaneActionEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [highlight_lane_list]
    // Deserialize array length for message field [highlight_lane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.highlight_lane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.highlight_lane_list[i] = HighLightLaneEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [origin_highlight_lane_list]
    // Deserialize array length for message field [origin_highlight_lane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.origin_highlight_lane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.origin_highlight_lane_list[i] = LaneActionEnum.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lane_guidance_list.length;
    length += object.highlight_lane_list.length;
    length += object.origin_highlight_lane_list.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/NextIntersection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c95d39f1ec7f9b601f421cba98365cc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 number_of_lanes
    tbt_msgs/LaneActionEnum[] lane_guidance_list
    tbt_msgs/HighLightLaneEnum[] highlight_lane_list
    tbt_msgs/LaneActionEnum[] origin_highlight_lane_list
    
    ================================================================================
    MSG: tbt_msgs/LaneActionEnum
    uint8 LaneActionAhead = 0
    uint8 LaneActionLeft = 1
    uint8 LaneActionAheadLeft = 2
    uint8 LaneActionRight = 3
    uint8 LaneActionAheadRight = 4
    uint8 LaneActionLUTurn = 5
    uint8 LaneActionLeftRigh = 6
    uint8 LaneActionAheadLeftRight = 7
    uint8 LaneActionRUTurn = 8
    uint8 LaneActionAheadLUTurn = 9
    uint8 LaneActionAheadRUTurn = 10
    uint8 LaneActionLeftLUTurn = 11
    uint8 LaneActionRightRUTurn = 12
    uint8 LaneActionLeftInAhead = 13
    uint8 LaneActionLeftLUTurnLEx = 14
    uint8 LaneActionReserved = 15
    uint8 LaneActionAheadLeftLUTurn = 16
    uint8 LaneActionRightLUTurn = 17
    uint8 LaneActionLeftRightLUTurn = 18
    uint8 LaneActionAheadRightLUTurn = 19
    uint8 LaneActionLeftRUTurn = 20
    uint8 LaneActionBus = 21
    uint8 LaneActionEmpty = 22
    uint8 LaneActionVariable = 23
    uint8 LaneActionNULL = 255
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/HighLightLaneEnum
    uint8 Default = 0
    uint8 HighLight = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NextIntersection(null);
    if (msg.number_of_lanes !== undefined) {
      resolved.number_of_lanes = msg.number_of_lanes;
    }
    else {
      resolved.number_of_lanes = 0
    }

    if (msg.lane_guidance_list !== undefined) {
      resolved.lane_guidance_list = new Array(msg.lane_guidance_list.length);
      for (let i = 0; i < resolved.lane_guidance_list.length; ++i) {
        resolved.lane_guidance_list[i] = LaneActionEnum.Resolve(msg.lane_guidance_list[i]);
      }
    }
    else {
      resolved.lane_guidance_list = []
    }

    if (msg.highlight_lane_list !== undefined) {
      resolved.highlight_lane_list = new Array(msg.highlight_lane_list.length);
      for (let i = 0; i < resolved.highlight_lane_list.length; ++i) {
        resolved.highlight_lane_list[i] = HighLightLaneEnum.Resolve(msg.highlight_lane_list[i]);
      }
    }
    else {
      resolved.highlight_lane_list = []
    }

    if (msg.origin_highlight_lane_list !== undefined) {
      resolved.origin_highlight_lane_list = new Array(msg.origin_highlight_lane_list.length);
      for (let i = 0; i < resolved.origin_highlight_lane_list.length; ++i) {
        resolved.origin_highlight_lane_list[i] = LaneActionEnum.Resolve(msg.origin_highlight_lane_list[i]);
      }
    }
    else {
      resolved.origin_highlight_lane_list = []
    }

    return resolved;
    }
};

module.exports = NextIntersection;
