// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConstructionSiteStatusEnum = require('./ConstructionSiteStatusEnum.js');

//-----------------------------------------------------------

class ConstructionSite {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.latitude_list = null;
      this.longitude_list = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new ConstructionSiteStatusEnum();
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
    // Serializes a message object of type ConstructionSite
    // Serialize message field [status]
    bufferOffset = ConstructionSiteStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [latitude_list]
    bufferOffset = _arraySerializer.float64(obj.latitude_list, buffer, bufferOffset, null);
    // Serialize message field [longitude_list]
    bufferOffset = _arraySerializer.float64(obj.longitude_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstructionSite
    let len;
    let data = new ConstructionSite(null);
    // Deserialize message field [status]
    data.status = ConstructionSiteStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude_list]
    data.latitude_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [longitude_list]
    data.longitude_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.latitude_list.length;
    length += 8 * object.longitude_list.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/ConstructionSite';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88bebe820d888053dd20fec660df08f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tbt_msgs/ConstructionSiteStatusEnum status
    float64[] latitude_list
    float64[] longitude_list
    
    ================================================================================
    MSG: tbt_msgs/ConstructionSiteStatusEnum
    uint8 Unkwon = 0
    uint8 No = 1
    uint8 Yes = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConstructionSite(null);
    if (msg.status !== undefined) {
      resolved.status = ConstructionSiteStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new ConstructionSiteStatusEnum()
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

module.exports = ConstructionSite;
