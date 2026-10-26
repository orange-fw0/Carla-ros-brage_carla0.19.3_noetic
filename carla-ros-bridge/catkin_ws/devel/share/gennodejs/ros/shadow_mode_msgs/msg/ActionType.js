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

class ActionType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_value = null;
    }
    else {
      if (initObj.hasOwnProperty('action_value')) {
        this.action_value = initObj.action_value
      }
      else {
        this.action_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionType
    // Serialize message field [action_value]
    bufferOffset = _serializer.uint8(obj.action_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionType
    let len;
    let data = new ActionType(null);
    // Deserialize message field [action_value]
    data.action_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/ActionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8595611de8fc3d084334bc12d4b332';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DEFAULT = 0
    uint8 CFDI_ONLY_FOREVER_LOG = 1
    uint8 DFDI_ONLY_REPORT_EAP = 128
    uint8 action_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionType(null);
    if (msg.action_value !== undefined) {
      resolved.action_value = msg.action_value;
    }
    else {
      resolved.action_value = 0
    }

    return resolved;
    }
};

// Constants for message
ActionType.Constants = {
  DEFAULT: 0,
  CFDI_ONLY_FOREVER_LOG: 1,
  DFDI_ONLY_REPORT_EAP: 128,
}

module.exports = ActionType;
