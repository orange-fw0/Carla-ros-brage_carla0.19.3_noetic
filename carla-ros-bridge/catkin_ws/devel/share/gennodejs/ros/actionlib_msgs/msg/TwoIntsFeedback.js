// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TwoIntsFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mfrmsg_empty_value = null;
    }
    else {
      if (initObj.hasOwnProperty('mfrmsg_empty_value')) {
        this.mfrmsg_empty_value = initObj.mfrmsg_empty_value
      }
      else {
        this.mfrmsg_empty_value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TwoIntsFeedback
    // Serialize message field [mfrmsg_empty_value]
    bufferOffset = _serializer.bool(obj.mfrmsg_empty_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TwoIntsFeedback
    let len;
    let data = new TwoIntsFeedback(null);
    // Deserialize message field [mfrmsg_empty_value]
    data.mfrmsg_empty_value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TwoIntsFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73e8a879fb095c7ddf7ef49b93137539';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool mfrmsg_empty_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TwoIntsFeedback(null);
    if (msg.mfrmsg_empty_value !== undefined) {
      resolved.mfrmsg_empty_value = msg.mfrmsg_empty_value;
    }
    else {
      resolved.mfrmsg_empty_value = false
    }

    return resolved;
    }
};

module.exports = TwoIntsFeedback;
