// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneSegment = require('./LaneSegment.js');

//-----------------------------------------------------------

class LaneSegmentPerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lane_segments = null;
      this.reserved_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lane_segments')) {
        this.lane_segments = initObj.lane_segments
      }
      else {
        this.lane_segments = [];
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
    // Serializes a message object of type LaneSegmentPerception
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [lane_segments]
    // Serialize the length for message field [lane_segments]
    bufferOffset = _serializer.uint32(obj.lane_segments.length, buffer, bufferOffset);
    obj.lane_segments.forEach((val) => {
      bufferOffset = LaneSegment.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSegmentPerception
    let len;
    let data = new LaneSegmentPerception(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [lane_segments]
    // Deserialize array length for message field [lane_segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_segments[i] = LaneSegment.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lane_segments.forEach((val) => {
      length += LaneSegment.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LaneSegmentPerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '252f0129709487e4754e20c93387a06e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VISION_PERCEPTION_LANE_SEGMENT_RESULT = 1
    uint8 VISION_PERCEPTION_LANE_SEGMENT_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/LaneSegment[] lane_segments
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/LaneSegment
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
    const resolved = new LaneSegmentPerception(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lane_segments !== undefined) {
      resolved.lane_segments = new Array(msg.lane_segments.length);
      for (let i = 0; i < resolved.lane_segments.length; ++i) {
        resolved.lane_segments[i] = LaneSegment.Resolve(msg.lane_segments[i]);
      }
    }
    else {
      resolved.lane_segments = []
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
LaneSegmentPerception.Constants = {
  VISION_PERCEPTION_LANE_SEGMENT_RESULT: 1,
  VISION_PERCEPTION_LANE_SEGMENT_RESERVED_INFOS: 2,
}

module.exports = LaneSegmentPerception;
