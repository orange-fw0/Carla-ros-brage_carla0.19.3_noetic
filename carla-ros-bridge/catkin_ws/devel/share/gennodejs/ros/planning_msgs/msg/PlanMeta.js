// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlanMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.plan_timestamp_us = null;
      this.plan_strategy_name = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('plan_timestamp_us')) {
        this.plan_timestamp_us = initObj.plan_timestamp_us
      }
      else {
        this.plan_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('plan_strategy_name')) {
        this.plan_strategy_name = initObj.plan_strategy_name
      }
      else {
        this.plan_strategy_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanMeta
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [plan_timestamp_us]
    bufferOffset = _serializer.uint64(obj.plan_timestamp_us, buffer, bufferOffset);
    // Serialize message field [plan_strategy_name]
    bufferOffset = _serializer.string(obj.plan_strategy_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanMeta
    let len;
    let data = new PlanMeta(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [plan_timestamp_us]
    data.plan_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [plan_strategy_name]
    data.plan_strategy_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.plan_strategy_name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PlanMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a5c353efb2eb58dc573049b30eebe57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    uint64 plan_timestamp_us
    string plan_strategy_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanMeta(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.plan_timestamp_us !== undefined) {
      resolved.plan_timestamp_us = msg.plan_timestamp_us;
    }
    else {
      resolved.plan_timestamp_us = 0
    }

    if (msg.plan_strategy_name !== undefined) {
      resolved.plan_strategy_name = msg.plan_strategy_name;
    }
    else {
      resolved.plan_strategy_name = ''
    }

    return resolved;
    }
};

module.exports = PlanMeta;
