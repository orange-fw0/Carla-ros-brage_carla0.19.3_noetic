// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let recorder_msgs = _finder('recorder_msgs');

//-----------------------------------------------------------

class AsyncTopicsV2Input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_num = null;
      this.set = null;
      this.image_topic_list = null;
      this.non_image_topic_list = null;
      this.latched_topic_list = null;
    }
    else {
      if (initObj.hasOwnProperty('key_num')) {
        this.key_num = initObj.key_num
      }
      else {
        this.key_num = 0;
      }
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
    // Serializes a message object of type AsyncTopicsV2Input
    // Serialize message field [key_num]
    bufferOffset = _serializer.int64(obj.key_num, buffer, bufferOffset);
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
    //deserializes a message object of type AsyncTopicsV2Input
    let len;
    let data = new AsyncTopicsV2Input(null);
    // Deserialize message field [key_num]
    data.key_num = _deserializer.int64(buffer, bufferOffset);
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
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AsyncTopicsV2Input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2928b7c350f80865de159b07208c98ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 key_num
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
    const resolved = new AsyncTopicsV2Input(null);
    if (msg.key_num !== undefined) {
      resolved.key_num = msg.key_num;
    }
    else {
      resolved.key_num = 0
    }

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

module.exports = AsyncTopicsV2Input;
