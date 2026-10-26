// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleBlinkLightEnum = require('./VehicleBlinkLightEnum.js');

//-----------------------------------------------------------

class VehicleBlinkLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.blink_light_left_score = null;
      this.blink_light_right_score = null;
      this.blink_light_both_score = null;
      this.blink_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('blink_light_left_score')) {
        this.blink_light_left_score = initObj.blink_light_left_score
      }
      else {
        this.blink_light_left_score = 0.0;
      }
      if (initObj.hasOwnProperty('blink_light_right_score')) {
        this.blink_light_right_score = initObj.blink_light_right_score
      }
      else {
        this.blink_light_right_score = 0.0;
      }
      if (initObj.hasOwnProperty('blink_light_both_score')) {
        this.blink_light_both_score = initObj.blink_light_both_score
      }
      else {
        this.blink_light_both_score = 0.0;
      }
      if (initObj.hasOwnProperty('blink_light_state')) {
        this.blink_light_state = initObj.blink_light_state
      }
      else {
        this.blink_light_state = new VehicleBlinkLightEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleBlinkLightInfo
    // Serialize message field [blink_light_left_score]
    bufferOffset = _serializer.float32(obj.blink_light_left_score, buffer, bufferOffset);
    // Serialize message field [blink_light_right_score]
    bufferOffset = _serializer.float32(obj.blink_light_right_score, buffer, bufferOffset);
    // Serialize message field [blink_light_both_score]
    bufferOffset = _serializer.float32(obj.blink_light_both_score, buffer, bufferOffset);
    // Serialize message field [blink_light_state]
    bufferOffset = VehicleBlinkLightEnum.serialize(obj.blink_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleBlinkLightInfo
    let len;
    let data = new VehicleBlinkLightInfo(null);
    // Deserialize message field [blink_light_left_score]
    data.blink_light_left_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blink_light_right_score]
    data.blink_light_right_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blink_light_both_score]
    data.blink_light_both_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [blink_light_state]
    data.blink_light_state = VehicleBlinkLightEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleBlinkLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '606d0d8dfffcbb1d95da9e4f7fc5fec4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 blink_light_left_score
    float32 blink_light_right_score
    float32 blink_light_both_score
    perception_interface_msgs/VehicleBlinkLightEnum blink_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBlinkLightEnum
    uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BLINKLIGHT_OFF = 1
    uint8 VEHICLE_BLINKLIGHT_LEFT = 2
    uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
    uint8 VEHICLE_BLINKLIGHT_BOTH = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleBlinkLightInfo(null);
    if (msg.blink_light_left_score !== undefined) {
      resolved.blink_light_left_score = msg.blink_light_left_score;
    }
    else {
      resolved.blink_light_left_score = 0.0
    }

    if (msg.blink_light_right_score !== undefined) {
      resolved.blink_light_right_score = msg.blink_light_right_score;
    }
    else {
      resolved.blink_light_right_score = 0.0
    }

    if (msg.blink_light_both_score !== undefined) {
      resolved.blink_light_both_score = msg.blink_light_both_score;
    }
    else {
      resolved.blink_light_both_score = 0.0
    }

    if (msg.blink_light_state !== undefined) {
      resolved.blink_light_state = VehicleBlinkLightEnum.Resolve(msg.blink_light_state)
    }
    else {
      resolved.blink_light_state = new VehicleBlinkLightEnum()
    }

    return resolved;
    }
};

module.exports = VehicleBlinkLightInfo;
