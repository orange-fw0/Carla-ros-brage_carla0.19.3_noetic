// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadEdge = require('./RoadEdge.js');

//-----------------------------------------------------------

class RoadEdgePerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.road_edges = null;
      this.reserved_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('road_edges')) {
        this.road_edges = initObj.road_edges
      }
      else {
        this.road_edges = [];
      }
      if (initObj.hasOwnProperty('reserved_infos')) {
        this.reserved_infos = initObj.reserved_infos
      }
      else {
        this.reserved_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadEdgePerception
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [road_edges]
    // Serialize the length for message field [road_edges]
    bufferOffset = _serializer.uint32(obj.road_edges.length, buffer, bufferOffset);
    obj.road_edges.forEach((val) => {
      bufferOffset = RoadEdge.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadEdgePerception
    let len;
    let data = new RoadEdgePerception(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [road_edges]
    // Deserialize array length for message field [road_edges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_edges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_edges[i] = RoadEdge.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.road_edges.forEach((val) => {
      length += RoadEdge.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RoadEdgePerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85e703ef32750fc5a89a8876694fad2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1
    uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/RoadEdge[] road_edges
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/RoadEdge
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
    const resolved = new RoadEdgePerception(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.road_edges !== undefined) {
      resolved.road_edges = new Array(msg.road_edges.length);
      for (let i = 0; i < resolved.road_edges.length; ++i) {
        resolved.road_edges[i] = RoadEdge.Resolve(msg.road_edges[i]);
      }
    }
    else {
      resolved.road_edges = []
    }

    if (msg.reserved_infos !== undefined) {
      resolved.reserved_infos = msg.reserved_infos;
    }
    else {
      resolved.reserved_infos = []
    }

    return resolved;
    }
};

// Constants for message
RoadEdgePerception.Constants = {
  VISION_PERCEPTION_ROAD_EDGE_RESULT: 1,
  VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS: 2,
}

module.exports = RoadEdgePerception;
