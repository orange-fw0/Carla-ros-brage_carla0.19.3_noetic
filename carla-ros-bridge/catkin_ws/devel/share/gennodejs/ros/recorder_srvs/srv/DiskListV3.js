// Auto-generated. Do not edit!

// (in-package recorder_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DiskListV3Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListV3Request
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListV3Request
    let len;
    let data = new DiskListV3Request(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListV3Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskListV3Request(null);
    return resolved;
    }
};

class DiskListV3Response {
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
    }
    else {
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = [];
      }
      if (initObj.hasOwnProperty('disk_type')) {
        this.disk_type = initObj.disk_type
      }
      else {
        this.disk_type = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('space_size')) {
        this.space_size = initObj.space_size
      }
      else {
        this.space_size = [];
      }
      if (initObj.hasOwnProperty('space_used')) {
        this.space_used = initObj.space_used
      }
      else {
        this.space_used = [];
      }
      if (initObj.hasOwnProperty('driver')) {
        this.driver = initObj.driver
      }
      else {
        this.driver = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = [];
      }
      if (initObj.hasOwnProperty('availability')) {
        this.availability = initObj.availability
      }
      else {
        this.availability = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListV3Response
    // Serialize message field [sn]
    bufferOffset = _arraySerializer.string(obj.sn, buffer, bufferOffset, null);
    // Serialize message field [disk_type]
    bufferOffset = _arraySerializer.string(obj.disk_type, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.string(obj.status, buffer, bufferOffset, null);
    // Serialize message field [space_size]
    bufferOffset = _arraySerializer.int64(obj.space_size, buffer, bufferOffset, null);
    // Serialize message field [space_used]
    bufferOffset = _arraySerializer.int64(obj.space_used, buffer, bufferOffset, null);
    // Serialize message field [driver]
    bufferOffset = _arraySerializer.string(obj.driver, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.string(obj.speed, buffer, bufferOffset, null);
    // Serialize message field [availability]
    bufferOffset = _arraySerializer.int64(obj.availability, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListV3Response
    let len;
    let data = new DiskListV3Response(null);
    // Deserialize message field [sn]
    data.sn = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [disk_type]
    data.disk_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [space_size]
    data.space_size = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [space_used]
    data.space_used = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [driver]
    data.driver = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [availability]
    data.availability = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sn.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.disk_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.status.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.space_size.length;
    length += 8 * object.space_used.length;
    object.driver.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.speed.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.availability.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListV3Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ed0a43cc763b6b3b747fffd64ea2b5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] sn
    string[] disk_type
    string[] status
    int64[] space_size # bytes
    int64[] space_used # bytes
    string[] driver
    string[] speed
    int64[] availability # percentage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskListV3Response(null);
    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = []
    }

    if (msg.disk_type !== undefined) {
      resolved.disk_type = msg.disk_type;
    }
    else {
      resolved.disk_type = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    if (msg.space_size !== undefined) {
      resolved.space_size = msg.space_size;
    }
    else {
      resolved.space_size = []
    }

    if (msg.space_used !== undefined) {
      resolved.space_used = msg.space_used;
    }
    else {
      resolved.space_used = []
    }

    if (msg.driver !== undefined) {
      resolved.driver = msg.driver;
    }
    else {
      resolved.driver = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = []
    }

    if (msg.availability !== undefined) {
      resolved.availability = msg.availability;
    }
    else {
      resolved.availability = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DiskListV3Request,
  Response: DiskListV3Response,
  md5sum() { return '1ed0a43cc763b6b3b747fffd64ea2b5d'; },
  datatype() { return 'recorder_srvs/DiskListV3'; }
};
