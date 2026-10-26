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

class SingleDiskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sn = null;
      this.disk_type = null;
      this.status = null;
      this.space_size = null;
      this.space_used = null;
      this.driver = null;
      this.speed = null;
      this.availability = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = '';
      }
      if (initObj.hasOwnProperty('disk_type')) {
        this.disk_type = initObj.disk_type
      }
      else {
        this.disk_type = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('space_size')) {
        this.space_size = initObj.space_size
      }
      else {
        this.space_size = 0;
      }
      if (initObj.hasOwnProperty('space_used')) {
        this.space_used = initObj.space_used
      }
      else {
        this.space_used = 0;
      }
      if (initObj.hasOwnProperty('driver')) {
        this.driver = initObj.driver
      }
      else {
        this.driver = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = '';
      }
      if (initObj.hasOwnProperty('availability')) {
        this.availability = initObj.availability
      }
      else {
        this.availability = 0;
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
    // Serializes a message object of type SingleDiskStatus
    // Serialize message field [sn]
    bufferOffset = _serializer.string(obj.sn, buffer, bufferOffset);
    // Serialize message field [disk_type]
    bufferOffset = _serializer.string(obj.disk_type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [space_size]
    bufferOffset = _serializer.uint64(obj.space_size, buffer, bufferOffset);
    // Serialize message field [space_used]
    bufferOffset = _serializer.uint64(obj.space_used, buffer, bufferOffset);
    // Serialize message field [driver]
    bufferOffset = _serializer.string(obj.driver, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.string(obj.speed, buffer, bufferOffset);
    // Serialize message field [availability]
    bufferOffset = _serializer.int64(obj.availability, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleDiskStatus
    let len;
    let data = new SingleDiskStatus(null);
    // Deserialize message field [sn]
    data.sn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [disk_type]
    data.disk_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [space_size]
    data.space_size = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [space_used]
    data.space_used = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver]
    data.driver = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [availability]
    data.availability = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sn);
    length += _getByteLength(object.disk_type);
    length += _getByteLength(object.status);
    length += _getByteLength(object.driver);
    length += _getByteLength(object.speed);
    length += _getByteLength(object.reserved_info);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/SingleDiskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f18eeaddb65692f0bd0c34f396a97cbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sn
    string disk_type
    string status
    uint64 space_size
    uint64 space_used
    string driver
    string speed
    int64 availability
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleDiskStatus(null);
    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = ''
    }

    if (msg.disk_type !== undefined) {
      resolved.disk_type = msg.disk_type;
    }
    else {
      resolved.disk_type = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.space_size !== undefined) {
      resolved.space_size = msg.space_size;
    }
    else {
      resolved.space_size = 0
    }

    if (msg.space_used !== undefined) {
      resolved.space_used = msg.space_used;
    }
    else {
      resolved.space_used = 0
    }

    if (msg.driver !== undefined) {
      resolved.driver = msg.driver;
    }
    else {
      resolved.driver = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = ''
    }

    if (msg.availability !== undefined) {
      resolved.availability = msg.availability;
    }
    else {
      resolved.availability = 0
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

module.exports = SingleDiskStatus;
