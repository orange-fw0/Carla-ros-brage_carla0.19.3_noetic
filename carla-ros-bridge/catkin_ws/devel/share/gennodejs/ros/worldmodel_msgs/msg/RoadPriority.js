// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadPriorityType = require('./RoadPriorityType.js');

//-----------------------------------------------------------

class RoadPriority {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_priority_type = null;
      this.distance = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('road_priority_type')) {
        this.road_priority_type = initObj.road_priority_type
      }
      else {
        this.road_priority_type = new RoadPriorityType();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadPriority
    // Serialize message field [road_priority_type]
    bufferOffset = RoadPriorityType.serialize(obj.road_priority_type, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadPriority
    let len;
    let data = new RoadPriority(null);
    // Deserialize message field [road_priority_type]
    data.road_priority_type = RoadPriorityType.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/RoadPriority';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fdce789557c67fc9d2a05524d43427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    worldmodel_msgs/RoadPriorityType road_priority_type
    float64 distance
    float64 length
    
    ================================================================================
    MSG: worldmodel_msgs/RoadPriorityType
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
    const resolved = new RoadPriority(null);
    if (msg.road_priority_type !== undefined) {
      resolved.road_priority_type = RoadPriorityType.Resolve(msg.road_priority_type)
    }
    else {
      resolved.road_priority_type = new RoadPriorityType()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = RoadPriority;
