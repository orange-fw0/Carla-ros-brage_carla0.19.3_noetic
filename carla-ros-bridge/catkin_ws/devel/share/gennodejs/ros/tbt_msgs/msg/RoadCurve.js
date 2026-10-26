// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoadCurve {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curvature_list = null;
      this.latitude_list = null;
      this.longitude_list = null;
    }
    else {
      if (initObj.hasOwnProperty('curvature_list')) {
        this.curvature_list = initObj.curvature_list
      }
      else {
        this.curvature_list = [];
      }
      if (initObj.hasOwnProperty('latitude_list')) {
        this.latitude_list = initObj.latitude_list
      }
      else {
        this.latitude_list = [];
      }
      if (initObj.hasOwnProperty('longitude_list')) {
        this.longitude_list = initObj.longitude_list
      }
      else {
        this.longitude_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadCurve
    // Serialize message field [curvature_list]
    bufferOffset = _arraySerializer.uint16(obj.curvature_list, buffer, bufferOffset, null);
    // Serialize message field [latitude_list]
    bufferOffset = _arraySerializer.float64(obj.latitude_list, buffer, bufferOffset, null);
    // Serialize message field [longitude_list]
    bufferOffset = _arraySerializer.float64(obj.longitude_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadCurve
    let len;
    let data = new RoadCurve(null);
    // Deserialize message field [curvature_list]
    data.curvature_list = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [latitude_list]
    data.latitude_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [longitude_list]
    data.longitude_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.curvature_list.length;
    length += 8 * object.latitude_list.length;
    length += 8 * object.longitude_list.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/RoadCurve';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a16b623a23f34ff3747d0613d402104';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[] curvature_list
    float64[] latitude_list
    float64[] longitude_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadCurve(null);
    if (msg.curvature_list !== undefined) {
      resolved.curvature_list = msg.curvature_list;
    }
    else {
      resolved.curvature_list = []
    }

    if (msg.latitude_list !== undefined) {
      resolved.latitude_list = msg.latitude_list;
    }
    else {
      resolved.latitude_list = []
    }

    if (msg.longitude_list !== undefined) {
      resolved.longitude_list = msg.longitude_list;
    }
    else {
      resolved.longitude_list = []
    }

    return resolved;
    }
};

module.exports = RoadCurve;
