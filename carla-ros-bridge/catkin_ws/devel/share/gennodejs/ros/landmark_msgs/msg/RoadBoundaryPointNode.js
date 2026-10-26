// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadBoundaryTypeEnum = require('./RoadBoundaryTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadBoundaryPointNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.type = null;
      this.height = null;
      this.directions = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoadBoundaryTypeEnum();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('directions')) {
        this.directions = initObj.directions
      }
      else {
        this.directions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadBoundaryPointNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RoadBoundaryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [directions]
    // Serialize the length for message field [directions]
    bufferOffset = _serializer.uint32(obj.directions.length, buffer, bufferOffset);
    obj.directions.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Vector3d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadBoundaryPointNode
    let len;
    let data = new RoadBoundaryPointNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RoadBoundaryTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [directions]
    // Deserialize array length for message field [directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.directions[i] = perception_interface_msgs.msg.Vector3d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.directions.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadBoundaryPointNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6008473d7a81a3a631645c639f402da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 available
    float32 score
    landmark_msgs/RoadBoundaryTypeEnum type
    float32 height
    perception_interface_msgs/Vector3d[] directions
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryTypeEnum
    uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_TYPE_NONE = 1
    uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
    uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
    uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
    uint8 ROAD_BOUNDARY_TYPE_CONE = 5
    uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
    uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
    uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
    uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
    uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
    uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
    uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
    uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
    uint8 ROAD_BOUNDARY_TYPE_CURB = 15
    uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
    uint8 ROAD_BOUNDARY_TYPE_WALL = 17
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
    uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
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
    const resolved = new RoadBoundaryPointNode(null);
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

    if (msg.type !== undefined) {
      resolved.type = RoadBoundaryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RoadBoundaryTypeEnum()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.directions !== undefined) {
      resolved.directions = new Array(msg.directions.length);
      for (let i = 0; i < resolved.directions.length; ++i) {
        resolved.directions[i] = perception_interface_msgs.msg.Vector3d.Resolve(msg.directions[i]);
      }
    }
    else {
      resolved.directions = []
    }

    return resolved;
    }
};

module.exports = RoadBoundaryPointNode;
