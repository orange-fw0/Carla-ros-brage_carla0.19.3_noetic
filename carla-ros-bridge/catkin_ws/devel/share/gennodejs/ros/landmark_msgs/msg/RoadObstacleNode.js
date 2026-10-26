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
let RoadObstacleTypeEnum = require('./RoadObstacleTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadObstacleNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.track_id = null;
      this.type = null;
      this.pillar_center = null;
      this.points = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoadObstacleTypeEnum();
      }
      if (initObj.hasOwnProperty('pillar_center')) {
        this.pillar_center = initObj.pillar_center
      }
      else {
        this.pillar_center = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadObstacleNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RoadObstacleTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [pillar_center]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.pillar_center, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadObstacleNode
    let len;
    let data = new RoadObstacleNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RoadObstacleTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [pillar_center]
    data.pillar_center = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.points.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadObstacleNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edd789b3e1c31edfa30ce59d19511a65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 TYPE_VALID = 1
    uint16 PILLAR_CENTER_VALID = 2
    uint16 POINTS_VALID = 4
    uint16 SCORE_VALID = 8
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/RoadObstacleTypeEnum type
    perception_interface_msgs/Point3f pillar_center
    perception_interface_msgs/Point3f[] points
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/RoadObstacleTypeEnum
    uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
    uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
    uint8 value
    
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
    const resolved = new RoadObstacleNode(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.type !== undefined) {
      resolved.type = RoadObstacleTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RoadObstacleTypeEnum()
    }

    if (msg.pillar_center !== undefined) {
      resolved.pillar_center = perception_interface_msgs.msg.Point3f.Resolve(msg.pillar_center)
    }
    else {
      resolved.pillar_center = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

// Constants for message
RoadObstacleNode.Constants = {
  TYPE_VALID: 1,
  PILLAR_CENTER_VALID: 2,
  POINTS_VALID: 4,
  SCORE_VALID: 8,
}

module.exports = RoadObstacleNode;
