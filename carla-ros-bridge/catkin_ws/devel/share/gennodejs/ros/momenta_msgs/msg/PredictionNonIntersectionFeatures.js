// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionAroundCarFeature = require('./PredictionAroundCarFeature.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionNonIntersectionFeatures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_feature_invalid = null;
      this.id = null;
      this.type = null;
      this.x = null;
      this.y = null;
      this.s = null;
      this.r = null;
      this.yaw = null;
      this.diff_theta_car_lane = null;
      this.v = null;
      this.v_s = null;
      this.v_r = null;
      this.acc = null;
      this.acc_s = null;
      this.acc_r = null;
      this.lane_index = null;
      this.lane_width = null;
      this.distance_left_lane = null;
      this.distance_right_lane = null;
      this.distance_mid_lane = null;
      this.distance_left_road = null;
      this.distance_right_road = null;
      this.is_left_lane_solid = null;
      this.is_right_lane_solid = null;
      this.is_most_left_lane = null;
      this.is_most_right_lane = null;
      this.around_car_feature = null;
      this.diff_prev_yaw = null;
      this.diff_prev_velocity = null;
      this.diff_prev_velocity_s = null;
      this.diff_prev_velocity_r = null;
      this.diff_prev_acc = null;
      this.diff_prev_acc_s = null;
      this.diff_prev_acc_r = null;
      this.diff_prev_distance_mid_lane = null;
      this.diff_prev_multi_yaw = null;
      this.diff_prev_multi_velocity = null;
      this.diff_prev_multi_velocity_s = null;
      this.diff_prev_multi_velocity_r = null;
      this.diff_prev_multi_acc = null;
      this.diff_prev_multi_acc_s = null;
      this.diff_prev_multi_acc_r = null;
      this.diff_prev_multi_distance_mid_lane = null;
      this.is_left_half_lane = null;
      this.is_right_half_lane = null;
      this.previous_intention = null;
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
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
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
      if (initObj.hasOwnProperty('v_s')) {
        this.v_s = initObj.v_s
      }
      else {
        this.v_s = 0.0;
      }
      if (initObj.hasOwnProperty('v_r')) {
        this.v_r = initObj.v_r
      }
      else {
        this.v_r = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('acc_s')) {
        this.acc_s = initObj.acc_s
      }
      else {
        this.acc_s = 0.0;
      }
      if (initObj.hasOwnProperty('acc_r')) {
        this.acc_r = initObj.acc_r
      }
      else {
        this.acc_r = 0.0;
      }
      if (initObj.hasOwnProperty('lane_index')) {
        this.lane_index = initObj.lane_index
      }
      else {
        this.lane_index = 0;
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('distance_left_lane')) {
        this.distance_left_lane = initObj.distance_left_lane
      }
      else {
        this.distance_left_lane = 0.0;
      }
      if (initObj.hasOwnProperty('distance_right_lane')) {
        this.distance_right_lane = initObj.distance_right_lane
      }
      else {
        this.distance_right_lane = 0.0;
      }
      if (initObj.hasOwnProperty('distance_mid_lane')) {
        this.distance_mid_lane = initObj.distance_mid_lane
      }
      else {
        this.distance_mid_lane = 0.0;
      }
      if (initObj.hasOwnProperty('distance_left_road')) {
        this.distance_left_road = initObj.distance_left_road
      }
      else {
        this.distance_left_road = 0.0;
      }
      if (initObj.hasOwnProperty('distance_right_road')) {
        this.distance_right_road = initObj.distance_right_road
      }
      else {
        this.distance_right_road = 0.0;
      }
      if (initObj.hasOwnProperty('is_left_lane_solid')) {
        this.is_left_lane_solid = initObj.is_left_lane_solid
      }
      else {
        this.is_left_lane_solid = 0.0;
      }
      if (initObj.hasOwnProperty('is_right_lane_solid')) {
        this.is_right_lane_solid = initObj.is_right_lane_solid
      }
      else {
        this.is_right_lane_solid = 0.0;
      }
      if (initObj.hasOwnProperty('is_most_left_lane')) {
        this.is_most_left_lane = initObj.is_most_left_lane
      }
      else {
        this.is_most_left_lane = 0.0;
      }
      if (initObj.hasOwnProperty('is_most_right_lane')) {
        this.is_most_right_lane = initObj.is_most_right_lane
      }
      else {
        this.is_most_right_lane = 0.0;
      }
      if (initObj.hasOwnProperty('around_car_feature')) {
        this.around_car_feature = initObj.around_car_feature
      }
      else {
        this.around_car_feature = [];
      }
      if (initObj.hasOwnProperty('diff_prev_yaw')) {
        this.diff_prev_yaw = initObj.diff_prev_yaw
      }
      else {
        this.diff_prev_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_velocity')) {
        this.diff_prev_velocity = initObj.diff_prev_velocity
      }
      else {
        this.diff_prev_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_velocity_s')) {
        this.diff_prev_velocity_s = initObj.diff_prev_velocity_s
      }
      else {
        this.diff_prev_velocity_s = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_velocity_r')) {
        this.diff_prev_velocity_r = initObj.diff_prev_velocity_r
      }
      else {
        this.diff_prev_velocity_r = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_acc')) {
        this.diff_prev_acc = initObj.diff_prev_acc
      }
      else {
        this.diff_prev_acc = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_acc_s')) {
        this.diff_prev_acc_s = initObj.diff_prev_acc_s
      }
      else {
        this.diff_prev_acc_s = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_acc_r')) {
        this.diff_prev_acc_r = initObj.diff_prev_acc_r
      }
      else {
        this.diff_prev_acc_r = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_distance_mid_lane')) {
        this.diff_prev_distance_mid_lane = initObj.diff_prev_distance_mid_lane
      }
      else {
        this.diff_prev_distance_mid_lane = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_yaw')) {
        this.diff_prev_multi_yaw = initObj.diff_prev_multi_yaw
      }
      else {
        this.diff_prev_multi_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_velocity')) {
        this.diff_prev_multi_velocity = initObj.diff_prev_multi_velocity
      }
      else {
        this.diff_prev_multi_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_velocity_s')) {
        this.diff_prev_multi_velocity_s = initObj.diff_prev_multi_velocity_s
      }
      else {
        this.diff_prev_multi_velocity_s = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_velocity_r')) {
        this.diff_prev_multi_velocity_r = initObj.diff_prev_multi_velocity_r
      }
      else {
        this.diff_prev_multi_velocity_r = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_acc')) {
        this.diff_prev_multi_acc = initObj.diff_prev_multi_acc
      }
      else {
        this.diff_prev_multi_acc = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_acc_s')) {
        this.diff_prev_multi_acc_s = initObj.diff_prev_multi_acc_s
      }
      else {
        this.diff_prev_multi_acc_s = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_acc_r')) {
        this.diff_prev_multi_acc_r = initObj.diff_prev_multi_acc_r
      }
      else {
        this.diff_prev_multi_acc_r = 0.0;
      }
      if (initObj.hasOwnProperty('diff_prev_multi_distance_mid_lane')) {
        this.diff_prev_multi_distance_mid_lane = initObj.diff_prev_multi_distance_mid_lane
      }
      else {
        this.diff_prev_multi_distance_mid_lane = 0.0;
      }
      if (initObj.hasOwnProperty('is_left_half_lane')) {
        this.is_left_half_lane = initObj.is_left_half_lane
      }
      else {
        this.is_left_half_lane = 0.0;
      }
      if (initObj.hasOwnProperty('is_right_half_lane')) {
        this.is_right_half_lane = initObj.is_right_half_lane
      }
      else {
        this.is_right_half_lane = 0.0;
      }
      if (initObj.hasOwnProperty('previous_intention')) {
        this.previous_intention = initObj.previous_intention
      }
      else {
        this.previous_intention = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionNonIntersectionFeatures
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
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [diff_theta_car_lane]
    bufferOffset = _serializer.float32(obj.diff_theta_car_lane, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float32(obj.v, buffer, bufferOffset);
    // Serialize message field [v_s]
    bufferOffset = _serializer.float32(obj.v_s, buffer, bufferOffset);
    // Serialize message field [v_r]
    bufferOffset = _serializer.float32(obj.v_r, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [acc_s]
    bufferOffset = _serializer.float32(obj.acc_s, buffer, bufferOffset);
    // Serialize message field [acc_r]
    bufferOffset = _serializer.float32(obj.acc_r, buffer, bufferOffset);
    // Serialize message field [lane_index]
    bufferOffset = _serializer.int32(obj.lane_index, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float32(obj.lane_width, buffer, bufferOffset);
    // Serialize message field [distance_left_lane]
    bufferOffset = _serializer.float32(obj.distance_left_lane, buffer, bufferOffset);
    // Serialize message field [distance_right_lane]
    bufferOffset = _serializer.float32(obj.distance_right_lane, buffer, bufferOffset);
    // Serialize message field [distance_mid_lane]
    bufferOffset = _serializer.float32(obj.distance_mid_lane, buffer, bufferOffset);
    // Serialize message field [distance_left_road]
    bufferOffset = _serializer.float32(obj.distance_left_road, buffer, bufferOffset);
    // Serialize message field [distance_right_road]
    bufferOffset = _serializer.float32(obj.distance_right_road, buffer, bufferOffset);
    // Serialize message field [is_left_lane_solid]
    bufferOffset = _serializer.float32(obj.is_left_lane_solid, buffer, bufferOffset);
    // Serialize message field [is_right_lane_solid]
    bufferOffset = _serializer.float32(obj.is_right_lane_solid, buffer, bufferOffset);
    // Serialize message field [is_most_left_lane]
    bufferOffset = _serializer.float32(obj.is_most_left_lane, buffer, bufferOffset);
    // Serialize message field [is_most_right_lane]
    bufferOffset = _serializer.float32(obj.is_most_right_lane, buffer, bufferOffset);
    // Serialize message field [around_car_feature]
    // Serialize the length for message field [around_car_feature]
    bufferOffset = _serializer.uint32(obj.around_car_feature.length, buffer, bufferOffset);
    obj.around_car_feature.forEach((val) => {
      bufferOffset = PredictionAroundCarFeature.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [diff_prev_yaw]
    bufferOffset = _serializer.float32(obj.diff_prev_yaw, buffer, bufferOffset);
    // Serialize message field [diff_prev_velocity]
    bufferOffset = _serializer.float32(obj.diff_prev_velocity, buffer, bufferOffset);
    // Serialize message field [diff_prev_velocity_s]
    bufferOffset = _serializer.float32(obj.diff_prev_velocity_s, buffer, bufferOffset);
    // Serialize message field [diff_prev_velocity_r]
    bufferOffset = _serializer.float32(obj.diff_prev_velocity_r, buffer, bufferOffset);
    // Serialize message field [diff_prev_acc]
    bufferOffset = _serializer.float32(obj.diff_prev_acc, buffer, bufferOffset);
    // Serialize message field [diff_prev_acc_s]
    bufferOffset = _serializer.float32(obj.diff_prev_acc_s, buffer, bufferOffset);
    // Serialize message field [diff_prev_acc_r]
    bufferOffset = _serializer.float32(obj.diff_prev_acc_r, buffer, bufferOffset);
    // Serialize message field [diff_prev_distance_mid_lane]
    bufferOffset = _serializer.float32(obj.diff_prev_distance_mid_lane, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_yaw]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_yaw, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_velocity]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_velocity, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_velocity_s]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_velocity_s, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_velocity_r]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_velocity_r, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_acc]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_acc, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_acc_s]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_acc_s, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_acc_r]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_acc_r, buffer, bufferOffset);
    // Serialize message field [diff_prev_multi_distance_mid_lane]
    bufferOffset = _serializer.float32(obj.diff_prev_multi_distance_mid_lane, buffer, bufferOffset);
    // Serialize message field [is_left_half_lane]
    bufferOffset = _serializer.float32(obj.is_left_half_lane, buffer, bufferOffset);
    // Serialize message field [is_right_half_lane]
    bufferOffset = _serializer.float32(obj.is_right_half_lane, buffer, bufferOffset);
    // Serialize message field [previous_intention]
    bufferOffset = _serializer.float32(obj.previous_intention, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionNonIntersectionFeatures
    let len;
    let data = new PredictionNonIntersectionFeatures(null);
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
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_theta_car_lane]
    data.diff_theta_car_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_s]
    data.v_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_r]
    data.v_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_s]
    data.acc_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_r]
    data.acc_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_index]
    data.lane_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_left_lane]
    data.distance_left_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_right_lane]
    data.distance_right_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_mid_lane]
    data.distance_mid_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_left_road]
    data.distance_left_road = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_right_road]
    data.distance_right_road = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_left_lane_solid]
    data.is_left_lane_solid = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_right_lane_solid]
    data.is_right_lane_solid = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_most_left_lane]
    data.is_most_left_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_most_right_lane]
    data.is_most_right_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [around_car_feature]
    // Deserialize array length for message field [around_car_feature]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.around_car_feature = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.around_car_feature[i] = PredictionAroundCarFeature.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [diff_prev_yaw]
    data.diff_prev_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_velocity]
    data.diff_prev_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_velocity_s]
    data.diff_prev_velocity_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_velocity_r]
    data.diff_prev_velocity_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_acc]
    data.diff_prev_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_acc_s]
    data.diff_prev_acc_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_acc_r]
    data.diff_prev_acc_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_distance_mid_lane]
    data.diff_prev_distance_mid_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_yaw]
    data.diff_prev_multi_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_velocity]
    data.diff_prev_multi_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_velocity_s]
    data.diff_prev_multi_velocity_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_velocity_r]
    data.diff_prev_multi_velocity_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_acc]
    data.diff_prev_multi_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_acc_s]
    data.diff_prev_multi_acc_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_acc_r]
    data.diff_prev_multi_acc_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_prev_multi_distance_mid_lane]
    data.diff_prev_multi_distance_mid_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_left_half_lane]
    data.is_left_half_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_right_half_lane]
    data.is_right_half_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [previous_intention]
    data.previous_intention = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.around_car_feature.length;
    return length + 181;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionNonIntersectionFeatures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '374e23c9d77289d0e02b99d5dd2492a7';
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
    const resolved = new PredictionNonIntersectionFeatures(null);
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

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
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

    if (msg.v_s !== undefined) {
      resolved.v_s = msg.v_s;
    }
    else {
      resolved.v_s = 0.0
    }

    if (msg.v_r !== undefined) {
      resolved.v_r = msg.v_r;
    }
    else {
      resolved.v_r = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.acc_s !== undefined) {
      resolved.acc_s = msg.acc_s;
    }
    else {
      resolved.acc_s = 0.0
    }

    if (msg.acc_r !== undefined) {
      resolved.acc_r = msg.acc_r;
    }
    else {
      resolved.acc_r = 0.0
    }

    if (msg.lane_index !== undefined) {
      resolved.lane_index = msg.lane_index;
    }
    else {
      resolved.lane_index = 0
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    if (msg.distance_left_lane !== undefined) {
      resolved.distance_left_lane = msg.distance_left_lane;
    }
    else {
      resolved.distance_left_lane = 0.0
    }

    if (msg.distance_right_lane !== undefined) {
      resolved.distance_right_lane = msg.distance_right_lane;
    }
    else {
      resolved.distance_right_lane = 0.0
    }

    if (msg.distance_mid_lane !== undefined) {
      resolved.distance_mid_lane = msg.distance_mid_lane;
    }
    else {
      resolved.distance_mid_lane = 0.0
    }

    if (msg.distance_left_road !== undefined) {
      resolved.distance_left_road = msg.distance_left_road;
    }
    else {
      resolved.distance_left_road = 0.0
    }

    if (msg.distance_right_road !== undefined) {
      resolved.distance_right_road = msg.distance_right_road;
    }
    else {
      resolved.distance_right_road = 0.0
    }

    if (msg.is_left_lane_solid !== undefined) {
      resolved.is_left_lane_solid = msg.is_left_lane_solid;
    }
    else {
      resolved.is_left_lane_solid = 0.0
    }

    if (msg.is_right_lane_solid !== undefined) {
      resolved.is_right_lane_solid = msg.is_right_lane_solid;
    }
    else {
      resolved.is_right_lane_solid = 0.0
    }

    if (msg.is_most_left_lane !== undefined) {
      resolved.is_most_left_lane = msg.is_most_left_lane;
    }
    else {
      resolved.is_most_left_lane = 0.0
    }

    if (msg.is_most_right_lane !== undefined) {
      resolved.is_most_right_lane = msg.is_most_right_lane;
    }
    else {
      resolved.is_most_right_lane = 0.0
    }

    if (msg.around_car_feature !== undefined) {
      resolved.around_car_feature = new Array(msg.around_car_feature.length);
      for (let i = 0; i < resolved.around_car_feature.length; ++i) {
        resolved.around_car_feature[i] = PredictionAroundCarFeature.Resolve(msg.around_car_feature[i]);
      }
    }
    else {
      resolved.around_car_feature = []
    }

    if (msg.diff_prev_yaw !== undefined) {
      resolved.diff_prev_yaw = msg.diff_prev_yaw;
    }
    else {
      resolved.diff_prev_yaw = 0.0
    }

    if (msg.diff_prev_velocity !== undefined) {
      resolved.diff_prev_velocity = msg.diff_prev_velocity;
    }
    else {
      resolved.diff_prev_velocity = 0.0
    }

    if (msg.diff_prev_velocity_s !== undefined) {
      resolved.diff_prev_velocity_s = msg.diff_prev_velocity_s;
    }
    else {
      resolved.diff_prev_velocity_s = 0.0
    }

    if (msg.diff_prev_velocity_r !== undefined) {
      resolved.diff_prev_velocity_r = msg.diff_prev_velocity_r;
    }
    else {
      resolved.diff_prev_velocity_r = 0.0
    }

    if (msg.diff_prev_acc !== undefined) {
      resolved.diff_prev_acc = msg.diff_prev_acc;
    }
    else {
      resolved.diff_prev_acc = 0.0
    }

    if (msg.diff_prev_acc_s !== undefined) {
      resolved.diff_prev_acc_s = msg.diff_prev_acc_s;
    }
    else {
      resolved.diff_prev_acc_s = 0.0
    }

    if (msg.diff_prev_acc_r !== undefined) {
      resolved.diff_prev_acc_r = msg.diff_prev_acc_r;
    }
    else {
      resolved.diff_prev_acc_r = 0.0
    }

    if (msg.diff_prev_distance_mid_lane !== undefined) {
      resolved.diff_prev_distance_mid_lane = msg.diff_prev_distance_mid_lane;
    }
    else {
      resolved.diff_prev_distance_mid_lane = 0.0
    }

    if (msg.diff_prev_multi_yaw !== undefined) {
      resolved.diff_prev_multi_yaw = msg.diff_prev_multi_yaw;
    }
    else {
      resolved.diff_prev_multi_yaw = 0.0
    }

    if (msg.diff_prev_multi_velocity !== undefined) {
      resolved.diff_prev_multi_velocity = msg.diff_prev_multi_velocity;
    }
    else {
      resolved.diff_prev_multi_velocity = 0.0
    }

    if (msg.diff_prev_multi_velocity_s !== undefined) {
      resolved.diff_prev_multi_velocity_s = msg.diff_prev_multi_velocity_s;
    }
    else {
      resolved.diff_prev_multi_velocity_s = 0.0
    }

    if (msg.diff_prev_multi_velocity_r !== undefined) {
      resolved.diff_prev_multi_velocity_r = msg.diff_prev_multi_velocity_r;
    }
    else {
      resolved.diff_prev_multi_velocity_r = 0.0
    }

    if (msg.diff_prev_multi_acc !== undefined) {
      resolved.diff_prev_multi_acc = msg.diff_prev_multi_acc;
    }
    else {
      resolved.diff_prev_multi_acc = 0.0
    }

    if (msg.diff_prev_multi_acc_s !== undefined) {
      resolved.diff_prev_multi_acc_s = msg.diff_prev_multi_acc_s;
    }
    else {
      resolved.diff_prev_multi_acc_s = 0.0
    }

    if (msg.diff_prev_multi_acc_r !== undefined) {
      resolved.diff_prev_multi_acc_r = msg.diff_prev_multi_acc_r;
    }
    else {
      resolved.diff_prev_multi_acc_r = 0.0
    }

    if (msg.diff_prev_multi_distance_mid_lane !== undefined) {
      resolved.diff_prev_multi_distance_mid_lane = msg.diff_prev_multi_distance_mid_lane;
    }
    else {
      resolved.diff_prev_multi_distance_mid_lane = 0.0
    }

    if (msg.is_left_half_lane !== undefined) {
      resolved.is_left_half_lane = msg.is_left_half_lane;
    }
    else {
      resolved.is_left_half_lane = 0.0
    }

    if (msg.is_right_half_lane !== undefined) {
      resolved.is_right_half_lane = msg.is_right_half_lane;
    }
    else {
      resolved.is_right_half_lane = 0.0
    }

    if (msg.previous_intention !== undefined) {
      resolved.previous_intention = msg.previous_intention;
    }
    else {
      resolved.previous_intention = 0.0
    }

    return resolved;
    }
};

module.exports = PredictionNonIntersectionFeatures;
