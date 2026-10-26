// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleBrakeLightEnum = require('./VehicleBrakeLightEnum.js');

//-----------------------------------------------------------

class VehicleBrakeLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake_light_on_score = null;
      this.brake_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('brake_light_on_score')) {
        this.brake_light_on_score = initObj.brake_light_on_score
      }
      else {
        this.brake_light_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('brake_light_state')) {
        this.brake_light_state = initObj.brake_light_state
      }
      else {
        this.brake_light_state = new VehicleBrakeLightEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleBrakeLightInfo
    // Serialize message field [brake_light_on_score]
    bufferOffset = _serializer.float32(obj.brake_light_on_score, buffer, bufferOffset);
    // Serialize message field [brake_light_state]
    bufferOffset = VehicleBrakeLightEnum.serialize(obj.brake_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleBrakeLightInfo
    let len;
    let data = new VehicleBrakeLightInfo(null);
    // Deserialize message field [brake_light_on_score]
    data.brake_light_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_light_state]
    data.brake_light_state = VehicleBrakeLightEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleBrakeLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50c3fc188caed8daa3d8596fab9bd9c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 brake_light_on_score
    perception_interface_msgs/VehicleBrakeLightEnum brake_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBrakeLightEnum
    uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
    uint8 VEHICLE_BRAKELIGHT_OFF = 1
    uint8 VEHICLE_BRAKELIGHT_ON = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleBrakeLightInfo(null);
    if (msg.brake_light_on_score !== undefined) {
      resolved.brake_light_on_score = msg.brake_light_on_score;
    }
    else {
      resolved.brake_light_on_score = 0.0
    }

    if (msg.brake_light_state !== undefined) {
      resolved.brake_light_state = VehicleBrakeLightEnum.Resolve(msg.brake_light_state)
    }
    else {
      resolved.brake_light_state = new VehicleBrakeLightEnum()
    }

    return resolved;
    }
};

module.exports = VehicleBrakeLightInfo;
