// Auto-generated. Do not edit!

// (in-package momenta_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TopicIsCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.is_check = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('is_check')) {
        this.is_check = initObj.is_check
      }
      else {
        this.is_check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicIsCheckRequest
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [is_check]
    bufferOffset = _serializer.bool(obj.is_check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicIsCheckRequest
    let len;
    let data = new TopicIsCheckRequest(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_check]
    data.is_check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/TopicIsCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acf3c0707464a00ab82886c44e8f2f53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic_name
    bool is_check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicIsCheckRequest(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.is_check !== undefined) {
      resolved.is_check = msg.is_check;
    }
    else {
      resolved.is_check = false
    }

    return resolved;
    }
};

class TopicIsCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicIsCheckResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicIsCheckResponse
    let len;
    let data = new TopicIsCheckResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/TopicIsCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicIsCheckResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TopicIsCheckRequest,
  Response: TopicIsCheckResponse,
  md5sum() { return '908ae21036f996586c2f824d2c3764ad'; },
  datatype() { return 'momenta_msgs/TopicIsCheck'; }
};
