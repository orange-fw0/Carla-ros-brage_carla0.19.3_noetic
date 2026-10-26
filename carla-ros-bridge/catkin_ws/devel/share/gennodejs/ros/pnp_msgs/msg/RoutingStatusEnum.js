// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoutingStatusEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingStatusEnum
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingStatusEnum
    let len;
    let data = new RoutingStatusEnum(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/RoutingStatusEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58197edd90dad1c617b67f7261354b9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROUTING_SUCCESS = 0
    uint8 NO_ROUTING_FOUND = 1
    uint8 NO_ROADS_NEARBY_VEHICLE = 2
    uint8 NO_PARKING_LOT = 3
    uint8 NO_PARKING_SPACE = 4
    uint8 NO_ROADS_BOUNDED_SPACE = 5
    uint8 TOO_SHORT_PATH = 6
    uint8 TOO_LONG_PATH = 7
    uint8 MAP_DATA_ERROR = 8
    uint8 SYSTEM_ERROR = 255
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingStatusEnum(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
RoutingStatusEnum.Constants = {
  ROUTING_SUCCESS: 0,
  NO_ROUTING_FOUND: 1,
  NO_ROADS_NEARBY_VEHICLE: 2,
  NO_PARKING_LOT: 3,
  NO_PARKING_SPACE: 4,
  NO_ROADS_BOUNDED_SPACE: 5,
  TOO_SHORT_PATH: 6,
  TOO_LONG_PATH: 7,
  MAP_DATA_ERROR: 8,
  SYSTEM_ERROR: 255,
}

module.exports = RoutingStatusEnum;
