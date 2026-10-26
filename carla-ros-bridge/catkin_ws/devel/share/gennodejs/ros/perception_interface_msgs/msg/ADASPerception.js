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
let ADASPerceptionResult = require('./ADASPerceptionResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADASPerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.available = null;
      this.adas_perception_result = null;
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
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('adas_perception_result')) {
        this.adas_perception_result = initObj.adas_perception_result
      }
      else {
        this.adas_perception_result = new ADASPerceptionResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADASPerception
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [adas_perception_result]
    bufferOffset = ADASPerceptionResult.serialize(obj.adas_perception_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADASPerception
    let len;
    let data = new ADASPerception(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [adas_perception_result]
    data.adas_perception_result = ADASPerceptionResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionMeta.getMessageSize(object.meta);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ADASPerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cf89c4ea609bed42d56384ed2447972';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VISION_PERCEPTION_ADAS_PERCEPTION_RESULT = 1
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    uint64 available
    perception_interface_msgs/ADASPerceptionResult adas_perception_result
    
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
    MSG: perception_interface_msgs/ADASPerceptionResult
    uint8 ihc_highbeam_on
    float64 ihc_highbeam_score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADASPerception(null);
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

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.adas_perception_result !== undefined) {
      resolved.adas_perception_result = ADASPerceptionResult.Resolve(msg.adas_perception_result)
    }
    else {
      resolved.adas_perception_result = new ADASPerceptionResult()
    }

    return resolved;
    }
};

// Constants for message
ADASPerception.Constants = {
  VISION_PERCEPTION_ADAS_PERCEPTION_RESULT: 1,
}

module.exports = ADASPerception;
