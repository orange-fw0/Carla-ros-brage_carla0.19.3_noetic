// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SentryEmergencyFlasherLevel = require('./SentryEmergencyFlasherLevel.js');
let SentryHornLevel = require('./SentryHornLevel.js');

//-----------------------------------------------------------

class SentryModeCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentry_emergency_flasher_level = null;
      this.snetry_horn_level = null;
    }
    else {
      if (initObj.hasOwnProperty('sentry_emergency_flasher_level')) {
        this.sentry_emergency_flasher_level = initObj.sentry_emergency_flasher_level
      }
      else {
        this.sentry_emergency_flasher_level = new SentryEmergencyFlasherLevel();
      }
      if (initObj.hasOwnProperty('snetry_horn_level')) {
        this.snetry_horn_level = initObj.snetry_horn_level
      }
      else {
        this.snetry_horn_level = new SentryHornLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SentryModeCommand
    // Serialize message field [sentry_emergency_flasher_level]
    bufferOffset = SentryEmergencyFlasherLevel.serialize(obj.sentry_emergency_flasher_level, buffer, bufferOffset);
    // Serialize message field [snetry_horn_level]
    bufferOffset = SentryHornLevel.serialize(obj.snetry_horn_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SentryModeCommand
    let len;
    let data = new SentryModeCommand(null);
    // Deserialize message field [sentry_emergency_flasher_level]
    data.sentry_emergency_flasher_level = SentryEmergencyFlasherLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [snetry_horn_level]
    data.snetry_horn_level = SentryHornLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SentryModeCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff8f2cb897d6d0fee2f3422c2a1c3219';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level
    endpoint_msgs/SentryHornLevel snetry_horn_level
    
    ================================================================================
    MSG: endpoint_msgs/SentryEmergencyFlasherLevel
    uint8 EmergencyFlasherReq_NONE = 0
    uint8 EmergencyFlasherReq_LEVEL1 = 1
    uint8 EmergencyFlasherReq_LEVEL2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SentryHornLevel
    uint8 HornReq_NONE = 0
    uint8 HornReq_LEVEL1 = 1
    uint8 HornReq_LEVEL2 = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SentryModeCommand(null);
    if (msg.sentry_emergency_flasher_level !== undefined) {
      resolved.sentry_emergency_flasher_level = SentryEmergencyFlasherLevel.Resolve(msg.sentry_emergency_flasher_level)
    }
    else {
      resolved.sentry_emergency_flasher_level = new SentryEmergencyFlasherLevel()
    }

    if (msg.snetry_horn_level !== undefined) {
      resolved.snetry_horn_level = SentryHornLevel.Resolve(msg.snetry_horn_level)
    }
    else {
      resolved.snetry_horn_level = new SentryHornLevel()
    }

    return resolved;
    }
};

module.exports = SentryModeCommand;
