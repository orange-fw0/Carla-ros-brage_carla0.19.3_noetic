// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParkOutDisableReason {
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
    // Serializes a message object of type ParkOutDisableReason
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkOutDisableReason
    let len;
    let data = new ParkOutDisableReason(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ParkOutDisableReason';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8eb65e826e3a4822f671ca42548b1bc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 NONE = 0
    uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
    uint32 DISABLED_NON_PARALLEL = 2
    uint32 NOT_IN_PARKING_SLOT = 3
    uint32 PARKOUT_NOT_READY = 4
    uint32 SLOT_TOO_SMALL = 5
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkOutDisableReason(null);
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
ParkOutDisableReason.Constants = {
  NONE: 0,
  PARALLEL_NO_OBSTACLE_AHEAD: 1,
  DISABLED_NON_PARALLEL: 2,
  NOT_IN_PARKING_SLOT: 3,
  PARKOUT_NOT_READY: 4,
  SLOT_TOO_SMALL: 5,
}

module.exports = ParkOutDisableReason;
