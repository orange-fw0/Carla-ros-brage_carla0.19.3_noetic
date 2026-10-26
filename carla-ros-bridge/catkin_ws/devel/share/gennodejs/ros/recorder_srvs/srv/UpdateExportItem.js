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

class UpdateExportItemRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
      this.stamp = null;
      this.export_type = null;
      this.collect_type = null;
      this.name = null;
      this.tags = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = false;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('export_type')) {
        this.export_type = initObj.export_type
      }
      else {
        this.export_type = '';
      }
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateExportItemRequest
    // Serialize message field [set]
    bufferOffset = _serializer.bool(obj.set, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [export_type]
    bufferOffset = _serializer.string(obj.export_type, buffer, bufferOffset);
    // Serialize message field [collect_type]
    bufferOffset = _serializer.string(obj.collect_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateExportItemRequest
    let len;
    let data = new UpdateExportItemRequest(null);
    // Deserialize message field [set]
    data.set = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [export_type]
    data.export_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collect_type]
    data.collect_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.export_type);
    length += _getByteLength(object.collect_type);
    length += _getByteLength(object.name);
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/UpdateExportItemRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '369987d7dd96f59dd1fc5be5ff35558a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set
    time stamp
    string export_type
    string collect_type
    string name
    string[] tags
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateExportItemRequest(null);
    if (msg.set !== undefined) {
      resolved.set = msg.set;
    }
    else {
      resolved.set = false
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.export_type !== undefined) {
      resolved.export_type = msg.export_type;
    }
    else {
      resolved.export_type = ''
    }

    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    return resolved;
    }
};

class UpdateExportItemResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.tags = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateExportItemResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateExportItemResponse
    let len;
    let data = new UpdateExportItemResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/UpdateExportItemResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ace6e1bf4de275ffe72267ea2258b1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    string[] tags
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateExportItemResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateExportItemRequest,
  Response: UpdateExportItemResponse,
  md5sum() { return 'c6b66379aea7a1b0187c36fcaf605e44'; },
  datatype() { return 'recorder_srvs/UpdateExportItem'; }
};
