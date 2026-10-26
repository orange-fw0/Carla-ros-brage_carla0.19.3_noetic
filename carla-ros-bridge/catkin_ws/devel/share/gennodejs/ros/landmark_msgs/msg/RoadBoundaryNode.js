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
let RoadBoundaryTypeEnum = require('./RoadBoundaryTypeEnum.js');
let RoadBoundaryPassDirectionTypeEnum = require('./RoadBoundaryPassDirectionTypeEnum.js');
let BoundarySourceEnum = require('./BoundarySourceEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadBoundaryNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.coefficient_bv = null;
      this.type = null;
      this.line_points = null;
      this.is_virtual = null;
      this.height = null;
      this.pass_direction = null;
      this.source = null;
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
      if (initObj.hasOwnProperty('coefficient_bv')) {
        this.coefficient_bv = initObj.coefficient_bv
      }
      else {
        this.coefficient_bv = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoadBoundaryTypeEnum();
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
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('pass_direction')) {
        this.pass_direction = initObj.pass_direction
      }
      else {
        this.pass_direction = new RoadBoundaryPassDirectionTypeEnum();
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = new BoundarySourceEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadBoundaryNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [coefficient_bv]
    bufferOffset = _arraySerializer.float32(obj.coefficient_bv, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = RoadBoundaryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [line_points]
    // Serialize the length for message field [line_points]
    bufferOffset = _serializer.uint32(obj.line_points.length, buffer, bufferOffset);
    obj.line_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_virtual]
    bufferOffset = _serializer.bool(obj.is_virtual, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [pass_direction]
    bufferOffset = RoadBoundaryPassDirectionTypeEnum.serialize(obj.pass_direction, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = BoundarySourceEnum.serialize(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadBoundaryNode
    let len;
    let data = new RoadBoundaryNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [coefficient_bv]
    data.coefficient_bv = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = RoadBoundaryTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_points]
    // Deserialize array length for message field [line_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_virtual]
    data.is_virtual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pass_direction]
    data.pass_direction = RoadBoundaryPassDirectionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = BoundarySourceEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coefficient_bv.length;
    length += 12 * object.line_points.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadBoundaryNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96ed600a60cdb6c63fc39fdb4205ab21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 POINTS_VALID = 8
    uint16 IS_VIRTUAL_VALID = 16
    uint16 HEIGHT_VALID = 32
    uint16 PASS_DIRECTION_VALID = 64
    uint16 SOURCE_VALID = 128
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/RoadBoundaryTypeEnum type
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    float32 height
    landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction
    landmark_msgs/BoundarySourceEnum source
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
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
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/BoundarySourceEnum
    uint8 OTHER = 0
    uint8 AUTO_MAPPING = 1
    uint8 MANUAL_VALID = 2
    uint8 MANUAL_GUESS = 3
    uint8 INTERNAL = 4
    uint8 EXTERNAL = 5
    uint8 INTERNAL_SHARED = 6
    uint8 NONE = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadBoundaryNode(null);
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

    if (msg.coefficient_bv !== undefined) {
      resolved.coefficient_bv = msg.coefficient_bv;
    }
    else {
      resolved.coefficient_bv = []
    }

    if (msg.type !== undefined) {
      resolved.type = RoadBoundaryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RoadBoundaryTypeEnum()
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

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.pass_direction !== undefined) {
      resolved.pass_direction = RoadBoundaryPassDirectionTypeEnum.Resolve(msg.pass_direction)
    }
    else {
      resolved.pass_direction = new RoadBoundaryPassDirectionTypeEnum()
    }

    if (msg.source !== undefined) {
      resolved.source = BoundarySourceEnum.Resolve(msg.source)
    }
    else {
      resolved.source = new BoundarySourceEnum()
    }

    return resolved;
    }
};

// Constants for message
RoadBoundaryNode.Constants = {
  SCORE_VALID: 1,
  COEFFICIENT_BV_VALID: 2,
  TYPE_VALID: 4,
  POINTS_VALID: 8,
  IS_VIRTUAL_VALID: 16,
  HEIGHT_VALID: 32,
  PASS_DIRECTION_VALID: 64,
  SOURCE_VALID: 128,
}

module.exports = RoadBoundaryNode;
