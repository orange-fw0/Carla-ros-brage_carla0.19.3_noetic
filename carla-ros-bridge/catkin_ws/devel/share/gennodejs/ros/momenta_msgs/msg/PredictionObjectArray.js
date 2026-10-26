// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionObject = require('./PredictionObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_prediction_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_prediction_array')) {
        this.object_prediction_array = initObj.object_prediction_array
      }
      else {
        this.object_prediction_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionObjectArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_prediction_array]
    // Serialize the length for message field [object_prediction_array]
    bufferOffset = _serializer.uint32(obj.object_prediction_array.length, buffer, bufferOffset);
    obj.object_prediction_array.forEach((val) => {
      bufferOffset = PredictionObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionObjectArray
    let len;
    let data = new PredictionObjectArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_prediction_array]
    // Deserialize array length for message field [object_prediction_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_prediction_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_prediction_array[i] = PredictionObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.object_prediction_array.forEach((val) => {
      length += PredictionObject.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15213f9d3c29a40f0c1d740e6ae88be1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/PredictionObject[] object_prediction_array
    
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
    MSG: momenta_msgs/PredictionObject
    uint32 id
    uint32 type
    float32 position_x
    float32 position_y
    float32 length
    float32 width
    float32 speed
    float32 yaw
    float32 velocity_x
    float32 velocity_y
    float32 acc
    float32 pos_x_sigma
    float32 pos_y_sigma
    float32 rel_position_x
    float32 rel_position_y
    float32 rel_speed_x
    float32 rel_speed_y
    float32 rel_theta
    string[] reserved
    momenta_msgs/PredictionTrajectory[] trajectory_array
    
    ================================================================================
    MSG: momenta_msgs/PredictionTrajectory
    std_msgs/Header header
    float32 prob
    float32 prediction_interval
    uint16 num_of_points
    string intention
    string source
    string[] reserved
    float32 const_vel_prob
    float32 const_acc_prob
    float32 still_prob
    float32 coord_turn_prob
    momenta_msgs/PredictionTrajectoryPoint[] trajectory
    
    ================================================================================
    MSG: momenta_msgs/PredictionTrajectoryPoint
    float32 x
    float32 y
    float32 yaw
    float32 theta
    float32 speed
    float32 prob
    float32 std_dev_x
    float32 std_dev_y
    float32 sigma_xy
    float32 std_dev_yaw
    float32 std_dev_speed
    float32 relative_ego_x
    float32 relative_ego_y
    float32 relative_ego_yaw
    float32 relative_ego_speed
    float32 relative_ego_std_dev_x
    float32 relative_ego_std_dev_y
    float32 relative_ego_std_dev_yaw
    float32 relative_ego_std_dev_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionObjectArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_prediction_array !== undefined) {
      resolved.object_prediction_array = new Array(msg.object_prediction_array.length);
      for (let i = 0; i < resolved.object_prediction_array.length; ++i) {
        resolved.object_prediction_array[i] = PredictionObject.Resolve(msg.object_prediction_array[i]);
      }
    }
    else {
      resolved.object_prediction_array = []
    }

    return resolved;
    }
};

module.exports = PredictionObjectArray;
