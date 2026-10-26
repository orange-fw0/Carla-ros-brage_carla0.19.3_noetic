// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SteeringReq = require('./SteeringReq.js');
let GearReq = require('./GearReq.js');
let BrakeReq = require('./BrakeReq.js');
let LightReq = require('./LightReq.js');

//-----------------------------------------------------------

class SystemCmdChildType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering_req = null;
      this.gear_req = null;
      this.brake_req = null;
      this.light_req = null;
    }
    else {
      if (initObj.hasOwnProperty('steering_req')) {
        this.steering_req = initObj.steering_req
      }
      else {
        this.steering_req = new SteeringReq();
      }
      if (initObj.hasOwnProperty('gear_req')) {
        this.gear_req = initObj.gear_req
      }
      else {
        this.gear_req = new GearReq();
      }
      if (initObj.hasOwnProperty('brake_req')) {
        this.brake_req = initObj.brake_req
      }
      else {
        this.brake_req = new BrakeReq();
      }
      if (initObj.hasOwnProperty('light_req')) {
        this.light_req = initObj.light_req
      }
      else {
        this.light_req = new LightReq();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemCmdChildType
    // Serialize message field [steering_req]
    bufferOffset = SteeringReq.serialize(obj.steering_req, buffer, bufferOffset);
    // Serialize message field [gear_req]
    bufferOffset = GearReq.serialize(obj.gear_req, buffer, bufferOffset);
    // Serialize message field [brake_req]
    bufferOffset = BrakeReq.serialize(obj.brake_req, buffer, bufferOffset);
    // Serialize message field [light_req]
    bufferOffset = LightReq.serialize(obj.light_req, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemCmdChildType
    let len;
    let data = new SystemCmdChildType(null);
    // Deserialize message field [steering_req]
    data.steering_req = SteeringReq.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear_req]
    data.gear_req = GearReq.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_req]
    data.brake_req = BrakeReq.deserialize(buffer, bufferOffset);
    // Deserialize message field [light_req]
    data.light_req = LightReq.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SystemCmdChildType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '623a8dc6a825d2ebe524b39f8b734bbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/SteeringReq steering_req
    system_manager_msgs/GearReq gear_req
    system_manager_msgs/BrakeReq brake_req
    system_manager_msgs/LightReq light_req
    
    ================================================================================
    MSG: system_manager_msgs/SteeringReq
    uint8 NO_STEERING_RESET = 0
    uint8 STEERING_RESET = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/GearReq
    uint8 NO_REQ = 0
    uint8 GEAR_P = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/BrakeReq
    uint8 NO_REQ = 0
    uint8 HEAVY_BRAKE = 1
    uint8 NO_BRAKE = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LightReq
    uint8 NO_REQ = 0
    uint8 TURN_OFF = 1
    uint8 EMERGENCY_FLASHER = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemCmdChildType(null);
    if (msg.steering_req !== undefined) {
      resolved.steering_req = SteeringReq.Resolve(msg.steering_req)
    }
    else {
      resolved.steering_req = new SteeringReq()
    }

    if (msg.gear_req !== undefined) {
      resolved.gear_req = GearReq.Resolve(msg.gear_req)
    }
    else {
      resolved.gear_req = new GearReq()
    }

    if (msg.brake_req !== undefined) {
      resolved.brake_req = BrakeReq.Resolve(msg.brake_req)
    }
    else {
      resolved.brake_req = new BrakeReq()
    }

    if (msg.light_req !== undefined) {
      resolved.light_req = LightReq.Resolve(msg.light_req)
    }
    else {
      resolved.light_req = new LightReq()
    }

    return resolved;
    }
};

module.exports = SystemCmdChildType;
