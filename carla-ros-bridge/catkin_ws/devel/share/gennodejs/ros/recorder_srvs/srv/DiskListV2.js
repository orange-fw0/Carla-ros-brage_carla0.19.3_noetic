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

class DiskListV2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListV2Request
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListV2Request
    let len;
    let data = new DiskListV2Request(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListV2Request';
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
    const resolved = new DiskListV2Request(null);
    return resolved;
    }
};

class DiskListV2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sn = null;
      this.disk_type = null;
      this.status = null;
      this.space_size = null;
      this.space_used = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListV2Response
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListV2Response
    let len;
    let data = new DiskListV2Response(null);
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
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListV2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cea5615780f36a0fa62f6ee15f1aeb6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] sn
    string[] disk_type
    string[] status
    int64[] space_size # bytes
    int64[] space_used # bytes
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskListV2Response(null);
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

    return resolved;
    }
};

module.exports = {
  Request: DiskListV2Request,
  Response: DiskListV2Response,
  md5sum() { return 'cea5615780f36a0fa62f6ee15f1aeb6b'; },
  datatype() { return 'recorder_srvs/DiskListV2'; }
};
