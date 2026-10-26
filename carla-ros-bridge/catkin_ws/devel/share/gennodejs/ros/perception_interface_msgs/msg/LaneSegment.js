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
let Point2f = require('./Point2f.js');
let Point3f = require('./Point3f.js');
let LaneSegmentPointEnum = require('./LaneSegmentPointEnum.js');

//-----------------------------------------------------------

class LaneSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.points_2d = null;
      this.points_3d = null;
      this.points_track_id = null;
      this.points_score = null;
      this.points_type = null;
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
      if (initObj.hasOwnProperty('points_2d')) {
        this.points_2d = initObj.points_2d
      }
      else {
        this.points_2d = [];
      }
      if (initObj.hasOwnProperty('points_3d')) {
        this.points_3d = initObj.points_3d
      }
      else {
        this.points_3d = [];
      }
      if (initObj.hasOwnProperty('points_track_id')) {
        this.points_track_id = initObj.points_track_id
      }
      else {
        this.points_track_id = [];
      }
      if (initObj.hasOwnProperty('points_score')) {
        this.points_score = initObj.points_score
      }
      else {
        this.points_score = [];
      }
      if (initObj.hasOwnProperty('points_type')) {
        this.points_type = initObj.points_type
      }
      else {
        this.points_type = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSegment
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [points_2d]
    // Serialize the length for message field [points_2d]
    bufferOffset = _serializer.uint32(obj.points_2d.length, buffer, bufferOffset);
    obj.points_2d.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_3d]
    // Serialize the length for message field [points_3d]
    bufferOffset = _serializer.uint32(obj.points_3d.length, buffer, bufferOffset);
    obj.points_3d.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_track_id]
    bufferOffset = _arraySerializer.uint32(obj.points_track_id, buffer, bufferOffset, null);
    // Serialize message field [points_score]
    bufferOffset = _arraySerializer.float32(obj.points_score, buffer, bufferOffset, null);
    // Serialize message field [points_type]
    // Serialize the length for message field [points_type]
    bufferOffset = _serializer.uint32(obj.points_type.length, buffer, bufferOffset);
    obj.points_type.forEach((val) => {
      bufferOffset = LaneSegmentPointEnum.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSegment
    let len;
    let data = new LaneSegment(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [points_2d]
    // Deserialize array length for message field [points_2d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_2d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_2d[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_3d]
    // Deserialize array length for message field [points_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_3d[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_track_id]
    data.points_track_id = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [points_score]
    data.points_score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_type]
    // Deserialize array length for message field [points_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_type[i] = LaneSegmentPointEnum.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.points_2d.length;
    length += 12 * object.points_3d.length;
    length += 4 * object.points_track_id.length;
    length += 4 * object.points_score.length;
    length += object.points_type.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LaneSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8607590451aa3fdae38e45f1c9697b3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/Point2f[] points_2d
    perception_interface_msgs/Point3f[] points_3d
    uint32[] points_track_id
    float32[] points_score
    perception_interface_msgs/LaneSegmentPointEnum[] points_type
    
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
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/LaneSegmentPointEnum
    uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
    uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
    uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
    uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
    uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSegment(null);
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

    if (msg.points_2d !== undefined) {
      resolved.points_2d = new Array(msg.points_2d.length);
      for (let i = 0; i < resolved.points_2d.length; ++i) {
        resolved.points_2d[i] = Point2f.Resolve(msg.points_2d[i]);
      }
    }
    else {
      resolved.points_2d = []
    }

    if (msg.points_3d !== undefined) {
      resolved.points_3d = new Array(msg.points_3d.length);
      for (let i = 0; i < resolved.points_3d.length; ++i) {
        resolved.points_3d[i] = Point3f.Resolve(msg.points_3d[i]);
      }
    }
    else {
      resolved.points_3d = []
    }

    if (msg.points_track_id !== undefined) {
      resolved.points_track_id = msg.points_track_id;
    }
    else {
      resolved.points_track_id = []
    }

    if (msg.points_score !== undefined) {
      resolved.points_score = msg.points_score;
    }
    else {
      resolved.points_score = []
    }

    if (msg.points_type !== undefined) {
      resolved.points_type = new Array(msg.points_type.length);
      for (let i = 0; i < resolved.points_type.length; ++i) {
        resolved.points_type[i] = LaneSegmentPointEnum.Resolve(msg.points_type[i]);
      }
    }
    else {
      resolved.points_type = []
    }

    return resolved;
    }
};

module.exports = LaneSegment;
