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
let LidarRoadEdgeTypeEnum = require('./LidarRoadEdgeTypeEnum.js');

//-----------------------------------------------------------

class RoadEdge {
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
      this.points_3d_x = null;
      this.points_3d_y = null;
      this.points_3d_z = null;
      this.lidar_roadedge_type = null;
      this.points_3d_hmi_x = null;
      this.points_3d_hmi_y = null;
      this.points_3d_hmi_z = null;
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
      if (initObj.hasOwnProperty('lidar_roadedge_type')) {
        this.lidar_roadedge_type = initObj.lidar_roadedge_type
      }
      else {
        this.lidar_roadedge_type = new LidarRoadEdgeTypeEnum();
      }
      if (initObj.hasOwnProperty('points_3d_hmi_x')) {
        this.points_3d_hmi_x = initObj.points_3d_hmi_x
      }
      else {
        this.points_3d_hmi_x = [];
      }
      if (initObj.hasOwnProperty('points_3d_hmi_y')) {
        this.points_3d_hmi_y = initObj.points_3d_hmi_y
      }
      else {
        this.points_3d_hmi_y = [];
      }
      if (initObj.hasOwnProperty('points_3d_hmi_z')) {
        this.points_3d_hmi_z = initObj.points_3d_hmi_z
      }
      else {
        this.points_3d_hmi_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadEdge
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
    // Serialize message field [points_3d_x]
    bufferOffset = _arraySerializer.float32(obj.points_3d_x, buffer, bufferOffset, null);
    // Serialize message field [points_3d_y]
    bufferOffset = _arraySerializer.float32(obj.points_3d_y, buffer, bufferOffset, null);
    // Serialize message field [points_3d_z]
    bufferOffset = _arraySerializer.float32(obj.points_3d_z, buffer, bufferOffset, null);
    // Serialize message field [lidar_roadedge_type]
    bufferOffset = LidarRoadEdgeTypeEnum.serialize(obj.lidar_roadedge_type, buffer, bufferOffset);
    // Serialize message field [points_3d_hmi_x]
    bufferOffset = _arraySerializer.float32(obj.points_3d_hmi_x, buffer, bufferOffset, null);
    // Serialize message field [points_3d_hmi_y]
    bufferOffset = _arraySerializer.float32(obj.points_3d_hmi_y, buffer, bufferOffset, null);
    // Serialize message field [points_3d_hmi_z]
    bufferOffset = _arraySerializer.float32(obj.points_3d_hmi_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadEdge
    let len;
    let data = new RoadEdge(null);
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
    // Deserialize message field [points_3d_x]
    data.points_3d_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_y]
    data.points_3d_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_z]
    data.points_3d_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lidar_roadedge_type]
    data.lidar_roadedge_type = LidarRoadEdgeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [points_3d_hmi_x]
    data.points_3d_hmi_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_hmi_y]
    data.points_3d_hmi_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_3d_hmi_z]
    data.points_3d_hmi_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
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
    length += 4 * object.points_3d_hmi_x.length;
    length += 4 * object.points_3d_hmi_y.length;
    length += 4 * object.points_3d_hmi_z.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RoadEdge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69e4eb37a4fd3fdfa7e21c9c8cf96d82';
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
    float32[] points_3d_x
    float32[] points_3d_y
    float32[] points_3d_z
    perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type
    float32[] points_3d_hmi_x
    float32[] points_3d_hmi_y
    float32[] points_3d_hmi_z
    
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
    MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum
    uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0
    uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1
    uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2
    uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadEdge(null);
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

    if (msg.lidar_roadedge_type !== undefined) {
      resolved.lidar_roadedge_type = LidarRoadEdgeTypeEnum.Resolve(msg.lidar_roadedge_type)
    }
    else {
      resolved.lidar_roadedge_type = new LidarRoadEdgeTypeEnum()
    }

    if (msg.points_3d_hmi_x !== undefined) {
      resolved.points_3d_hmi_x = msg.points_3d_hmi_x;
    }
    else {
      resolved.points_3d_hmi_x = []
    }

    if (msg.points_3d_hmi_y !== undefined) {
      resolved.points_3d_hmi_y = msg.points_3d_hmi_y;
    }
    else {
      resolved.points_3d_hmi_y = []
    }

    if (msg.points_3d_hmi_z !== undefined) {
      resolved.points_3d_hmi_z = msg.points_3d_hmi_z;
    }
    else {
      resolved.points_3d_hmi_z = []
    }

    return resolved;
    }
};

module.exports = RoadEdge;
