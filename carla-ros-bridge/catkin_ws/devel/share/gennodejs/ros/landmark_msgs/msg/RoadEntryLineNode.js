// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackId = require('./TrackId.js');
let RoadEntryLinePassDirectionTypeEnum = require('./RoadEntryLinePassDirectionTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadEntryLineNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.line_points = null;
      this.is_virtual = null;
      this.pass_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('line_points')) {
        this.line_points = initObj.line_points
      }
      else {
        this.line_points = [];
      }
      if (initObj.hasOwnProperty('is_virtual')) {
        this.is_virtual = initObj.is_virtual
      }
      else {
        this.is_virtual = false;
      }
      if (initObj.hasOwnProperty('pass_direction')) {
        this.pass_direction = initObj.pass_direction
      }
      else {
        this.pass_direction = new RoadEntryLinePassDirectionTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadEntryLineNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [line_points]
    // Serialize the length for message field [line_points]
    bufferOffset = _serializer.uint32(obj.line_points.length, buffer, bufferOffset);
    obj.line_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_virtual]
    bufferOffset = _serializer.bool(obj.is_virtual, buffer, bufferOffset);
    // Serialize message field [pass_direction]
    bufferOffset = RoadEntryLinePassDirectionTypeEnum.serialize(obj.pass_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadEntryLineNode
    let len;
    let data = new RoadEntryLineNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_points]
    // Deserialize array length for message field [line_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_virtual]
    data.is_virtual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pass_direction]
    data.pass_direction = RoadEntryLinePassDirectionTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.line_points.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadEntryLineNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f7c7ccb425606a4cb27c92e583e3eca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 LINE_POINTS_VALID = 2
    uint16 IS_VIRTUAL_VALID = 4
    uint16 PASS_DIRECTION_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    landmark_msgs/RoadEntryLinePassDirectionTypeEnum pass_direction
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/RoadEntryLinePassDirectionTypeEnum
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadEntryLineNode(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.line_points !== undefined) {
      resolved.line_points = new Array(msg.line_points.length);
      for (let i = 0; i < resolved.line_points.length; ++i) {
        resolved.line_points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.line_points[i]);
      }
    }
    else {
      resolved.line_points = []
    }

    if (msg.is_virtual !== undefined) {
      resolved.is_virtual = msg.is_virtual;
    }
    else {
      resolved.is_virtual = false
    }

    if (msg.pass_direction !== undefined) {
      resolved.pass_direction = RoadEntryLinePassDirectionTypeEnum.Resolve(msg.pass_direction)
    }
    else {
      resolved.pass_direction = new RoadEntryLinePassDirectionTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
RoadEntryLineNode.Constants = {
  SCORE_VALID: 1,
  LINE_POINTS_VALID: 2,
  IS_VIRTUAL_VALID: 4,
  PASS_DIRECTION_VALID: 8,
}

module.exports = RoadEntryLineNode;
