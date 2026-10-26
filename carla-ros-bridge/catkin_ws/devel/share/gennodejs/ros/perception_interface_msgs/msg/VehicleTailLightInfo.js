// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleTailLightEnum = require('./VehicleTailLightEnum.js');

//-----------------------------------------------------------

class VehicleTailLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tail_light_score = null;
      this.tail_light_unkown_score = null;
      this.tail_light_off_score = null;
      this.tail_light_on_score = null;
      this.tail_light_high_on_score = null;
      this.tail_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('tail_light_score')) {
        this.tail_light_score = initObj.tail_light_score
      }
      else {
        this.tail_light_score = 0.0;
      }
      if (initObj.hasOwnProperty('tail_light_unkown_score')) {
        this.tail_light_unkown_score = initObj.tail_light_unkown_score
      }
      else {
        this.tail_light_unkown_score = 0.0;
      }
      if (initObj.hasOwnProperty('tail_light_off_score')) {
        this.tail_light_off_score = initObj.tail_light_off_score
      }
      else {
        this.tail_light_off_score = 0.0;
      }
      if (initObj.hasOwnProperty('tail_light_on_score')) {
        this.tail_light_on_score = initObj.tail_light_on_score
      }
      else {
        this.tail_light_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('tail_light_high_on_score')) {
        this.tail_light_high_on_score = initObj.tail_light_high_on_score
      }
      else {
        this.tail_light_high_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('tail_light_state')) {
        this.tail_light_state = initObj.tail_light_state
      }
      else {
        this.tail_light_state = new VehicleTailLightEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleTailLightInfo
    // Serialize message field [tail_light_score]
    bufferOffset = _serializer.float32(obj.tail_light_score, buffer, bufferOffset);
    // Serialize message field [tail_light_unkown_score]
    bufferOffset = _serializer.float32(obj.tail_light_unkown_score, buffer, bufferOffset);
    // Serialize message field [tail_light_off_score]
    bufferOffset = _serializer.float32(obj.tail_light_off_score, buffer, bufferOffset);
    // Serialize message field [tail_light_on_score]
    bufferOffset = _serializer.float32(obj.tail_light_on_score, buffer, bufferOffset);
    // Serialize message field [tail_light_high_on_score]
    bufferOffset = _serializer.float32(obj.tail_light_high_on_score, buffer, bufferOffset);
    // Serialize message field [tail_light_state]
    bufferOffset = VehicleTailLightEnum.serialize(obj.tail_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleTailLightInfo
    let len;
    let data = new VehicleTailLightInfo(null);
    // Deserialize message field [tail_light_score]
    data.tail_light_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tail_light_unkown_score]
    data.tail_light_unkown_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tail_light_off_score]
    data.tail_light_off_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tail_light_on_score]
    data.tail_light_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tail_light_high_on_score]
    data.tail_light_high_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tail_light_state]
    data.tail_light_state = VehicleTailLightEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleTailLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a8815ddddbabed47854df7a189dbad8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tail_light_score
    float32 tail_light_unkown_score
    float32 tail_light_off_score
    float32 tail_light_on_score
    float32 tail_light_high_on_score
    perception_interface_msgs/VehicleTailLightEnum tail_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTailLightEnum
    uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
    uint8 VEHICLE_TAILLIGHT_OFF = 1
    uint8 VEHICLE_TAILLIGHT_ON = 2
    uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleTailLightInfo(null);
    if (msg.tail_light_score !== undefined) {
      resolved.tail_light_score = msg.tail_light_score;
    }
    else {
      resolved.tail_light_score = 0.0
    }

    if (msg.tail_light_unkown_score !== undefined) {
      resolved.tail_light_unkown_score = msg.tail_light_unkown_score;
    }
    else {
      resolved.tail_light_unkown_score = 0.0
    }

    if (msg.tail_light_off_score !== undefined) {
      resolved.tail_light_off_score = msg.tail_light_off_score;
    }
    else {
      resolved.tail_light_off_score = 0.0
    }

    if (msg.tail_light_on_score !== undefined) {
      resolved.tail_light_on_score = msg.tail_light_on_score;
    }
    else {
      resolved.tail_light_on_score = 0.0
    }

    if (msg.tail_light_high_on_score !== undefined) {
      resolved.tail_light_high_on_score = msg.tail_light_high_on_score;
    }
    else {
      resolved.tail_light_high_on_score = 0.0
    }

    if (msg.tail_light_state !== undefined) {
      resolved.tail_light_state = VehicleTailLightEnum.Resolve(msg.tail_light_state)
    }
    else {
      resolved.tail_light_state = new VehicleTailLightEnum()
    }

    return resolved;
    }
};

module.exports = VehicleTailLightInfo;
