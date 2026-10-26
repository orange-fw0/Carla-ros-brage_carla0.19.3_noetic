// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicUpaData = require('./UltrasonicUpaData.js');

//-----------------------------------------------------------

class UltrasonicUpaDistance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonar = null;
    }
    else {
      if (initObj.hasOwnProperty('sonar')) {
        this.sonar = initObj.sonar
      }
      else {
        this.sonar = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicUpaDistance
    // Serialize message field [sonar]
    // Serialize the length for message field [sonar]
    bufferOffset = _serializer.uint32(obj.sonar.length, buffer, bufferOffset);
    obj.sonar.forEach((val) => {
      bufferOffset = UltrasonicUpaData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicUpaDistance
    let len;
    let data = new UltrasonicUpaDistance(null);
    // Deserialize message field [sonar]
    // Deserialize array length for message field [sonar]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sonar = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sonar[i] = UltrasonicUpaData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sonar.forEach((val) => {
      length += UltrasonicUpaData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicUpaDistance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a917f80a8e68fd3fd205ee3a5f7bad35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FRONT_LEFT_SIDE = 0
    uint8 FRONT_LEFT_CORNER = 1
    uint8 FRONT_LEFT_CENTER = 2
    uint8 FRONT_RIGHT_CENTER = 3
    uint8 FRONT_RIGHT_CORNER = 4
    uint8 FRONT_RIGHT_SIDE = 5
    uint8 REAR_RIGHT_SIDE = 6
    uint8 REAR_RIGHT_CORNER = 7
    uint8 REAR_RIGHT_CENTER = 8
    uint8 REAR_LEFT_CENTER = 9
    uint8 REAR_LEFT_CORNER = 10
    uint8 REAR_LEFT_SIDE = 11
    sensor_interface_msgs/UltrasonicUpaData[] sonar
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicUpaData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 upadistance
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicUpaDistance(null);
    if (msg.sonar !== undefined) {
      resolved.sonar = new Array(msg.sonar.length);
      for (let i = 0; i < resolved.sonar.length; ++i) {
        resolved.sonar[i] = UltrasonicUpaData.Resolve(msg.sonar[i]);
      }
    }
    else {
      resolved.sonar = []
    }

    return resolved;
    }
};

// Constants for message
UltrasonicUpaDistance.Constants = {
  FRONT_LEFT_SIDE: 0,
  FRONT_LEFT_CORNER: 1,
  FRONT_LEFT_CENTER: 2,
  FRONT_RIGHT_CENTER: 3,
  FRONT_RIGHT_CORNER: 4,
  FRONT_RIGHT_SIDE: 5,
  REAR_RIGHT_SIDE: 6,
  REAR_RIGHT_CORNER: 7,
  REAR_RIGHT_CENTER: 8,
  REAR_LEFT_CENTER: 9,
  REAR_LEFT_CORNER: 10,
  REAR_LEFT_SIDE: 11,
}

module.exports = UltrasonicUpaDistance;
