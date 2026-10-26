// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingSlotType = require('./ParkingSlotType.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ParkingSlotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.optimized_corners = null;
      this.slot_type = null;
      this.has_wheel_stopper = null;
      this.ego_slot_iou = null;
      this.front_wheel_to_stopper = null;
      this.front_wheel_to_opening = null;
      this.front_wheel_to_bottom = null;
      this.rear_wheel_to_stopper = null;
      this.rear_wheel_to_opening = null;
      this.rear_wheel_to_bottom = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('optimized_corners')) {
        this.optimized_corners = initObj.optimized_corners
      }
      else {
        this.optimized_corners = [];
      }
      if (initObj.hasOwnProperty('slot_type')) {
        this.slot_type = initObj.slot_type
      }
      else {
        this.slot_type = new ParkingSlotType();
      }
      if (initObj.hasOwnProperty('has_wheel_stopper')) {
        this.has_wheel_stopper = initObj.has_wheel_stopper
      }
      else {
        this.has_wheel_stopper = false;
      }
      if (initObj.hasOwnProperty('ego_slot_iou')) {
        this.ego_slot_iou = initObj.ego_slot_iou
      }
      else {
        this.ego_slot_iou = 0.0;
      }
      if (initObj.hasOwnProperty('front_wheel_to_stopper')) {
        this.front_wheel_to_stopper = initObj.front_wheel_to_stopper
      }
      else {
        this.front_wheel_to_stopper = 0.0;
      }
      if (initObj.hasOwnProperty('front_wheel_to_opening')) {
        this.front_wheel_to_opening = initObj.front_wheel_to_opening
      }
      else {
        this.front_wheel_to_opening = 0.0;
      }
      if (initObj.hasOwnProperty('front_wheel_to_bottom')) {
        this.front_wheel_to_bottom = initObj.front_wheel_to_bottom
      }
      else {
        this.front_wheel_to_bottom = 0.0;
      }
      if (initObj.hasOwnProperty('rear_wheel_to_stopper')) {
        this.rear_wheel_to_stopper = initObj.rear_wheel_to_stopper
      }
      else {
        this.rear_wheel_to_stopper = 0.0;
      }
      if (initObj.hasOwnProperty('rear_wheel_to_opening')) {
        this.rear_wheel_to_opening = initObj.rear_wheel_to_opening
      }
      else {
        this.rear_wheel_to_opening = 0.0;
      }
      if (initObj.hasOwnProperty('rear_wheel_to_bottom')) {
        this.rear_wheel_to_bottom = initObj.rear_wheel_to_bottom
      }
      else {
        this.rear_wheel_to_bottom = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotInfo
    // Serialize message field [optimized_corners]
    // Serialize the length for message field [optimized_corners]
    bufferOffset = _serializer.uint32(obj.optimized_corners.length, buffer, bufferOffset);
    obj.optimized_corners.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [slot_type]
    bufferOffset = ParkingSlotType.serialize(obj.slot_type, buffer, bufferOffset);
    // Serialize message field [has_wheel_stopper]
    bufferOffset = _serializer.bool(obj.has_wheel_stopper, buffer, bufferOffset);
    // Serialize message field [ego_slot_iou]
    bufferOffset = _serializer.float32(obj.ego_slot_iou, buffer, bufferOffset);
    // Serialize message field [front_wheel_to_stopper]
    bufferOffset = _serializer.float32(obj.front_wheel_to_stopper, buffer, bufferOffset);
    // Serialize message field [front_wheel_to_opening]
    bufferOffset = _serializer.float32(obj.front_wheel_to_opening, buffer, bufferOffset);
    // Serialize message field [front_wheel_to_bottom]
    bufferOffset = _serializer.float32(obj.front_wheel_to_bottom, buffer, bufferOffset);
    // Serialize message field [rear_wheel_to_stopper]
    bufferOffset = _serializer.float32(obj.rear_wheel_to_stopper, buffer, bufferOffset);
    // Serialize message field [rear_wheel_to_opening]
    bufferOffset = _serializer.float32(obj.rear_wheel_to_opening, buffer, bufferOffset);
    // Serialize message field [rear_wheel_to_bottom]
    bufferOffset = _serializer.float32(obj.rear_wheel_to_bottom, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotInfo
    let len;
    let data = new ParkingSlotInfo(null);
    // Deserialize message field [optimized_corners]
    // Deserialize array length for message field [optimized_corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.optimized_corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.optimized_corners[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [slot_type]
    data.slot_type = ParkingSlotType.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_wheel_stopper]
    data.has_wheel_stopper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ego_slot_iou]
    data.ego_slot_iou = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_wheel_to_stopper]
    data.front_wheel_to_stopper = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_wheel_to_opening]
    data.front_wheel_to_opening = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_wheel_to_bottom]
    data.front_wheel_to_bottom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_wheel_to_stopper]
    data.rear_wheel_to_stopper = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_wheel_to_opening]
    data.rear_wheel_to_opening = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_wheel_to_bottom]
    data.rear_wheel_to_bottom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.optimized_corners.length;
    length += _getByteLength(object.reserved);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ParkingSlotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c9d0efe24f139c6c2a32a8bbab872f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] optimized_corners
    planning_msgs/ParkingSlotType slot_type
    bool has_wheel_stopper
    float32 ego_slot_iou
    float32 front_wheel_to_stopper
    float32 front_wheel_to_opening
    float32 front_wheel_to_bottom
    float32 rear_wheel_to_stopper
    float32 rear_wheel_to_opening
    float32 rear_wheel_to_bottom
    string reserved
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: planning_msgs/ParkingSlotType
    uint8 UNKNOWN = 0
    uint8 PERPENDICULAR = 1
    uint8 PARALLEL = 2
    uint8 OBLIQUE = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotInfo(null);
    if (msg.optimized_corners !== undefined) {
      resolved.optimized_corners = new Array(msg.optimized_corners.length);
      for (let i = 0; i < resolved.optimized_corners.length; ++i) {
        resolved.optimized_corners[i] = geometry_msgs.msg.Point.Resolve(msg.optimized_corners[i]);
      }
    }
    else {
      resolved.optimized_corners = []
    }

    if (msg.slot_type !== undefined) {
      resolved.slot_type = ParkingSlotType.Resolve(msg.slot_type)
    }
    else {
      resolved.slot_type = new ParkingSlotType()
    }

    if (msg.has_wheel_stopper !== undefined) {
      resolved.has_wheel_stopper = msg.has_wheel_stopper;
    }
    else {
      resolved.has_wheel_stopper = false
    }

    if (msg.ego_slot_iou !== undefined) {
      resolved.ego_slot_iou = msg.ego_slot_iou;
    }
    else {
      resolved.ego_slot_iou = 0.0
    }

    if (msg.front_wheel_to_stopper !== undefined) {
      resolved.front_wheel_to_stopper = msg.front_wheel_to_stopper;
    }
    else {
      resolved.front_wheel_to_stopper = 0.0
    }

    if (msg.front_wheel_to_opening !== undefined) {
      resolved.front_wheel_to_opening = msg.front_wheel_to_opening;
    }
    else {
      resolved.front_wheel_to_opening = 0.0
    }

    if (msg.front_wheel_to_bottom !== undefined) {
      resolved.front_wheel_to_bottom = msg.front_wheel_to_bottom;
    }
    else {
      resolved.front_wheel_to_bottom = 0.0
    }

    if (msg.rear_wheel_to_stopper !== undefined) {
      resolved.rear_wheel_to_stopper = msg.rear_wheel_to_stopper;
    }
    else {
      resolved.rear_wheel_to_stopper = 0.0
    }

    if (msg.rear_wheel_to_opening !== undefined) {
      resolved.rear_wheel_to_opening = msg.rear_wheel_to_opening;
    }
    else {
      resolved.rear_wheel_to_opening = 0.0
    }

    if (msg.rear_wheel_to_bottom !== undefined) {
      resolved.rear_wheel_to_bottom = msg.rear_wheel_to_bottom;
    }
    else {
      resolved.rear_wheel_to_bottom = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = ParkingSlotInfo;
