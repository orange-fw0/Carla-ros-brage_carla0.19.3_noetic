// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObstacleKeyPointData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_x = null;
      this.point_y = null;
    }
    else {
      if (initObj.hasOwnProperty('point_x')) {
        this.point_x = initObj.point_x
      }
      else {
        this.point_x = 0.0;
      }
      if (initObj.hasOwnProperty('point_y')) {
        this.point_y = initObj.point_y
      }
      else {
        this.point_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleKeyPointData
    // Serialize message field [point_x]
    bufferOffset = _serializer.float32(obj.point_x, buffer, bufferOffset);
    // Serialize message field [point_y]
    bufferOffset = _serializer.float32(obj.point_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleKeyPointData
    let len;
    let data = new ObstacleKeyPointData(null);
    // Deserialize message field [point_x]
    data.point_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_y]
    data.point_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/ObstacleKeyPointData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ded096c89bb10760d1911fa12d549ebe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 point_x
    float32 point_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleKeyPointData(null);
    if (msg.point_x !== undefined) {
      resolved.point_x = msg.point_x;
    }
    else {
      resolved.point_x = 0.0
    }

    if (msg.point_y !== undefined) {
      resolved.point_y = msg.point_y;
    }
    else {
      resolved.point_y = 0.0
    }

    return resolved;
    }
};

module.exports = ObstacleKeyPointData;
