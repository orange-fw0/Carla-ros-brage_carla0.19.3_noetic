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
let LaneBoundaryTypeEnum = require('./LaneBoundaryTypeEnum.js');
let LaneBoundaryColorEnum = require('./LaneBoundaryColorEnum.js');
let LaneBoundaryWidthTypeEnum = require('./LaneBoundaryWidthTypeEnum.js');
let LaneBoundaryDirectionTypeEnum = require('./LaneBoundaryDirectionTypeEnum.js');
let BoundarySourceEnum = require('./BoundarySourceEnum.js');
let LaneBoundarySceneTypeEnum = require('./LaneBoundarySceneTypeEnum.js');
let LaneBoundarySpecialTypeEnum = require('./LaneBoundarySpecialTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class LaneBoundaryNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.index = null;
      this.track_id = null;
      this.coefficient_bv = null;
      this.type = null;
      this.color = null;
      this.width_type = null;
      this.line_width = null;
      this.line_points = null;
      this.is_virtual = null;
      this.direction_type = null;
      this.source = null;
      this.scene_type = null;
      this.special_type = null;
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
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
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
        this.type = new LaneBoundaryTypeEnum();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new LaneBoundaryColorEnum();
      }
      if (initObj.hasOwnProperty('width_type')) {
        this.width_type = initObj.width_type
      }
      else {
        this.width_type = new LaneBoundaryWidthTypeEnum();
      }
      if (initObj.hasOwnProperty('line_width')) {
        this.line_width = initObj.line_width
      }
      else {
        this.line_width = 0.0;
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
      if (initObj.hasOwnProperty('direction_type')) {
        this.direction_type = initObj.direction_type
      }
      else {
        this.direction_type = new LaneBoundaryDirectionTypeEnum();
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = new BoundarySourceEnum();
      }
      if (initObj.hasOwnProperty('scene_type')) {
        this.scene_type = initObj.scene_type
      }
      else {
        this.scene_type = new LaneBoundarySceneTypeEnum();
      }
      if (initObj.hasOwnProperty('special_type')) {
        this.special_type = initObj.special_type
      }
      else {
        this.special_type = new LaneBoundarySpecialTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundaryNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [coefficient_bv]
    bufferOffset = _arraySerializer.float32(obj.coefficient_bv, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = LaneBoundaryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = LaneBoundaryColorEnum.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [width_type]
    bufferOffset = LaneBoundaryWidthTypeEnum.serialize(obj.width_type, buffer, bufferOffset);
    // Serialize message field [line_width]
    bufferOffset = _serializer.float32(obj.line_width, buffer, bufferOffset);
    // Serialize message field [line_points]
    // Serialize the length for message field [line_points]
    bufferOffset = _serializer.uint32(obj.line_points.length, buffer, bufferOffset);
    obj.line_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_virtual]
    bufferOffset = _serializer.bool(obj.is_virtual, buffer, bufferOffset);
    // Serialize message field [direction_type]
    bufferOffset = LaneBoundaryDirectionTypeEnum.serialize(obj.direction_type, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = BoundarySourceEnum.serialize(obj.source, buffer, bufferOffset);
    // Serialize message field [scene_type]
    bufferOffset = LaneBoundarySceneTypeEnum.serialize(obj.scene_type, buffer, bufferOffset);
    // Serialize message field [special_type]
    bufferOffset = LaneBoundarySpecialTypeEnum.serialize(obj.special_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryNode
    let len;
    let data = new LaneBoundaryNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [coefficient_bv]
    data.coefficient_bv = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = LaneBoundaryTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = LaneBoundaryColorEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [width_type]
    data.width_type = LaneBoundaryWidthTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_width]
    data.line_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [line_points]
    // Deserialize array length for message field [line_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_virtual]
    data.is_virtual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [direction_type]
    data.direction_type = LaneBoundaryDirectionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = BoundarySourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [scene_type]
    data.scene_type = LaneBoundarySceneTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [special_type]
    data.special_type = LaneBoundarySpecialTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coefficient_bv.length;
    length += 12 * object.line_points.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneBoundaryNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45e3879b0bbeb44ccc514b606f167ca7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 COLOR_VALID = 8
    uint16 WIDTH_TYPE_VALID = 16
    uint16 LINE_WIDTH_VALID = 32
    uint16 LINE_POINTS_VALID = 64
    uint16 IS_VIRTUAL_VALID = 128
    uint16 DIRECTION_TYPE_VALID = 256
    uint16 SOURCE_VALID = 512
    uint16 SCENE_TYPE_VALID = 1024
    uint16 SPECIAL_TYPE_VALID = 2048
    uint16 available
    float32 score
    int32 index
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/LaneBoundaryTypeEnum type
    landmark_msgs/LaneBoundaryColorEnum color
    landmark_msgs/LaneBoundaryWidthTypeEnum width_type
    float32 line_width
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type
    landmark_msgs/BoundarySourceEnum source
    landmark_msgs/LaneBoundarySceneTypeEnum scene_type
    landmark_msgs/LaneBoundarySpecialTypeEnum special_type
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryTypeEnum
    uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_TYPE_DASHED = 1
    uint8 LANE_BOUNDARY_TYPE_SOLID = 2
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
    uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
    uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
    uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
    uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
    uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
    uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
    uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
    uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
    uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
    uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
    uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
    uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
    uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryColorEnum
    uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0
    uint8 LANE_BOUNDARY_COLOR_WHITE = 1
    uint8 LANE_BOUNDARY_COLOR_YELLOW = 2
    uint8 LANE_BOUNDARY_COLOR_ORANGE = 3
    uint8 LANE_BOUNDARY_COLOR_BLUE = 4
    uint8 LANE_BOUNDARY_COLOR_GREEN = 5
    uint8 LANE_BOUNDARY_COLOR_GRAY = 6
    uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7
    uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8
    uint8 LANE_BOUNDARY_OTHER = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryWidthTypeEnum
    uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1
    uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
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
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundarySceneTypeEnum
    uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
    uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
    uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
    uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
    uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundarySpecialTypeEnum
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryNode(null);
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

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
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
      resolved.type = LaneBoundaryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new LaneBoundaryTypeEnum()
    }

    if (msg.color !== undefined) {
      resolved.color = LaneBoundaryColorEnum.Resolve(msg.color)
    }
    else {
      resolved.color = new LaneBoundaryColorEnum()
    }

    if (msg.width_type !== undefined) {
      resolved.width_type = LaneBoundaryWidthTypeEnum.Resolve(msg.width_type)
    }
    else {
      resolved.width_type = new LaneBoundaryWidthTypeEnum()
    }

    if (msg.line_width !== undefined) {
      resolved.line_width = msg.line_width;
    }
    else {
      resolved.line_width = 0.0
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

    if (msg.direction_type !== undefined) {
      resolved.direction_type = LaneBoundaryDirectionTypeEnum.Resolve(msg.direction_type)
    }
    else {
      resolved.direction_type = new LaneBoundaryDirectionTypeEnum()
    }

    if (msg.source !== undefined) {
      resolved.source = BoundarySourceEnum.Resolve(msg.source)
    }
    else {
      resolved.source = new BoundarySourceEnum()
    }

    if (msg.scene_type !== undefined) {
      resolved.scene_type = LaneBoundarySceneTypeEnum.Resolve(msg.scene_type)
    }
    else {
      resolved.scene_type = new LaneBoundarySceneTypeEnum()
    }

    if (msg.special_type !== undefined) {
      resolved.special_type = LaneBoundarySpecialTypeEnum.Resolve(msg.special_type)
    }
    else {
      resolved.special_type = new LaneBoundarySpecialTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
LaneBoundaryNode.Constants = {
  SCORE_VALID: 1,
  COEFFICIENT_BV_VALID: 2,
  TYPE_VALID: 4,
  COLOR_VALID: 8,
  WIDTH_TYPE_VALID: 16,
  LINE_WIDTH_VALID: 32,
  LINE_POINTS_VALID: 64,
  IS_VIRTUAL_VALID: 128,
  DIRECTION_TYPE_VALID: 256,
  SOURCE_VALID: 512,
  SCENE_TYPE_VALID: 1024,
  SPECIAL_TYPE_VALID: 2048,
}

module.exports = LaneBoundaryNode;
