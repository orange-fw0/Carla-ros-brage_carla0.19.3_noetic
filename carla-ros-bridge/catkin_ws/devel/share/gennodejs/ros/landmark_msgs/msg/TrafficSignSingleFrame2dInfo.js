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
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class TrafficSignSingleFrame2dInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.bounding_box_2d = null;
      this.sign_type_score = null;
      this.attr_names = null;
      this.attr_scores = null;
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
      if (initObj.hasOwnProperty('sign_type_score')) {
        this.sign_type_score = initObj.sign_type_score
      }
      else {
        this.sign_type_score = 0.0;
      }
      if (initObj.hasOwnProperty('attr_names')) {
        this.attr_names = initObj.attr_names
      }
      else {
        this.attr_names = [];
      }
      if (initObj.hasOwnProperty('attr_scores')) {
        this.attr_scores = initObj.attr_scores
      }
      else {
        this.attr_scores = [];
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
    // Serializes a message object of type TrafficSignSingleFrame2dInfo
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
    // Serialize message field [sign_type_score]
    bufferOffset = _serializer.float32(obj.sign_type_score, buffer, bufferOffset);
    // Serialize message field [attr_names]
    bufferOffset = _arraySerializer.string(obj.attr_names, buffer, bufferOffset, null);
    // Serialize message field [attr_scores]
    bufferOffset = _arraySerializer.float32(obj.attr_scores, buffer, bufferOffset, null);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignSingleFrame2dInfo
    let len;
    let data = new TrafficSignSingleFrame2dInfo(null);
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
    // Deserialize message field [sign_type_score]
    data.sign_type_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [attr_names]
    data.attr_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [attr_scores]
    data.attr_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.attr_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.attr_scores.length;
    length += _getByteLength(object.reserved_info);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignSingleFrame2dInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '740bdf5646f0620d9358d7bd0b552186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 CAMERA_SOURCE_VALID = 1
    uint32 CAMERA_MODEL_VALID = 2
    uint32 SCORE_VALID = 4
    uint32 BOUNDING_BOX_2D_VALID = 8
    uint32 SIGN_TYPE_SCORE_VALID = 16
    uint32 ATTR_NAMES_VALID = 32
    uint32 ATTR_SCORES_VALID = 64
    int32 track_id
    landmark_msgs/CameraSourceEnum camera_source
    landmark_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/Rect4f bounding_box_2d
    float32 sign_type_score
    string[] attr_names
    float32[] attr_scores
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignSingleFrame2dInfo(null);
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

    if (msg.sign_type_score !== undefined) {
      resolved.sign_type_score = msg.sign_type_score;
    }
    else {
      resolved.sign_type_score = 0.0
    }

    if (msg.attr_names !== undefined) {
      resolved.attr_names = msg.attr_names;
    }
    else {
      resolved.attr_names = []
    }

    if (msg.attr_scores !== undefined) {
      resolved.attr_scores = msg.attr_scores;
    }
    else {
      resolved.attr_scores = []
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
TrafficSignSingleFrame2dInfo.Constants = {
  CAMERA_SOURCE_VALID: 1,
  CAMERA_MODEL_VALID: 2,
  SCORE_VALID: 4,
  BOUNDING_BOX_2D_VALID: 8,
  SIGN_TYPE_SCORE_VALID: 16,
  ATTR_NAMES_VALID: 32,
  ATTR_SCORES_VALID: 64,
}

module.exports = TrafficSignSingleFrame2dInfo;
