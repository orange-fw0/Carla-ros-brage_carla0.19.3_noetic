// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NetAliveStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.loss_count = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('loss_count')) {
        this.loss_count = initObj.loss_count
      }
      else {
        this.loss_count = 0;
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
    // Serializes a message object of type NetAliveStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [loss_count]
    bufferOffset = _serializer.uint32(obj.loss_count, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetAliveStatus
    let len;
    let data = new NetAliveStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [loss_count]
    data.loss_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.reserved_info);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NetAliveStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2420a67afcc451beca07820f451eb396';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NetAliveStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.loss_count !== undefined) {
      resolved.loss_count = msg.loss_count;
    }
    else {
      resolved.loss_count = 0
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

module.exports = NetAliveStatus;
