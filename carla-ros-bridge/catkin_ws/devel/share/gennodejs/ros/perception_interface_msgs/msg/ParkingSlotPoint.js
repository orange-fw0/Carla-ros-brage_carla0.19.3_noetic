// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2f = require('./Point2f.js');
let ParkingSlotPointTypeEnum = require('./ParkingSlotPointTypeEnum.js');

//-----------------------------------------------------------

class ParkingSlotPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.confidence = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2f();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ParkingSlotPointTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotPoint
    // Serialize message field [position]
    bufferOffset = Point2f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ParkingSlotPointTypeEnum.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotPoint
    let len;
    let data = new ParkingSlotPoint(null);
    // Deserialize message field [position]
    data.position = Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ParkingSlotPointTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ParkingSlotPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5acb41d9c7e2c55fbfad9480dc898e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point2f position
    float32 confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum type
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
    uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
    uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotPoint(null);
    if (msg.position !== undefined) {
      resolved.position = Point2f.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2f()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = ParkingSlotPointTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ParkingSlotPointTypeEnum()
    }

    return resolved;
    }
};

module.exports = ParkingSlotPoint;
