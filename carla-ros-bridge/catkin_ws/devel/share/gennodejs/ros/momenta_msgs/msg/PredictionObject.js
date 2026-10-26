// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionTrajectory = require('./PredictionTrajectory.js');

//-----------------------------------------------------------

class PredictionObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.position_x = null;
      this.position_y = null;
      this.length = null;
      this.width = null;
      this.speed = null;
      this.yaw = null;
      this.velocity_x = null;
      this.velocity_y = null;
      this.acc = null;
      this.pos_x_sigma = null;
      this.pos_y_sigma = null;
      this.rel_position_x = null;
      this.rel_position_y = null;
      this.rel_speed_x = null;
      this.rel_speed_y = null;
      this.rel_theta = null;
      this.reserved = null;
      this.trajectory_array = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_x')) {
        this.velocity_x = initObj.velocity_x
      }
      else {
        this.velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_y')) {
        this.velocity_y = initObj.velocity_y
      }
      else {
        this.velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('pos_x_sigma')) {
        this.pos_x_sigma = initObj.pos_x_sigma
      }
      else {
        this.pos_x_sigma = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y_sigma')) {
        this.pos_y_sigma = initObj.pos_y_sigma
      }
      else {
        this.pos_y_sigma = 0.0;
      }
      if (initObj.hasOwnProperty('rel_position_x')) {
        this.rel_position_x = initObj.rel_position_x
      }
      else {
        this.rel_position_x = 0.0;
      }
      if (initObj.hasOwnProperty('rel_position_y')) {
        this.rel_position_y = initObj.rel_position_y
      }
      else {
        this.rel_position_y = 0.0;
      }
      if (initObj.hasOwnProperty('rel_speed_x')) {
        this.rel_speed_x = initObj.rel_speed_x
      }
      else {
        this.rel_speed_x = 0.0;
      }
      if (initObj.hasOwnProperty('rel_speed_y')) {
        this.rel_speed_y = initObj.rel_speed_y
      }
      else {
        this.rel_speed_y = 0.0;
      }
      if (initObj.hasOwnProperty('rel_theta')) {
        this.rel_theta = initObj.rel_theta
      }
      else {
        this.rel_theta = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = [];
      }
      if (initObj.hasOwnProperty('trajectory_array')) {
        this.trajectory_array = initObj.trajectory_array
      }
      else {
        this.trajectory_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionObject
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [position_x]
    bufferOffset = _serializer.float32(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float32(obj.position_y, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [velocity_x]
    bufferOffset = _serializer.float32(obj.velocity_x, buffer, bufferOffset);
    // Serialize message field [velocity_y]
    bufferOffset = _serializer.float32(obj.velocity_y, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [pos_x_sigma]
    bufferOffset = _serializer.float32(obj.pos_x_sigma, buffer, bufferOffset);
    // Serialize message field [pos_y_sigma]
    bufferOffset = _serializer.float32(obj.pos_y_sigma, buffer, bufferOffset);
    // Serialize message field [rel_position_x]
    bufferOffset = _serializer.float32(obj.rel_position_x, buffer, bufferOffset);
    // Serialize message field [rel_position_y]
    bufferOffset = _serializer.float32(obj.rel_position_y, buffer, bufferOffset);
    // Serialize message field [rel_speed_x]
    bufferOffset = _serializer.float32(obj.rel_speed_x, buffer, bufferOffset);
    // Serialize message field [rel_speed_y]
    bufferOffset = _serializer.float32(obj.rel_speed_y, buffer, bufferOffset);
    // Serialize message field [rel_theta]
    bufferOffset = _serializer.float32(obj.rel_theta, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _arraySerializer.string(obj.reserved, buffer, bufferOffset, null);
    // Serialize message field [trajectory_array]
    // Serialize the length for message field [trajectory_array]
    bufferOffset = _serializer.uint32(obj.trajectory_array.length, buffer, bufferOffset);
    obj.trajectory_array.forEach((val) => {
      bufferOffset = PredictionTrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionObject
    let len;
    let data = new PredictionObject(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_x]
    data.velocity_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_y]
    data.velocity_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_x_sigma]
    data.pos_x_sigma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_y_sigma]
    data.pos_y_sigma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_position_x]
    data.rel_position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_position_y]
    data.rel_position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_speed_x]
    data.rel_speed_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_speed_y]
    data.rel_speed_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_theta]
    data.rel_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [trajectory_array]
    // Deserialize array length for message field [trajectory_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_array[i] = PredictionTrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.reserved.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.trajectory_array.forEach((val) => {
      length += PredictionTrajectory.getMessageSize(val);
    });
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab6b26726cc1b01e6222a827f96e7de7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PredictionObject(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.velocity_x !== undefined) {
      resolved.velocity_x = msg.velocity_x;
    }
    else {
      resolved.velocity_x = 0.0
    }

    if (msg.velocity_y !== undefined) {
      resolved.velocity_y = msg.velocity_y;
    }
    else {
      resolved.velocity_y = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.pos_x_sigma !== undefined) {
      resolved.pos_x_sigma = msg.pos_x_sigma;
    }
    else {
      resolved.pos_x_sigma = 0.0
    }

    if (msg.pos_y_sigma !== undefined) {
      resolved.pos_y_sigma = msg.pos_y_sigma;
    }
    else {
      resolved.pos_y_sigma = 0.0
    }

    if (msg.rel_position_x !== undefined) {
      resolved.rel_position_x = msg.rel_position_x;
    }
    else {
      resolved.rel_position_x = 0.0
    }

    if (msg.rel_position_y !== undefined) {
      resolved.rel_position_y = msg.rel_position_y;
    }
    else {
      resolved.rel_position_y = 0.0
    }

    if (msg.rel_speed_x !== undefined) {
      resolved.rel_speed_x = msg.rel_speed_x;
    }
    else {
      resolved.rel_speed_x = 0.0
    }

    if (msg.rel_speed_y !== undefined) {
      resolved.rel_speed_y = msg.rel_speed_y;
    }
    else {
      resolved.rel_speed_y = 0.0
    }

    if (msg.rel_theta !== undefined) {
      resolved.rel_theta = msg.rel_theta;
    }
    else {
      resolved.rel_theta = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = []
    }

    if (msg.trajectory_array !== undefined) {
      resolved.trajectory_array = new Array(msg.trajectory_array.length);
      for (let i = 0; i < resolved.trajectory_array.length; ++i) {
        resolved.trajectory_array[i] = PredictionTrajectory.Resolve(msg.trajectory_array[i]);
      }
    }
    else {
      resolved.trajectory_array = []
    }

    return resolved;
    }
};

module.exports = PredictionObject;
