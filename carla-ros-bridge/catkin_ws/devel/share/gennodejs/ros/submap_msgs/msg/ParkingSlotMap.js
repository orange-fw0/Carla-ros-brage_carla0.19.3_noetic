// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingSlot = require('./ParkingSlot.js');

//-----------------------------------------------------------

class ParkingSlotMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.slots = null;
    }
    else {
      if (initObj.hasOwnProperty('slots')) {
        this.slots = initObj.slots
      }
      else {
        this.slots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotMap
    // Serialize message field [slots]
    // Serialize the length for message field [slots]
    bufferOffset = _serializer.uint32(obj.slots.length, buffer, bufferOffset);
    obj.slots.forEach((val) => {
      bufferOffset = ParkingSlot.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotMap
    let len;
    let data = new ParkingSlotMap(null);
    // Deserialize message field [slots]
    // Deserialize array length for message field [slots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slots[i] = ParkingSlot.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.slots.forEach((val) => {
      length += ParkingSlot.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/ParkingSlotMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a99fcf7f804a09b074e1b0ef4d27a9fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/ParkingSlot[] slots
    
    ================================================================================
    MSG: submap_msgs/ParkingSlot
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    float64 timestamp
    uint32 id
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotMap(null);
    if (msg.slots !== undefined) {
      resolved.slots = new Array(msg.slots.length);
      for (let i = 0; i < resolved.slots.length; ++i) {
        resolved.slots[i] = ParkingSlot.Resolve(msg.slots[i]);
      }
    }
    else {
      resolved.slots = []
    }

    return resolved;
    }
};

module.exports = ParkingSlotMap;
