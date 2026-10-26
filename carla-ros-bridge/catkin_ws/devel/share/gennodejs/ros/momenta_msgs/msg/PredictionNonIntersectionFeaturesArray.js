// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionNonIntersectionFeatures = require('./PredictionNonIntersectionFeatures.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionNonIntersectionFeaturesArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.non_intersection_features_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('non_intersection_features_array')) {
        this.non_intersection_features_array = initObj.non_intersection_features_array
      }
      else {
        this.non_intersection_features_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionNonIntersectionFeaturesArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [non_intersection_features_array]
    // Serialize the length for message field [non_intersection_features_array]
    bufferOffset = _serializer.uint32(obj.non_intersection_features_array.length, buffer, bufferOffset);
    obj.non_intersection_features_array.forEach((val) => {
      bufferOffset = PredictionNonIntersectionFeatures.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionNonIntersectionFeaturesArray
    let len;
    let data = new PredictionNonIntersectionFeaturesArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [non_intersection_features_array]
    // Deserialize array length for message field [non_intersection_features_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.non_intersection_features_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.non_intersection_features_array[i] = PredictionNonIntersectionFeatures.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.non_intersection_features_array.forEach((val) => {
      length += PredictionNonIntersectionFeatures.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionNonIntersectionFeaturesArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '447179f350de76a6185b1a5668d18ec7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/PredictionNonIntersectionFeatures[] non_intersection_features_array
    
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
    MSG: momenta_msgs/PredictionNonIntersectionFeatures
    std_msgs/Header header
    bool is_feature_invalid
    int32 id
    int32 type
    float32 x
    float32 y
    float32 s
    float32 r
    float32 yaw
    float32 diff_theta_car_lane
    float32 v
    float32 v_s
    float32 v_r
    float32 acc
    float32 acc_s
    float32 acc_r
    int32 lane_index
    float32 lane_width
    float32 distance_left_lane
    float32 distance_right_lane
    float32 distance_mid_lane
    float32 distance_left_road
    float32 distance_right_road
    float32 is_left_lane_solid
    float32 is_right_lane_solid
    float32 is_most_left_lane
    float32 is_most_right_lane
    momenta_msgs/PredictionAroundCarFeature[] around_car_feature
    float32 diff_prev_yaw
    float32 diff_prev_velocity
    float32 diff_prev_velocity_s
    float32 diff_prev_velocity_r
    float32 diff_prev_acc
    float32 diff_prev_acc_s
    float32 diff_prev_acc_r
    float32 diff_prev_distance_mid_lane
    float32 diff_prev_multi_yaw
    float32 diff_prev_multi_velocity
    float32 diff_prev_multi_velocity_s
    float32 diff_prev_multi_velocity_r
    float32 diff_prev_multi_acc
    float32 diff_prev_multi_acc_s
    float32 diff_prev_multi_acc_r
    float32 diff_prev_multi_distance_mid_lane
    float32 is_left_half_lane
    float32 is_right_half_lane
    float32 previous_intention
    
    ================================================================================
    MSG: momenta_msgs/PredictionAroundCarFeature
    float32 relative_s
    float32 relative_r
    float32 relative_v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionNonIntersectionFeaturesArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.non_intersection_features_array !== undefined) {
      resolved.non_intersection_features_array = new Array(msg.non_intersection_features_array.length);
      for (let i = 0; i < resolved.non_intersection_features_array.length; ++i) {
        resolved.non_intersection_features_array[i] = PredictionNonIntersectionFeatures.Resolve(msg.non_intersection_features_array[i]);
      }
    }
    else {
      resolved.non_intersection_features_array = []
    }

    return resolved;
    }
};

module.exports = PredictionNonIntersectionFeaturesArray;
