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
let ImageRetrievalDescriptorPerception = require('./ImageRetrievalDescriptorPerception.js');
let FeaturePointPerception = require('./FeaturePointPerception.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GeneralFeaturePerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.image_retrieval_descriptor_perception = null;
      this.feature_point_perception = null;
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
      if (initObj.hasOwnProperty('image_retrieval_descriptor_perception')) {
        this.image_retrieval_descriptor_perception = initObj.image_retrieval_descriptor_perception
      }
      else {
        this.image_retrieval_descriptor_perception = new ImageRetrievalDescriptorPerception();
      }
      if (initObj.hasOwnProperty('feature_point_perception')) {
        this.feature_point_perception = initObj.feature_point_perception
      }
      else {
        this.feature_point_perception = new FeaturePointPerception();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeneralFeaturePerception
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [image_retrieval_descriptor_perception]
    bufferOffset = ImageRetrievalDescriptorPerception.serialize(obj.image_retrieval_descriptor_perception, buffer, bufferOffset);
    // Serialize message field [feature_point_perception]
    bufferOffset = FeaturePointPerception.serialize(obj.feature_point_perception, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeneralFeaturePerception
    let len;
    let data = new GeneralFeaturePerception(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_retrieval_descriptor_perception]
    data.image_retrieval_descriptor_perception = ImageRetrievalDescriptorPerception.deserialize(buffer, bufferOffset);
    // Deserialize message field [feature_point_perception]
    data.feature_point_perception = FeaturePointPerception.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionMeta.getMessageSize(object.meta);
    length += ImageRetrievalDescriptorPerception.getMessageSize(object.image_retrieval_descriptor_perception);
    length += FeaturePointPerception.getMessageSize(object.feature_point_perception);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/GeneralFeaturePerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4da5da729097f5521290e59804909575';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    perception_interface_msgs/ImageRetrievalDescriptorPerception image_retrieval_descriptor_perception
    perception_interface_msgs/FeaturePointPerception feature_point_perception
    
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
    MSG: perception_interface_msgs/ImageRetrievalDescriptorPerception
    uint8 VISION_PERCEPTION_IMAGE_RETRIEVAL_DESCRIPTOR_RESULT = 1
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    uint64 available
    perception_interface_msgs/ImageRetrievalDescriptor image_descriptor
    
    ================================================================================
    MSG: perception_interface_msgs/ImageRetrievalDescriptor
    string tag
    uint8 available
    float32[] feature_descriptor
    string log_info_2d
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/FeaturePointPerception
    uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    uint8 available
    perception_interface_msgs/FeaturePointArray[] feature_point_arrays
    
    ================================================================================
    MSG: perception_interface_msgs/FeaturePointArray
    string tag
    uint8 available
    int32 num_point
    uint32[] track_ids
    float32[] point_xs
    float32[] point_ys
    int32 descriptor_size
    float32[] descriptors
    string log_info_2d
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeneralFeaturePerception(null);
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

    if (msg.image_retrieval_descriptor_perception !== undefined) {
      resolved.image_retrieval_descriptor_perception = ImageRetrievalDescriptorPerception.Resolve(msg.image_retrieval_descriptor_perception)
    }
    else {
      resolved.image_retrieval_descriptor_perception = new ImageRetrievalDescriptorPerception()
    }

    if (msg.feature_point_perception !== undefined) {
      resolved.feature_point_perception = FeaturePointPerception.Resolve(msg.feature_point_perception)
    }
    else {
      resolved.feature_point_perception = new FeaturePointPerception()
    }

    return resolved;
    }
};

module.exports = GeneralFeaturePerception;
