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

class TriggerParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trigger_value = null;
    }
    else {
      if (initObj.hasOwnProperty('trigger_value')) {
        this.trigger_value = initObj.trigger_value
      }
      else {
        this.trigger_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriggerParam
    // Serialize message field [trigger_value]
    bufferOffset = _serializer.uint8(obj.trigger_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TriggerParam
    let len;
    let data = new TriggerParam(null);
    // Deserialize message field [trigger_value]
    data.trigger_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/TriggerParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a4af8c99e536377aa2097c2cc718f29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EVENT = 0
    uint8 SINGLE_FRAME = 1
    uint8 RECORDING = 2
    uint8 trigger_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriggerParam(null);
    if (msg.trigger_value !== undefined) {
      resolved.trigger_value = msg.trigger_value;
    }
    else {
      resolved.trigger_value = 0
    }

    return resolved;
    }
};

// Constants for message
TriggerParam.Constants = {
  EVENT: 0,
  SINGLE_FRAME: 1,
  RECORDING: 2,
}

module.exports = TriggerParam;
