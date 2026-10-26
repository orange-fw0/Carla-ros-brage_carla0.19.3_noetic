// Auto-generated. Do not edit!

// (in-package shadow_mode_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DetailConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mlog_list = null;
      this.need_maf_groups = null;
    }
    else {
      if (initObj.hasOwnProperty('mlog_list')) {
        this.mlog_list = initObj.mlog_list
      }
      else {
        this.mlog_list = [];
      }
      if (initObj.hasOwnProperty('need_maf_groups')) {
        this.need_maf_groups = initObj.need_maf_groups
      }
      else {
        this.need_maf_groups = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetailConfig
    // Serialize message field [mlog_list]
    bufferOffset = _arraySerializer.string(obj.mlog_list, buffer, bufferOffset, null);
    // Serialize message field [need_maf_groups]
    bufferOffset = _arraySerializer.string(obj.need_maf_groups, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetailConfig
    let len;
    let data = new DetailConfig(null);
    // Deserialize message field [mlog_list]
    data.mlog_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [need_maf_groups]
    data.need_maf_groups = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.mlog_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.need_maf_groups.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/DetailConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '866178546220781c7d84c74e3be64c25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] mlog_list
    string[] need_maf_groups
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetailConfig(null);
    if (msg.mlog_list !== undefined) {
      resolved.mlog_list = msg.mlog_list;
    }
    else {
      resolved.mlog_list = []
    }

    if (msg.need_maf_groups !== undefined) {
      resolved.need_maf_groups = msg.need_maf_groups;
    }
    else {
      resolved.need_maf_groups = []
    }

    return resolved;
    }
};

module.exports = DetailConfig;
