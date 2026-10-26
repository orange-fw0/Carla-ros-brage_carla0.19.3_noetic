// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssCommonObstacleResult = require('./UssCommonObstacleResult.js');
let UssKeyPointObstacleResult = require('./UssKeyPointObstacleResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UltrasonicObstacleReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.available = null;
      this.uss_common_obstacle_result = null;
      this.uss_keypoint_obstacle_result = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('uss_common_obstacle_result')) {
        this.uss_common_obstacle_result = initObj.uss_common_obstacle_result
      }
      else {
        this.uss_common_obstacle_result = new UssCommonObstacleResult();
      }
      if (initObj.hasOwnProperty('uss_keypoint_obstacle_result')) {
        this.uss_keypoint_obstacle_result = initObj.uss_keypoint_obstacle_result
      }
      else {
        this.uss_keypoint_obstacle_result = new UssKeyPointObstacleResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicObstacleReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [uss_common_obstacle_result]
    bufferOffset = UssCommonObstacleResult.serialize(obj.uss_common_obstacle_result, buffer, bufferOffset);
    // Serialize message field [uss_keypoint_obstacle_result]
    bufferOffset = UssKeyPointObstacleResult.serialize(obj.uss_keypoint_obstacle_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicObstacleReport
    let len;
    let data = new UltrasonicObstacleReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uss_common_obstacle_result]
    data.uss_common_obstacle_result = UssCommonObstacleResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_keypoint_obstacle_result]
    data.uss_keypoint_obstacle_result = UssKeyPointObstacleResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += UssCommonObstacleResult.getMessageSize(object.uss_common_obstacle_result);
    length += UssKeyPointObstacleResult.getMessageSize(object.uss_keypoint_obstacle_result);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicObstacleReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f3d7de847364a57cc960d023029c960';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 COMMON_USS_OBSTACLE_DATA = 0
    uint8 KEYPOINT_USS_OBSTACLE_DATA = 1
    std_msgs/Header header
    uint8 available
    sensor_interface_msgs/UssCommonObstacleResult uss_common_obstacle_result
    sensor_interface_msgs/UssKeyPointObstacleResult uss_keypoint_obstacle_result
    
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
    MSG: sensor_interface_msgs/UssCommonObstacleResult
    sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data
    
    ================================================================================
    MSG: sensor_interface_msgs/CommonUltrasonicObstacleData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    sensor_interface_msgs/UltrasonicObjectType obj_type
    sensor_interface_msgs/UltrasonicObjectHeiType obj_height
    float32 obj_height_probability
    float32 obj_probability
    float32 obj_start_X
    float32 obj_start_Y
    float32 obj_end_X
    float32 obj_end_Y
    float32 obj_height_value
    float32 major_axis_error
    float32 minor_axis_variance
    float32 ellipse_theta_variance
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObjectType
    uint8 NONE = 0
    uint8 POINT = 1
    uint8 STRAIGHT_LINE = 2
    uint8 RAYS = 3
    uint8 LINE_SEGMENT = 5
    uint8 SNA = 7
    uint8 RESERVED_INFO = 8
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObjectHeiType
    uint8 LOW = 0
    uint8 HIGH = 1
    uint8 TRAVERSIBLE = 2
    uint8 UNKONOWN = 3
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/UssKeyPointObstacleResult
    sensor_interface_msgs/UltrasonicResultMeta meta
    sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data
    sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts
    
    ================================================================================
    MSG: sensor_interface_msgs/UssKeyPointObstacleData
    sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture
    sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UssObstaclePosture
    uint64 timestamp
    float32 posture_x
    float32 posture_y
    float32 posture_theta
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObstacleInfo
    uint64 timestamp
    float32 key_point_probability
    sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data
    
    ================================================================================
    MSG: sensor_interface_msgs/ObstacleKeyPointData
    float32 point_x
    float32 point_y
    
    ================================================================================
    MSG: sensor_interface_msgs/UssRtObstaclePtsData
    sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
    sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicObstacleReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.uss_common_obstacle_result !== undefined) {
      resolved.uss_common_obstacle_result = UssCommonObstacleResult.Resolve(msg.uss_common_obstacle_result)
    }
    else {
      resolved.uss_common_obstacle_result = new UssCommonObstacleResult()
    }

    if (msg.uss_keypoint_obstacle_result !== undefined) {
      resolved.uss_keypoint_obstacle_result = UssKeyPointObstacleResult.Resolve(msg.uss_keypoint_obstacle_result)
    }
    else {
      resolved.uss_keypoint_obstacle_result = new UssKeyPointObstacleResult()
    }

    return resolved;
    }
};

// Constants for message
UltrasonicObstacleReport.Constants = {
  COMMON_USS_OBSTACLE_DATA: 0,
  KEYPOINT_USS_OBSTACLE_DATA: 1,
}

module.exports = UltrasonicObstacleReport;
