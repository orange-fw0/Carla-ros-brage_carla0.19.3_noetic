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

class DiskListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListRequest
    let len;
    let data = new DiskListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListRequest';
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
    const resolved = new DiskListRequest(null);
    return resolved;
    }
};

class DiskListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sn = null;
      this.disk_type = null;
      this.status = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskListResponse
    // Serialize message field [sn]
    bufferOffset = _arraySerializer.string(obj.sn, buffer, bufferOffset, null);
    // Serialize message field [disk_type]
    bufferOffset = _arraySerializer.string(obj.disk_type, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.string(obj.status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskListResponse
    let len;
    let data = new DiskListResponse(null);
    // Deserialize message field [sn]
    data.sn = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [disk_type]
    data.disk_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.string(buffer, bufferOffset, null)
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
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7561e9c15ed1890f077e05240578306';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] sn
    string[] disk_type
    string[] status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskListResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: DiskListRequest,
  Response: DiskListResponse,
  md5sum() { return 'f7561e9c15ed1890f077e05240578306'; },
  datatype() { return 'recorder_srvs/DiskList'; }
};
