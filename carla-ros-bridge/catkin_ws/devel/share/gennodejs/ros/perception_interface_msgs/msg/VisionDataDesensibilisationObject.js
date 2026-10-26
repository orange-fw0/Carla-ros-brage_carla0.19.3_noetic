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
let DataDesensibilisationTypeEnum = require('./DataDesensibilisationTypeEnum.js');
let Rect4f = require('./Rect4f.js');

//-----------------------------------------------------------

class VisionDataDesensibilisationObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.type_info = null;
      this.score = null;
      this.bounding_box_2d = null;
      this.bounding_box_2d_raw = null;
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
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new DataDesensibilisationTypeEnum();
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
        this.bounding_box_2d = new Rect4f();
      }
      if (initObj.hasOwnProperty('bounding_box_2d_raw')) {
        this.bounding_box_2d_raw = initObj.bounding_box_2d_raw
      }
      else {
        this.bounding_box_2d_raw = new Rect4f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionDataDesensibilisationObject
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = DataDesensibilisationTypeEnum.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d_raw]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d_raw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionDataDesensibilisationObject
    let len;
    let data = new VisionDataDesensibilisationObject(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = DataDesensibilisationTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d_raw]
    data.bounding_box_2d_raw = Rect4f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VisionDataDesensibilisationObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42ad93b377f7131bb37668dce2805721';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/DataDesensibilisationTypeEnum type_info
    float32 score
    perception_interface_msgs/Rect4f bounding_box_2d
    perception_interface_msgs/Rect4f bounding_box_2d_raw
    
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
    MSG: perception_interface_msgs/DataDesensibilisationTypeEnum
    uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0
    uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1
    uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2
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
    const resolved = new VisionDataDesensibilisationObject(null);
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

    if (msg.type_info !== undefined) {
      resolved.type_info = DataDesensibilisationTypeEnum.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new DataDesensibilisationTypeEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = Rect4f.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new Rect4f()
    }

    if (msg.bounding_box_2d_raw !== undefined) {
      resolved.bounding_box_2d_raw = Rect4f.Resolve(msg.bounding_box_2d_raw)
    }
    else {
      resolved.bounding_box_2d_raw = new Rect4f()
    }

    return resolved;
    }
};

module.exports = VisionDataDesensibilisationObject;
