// Auto-generated. Do not edit!

// (in-package recorder_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let recorder_msgs = _finder('recorder_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TopicsV2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
      this.image_topic_list = null;
      this.non_image_topic_list = null;
      this.latched_topic_list = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = false;
      }
      if (initObj.hasOwnProperty('image_topic_list')) {
        this.image_topic_list = initObj.image_topic_list
      }
      else {
        this.image_topic_list = [];
      }
      if (initObj.hasOwnProperty('non_image_topic_list')) {
        this.non_image_topic_list = initObj.non_image_topic_list
      }
      else {
        this.non_image_topic_list = [];
      }
      if (initObj.hasOwnProperty('latched_topic_list')) {
        this.latched_topic_list = initObj.latched_topic_list
      }
      else {
        this.latched_topic_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicsV2Request
    // Serialize message field [set]
    bufferOffset = _serializer.bool(obj.set, buffer, bufferOffset);
    // Serialize message field [image_topic_list]
    // Serialize the length for message field [image_topic_list]
    bufferOffset = _serializer.uint32(obj.image_topic_list.length, buffer, bufferOffset);
    obj.image_topic_list.forEach((val) => {
      bufferOffset = recorder_msgs.msg.ImageTopicConfig.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [non_image_topic_list]
    bufferOffset = _arraySerializer.string(obj.non_image_topic_list, buffer, bufferOffset, null);
    // Serialize message field [latched_topic_list]
    bufferOffset = _arraySerializer.string(obj.latched_topic_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicsV2Request
    let len;
    let data = new TopicsV2Request(null);
    // Deserialize message field [set]
    data.set = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [image_topic_list]
    // Deserialize array length for message field [image_topic_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_topic_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_topic_list[i] = recorder_msgs.msg.ImageTopicConfig.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [non_image_topic_list]
    data.non_image_topic_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [latched_topic_list]
    data.latched_topic_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.image_topic_list.forEach((val) => {
      length += recorder_msgs.msg.ImageTopicConfig.getMessageSize(val);
    });
    object.non_image_topic_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.latched_topic_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/TopicsV2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10eb08449bab320190e2a8263975559c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set
    recorder_msgs/ImageTopicConfig[] image_topic_list
    string[] non_image_topic_list
    string[] latched_topic_list
    
    ================================================================================
    MSG: recorder_msgs/ImageTopicConfig
    string[] base_topics
    string in_transport
    string in_suffix
    string out_transport
    string out_suffix
    string out_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicsV2Request(null);
    if (msg.set !== undefined) {
      resolved.set = msg.set;
    }
    else {
      resolved.set = false
    }

    if (msg.image_topic_list !== undefined) {
      resolved.image_topic_list = new Array(msg.image_topic_list.length);
      for (let i = 0; i < resolved.image_topic_list.length; ++i) {
        resolved.image_topic_list[i] = recorder_msgs.msg.ImageTopicConfig.Resolve(msg.image_topic_list[i]);
      }
    }
    else {
      resolved.image_topic_list = []
    }

    if (msg.non_image_topic_list !== undefined) {
      resolved.non_image_topic_list = msg.non_image_topic_list;
    }
    else {
      resolved.non_image_topic_list = []
    }

    if (msg.latched_topic_list !== undefined) {
      resolved.latched_topic_list = msg.latched_topic_list;
    }
    else {
      resolved.latched_topic_list = []
    }

    return resolved;
    }
};

class TopicsV2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.image_topic_list = null;
      this.non_image_topic_list = null;
      this.latched_topic_list = null;
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
      if (initObj.hasOwnProperty('image_topic_list')) {
        this.image_topic_list = initObj.image_topic_list
      }
      else {
        this.image_topic_list = [];
      }
      if (initObj.hasOwnProperty('non_image_topic_list')) {
        this.non_image_topic_list = initObj.non_image_topic_list
      }
      else {
        this.non_image_topic_list = [];
      }
      if (initObj.hasOwnProperty('latched_topic_list')) {
        this.latched_topic_list = initObj.latched_topic_list
      }
      else {
        this.latched_topic_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicsV2Response
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [image_topic_list]
    // Serialize the length for message field [image_topic_list]
    bufferOffset = _serializer.uint32(obj.image_topic_list.length, buffer, bufferOffset);
    obj.image_topic_list.forEach((val) => {
      bufferOffset = recorder_msgs.msg.ImageTopicConfig.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [non_image_topic_list]
    bufferOffset = _arraySerializer.string(obj.non_image_topic_list, buffer, bufferOffset, null);
    // Serialize message field [latched_topic_list]
    bufferOffset = _arraySerializer.string(obj.latched_topic_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicsV2Response
    let len;
    let data = new TopicsV2Response(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_topic_list]
    // Deserialize array length for message field [image_topic_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_topic_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_topic_list[i] = recorder_msgs.msg.ImageTopicConfig.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [non_image_topic_list]
    data.non_image_topic_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [latched_topic_list]
    data.latched_topic_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.image_topic_list.forEach((val) => {
      length += recorder_msgs.msg.ImageTopicConfig.getMessageSize(val);
    });
    object.non_image_topic_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.latched_topic_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/TopicsV2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fda868f6e3af55afaa24b2ab31edd17c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    recorder_msgs/ImageTopicConfig[] image_topic_list
    string[] non_image_topic_list
    string[] latched_topic_list
    
    
    ================================================================================
    MSG: recorder_msgs/ImageTopicConfig
    string[] base_topics
    string in_transport
    string in_suffix
    string out_transport
    string out_suffix
    string out_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicsV2Response(null);
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

    if (msg.image_topic_list !== undefined) {
      resolved.image_topic_list = new Array(msg.image_topic_list.length);
      for (let i = 0; i < resolved.image_topic_list.length; ++i) {
        resolved.image_topic_list[i] = recorder_msgs.msg.ImageTopicConfig.Resolve(msg.image_topic_list[i]);
      }
    }
    else {
      resolved.image_topic_list = []
    }

    if (msg.non_image_topic_list !== undefined) {
      resolved.non_image_topic_list = msg.non_image_topic_list;
    }
    else {
      resolved.non_image_topic_list = []
    }

    if (msg.latched_topic_list !== undefined) {
      resolved.latched_topic_list = msg.latched_topic_list;
    }
    else {
      resolved.latched_topic_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TopicsV2Request,
  Response: TopicsV2Response,
  md5sum() { return '286ac081385c5ace40f429d151709f9e'; },
  datatype() { return 'recorder_srvs/TopicsV2'; }
};
