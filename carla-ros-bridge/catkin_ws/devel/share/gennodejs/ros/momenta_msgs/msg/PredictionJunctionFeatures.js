// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionJunctionFeatures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_feature_invalid = null;
      this.id = null;
      this.type = null;
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.diff_theta_car_lane = null;
      this.v = null;
      this.v_x = null;
      this.v_y = null;
      this.acc = null;
      this.acc_x = null;
      this.acc_y = null;
      this.diff_previous_yaw = null;
      this.diff_latest_yaw = null;
      this.diff_previous_x = null;
      this.diff_previous_y = null;
      this.diff_latest_x = null;
      this.diff_latest_y = null;
      this.diff_previous_v_x = null;
      this.diff_previous_v_y = null;
      this.diff_latest_v_x = null;
      this.diff_latest_v_y = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_feature_invalid')) {
        this.is_feature_invalid = initObj.is_feature_invalid
      }
      else {
        this.is_feature_invalid = false;
      }
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
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('diff_theta_car_lane')) {
        this.diff_theta_car_lane = initObj.diff_theta_car_lane
      }
      else {
        this.diff_theta_car_lane = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_y')) {
        this.v_y = initObj.v_y
      }
      else {
        this.v_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_previous_yaw')) {
        this.diff_previous_yaw = initObj.diff_previous_yaw
      }
      else {
        this.diff_previous_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('diff_latest_yaw')) {
        this.diff_latest_yaw = initObj.diff_latest_yaw
      }
      else {
        this.diff_latest_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('diff_previous_x')) {
        this.diff_previous_x = initObj.diff_previous_x
      }
      else {
        this.diff_previous_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_previous_y')) {
        this.diff_previous_y = initObj.diff_previous_y
      }
      else {
        this.diff_previous_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_latest_x')) {
        this.diff_latest_x = initObj.diff_latest_x
      }
      else {
        this.diff_latest_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_latest_y')) {
        this.diff_latest_y = initObj.diff_latest_y
      }
      else {
        this.diff_latest_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_previous_v_x')) {
        this.diff_previous_v_x = initObj.diff_previous_v_x
      }
      else {
        this.diff_previous_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_previous_v_y')) {
        this.diff_previous_v_y = initObj.diff_previous_v_y
      }
      else {
        this.diff_previous_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_latest_v_x')) {
        this.diff_latest_v_x = initObj.diff_latest_v_x
      }
      else {
        this.diff_latest_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_latest_v_y')) {
        this.diff_latest_v_y = initObj.diff_latest_v_y
      }
      else {
        this.diff_latest_v_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionJunctionFeatures
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_feature_invalid]
    bufferOffset = _serializer.bool(obj.is_feature_invalid, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [diff_theta_car_lane]
    bufferOffset = _serializer.float32(obj.diff_theta_car_lane, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float32(obj.v, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.float32(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.float32(obj.v_y, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float32(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float32(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [diff_previous_yaw]
    bufferOffset = _serializer.float32(obj.diff_previous_yaw, buffer, bufferOffset);
    // Serialize message field [diff_latest_yaw]
    bufferOffset = _serializer.float32(obj.diff_latest_yaw, buffer, bufferOffset);
    // Serialize message field [diff_previous_x]
    bufferOffset = _serializer.float32(obj.diff_previous_x, buffer, bufferOffset);
    // Serialize message field [diff_previous_y]
    bufferOffset = _serializer.float32(obj.diff_previous_y, buffer, bufferOffset);
    // Serialize message field [diff_latest_x]
    bufferOffset = _serializer.float32(obj.diff_latest_x, buffer, bufferOffset);
    // Serialize message field [diff_latest_y]
    bufferOffset = _serializer.float32(obj.diff_latest_y, buffer, bufferOffset);
    // Serialize message field [diff_previous_v_x]
    bufferOffset = _serializer.float32(obj.diff_previous_v_x, buffer, bufferOffset);
    // Serialize message field [diff_previous_v_y]
    bufferOffset = _serializer.float32(obj.diff_previous_v_y, buffer, bufferOffset);
    // Serialize message field [diff_latest_v_x]
    bufferOffset = _serializer.float32(obj.diff_latest_v_x, buffer, bufferOffset);
    // Serialize message field [diff_latest_v_y]
    bufferOffset = _serializer.float32(obj.diff_latest_v_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionJunctionFeatures
    let len;
    let data = new PredictionJunctionFeatures(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_feature_invalid]
    data.is_feature_invalid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_theta_car_lane]
    data.diff_theta_car_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_previous_yaw]
    data.diff_previous_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_latest_yaw]
    data.diff_latest_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_previous_x]
    data.diff_previous_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_previous_y]
    data.diff_previous_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_latest_x]
    data.diff_latest_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_latest_y]
    data.diff_latest_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_previous_v_x]
    data.diff_previous_v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_previous_v_y]
    data.diff_previous_v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_latest_v_x]
    data.diff_latest_v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_latest_v_y]
    data.diff_latest_v_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionJunctionFeatures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dad8ff97f78ec2cbfac4e9c6552482b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionJunctionFeatures(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_feature_invalid !== undefined) {
      resolved.is_feature_invalid = msg.is_feature_invalid;
    }
    else {
      resolved.is_feature_invalid = false
    }

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

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.diff_theta_car_lane !== undefined) {
      resolved.diff_theta_car_lane = msg.diff_theta_car_lane;
    }
    else {
      resolved.diff_theta_car_lane = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0.0
    }

    if (msg.v_y !== undefined) {
      resolved.v_y = msg.v_y;
    }
    else {
      resolved.v_y = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.diff_previous_yaw !== undefined) {
      resolved.diff_previous_yaw = msg.diff_previous_yaw;
    }
    else {
      resolved.diff_previous_yaw = 0.0
    }

    if (msg.diff_latest_yaw !== undefined) {
      resolved.diff_latest_yaw = msg.diff_latest_yaw;
    }
    else {
      resolved.diff_latest_yaw = 0.0
    }

    if (msg.diff_previous_x !== undefined) {
      resolved.diff_previous_x = msg.diff_previous_x;
    }
    else {
      resolved.diff_previous_x = 0.0
    }

    if (msg.diff_previous_y !== undefined) {
      resolved.diff_previous_y = msg.diff_previous_y;
    }
    else {
      resolved.diff_previous_y = 0.0
    }

    if (msg.diff_latest_x !== undefined) {
      resolved.diff_latest_x = msg.diff_latest_x;
    }
    else {
      resolved.diff_latest_x = 0.0
    }

    if (msg.diff_latest_y !== undefined) {
      resolved.diff_latest_y = msg.diff_latest_y;
    }
    else {
      resolved.diff_latest_y = 0.0
    }

    if (msg.diff_previous_v_x !== undefined) {
      resolved.diff_previous_v_x = msg.diff_previous_v_x;
    }
    else {
      resolved.diff_previous_v_x = 0.0
    }

    if (msg.diff_previous_v_y !== undefined) {
      resolved.diff_previous_v_y = msg.diff_previous_v_y;
    }
    else {
      resolved.diff_previous_v_y = 0.0
    }

    if (msg.diff_latest_v_x !== undefined) {
      resolved.diff_latest_v_x = msg.diff_latest_v_x;
    }
    else {
      resolved.diff_latest_v_x = 0.0
    }

    if (msg.diff_latest_v_y !== undefined) {
      resolved.diff_latest_v_y = msg.diff_latest_v_y;
    }
    else {
      resolved.diff_latest_v_y = 0.0
    }

    return resolved;
    }
};

module.exports = PredictionJunctionFeatures;
