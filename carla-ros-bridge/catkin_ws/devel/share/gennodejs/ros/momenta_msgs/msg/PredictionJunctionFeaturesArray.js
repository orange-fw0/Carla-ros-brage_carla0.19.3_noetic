// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionJunctionFeatures = require('./PredictionJunctionFeatures.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionJunctionFeaturesArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.junction_features_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('junction_features_array')) {
        this.junction_features_array = initObj.junction_features_array
      }
      else {
        this.junction_features_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionJunctionFeaturesArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [junction_features_array]
    // Serialize the length for message field [junction_features_array]
    bufferOffset = _serializer.uint32(obj.junction_features_array.length, buffer, bufferOffset);
    obj.junction_features_array.forEach((val) => {
      bufferOffset = PredictionJunctionFeatures.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionJunctionFeaturesArray
    let len;
    let data = new PredictionJunctionFeaturesArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [junction_features_array]
    // Deserialize array length for message field [junction_features_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.junction_features_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.junction_features_array[i] = PredictionJunctionFeatures.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.junction_features_array.forEach((val) => {
      length += PredictionJunctionFeatures.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionJunctionFeaturesArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45a61059944be3063e9d9cfbb6781d0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/PredictionJunctionFeatures[] junction_features_array
    
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
    MSG: momenta_msgs/PredictionJunctionFeatures
    std_msgs/Header header
    bool is_feature_invalid
    int32 id
    int32 type
    float32 x
    float32 y
    float32 yaw
    float32 diff_theta_car_lane
    float32 v
    float32 v_x
    float32 v_y
    float32 acc
    float32 acc_x
    float32 acc_y
    float32 diff_previous_yaw
    float32 diff_latest_yaw
    float32 diff_previous_x
    float32 diff_previous_y
    float32 diff_latest_x
    float32 diff_latest_y
    float32 diff_previous_v_x
    float32 diff_previous_v_y
    float32 diff_latest_v_x
    float32 diff_latest_v_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionJunctionFeaturesArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.junction_features_array !== undefined) {
      resolved.junction_features_array = new Array(msg.junction_features_array.length);
      for (let i = 0; i < resolved.junction_features_array.length; ++i) {
        resolved.junction_features_array[i] = PredictionJunctionFeatures.Resolve(msg.junction_features_array[i]);
      }
    }
    else {
      resolved.junction_features_array = []
    }

    return resolved;
    }
};

module.exports = PredictionJunctionFeaturesArray;
