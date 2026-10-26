// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleModeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleModeState
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleModeState
    let len;
    let data = new VehicleModeState(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleModeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9e0b51f668d5d8050e77d50a63ff613';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 NORMAL_MODE = 1
    uint8 MANUFACTURE_MODE = 2
    uint8 TRANSPORT_MODE = 3
    uint8 SHOWROOM_MODE = 4
    uint8 POSTCRASH_MODE = 5
    uint8 MAINTENANCE_MODE = 6
    uint8 CARWASH_MODE = 7
    uint8 BENCHTEST_MODE = 8
    uint8 DRAG_MODE = 9
    uint8 RESERVED1 = 10
    uint8 RESERVED2 = 11
    uint8 RESERVED3 = 12
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleModeState(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleModeState.Constants = {
  NONE: 0,
  NORMAL_MODE: 1,
  MANUFACTURE_MODE: 2,
  TRANSPORT_MODE: 3,
  SHOWROOM_MODE: 4,
  POSTCRASH_MODE: 5,
  MAINTENANCE_MODE: 6,
  CARWASH_MODE: 7,
  BENCHTEST_MODE: 8,
  DRAG_MODE: 9,
  RESERVED1: 10,
  RESERVED2: 11,
  RESERVED3: 12,
}

module.exports = VehicleModeState;
