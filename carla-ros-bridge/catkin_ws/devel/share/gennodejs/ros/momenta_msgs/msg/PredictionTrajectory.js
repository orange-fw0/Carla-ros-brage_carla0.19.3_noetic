// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionTrajectoryPoint = require('./PredictionTrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.prob = null;
      this.prediction_interval = null;
      this.num_of_points = null;
      this.intention = null;
      this.source = null;
      this.reserved = null;
      this.const_vel_prob = null;
      this.const_acc_prob = null;
      this.still_prob = null;
      this.coord_turn_prob = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
      if (initObj.hasOwnProperty('prediction_interval')) {
        this.prediction_interval = initObj.prediction_interval
      }
      else {
        this.prediction_interval = 0.0;
      }
      if (initObj.hasOwnProperty('num_of_points')) {
        this.num_of_points = initObj.num_of_points
      }
      else {
        this.num_of_points = 0;
      }
      if (initObj.hasOwnProperty('intention')) {
        this.intention = initObj.intention
      }
      else {
        this.intention = '';
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = [];
      }
      if (initObj.hasOwnProperty('const_vel_prob')) {
        this.const_vel_prob = initObj.const_vel_prob
      }
      else {
        this.const_vel_prob = 0.0;
      }
      if (initObj.hasOwnProperty('const_acc_prob')) {
        this.const_acc_prob = initObj.const_acc_prob
      }
      else {
        this.const_acc_prob = 0.0;
      }
      if (initObj.hasOwnProperty('still_prob')) {
        this.still_prob = initObj.still_prob
      }
      else {
        this.still_prob = 0.0;
      }
      if (initObj.hasOwnProperty('coord_turn_prob')) {
        this.coord_turn_prob = initObj.coord_turn_prob
      }
      else {
        this.coord_turn_prob = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    // Serialize message field [prediction_interval]
    bufferOffset = _serializer.float32(obj.prediction_interval, buffer, bufferOffset);
    // Serialize message field [num_of_points]
    bufferOffset = _serializer.uint16(obj.num_of_points, buffer, bufferOffset);
    // Serialize message field [intention]
    bufferOffset = _serializer.string(obj.intention, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _arraySerializer.string(obj.reserved, buffer, bufferOffset, null);
    // Serialize message field [const_vel_prob]
    bufferOffset = _serializer.float32(obj.const_vel_prob, buffer, bufferOffset);
    // Serialize message field [const_acc_prob]
    bufferOffset = _serializer.float32(obj.const_acc_prob, buffer, bufferOffset);
    // Serialize message field [still_prob]
    bufferOffset = _serializer.float32(obj.still_prob, buffer, bufferOffset);
    // Serialize message field [coord_turn_prob]
    bufferOffset = _serializer.float32(obj.coord_turn_prob, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = PredictionTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionTrajectory
    let len;
    let data = new PredictionTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prediction_interval]
    data.prediction_interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_of_points]
    data.num_of_points = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [intention]
    data.intention = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [const_vel_prob]
    data.const_vel_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [const_acc_prob]
    data.const_acc_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [still_prob]
    data.still_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coord_turn_prob]
    data.coord_turn_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = PredictionTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.intention);
    length += _getByteLength(object.source);
    object.reserved.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 76 * object.trajectory.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6bca14c6fc79696f3f0073e9c34da17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PredictionTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    if (msg.prediction_interval !== undefined) {
      resolved.prediction_interval = msg.prediction_interval;
    }
    else {
      resolved.prediction_interval = 0.0
    }

    if (msg.num_of_points !== undefined) {
      resolved.num_of_points = msg.num_of_points;
    }
    else {
      resolved.num_of_points = 0
    }

    if (msg.intention !== undefined) {
      resolved.intention = msg.intention;
    }
    else {
      resolved.intention = ''
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = []
    }

    if (msg.const_vel_prob !== undefined) {
      resolved.const_vel_prob = msg.const_vel_prob;
    }
    else {
      resolved.const_vel_prob = 0.0
    }

    if (msg.const_acc_prob !== undefined) {
      resolved.const_acc_prob = msg.const_acc_prob;
    }
    else {
      resolved.const_acc_prob = 0.0
    }

    if (msg.still_prob !== undefined) {
      resolved.still_prob = msg.still_prob;
    }
    else {
      resolved.still_prob = 0.0
    }

    if (msg.coord_turn_prob !== undefined) {
      resolved.coord_turn_prob = msg.coord_turn_prob;
    }
    else {
      resolved.coord_turn_prob = 0.0
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = PredictionTrajectoryPoint.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

module.exports = PredictionTrajectory;
