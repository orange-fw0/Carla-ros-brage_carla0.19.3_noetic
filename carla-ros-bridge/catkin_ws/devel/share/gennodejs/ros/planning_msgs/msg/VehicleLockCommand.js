// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleLock = require('./VehicleLock.js');

//-----------------------------------------------------------

class VehicleLockCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_lock = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_lock')) {
        this.vehicle_lock = initObj.vehicle_lock
      }
      else {
        this.vehicle_lock = new VehicleLock();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLockCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_lock]
    bufferOffset = VehicleLock.serialize(obj.vehicle_lock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLockCommand
    let len;
    let data = new VehicleLockCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_lock]
    data.vehicle_lock = VehicleLock.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/VehicleLockCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '068d34cfbc2002e983cebb24416495fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_LOCK = 1
    uint8 available
    planning_msgs/VehicleLock vehicle_lock
    
    ================================================================================
    MSG: planning_msgs/VehicleLock
    uint8 NONE = 0
    uint8 UNLOCK = 1
    uint8 LOCK = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLockCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_lock !== undefined) {
      resolved.vehicle_lock = VehicleLock.Resolve(msg.vehicle_lock)
    }
    else {
      resolved.vehicle_lock = new VehicleLock()
    }

    return resolved;
    }
};

// Constants for message
VehicleLockCommand.Constants = {
  VEHICLE_LOCK: 1,
}

module.exports = VehicleLockCommand;
