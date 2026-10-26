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
let GroundLineTypeEnum = require('./GroundLineTypeEnum.js');
let Point2f = require('./Point2f.js');
let Point3f = require('./Point3f.js');
let GroundLine3dPointTypeEnum = require('./GroundLine3dPointTypeEnum.js');

//-----------------------------------------------------------

class GroundLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.available = null;
      this.score = null;
      this.type = null;
      this.points = null;
      this.points_3d = null;
      this.points_3d_type = null;
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
        this.type = new GroundLineTypeEnum();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('points_3d')) {
        this.points_3d = initObj.points_3d
      }
      else {
        this.points_3d = [];
      }
      if (initObj.hasOwnProperty('points_3d_type')) {
        this.points_3d_type = initObj.points_3d_type
      }
      else {
        this.points_3d_type = new GroundLine3dPointTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GroundLine
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = GroundLineTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_3d]
    // Serialize the length for message field [points_3d]
    bufferOffset = _serializer.uint32(obj.points_3d.length, buffer, bufferOffset);
    obj.points_3d.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_3d_type]
    bufferOffset = GroundLine3dPointTypeEnum.serialize(obj.points_3d_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GroundLine
    let len;
    let data = new GroundLine(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = GroundLineTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_3d]
    // Deserialize array length for message field [points_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_3d[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_3d_type]
    data.points_3d_type = GroundLine3dPointTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.points.length;
    length += 12 * object.points_3d.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/GroundLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd45c85367e32120eddb07002a17e0981';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    uint8 available
    float32 score
    perception_interface_msgs/GroundLineTypeEnum type
    perception_interface_msgs/Point2f[] points
    perception_interface_msgs/Point3f[] points_3d
    perception_interface_msgs/GroundLine3dPointTypeEnum points_3d_type
    
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
    MSG: perception_interface_msgs/GroundLineTypeEnum
    uint8 GROUND_LINE_TYPE_UNKNOWN = 0
    uint8 GROUND_LINE_TYPE_WALL = 1
    uint8 GROUND_LINE_TYPE_PILLAR = 2
    uint8 GROUND_LINE_TYPE_FENCE = 3
    uint8 GROUND_LINE_TYPE_STEP = 4
    uint8 GROUND_LINE_TYPE_SPECIAL = 5
    uint8 GROUND_LINE_TYPE_POLE = 6
    uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
    uint8 GROUNDLINE_TYPE_BARRIER = 8
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
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
    MSG: perception_interface_msgs/GroundLine3dPointTypeEnum
    uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0
    uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GroundLine(null);
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
      resolved.type = GroundLineTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new GroundLineTypeEnum()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Point2f.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
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

    if (msg.points_3d_type !== undefined) {
      resolved.points_3d_type = GroundLine3dPointTypeEnum.Resolve(msg.points_3d_type)
    }
    else {
      resolved.points_3d_type = new GroundLine3dPointTypeEnum()
    }

    return resolved;
    }
};

module.exports = GroundLine;
