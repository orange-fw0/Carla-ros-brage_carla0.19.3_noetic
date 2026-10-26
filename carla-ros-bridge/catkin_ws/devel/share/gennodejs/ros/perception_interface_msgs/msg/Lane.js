// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let LaneTypeEnum = require('./LaneTypeEnum.js');
let LaneColorEnum = require('./LaneColorEnum.js');
let LaneHorizontalTypeEnum = require('./LaneHorizontalTypeEnum.js');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.index = null;
      this.points_2d_x = null;
      this.points_2d_y = null;
      this.points_2d_v = null;
      this.track_id = null;
      this.coefficient_bv = null;
      this.coefficient_bv_sigma = null;
      this.is_failed_3d = null;
      this.lane_type = null;
      this.lane_color = null;
      this.lane_width = null;
      this.is_centerline = null;
      this.points_3d_x = null;
      this.points_3d_y = null;
      this.points_3d_z = null;
      this.is_horizontal_line = null;
      this.lane_horizontal_type = null;
      this.stopline_depth = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_source')) {
        this.camera_source = initObj.camera_source
      }
      else {
        this.camera_source = new CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new CameraModelEnum();
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
      if (initObj.hasOwnProperty('points_2d_x')) {
        this.points_2d_x = initObj.points_2d_x
      }
      else {
        this.points_2d_x = [];
      }
      if (initObj.hasOwnProperty('points_2d_y')) {
        this.points_2d_y = initObj.points_2d_y
      }
      else {
        this.points_2d_y = [];
      }
      if (initObj.hasOwnProperty('points_2d_v')) {
        this.points_2d_v = initObj.points_2d_v
      }
      else {
        this.points_2d_v = [];
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('coefficient_bv')) {
        this.coefficient_bv = initObj.coefficient_bv
      }
      else {
        this.coefficient_bv = [];
      }
      if (initObj.hasOwnProperty('coefficient_bv_sigma')) {
        this.coefficient_bv_sigma = initObj.coefficient_bv_sigma
      }
      else {
        this.coefficient_bv_sigma = [];
      }
      if (initObj.hasOwnProperty('is_failed_3d')) {
        this.is_failed_3d = initObj.is_failed_3d
      }
      else {
        this.is_failed_3d = false;
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = new LaneTypeEnum();
      }
      if (initObj.hasOwnProperty('lane_color')) {
        this.lane_color = initObj.lane_color
      }
      else {
        this.lane_color = new LaneColorEnum();
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('is_centerline')) {
        this.is_centerline = initObj.is_centerline
      }
      else {
        this.is_centerline = false;
      }
      if (initObj.hasOwnProperty('points_3d_x')) {
        this.points_3d_x = initObj.points_3d_x
      }
      else {
        this.points_3d_x = [];
      }
      if (initObj.hasOwnProperty('points_3d_y')) {
        this.points_3d_y = initObj.points_3d_y
      }
      else {
        this.points_3d_y = [];
      }
      if (initObj.hasOwnProperty('points_3d_z')) {
        this.points_3d_z = initObj.points_3d_z
      }
      else {
        this.points_3d_z = [];
      }
      if (initObj.hasOwnProperty('is_horizontal_line')) {
        this.is_horizontal_line = initObj.is_horizontal_line
      }
      else {
        this.is_horizontal_line = false;
      }
      if (initObj.hasOwnProperty('lane_horizontal_type')) {
        this.lane_horizontal_type = initObj.lane_horizontal_type
      }
      else {
        this.lane_horizontal_type = new LaneHorizontalTypeEnum();
      }
      if (initObj.hasOwnProperty('stopline_depth')) {
        this.stopline_depth = initObj.stopline_depth
      }
      else {
        this.stopline_depth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [points_2d_x]
    bufferOffset = _arraySerializer.float32(obj.points_2d_x, buffer, bufferOffset, null);
    // Serialize message field [points_2d_y]
    bufferOffset = _arraySerializer.float32(obj.points_2d_y, buffer, bufferOffset, null);
    // Serialize message field [points_2d_v]
    bufferOffset = _arraySerializer.float32(obj.points_2d_v, buffer, bufferOffset, null);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [coefficient_bv]
    bufferOffset = _arraySerializer.float32(obj.coefficient_bv, buffer, bufferOffset, null);
    // Serialize message field [coefficient_bv_sigma]
    bufferOffset = _arraySerializer.float32(obj.coefficient_bv_sigma, buffer, bufferOffset, null);
    // Serialize message field [is_failed_3d]
    bufferOffset = _serializer.bool(obj.is_failed_3d, buffer, bufferOffset);
    // Serialize message field [lane_type]
    bufferOffset = LaneTypeEnum.serialize(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [lane_color]
    bufferOffset = LaneColorEnum.serialize(obj.lane_color, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float32(obj.lane_width, buffer, bufferOffset);
    // Serialize message field [is_centerline]
    bufferOffset = _serializer.bool(obj.is_centerline, buffer, bufferOffset);
    // Serialize message field [points_3d_x]
    bufferOffset = _arraySerializer.float32(obj.points_3d_x, buffer, bufferOffset, null);
    // Serialize message field [points_3d_y]
    bufferOffset = _arraySerializer.float32(obj.points_3d_y, buffer, bufferOffset, null);
    // Serialize message field [points_3d_z]
    bufferOffset = _arraySerializer.float32(obj.points_3d_z, buffer, bufferOffset, null);
    // Serialize message field [is_horizontal_line]
    bufferOffset = _serializer.bool(obj.is_horizontal_line, buffer, bufferOffset);
    // Serialize message field [lane_horizontal_type]
    bufferOffset = LaneHorizontalTypeEnum.serialize(obj.lane_horizontal_type, buffer, bufferOffset);
    // Serialize message field [stopline_depth]
    bufferOffset = _serializer.float32(obj.stopline_depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [points_2d_x]
    data.points_2d_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_2d_y]
    data.points_2d_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_2d_v]
    data.points_2d_v = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [coefficient_bv]
    data.coefficient_bv = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [coefficient_bv_sigma]
    data.coefficient_bv_sigma = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [is_failed_3d]
    data.is_failed_3d = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_type]
    data.lane_type = LaneTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_color]
    data.lane_color = LaneColorEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_centerline]
    data.is_centerline = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [points_3d_x]
    data.points_3d_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_y]
    data.points_3d_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_z]
    data.points_3d_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [is_horizontal_line]
    data.is_horizontal_line = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_horizontal_type]
    data.lane_horizontal_type = LaneHorizontalTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [stopline_depth]
    data.stopline_depth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.points_2d_x.length;
    length += 4 * object.points_2d_y.length;
    length += 4 * object.points_2d_v.length;
    length += 4 * object.coefficient_bv.length;
    length += 4 * object.coefficient_bv_sigma.length;
    length += 4 * object.points_3d_x.length;
    length += 4 * object.points_3d_y.length;
    length += 4 * object.points_3d_z.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c090d577c839919bdddc3cf4b5544027';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    int32 index
    float32[] points_2d_x
    float32[] points_2d_y
    float32[] points_2d_v
    uint32 track_id
    float32[] coefficient_bv
    float32[] coefficient_bv_sigma
    bool is_failed_3d
    perception_interface_msgs/LaneTypeEnum lane_type
    perception_interface_msgs/LaneColorEnum lane_color
    float32 lane_width
    bool is_centerline
    float32[] points_3d_x
    float32[] points_3d_y
    float32[] points_3d_z
    bool is_horizontal_line
    perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type
    float32 stopline_depth
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/LaneTypeEnum
    uint8 LANE_TYPE_UNKNOWN = 0
    uint8 LANE_TYPE_DASHED = 1
    uint8 LANE_TYPE_SOLID = 2
    uint8 LANE_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/LaneColorEnum
    uint8 LANE_COLOR_UNKNOWN = 0
    uint8 LANE_COLOR_WHITE = 1
    uint8 LANE_COLOR_YELLOW = 2
    uint8 LANE_COLOR_RED = 3
    uint8 LANE_COLOR_BLUE = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/LaneHorizontalTypeEnum
    uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0
    uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1
    uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2
    uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lane(null);
    if (msg.camera_source !== undefined) {
      resolved.camera_source = CameraSourceEnum.Resolve(msg.camera_source)
    }
    else {
      resolved.camera_source = new CameraSourceEnum()
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = CameraModelEnum.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new CameraModelEnum()
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

    if (msg.points_2d_x !== undefined) {
      resolved.points_2d_x = msg.points_2d_x;
    }
    else {
      resolved.points_2d_x = []
    }

    if (msg.points_2d_y !== undefined) {
      resolved.points_2d_y = msg.points_2d_y;
    }
    else {
      resolved.points_2d_y = []
    }

    if (msg.points_2d_v !== undefined) {
      resolved.points_2d_v = msg.points_2d_v;
    }
    else {
      resolved.points_2d_v = []
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.coefficient_bv !== undefined) {
      resolved.coefficient_bv = msg.coefficient_bv;
    }
    else {
      resolved.coefficient_bv = []
    }

    if (msg.coefficient_bv_sigma !== undefined) {
      resolved.coefficient_bv_sigma = msg.coefficient_bv_sigma;
    }
    else {
      resolved.coefficient_bv_sigma = []
    }

    if (msg.is_failed_3d !== undefined) {
      resolved.is_failed_3d = msg.is_failed_3d;
    }
    else {
      resolved.is_failed_3d = false
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = LaneTypeEnum.Resolve(msg.lane_type)
    }
    else {
      resolved.lane_type = new LaneTypeEnum()
    }

    if (msg.lane_color !== undefined) {
      resolved.lane_color = LaneColorEnum.Resolve(msg.lane_color)
    }
    else {
      resolved.lane_color = new LaneColorEnum()
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    if (msg.is_centerline !== undefined) {
      resolved.is_centerline = msg.is_centerline;
    }
    else {
      resolved.is_centerline = false
    }

    if (msg.points_3d_x !== undefined) {
      resolved.points_3d_x = msg.points_3d_x;
    }
    else {
      resolved.points_3d_x = []
    }

    if (msg.points_3d_y !== undefined) {
      resolved.points_3d_y = msg.points_3d_y;
    }
    else {
      resolved.points_3d_y = []
    }

    if (msg.points_3d_z !== undefined) {
      resolved.points_3d_z = msg.points_3d_z;
    }
    else {
      resolved.points_3d_z = []
    }

    if (msg.is_horizontal_line !== undefined) {
      resolved.is_horizontal_line = msg.is_horizontal_line;
    }
    else {
      resolved.is_horizontal_line = false
    }

    if (msg.lane_horizontal_type !== undefined) {
      resolved.lane_horizontal_type = LaneHorizontalTypeEnum.Resolve(msg.lane_horizontal_type)
    }
    else {
      resolved.lane_horizontal_type = new LaneHorizontalTypeEnum()
    }

    if (msg.stopline_depth !== undefined) {
      resolved.stopline_depth = msg.stopline_depth;
    }
    else {
      resolved.stopline_depth = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;
