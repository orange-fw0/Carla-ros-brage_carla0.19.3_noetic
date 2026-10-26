// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Segment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.begin_index = null;
      this.end_index = null;
      this.connection_type = null;
      this.direction = null;
      this.lane_type = null;
      this.lane_original_id = null;
      this.is_in_intersection = null;
      this.is_on_route = null;
    }
    else {
      if (initObj.hasOwnProperty('begin_index')) {
        this.begin_index = initObj.begin_index
      }
      else {
        this.begin_index = 0;
      }
      if (initObj.hasOwnProperty('end_index')) {
        this.end_index = initObj.end_index
      }
      else {
        this.end_index = 0;
      }
      if (initObj.hasOwnProperty('connection_type')) {
        this.connection_type = initObj.connection_type
      }
      else {
        this.connection_type = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = 0;
      }
      if (initObj.hasOwnProperty('lane_original_id')) {
        this.lane_original_id = initObj.lane_original_id
      }
      else {
        this.lane_original_id = 0;
      }
      if (initObj.hasOwnProperty('is_in_intersection')) {
        this.is_in_intersection = initObj.is_in_intersection
      }
      else {
        this.is_in_intersection = false;
      }
      if (initObj.hasOwnProperty('is_on_route')) {
        this.is_on_route = initObj.is_on_route
      }
      else {
        this.is_on_route = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segment
    // Serialize message field [begin_index]
    bufferOffset = _serializer.uint16(obj.begin_index, buffer, bufferOffset);
    // Serialize message field [end_index]
    bufferOffset = _serializer.uint16(obj.end_index, buffer, bufferOffset);
    // Serialize message field [connection_type]
    bufferOffset = _serializer.uint8(obj.connection_type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [lane_type]
    bufferOffset = _serializer.uint8(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [lane_original_id]
    bufferOffset = _serializer.int64(obj.lane_original_id, buffer, bufferOffset);
    // Serialize message field [is_in_intersection]
    bufferOffset = _serializer.bool(obj.is_in_intersection, buffer, bufferOffset);
    // Serialize message field [is_on_route]
    bufferOffset = _serializer.bool(obj.is_on_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segment
    let len;
    let data = new Segment(null);
    // Deserialize message field [begin_index]
    data.begin_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_index]
    data.end_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [connection_type]
    data.connection_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_type]
    data.lane_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_original_id]
    data.lane_original_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [is_in_intersection]
    data.is_in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_on_route]
    data.is_on_route = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Segment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd39ccb4c476821967623d7d1188c5107';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 begin_index
    uint16 end_index
    uint8 connection_type
    uint8 direction
    uint8 lane_type
    int64 lane_original_id
    bool is_in_intersection
    bool is_on_route
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segment(null);
    if (msg.begin_index !== undefined) {
      resolved.begin_index = msg.begin_index;
    }
    else {
      resolved.begin_index = 0
    }

    if (msg.end_index !== undefined) {
      resolved.end_index = msg.end_index;
    }
    else {
      resolved.end_index = 0
    }

    if (msg.connection_type !== undefined) {
      resolved.connection_type = msg.connection_type;
    }
    else {
      resolved.connection_type = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = msg.lane_type;
    }
    else {
      resolved.lane_type = 0
    }

    if (msg.lane_original_id !== undefined) {
      resolved.lane_original_id = msg.lane_original_id;
    }
    else {
      resolved.lane_original_id = 0
    }

    if (msg.is_in_intersection !== undefined) {
      resolved.is_in_intersection = msg.is_in_intersection;
    }
    else {
      resolved.is_in_intersection = false
    }

    if (msg.is_on_route !== undefined) {
      resolved.is_on_route = msg.is_on_route;
    }
    else {
      resolved.is_on_route = false
    }

    return resolved;
    }
};

module.exports = Segment;
