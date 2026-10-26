// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TopicInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.topic_date_type = null;
      this.topic_message_cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('topic_date_type')) {
        this.topic_date_type = initObj.topic_date_type
      }
      else {
        this.topic_date_type = '';
      }
      if (initObj.hasOwnProperty('topic_message_cnt')) {
        this.topic_message_cnt = initObj.topic_message_cnt
      }
      else {
        this.topic_message_cnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicInfo
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [topic_date_type]
    bufferOffset = _serializer.string(obj.topic_date_type, buffer, bufferOffset);
    // Serialize message field [topic_message_cnt]
    bufferOffset = _serializer.uint32(obj.topic_message_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicInfo
    let len;
    let data = new TopicInfo(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic_date_type]
    data.topic_date_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic_message_cnt]
    data.topic_message_cnt = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic_name);
    length += _getByteLength(object.topic_date_type);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/TopicInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd57aeca1857eaf16f14c0fc2fcbaf5d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic_name
    string topic_date_type
    uint32 topic_message_cnt
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicInfo(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.topic_date_type !== undefined) {
      resolved.topic_date_type = msg.topic_date_type;
    }
    else {
      resolved.topic_date_type = ''
    }

    if (msg.topic_message_cnt !== undefined) {
      resolved.topic_message_cnt = msg.topic_message_cnt;
    }
    else {
      resolved.topic_message_cnt = 0
    }

    return resolved;
    }
};

module.exports = TopicInfo;
