// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RampManeuver = require('./RampManeuver.js');

//-----------------------------------------------------------

class ExtraInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.ramp_maneuver = null;
      this.scene_type = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('ramp_maneuver')) {
        this.ramp_maneuver = initObj.ramp_maneuver
      }
      else {
        this.ramp_maneuver = new RampManeuver();
      }
      if (initObj.hasOwnProperty('scene_type')) {
        this.scene_type = initObj.scene_type
      }
      else {
        this.scene_type = '';
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtraInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [ramp_maneuver]
    bufferOffset = RampManeuver.serialize(obj.ramp_maneuver, buffer, bufferOffset);
    // Serialize message field [scene_type]
    bufferOffset = _serializer.string(obj.scene_type, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtraInfo
    let len;
    let data = new ExtraInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ramp_maneuver]
    data.ramp_maneuver = RampManeuver.deserialize(buffer, bufferOffset);
    // Deserialize message field [scene_type]
    data.scene_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.scene_type);
    length += _getByteLength(object.reserved_info);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ExtraInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48e58682922bc2853877e0204ca96dfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RAMP_MANEUVER = 1
    uint8 SCENE_TYPE = 2
    uint8 RESERVED_INFO = 4
    uint8 available
    worldmodel_msgs/RampManeuver ramp_maneuver
    string scene_type
    string reserved_info
    
    ================================================================================
    MSG: worldmodel_msgs/RampManeuver
    float32 dis_to_ramp
    float32 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExtraInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.ramp_maneuver !== undefined) {
      resolved.ramp_maneuver = RampManeuver.Resolve(msg.ramp_maneuver)
    }
    else {
      resolved.ramp_maneuver = new RampManeuver()
    }

    if (msg.scene_type !== undefined) {
      resolved.scene_type = msg.scene_type;
    }
    else {
      resolved.scene_type = ''
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
ExtraInfo.Constants = {
  RAMP_MANEUVER: 1,
  SCENE_TYPE: 2,
  RESERVED_INFO: 4,
}

module.exports = ExtraInfo;
