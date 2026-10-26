// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NetCardStatus = require('./NetCardStatus.js');
let NetAliveStatus = require('./NetAliveStatus.js');

//-----------------------------------------------------------

class NetStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.net_card_status_list = null;
      this.net_alive_list = null;
      this.reserved_info = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('health_status')) {
        this.health_status = initObj.health_status
      }
      else {
        this.health_status = 0;
      }
      if (initObj.hasOwnProperty('net_card_status_list')) {
        this.net_card_status_list = initObj.net_card_status_list
      }
      else {
        this.net_card_status_list = [];
      }
      if (initObj.hasOwnProperty('net_alive_list')) {
        this.net_alive_list = initObj.net_alive_list
      }
      else {
        this.net_alive_list = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NetStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [net_card_status_list]
    // Serialize the length for message field [net_card_status_list]
    bufferOffset = _serializer.uint32(obj.net_card_status_list.length, buffer, bufferOffset);
    obj.net_card_status_list.forEach((val) => {
      bufferOffset = NetCardStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [net_alive_list]
    // Serialize the length for message field [net_alive_list]
    bufferOffset = _serializer.uint32(obj.net_alive_list.length, buffer, bufferOffset);
    obj.net_alive_list.forEach((val) => {
      bufferOffset = NetAliveStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetStatusData
    let len;
    let data = new NetStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [net_card_status_list]
    // Deserialize array length for message field [net_card_status_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.net_card_status_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.net_card_status_list[i] = NetCardStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [net_alive_list]
    // Deserialize array length for message field [net_alive_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.net_alive_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.net_alive_list[i] = NetAliveStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.net_card_status_list.forEach((val) => {
      length += NetCardStatus.getMessageSize(val);
    });
    object.net_alive_list.forEach((val) => {
      length += NetAliveStatus.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NetStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89621c9c675e97e99ee0864ec9c3bae0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/NetCardStatus[] net_card_status_list
    framework_status_msgs/NetAliveStatus[] net_alive_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/NetCardStatus
    string net_card_name
    float32 bytes_sent_rate
    float32 bytes_recv_rate
    float32 packets_sent_rate
    float32 packets_recv_rate
    float32 errin_rate
    float32 errout_rate
    float32 dropin_rate
    float32 dropout_rate
    bool net_card_isup
    uint8 duplex
    uint32 speed
    uint32 mtu
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/NetAliveStatus
    string name
    uint32 loss_count
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NetStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.net_card_status_list !== undefined) {
      resolved.net_card_status_list = new Array(msg.net_card_status_list.length);
      for (let i = 0; i < resolved.net_card_status_list.length; ++i) {
        resolved.net_card_status_list[i] = NetCardStatus.Resolve(msg.net_card_status_list[i]);
      }
    }
    else {
      resolved.net_card_status_list = []
    }

    if (msg.net_alive_list !== undefined) {
      resolved.net_alive_list = new Array(msg.net_alive_list.length);
      for (let i = 0; i < resolved.net_alive_list.length; ++i) {
        resolved.net_alive_list[i] = NetAliveStatus.Resolve(msg.net_alive_list[i]);
      }
    }
    else {
      resolved.net_alive_list = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
NetStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = NetStatusData;
