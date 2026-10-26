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
let PoleNodeTypeEnum = require('./PoleNodeTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class PoleNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.shape_points = null;
      this.type = null;
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
      if (initObj.hasOwnProperty('shape_points')) {
        this.shape_points = initObj.shape_points
      }
      else {
        this.shape_points = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new PoleNodeTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoleNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [shape_points]
    // Serialize the length for message field [shape_points]
    bufferOffset = _serializer.uint32(obj.shape_points.length, buffer, bufferOffset);
    obj.shape_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = PoleNodeTypeEnum.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoleNode
    let len;
    let data = new PoleNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape_points]
    // Deserialize array length for message field [shape_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.shape_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.shape_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = PoleNodeTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.shape_points.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/PoleNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09a2e931d0aa29e04840c11bec8297bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 SHAPE_POINTS_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] shape_points
    landmark_msgs/PoleNodeTypeEnum type
    
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
    MSG: landmark_msgs/PoleNodeTypeEnum
    uint8 POLE_NODE_TYPE_UNKNOWN = 0
    uint8 POLE_NODE_TYPE_GENERAL_POLE = 1
    uint8 POLE_NODE_TYPE_LIGHT_POLE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoleNode(null);
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

    if (msg.shape_points !== undefined) {
      resolved.shape_points = new Array(msg.shape_points.length);
      for (let i = 0; i < resolved.shape_points.length; ++i) {
        resolved.shape_points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.shape_points[i]);
      }
    }
    else {
      resolved.shape_points = []
    }

    if (msg.type !== undefined) {
      resolved.type = PoleNodeTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new PoleNodeTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
PoleNode.Constants = {
  SCORE_VALID: 1,
  SHAPE_POINTS_VALID: 2,
  TYPE_VALID: 4,
}

module.exports = PoleNode;
