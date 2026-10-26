// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ManeuverGear = require('./ManeuverGear.js');

//-----------------------------------------------------------

class Comfort {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.maneuver_gear = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('maneuver_gear')) {
        this.maneuver_gear = initObj.maneuver_gear
      }
      else {
        this.maneuver_gear = new ManeuverGear();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Comfort
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [maneuver_gear]
    bufferOffset = ManeuverGear.serialize(obj.maneuver_gear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Comfort
    let len;
    let data = new Comfort(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maneuver_gear]
    data.maneuver_gear = ManeuverGear.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Comfort';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e564c8c3c7473028ef202f9e4da7bdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MANEUVER_GEAR = 1
    uint8 available
    planning_msgs/ManeuverGear maneuver_gear
    
    ================================================================================
    MSG: planning_msgs/ManeuverGear
    uint8 SLOW = 0
    uint8 NORMAL = 1
    uint8 FAST = 2
    uint8 ACCIDENT = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Comfort(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.maneuver_gear !== undefined) {
      resolved.maneuver_gear = ManeuverGear.Resolve(msg.maneuver_gear)
    }
    else {
      resolved.maneuver_gear = new ManeuverGear()
    }

    return resolved;
    }
};

// Constants for message
Comfort.Constants = {
  MANEUVER_GEAR: 1,
}

module.exports = Comfort;
