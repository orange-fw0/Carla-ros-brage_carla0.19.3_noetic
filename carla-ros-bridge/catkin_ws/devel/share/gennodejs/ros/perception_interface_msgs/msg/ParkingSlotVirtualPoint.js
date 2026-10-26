// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3f = require('./Point3f.js');

//-----------------------------------------------------------

class ParkingSlotVirtualPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_index = null;
      this.local_point = null;
    }
    else {
      if (initObj.hasOwnProperty('point_index')) {
        this.point_index = initObj.point_index
      }
      else {
        this.point_index = 0;
      }
      if (initObj.hasOwnProperty('local_point')) {
        this.local_point = initObj.local_point
      }
      else {
        this.local_point = new Point3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotVirtualPoint
    // Serialize message field [point_index]
    bufferOffset = _serializer.uint8(obj.point_index, buffer, bufferOffset);
    // Serialize message field [local_point]
    bufferOffset = Point3f.serialize(obj.local_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotVirtualPoint
    let len;
    let data = new ParkingSlotVirtualPoint(null);
    // Deserialize message field [point_index]
    data.point_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [local_point]
    data.local_point = Point3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ParkingSlotVirtualPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eab90b5083be4391b0886004149f2676';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 point_index
    perception_interface_msgs/Point3f local_point
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotVirtualPoint(null);
    if (msg.point_index !== undefined) {
      resolved.point_index = msg.point_index;
    }
    else {
      resolved.point_index = 0
    }

    if (msg.local_point !== undefined) {
      resolved.local_point = Point3f.Resolve(msg.local_point)
    }
    else {
      resolved.local_point = new Point3f()
    }

    return resolved;
    }
};

module.exports = ParkingSlotVirtualPoint;
