// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NaviOnrouteDisInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.dist_to_onroute = null;
      this.on_route_dis_clses = null;
      this.cls_num = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('dist_to_onroute')) {
        this.dist_to_onroute = initObj.dist_to_onroute
      }
      else {
        this.dist_to_onroute = 0.0;
      }
      if (initObj.hasOwnProperty('on_route_dis_clses')) {
        this.on_route_dis_clses = initObj.on_route_dis_clses
      }
      else {
        this.on_route_dis_clses = [];
      }
      if (initObj.hasOwnProperty('cls_num')) {
        this.cls_num = initObj.cls_num
      }
      else {
        this.cls_num = 0;
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
    // Serializes a message object of type NaviOnrouteDisInfo
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [dist_to_onroute]
    bufferOffset = _serializer.float32(obj.dist_to_onroute, buffer, bufferOffset);
    // Serialize message field [on_route_dis_clses]
    bufferOffset = _arraySerializer.int16(obj.on_route_dis_clses, buffer, bufferOffset, null);
    // Serialize message field [cls_num]
    bufferOffset = _serializer.int16(obj.cls_num, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviOnrouteDisInfo
    let len;
    let data = new NaviOnrouteDisInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dist_to_onroute]
    data.dist_to_onroute = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [on_route_dis_clses]
    data.on_route_dis_clses = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [cls_num]
    data.cls_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.on_route_dis_clses.length;
    length += _getByteLength(object.reserved_info);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/NaviOnrouteDisInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f4f8afc5e0f728eb89876e0d282d0be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool available
    float32 dist_to_onroute
    int16[] on_route_dis_clses
    int16 cls_num
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviOnrouteDisInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.dist_to_onroute !== undefined) {
      resolved.dist_to_onroute = msg.dist_to_onroute;
    }
    else {
      resolved.dist_to_onroute = 0.0
    }

    if (msg.on_route_dis_clses !== undefined) {
      resolved.on_route_dis_clses = msg.on_route_dis_clses;
    }
    else {
      resolved.on_route_dis_clses = []
    }

    if (msg.cls_num !== undefined) {
      resolved.cls_num = msg.cls_num;
    }
    else {
      resolved.cls_num = 0
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

module.exports = NaviOnrouteDisInfo;
