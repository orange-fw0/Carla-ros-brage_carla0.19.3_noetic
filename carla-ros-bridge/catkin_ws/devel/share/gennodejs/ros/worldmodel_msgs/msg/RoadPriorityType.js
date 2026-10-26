// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoadPriorityType {
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
    // Serializes a message object of type RoadPriorityType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadPriorityType
    let len;
    let data = new RoadPriorityType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/RoadPriorityType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5535e09f661c77b4688dd8fbe68661fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 UNKNOWN = 0
    uint16 PRIORITY_ROAD = 1
    uint16 PRIORITY_ROAD_END = 2
    uint16 PRIORITY_AUXILIARY = 4
    uint16 PRIORITY_NEXT_INTERSECTION = 8
    uint16 STOP = 16
    uint16 YIELD = 32
    uint16 PRIORITY_OVER_ONGOING = 64
    uint16 YIELD_TO_ONCOMING = 128
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadPriorityType(null);
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
RoadPriorityType.Constants = {
  UNKNOWN: 0,
  PRIORITY_ROAD: 1,
  PRIORITY_ROAD_END: 2,
  PRIORITY_AUXILIARY: 4,
  PRIORITY_NEXT_INTERSECTION: 8,
  STOP: 16,
  YIELD: 32,
  PRIORITY_OVER_ONGOING: 64,
  YIELD_TO_ONCOMING: 128,
}

module.exports = RoadPriorityType;
