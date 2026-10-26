// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MultiCircleFootprintModel = require('./MultiCircleFootprintModel.js');

//-----------------------------------------------------------

class APADebugInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mc_footprint_model = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('mc_footprint_model')) {
        this.mc_footprint_model = initObj.mc_footprint_model
      }
      else {
        this.mc_footprint_model = new MultiCircleFootprintModel();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type APADebugInfo
    // Serialize message field [mc_footprint_model]
    bufferOffset = MultiCircleFootprintModel.serialize(obj.mc_footprint_model, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type APADebugInfo
    let len;
    let data = new APADebugInfo(null);
    // Deserialize message field [mc_footprint_model]
    data.mc_footprint_model = MultiCircleFootprintModel.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MultiCircleFootprintModel.getMessageSize(object.mc_footprint_model);
    length += _getByteLength(object.reserved);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/APADebugInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '567c5f0ef920f678aa4bbbce985eff5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planning_msgs/MultiCircleFootprintModel mc_footprint_model
    string reserved
    
    ================================================================================
    MSG: planning_msgs/MultiCircleFootprintModel
    planning_msgs/Circle[] circles
    
    ================================================================================
    MSG: planning_msgs/Circle
    float64 x
    float64 y
    float64 z
    float64 r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new APADebugInfo(null);
    if (msg.mc_footprint_model !== undefined) {
      resolved.mc_footprint_model = MultiCircleFootprintModel.Resolve(msg.mc_footprint_model)
    }
    else {
      resolved.mc_footprint_model = new MultiCircleFootprintModel()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = APADebugInfo;
