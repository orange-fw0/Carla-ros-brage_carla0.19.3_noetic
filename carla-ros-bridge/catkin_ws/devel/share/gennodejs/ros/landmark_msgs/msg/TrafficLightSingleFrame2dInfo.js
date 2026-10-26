// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let TrafficLightBBoxTypeEnum = require('./TrafficLightBBoxTypeEnum.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');
let TrafficLightStatusEnum = require('./TrafficLightStatusEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class TrafficLightSingleFrame2dInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.bounding_box_2d = null;
      this.onoff = null;
      this.group_type_scores = null;
      this.shape_scores = null;
      this.onoff_scores = null;
      this.count_number = null;
      this.bbox_type = null;
      this.pattern = null;
      this.status = null;
      this.pattern_scores = null;
      this.status_scores = null;
      this.location_bv = null;
      this.heading_theta_bv = null;
      this.reserved_info = null;
      this.available = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
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
      if (initObj.hasOwnProperty('bounding_box_2d')) {
        this.bounding_box_2d = initObj.bounding_box_2d
      }
      else {
        this.bounding_box_2d = new perception_interface_msgs.msg.Rect4f();
      }
      if (initObj.hasOwnProperty('onoff')) {
        this.onoff = initObj.onoff
      }
      else {
        this.onoff = [];
      }
      if (initObj.hasOwnProperty('group_type_scores')) {
        this.group_type_scores = initObj.group_type_scores
      }
      else {
        this.group_type_scores = [];
      }
      if (initObj.hasOwnProperty('shape_scores')) {
        this.shape_scores = initObj.shape_scores
      }
      else {
        this.shape_scores = [];
      }
      if (initObj.hasOwnProperty('onoff_scores')) {
        this.onoff_scores = initObj.onoff_scores
      }
      else {
        this.onoff_scores = [];
      }
      if (initObj.hasOwnProperty('count_number')) {
        this.count_number = initObj.count_number
      }
      else {
        this.count_number = 0;
      }
      if (initObj.hasOwnProperty('bbox_type')) {
        this.bbox_type = initObj.bbox_type
      }
      else {
        this.bbox_type = new TrafficLightBBoxTypeEnum();
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('pattern_scores')) {
        this.pattern_scores = initObj.pattern_scores
      }
      else {
        this.pattern_scores = [];
      }
      if (initObj.hasOwnProperty('status_scores')) {
        this.status_scores = initObj.status_scores
      }
      else {
        this.status_scores = [];
      }
      if (initObj.hasOwnProperty('location_bv')) {
        this.location_bv = initObj.location_bv
      }
      else {
        this.location_bv = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('heading_theta_bv')) {
        this.heading_theta_bv = initObj.heading_theta_bv
      }
      else {
        this.heading_theta_bv = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightSingleFrame2dInfo
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = perception_interface_msgs.msg.Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [onoff]
    // Serialize the length for message field [onoff]
    bufferOffset = _serializer.uint32(obj.onoff.length, buffer, bufferOffset);
    obj.onoff.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.TrafficLightOnOffEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [group_type_scores]
    bufferOffset = _arraySerializer.float32(obj.group_type_scores, buffer, bufferOffset, null);
    // Serialize message field [shape_scores]
    bufferOffset = _arraySerializer.float32(obj.shape_scores, buffer, bufferOffset, null);
    // Serialize message field [onoff_scores]
    bufferOffset = _arraySerializer.float32(obj.onoff_scores, buffer, bufferOffset, null);
    // Serialize message field [count_number]
    bufferOffset = _serializer.uint8(obj.count_number, buffer, bufferOffset);
    // Serialize message field [bbox_type]
    bufferOffset = TrafficLightBBoxTypeEnum.serialize(obj.bbox_type, buffer, bufferOffset);
    // Serialize message field [pattern]
    // Serialize the length for message field [pattern]
    bufferOffset = _serializer.uint32(obj.pattern.length, buffer, bufferOffset);
    obj.pattern.forEach((val) => {
      bufferOffset = TrafficLightPatternEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = TrafficLightStatusEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pattern_scores]
    bufferOffset = _arraySerializer.float32(obj.pattern_scores, buffer, bufferOffset, null);
    // Serialize message field [status_scores]
    bufferOffset = _arraySerializer.float32(obj.status_scores, buffer, bufferOffset, null);
    // Serialize message field [location_bv]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.location_bv, buffer, bufferOffset);
    // Serialize message field [heading_theta_bv]
    bufferOffset = _serializer.float32(obj.heading_theta_bv, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightSingleFrame2dInfo
    let len;
    let data = new TrafficLightSingleFrame2dInfo(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = perception_interface_msgs.msg.Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [onoff]
    // Deserialize array length for message field [onoff]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.onoff = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.onoff[i] = perception_interface_msgs.msg.TrafficLightOnOffEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [group_type_scores]
    data.group_type_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [shape_scores]
    data.shape_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [onoff_scores]
    data.onoff_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [count_number]
    data.count_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bbox_type]
    data.bbox_type = TrafficLightBBoxTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [pattern]
    // Deserialize array length for message field [pattern]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pattern = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pattern[i] = TrafficLightPatternEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = TrafficLightStatusEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pattern_scores]
    data.pattern_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [status_scores]
    data.status_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [location_bv]
    data.location_bv = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_theta_bv]
    data.heading_theta_bv = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.onoff.length;
    length += 4 * object.group_type_scores.length;
    length += 4 * object.shape_scores.length;
    length += 4 * object.onoff_scores.length;
    length += object.pattern.length;
    length += object.status.length;
    length += 4 * object.pattern_scores.length;
    length += 4 * object.status_scores.length;
    length += _getByteLength(object.reserved_info);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficLightSingleFrame2dInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '727176a124a0bae60e7ec4b77f231a36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 CAMERA_SOURCE_VALID = 1
    uint32 CAMERA_MODEL_VALID = 2
    uint32 SCORE_VALID = 4
    uint32 BOUNDING_BOX_2D_VALID = 8
    uint32 ONOFF_VALID = 16
    uint32 GROUP_TYPE_SCORES_VALID = 32
    uint32 SHAPE_SCORES_VALID = 64
    uint32 ONOFF_SCORES_VALID = 128
    uint32 COUNT_NUMBER_VALID = 256
    uint32 BBOX_TYPE_VALID = 512
    uint32 PATTERN_VALID = 1024
    uint32 STATUS_VALID = 2048
    uint32 PATTERN_SCORES_VALID = 4096
    uint32 STATUS_SCORES_VALID = 8192
    uint32 LOCATION_BV_VALID = 16384
    uint32 HEADING_THETA_BV_VALID = 32768
    int32 track_id
    landmark_msgs/CameraSourceEnum camera_source
    landmark_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/Rect4f bounding_box_2d
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    float32[] group_type_scores
    float32[] shape_scores
    float32[] onoff_scores
    uint8 count_number
    landmark_msgs/TrafficLightBBoxTypeEnum bbox_type
    landmark_msgs/TrafficLightPatternEnum[] pattern
    landmark_msgs/TrafficLightStatusEnum[] status
    float32[] pattern_scores
    float32[] status_scores
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    string reserved_info
    uint32 available
    
    ================================================================================
    MSG: landmark_msgs/CameraSourceEnum
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
    MSG: landmark_msgs/CameraModelEnum
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
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightOnOffEnum
    uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
    uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
    uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
    uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightBBoxTypeEnum
    uint8 LIGHT_GROUP = 0
    uint8 LIGHT_BULB = 1
    uint8 LIGHT_TYPE_GLIM_HALO = 2
    uint8 LIGHT_TYPE_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
    uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
    uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
    uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 TRAFFIC_LIGHT_STATUS_ON = 13
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
    const resolved = new TrafficLightSingleFrame2dInfo(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

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

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = perception_interface_msgs.msg.Rect4f.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new perception_interface_msgs.msg.Rect4f()
    }

    if (msg.onoff !== undefined) {
      resolved.onoff = new Array(msg.onoff.length);
      for (let i = 0; i < resolved.onoff.length; ++i) {
        resolved.onoff[i] = perception_interface_msgs.msg.TrafficLightOnOffEnum.Resolve(msg.onoff[i]);
      }
    }
    else {
      resolved.onoff = []
    }

    if (msg.group_type_scores !== undefined) {
      resolved.group_type_scores = msg.group_type_scores;
    }
    else {
      resolved.group_type_scores = []
    }

    if (msg.shape_scores !== undefined) {
      resolved.shape_scores = msg.shape_scores;
    }
    else {
      resolved.shape_scores = []
    }

    if (msg.onoff_scores !== undefined) {
      resolved.onoff_scores = msg.onoff_scores;
    }
    else {
      resolved.onoff_scores = []
    }

    if (msg.count_number !== undefined) {
      resolved.count_number = msg.count_number;
    }
    else {
      resolved.count_number = 0
    }

    if (msg.bbox_type !== undefined) {
      resolved.bbox_type = TrafficLightBBoxTypeEnum.Resolve(msg.bbox_type)
    }
    else {
      resolved.bbox_type = new TrafficLightBBoxTypeEnum()
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = new Array(msg.pattern.length);
      for (let i = 0; i < resolved.pattern.length; ++i) {
        resolved.pattern[i] = TrafficLightPatternEnum.Resolve(msg.pattern[i]);
      }
    }
    else {
      resolved.pattern = []
    }

    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = TrafficLightStatusEnum.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    if (msg.pattern_scores !== undefined) {
      resolved.pattern_scores = msg.pattern_scores;
    }
    else {
      resolved.pattern_scores = []
    }

    if (msg.status_scores !== undefined) {
      resolved.status_scores = msg.status_scores;
    }
    else {
      resolved.status_scores = []
    }

    if (msg.location_bv !== undefined) {
      resolved.location_bv = perception_interface_msgs.msg.Point3f.Resolve(msg.location_bv)
    }
    else {
      resolved.location_bv = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.heading_theta_bv !== undefined) {
      resolved.heading_theta_bv = msg.heading_theta_bv;
    }
    else {
      resolved.heading_theta_bv = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    return resolved;
    }
};

// Constants for message
TrafficLightSingleFrame2dInfo.Constants = {
  CAMERA_SOURCE_VALID: 1,
  CAMERA_MODEL_VALID: 2,
  SCORE_VALID: 4,
  BOUNDING_BOX_2D_VALID: 8,
  ONOFF_VALID: 16,
  GROUP_TYPE_SCORES_VALID: 32,
  SHAPE_SCORES_VALID: 64,
  ONOFF_SCORES_VALID: 128,
  COUNT_NUMBER_VALID: 256,
  BBOX_TYPE_VALID: 512,
  PATTERN_VALID: 1024,
  STATUS_VALID: 2048,
  PATTERN_SCORES_VALID: 4096,
  STATUS_SCORES_VALID: 8192,
  LOCATION_BV_VALID: 16384,
  HEADING_THETA_BV_VALID: 32768,
}

module.exports = TrafficLightSingleFrame2dInfo;
