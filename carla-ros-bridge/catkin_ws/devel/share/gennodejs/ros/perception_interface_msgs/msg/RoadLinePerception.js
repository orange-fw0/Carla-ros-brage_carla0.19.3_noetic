// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionMeta = require('./PerceptionMeta.js');
let LanePerception = require('./LanePerception.js');
let RoadEdgePerception = require('./RoadEdgePerception.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoadLinePerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.lane_perception = null;
      this.road_edge_perception = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new PerceptionMeta();
      }
      if (initObj.hasOwnProperty('lane_perception')) {
        this.lane_perception = initObj.lane_perception
      }
      else {
        this.lane_perception = new LanePerception();
      }
      if (initObj.hasOwnProperty('road_edge_perception')) {
        this.road_edge_perception = initObj.road_edge_perception
      }
      else {
        this.road_edge_perception = new RoadEdgePerception();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadLinePerception
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [lane_perception]
    bufferOffset = LanePerception.serialize(obj.lane_perception, buffer, bufferOffset);
    // Serialize message field [road_edge_perception]
    bufferOffset = RoadEdgePerception.serialize(obj.road_edge_perception, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadLinePerception
    let len;
    let data = new RoadLinePerception(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_perception]
    data.lane_perception = LanePerception.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_edge_perception]
    data.road_edge_perception = RoadEdgePerception.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionMeta.getMessageSize(object.meta);
    length += LanePerception.getMessageSize(object.lane_perception);
    length += RoadEdgePerception.getMessageSize(object.road_edge_perception);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RoadLinePerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '071376a3398538f6af9cc0707ee1fe0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    perception_interface_msgs/LanePerception lane_perception
    perception_interface_msgs/RoadEdgePerception road_edge_perception
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionMeta
    string algorithm_name
    string instance_name
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    perception_interface_msgs/FrameMeta[] relevant_frames
    string version_tag
    string ts_log
    uint64 sequence
    string task_tag
    
    ================================================================================
    MSG: perception_interface_msgs/FrameMeta
    uint64 timestamp_us
    uint64 sequence
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    
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
    MSG: perception_interface_msgs/LanePerception
    uint8 VISION_PERCEPTION_LANE_RESULT = 1
    uint8 VISION_PERCEPTION_LANE_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/Lane[] lanes
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/Lane
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
    
    ================================================================================
    MSG: perception_interface_msgs/RoadEdgePerception
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
    const resolved = new RoadLinePerception(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionMeta()
    }

    if (msg.lane_perception !== undefined) {
      resolved.lane_perception = LanePerception.Resolve(msg.lane_perception)
    }
    else {
      resolved.lane_perception = new LanePerception()
    }

    if (msg.road_edge_perception !== undefined) {
      resolved.road_edge_perception = RoadEdgePerception.Resolve(msg.road_edge_perception)
    }
    else {
      resolved.road_edge_perception = new RoadEdgePerception()
    }

    return resolved;
    }
};

module.exports = RoadLinePerception;
