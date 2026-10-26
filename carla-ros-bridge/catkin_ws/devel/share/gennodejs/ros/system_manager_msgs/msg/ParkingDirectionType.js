// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParkingDirectionType {
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
    // Serializes a message object of type ParkingDirectionType
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingDirectionType
    let len;
    let data = new ParkingDirectionType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/ParkingDirectionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e366f900d7fe76523fbf538da434f20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 AUTO_SELECT = 0
    uint32 PERPENDICULAR_FRONT_OUT = 1
    uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2
    uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4
    uint32 PERPENDICULAR_REAR_OUT = 8
    uint32 PERPENDICULAR_REAR_LEFT_OUT = 16
    uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32
    uint32 PARALLEL_LEFT_OUT = 64
    uint32 PARALLEL_LEFT_FRONT_OUT = 128
    uint32 PARALLEL_RIGHT_OUT = 256
    uint32 PARALLEL_RIGHT_FRONT_OUT = 512
    uint32 FRONT_IN = 2001
    uint32 BACK_IN = 2002
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingDirectionType(null);
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
ParkingDirectionType.Constants = {
  AUTO_SELECT: 0,
  PERPENDICULAR_FRONT_OUT: 1,
  PERPENDICULAR_FRONT_LEFT_OUT: 2,
  PERPENDICULAR_FRONT_RIGHT_OUT: 4,
  PERPENDICULAR_REAR_OUT: 8,
  PERPENDICULAR_REAR_LEFT_OUT: 16,
  PERPENDICULAR_REAR_RIGHT_OUT: 32,
  PARALLEL_LEFT_OUT: 64,
  PARALLEL_LEFT_FRONT_OUT: 128,
  PARALLEL_RIGHT_OUT: 256,
  PARALLEL_RIGHT_FRONT_OUT: 512,
  FRONT_IN: 2001,
  BACK_IN: 2002,
}

module.exports = ParkingDirectionType;
