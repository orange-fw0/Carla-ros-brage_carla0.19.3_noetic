// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NaviTimeDistance = require('./NaviTimeDistance.js');

//-----------------------------------------------------------

class NaviSettings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.navi_max_speed = null;
      this.navi_time_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('navi_max_speed')) {
        this.navi_max_speed = initObj.navi_max_speed
      }
      else {
        this.navi_max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('navi_time_distance')) {
        this.navi_time_distance = initObj.navi_time_distance
      }
      else {
        this.navi_time_distance = new NaviTimeDistance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviSettings
    // Serialize message field [navi_max_speed]
    bufferOffset = _serializer.float32(obj.navi_max_speed, buffer, bufferOffset);
    // Serialize message field [navi_time_distance]
    bufferOffset = NaviTimeDistance.serialize(obj.navi_time_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviSettings
    let len;
    let data = new NaviSettings(null);
    // Deserialize message field [navi_max_speed]
    data.navi_max_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [navi_time_distance]
    data.navi_time_distance = NaviTimeDistance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/NaviSettings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7377832e5606e265ae1240dabf8c394';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 navi_max_speed
    system_manager_msgs/NaviTimeDistance navi_time_distance
    
    ================================================================================
    MSG: system_manager_msgs/NaviTimeDistance
    uint8 AGGRESIVE = 0
    uint8 MODERATE_AGGRESIVE = 1
    uint8 NORMAL = 2
    uint8 MODERATE_CONSERVATIVE = 3
    uint8 CONSERVATIVE = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviSettings(null);
    if (msg.navi_max_speed !== undefined) {
      resolved.navi_max_speed = msg.navi_max_speed;
    }
    else {
      resolved.navi_max_speed = 0.0
    }

    if (msg.navi_time_distance !== undefined) {
      resolved.navi_time_distance = NaviTimeDistance.Resolve(msg.navi_time_distance)
    }
    else {
      resolved.navi_time_distance = new NaviTimeDistance()
    }

    return resolved;
    }
};

module.exports = NaviSettings;
