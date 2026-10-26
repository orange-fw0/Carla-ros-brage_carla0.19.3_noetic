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

class ReplanInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat_replan = null;
      this.lon_replan = null;
    }
    else {
      if (initObj.hasOwnProperty('lat_replan')) {
        this.lat_replan = initObj.lat_replan
      }
      else {
        this.lat_replan = false;
      }
      if (initObj.hasOwnProperty('lon_replan')) {
        this.lon_replan = initObj.lon_replan
      }
      else {
        this.lon_replan = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReplanInfo
    // Serialize message field [lat_replan]
    bufferOffset = _serializer.bool(obj.lat_replan, buffer, bufferOffset);
    // Serialize message field [lon_replan]
    bufferOffset = _serializer.bool(obj.lon_replan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReplanInfo
    let len;
    let data = new ReplanInfo(null);
    // Deserialize message field [lat_replan]
    data.lat_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lon_replan]
    data.lon_replan = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ReplanInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46928ab455f29add02698da45eda1bbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool lat_replan
    bool lon_replan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReplanInfo(null);
    if (msg.lat_replan !== undefined) {
      resolved.lat_replan = msg.lat_replan;
    }
    else {
      resolved.lat_replan = false
    }

    if (msg.lon_replan !== undefined) {
      resolved.lon_replan = msg.lon_replan;
    }
    else {
      resolved.lon_replan = false
    }

    return resolved;
    }
};

module.exports = ReplanInfo;
