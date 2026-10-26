// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DLPTrajectoryPoint = require('./DLPTrajectoryPoint.js');
let DLPTrajectoryTypeEnum = require('./DLPTrajectoryTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class DLPTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.type = null;
      this.anchor_type = null;
      this.anchor_id = null;
      this.goal_point = null;
      this.multi_modality_id = null;
      this.object_id = null;
      this.timestamp_us = null;
      this.score = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new DLPTrajectoryTypeEnum();
      }
      if (initObj.hasOwnProperty('anchor_type')) {
        this.anchor_type = initObj.anchor_type
      }
      else {
        this.anchor_type = 0;
      }
      if (initObj.hasOwnProperty('anchor_id')) {
        this.anchor_id = initObj.anchor_id
      }
      else {
        this.anchor_id = 0;
      }
      if (initObj.hasOwnProperty('goal_point')) {
        this.goal_point = initObj.goal_point
      }
      else {
        this.goal_point = new perception_interface_msgs.msg.Point3d();
      }
      if (initObj.hasOwnProperty('multi_modality_id')) {
        this.multi_modality_id = initObj.multi_modality_id
      }
      else {
        this.multi_modality_id = 0;
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DLPTrajectory
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = DLPTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = DLPTrajectoryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [anchor_type]
    bufferOffset = _serializer.uint8(obj.anchor_type, buffer, bufferOffset);
    // Serialize message field [anchor_id]
    bufferOffset = _serializer.uint64(obj.anchor_id, buffer, bufferOffset);
    // Serialize message field [goal_point]
    bufferOffset = perception_interface_msgs.msg.Point3d.serialize(obj.goal_point, buffer, bufferOffset);
    // Serialize message field [multi_modality_id]
    bufferOffset = _serializer.uint8(obj.multi_modality_id, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint64(obj.object_id, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPTrajectory
    let len;
    let data = new DLPTrajectory(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = DLPTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = DLPTrajectoryTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_type]
    data.anchor_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [anchor_id]
    data.anchor_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [goal_point]
    data.goal_point = perception_interface_msgs.msg.Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [multi_modality_id]
    data.multi_modality_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 121 * object.points.length;
    length += _getByteLength(object.reserved_info);
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9bda110d1211e623befd2437bb3db8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    e2e_planning_msgs/DLPTrajectoryPoint[] points
    e2e_planning_msgs/DLPTrajectoryTypeEnum type
    uint8 anchor_type
    uint64 anchor_id
    perception_interface_msgs/Point3d goal_point
    uint8 multi_modality_id
    uint64 object_id
    uint64 timestamp_us
    float64 score
    string reserved_info
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectoryPoint
    perception_interface_msgs/Point3d position
    perception_interface_msgs/Vector3d velocity
    perception_interface_msgs/Vector3d acceleration
    perception_interface_msgs/Vector3d jerk
    float64 heading_angle
    float64 score
    uint64 timestamp_us
    bool valid
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum
    uint8 DLP_TRAJECTORY_CRUISE = 0
    uint8 DLP_TRAJECTORY_LANE_CHANGE = 1
    uint8 DLP_TRAJECTORY_REF_PATH = 2
    uint8 DLP_TRAJECTORY_PREDICTION = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPTrajectory(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = DLPTrajectoryPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.type !== undefined) {
      resolved.type = DLPTrajectoryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new DLPTrajectoryTypeEnum()
    }

    if (msg.anchor_type !== undefined) {
      resolved.anchor_type = msg.anchor_type;
    }
    else {
      resolved.anchor_type = 0
    }

    if (msg.anchor_id !== undefined) {
      resolved.anchor_id = msg.anchor_id;
    }
    else {
      resolved.anchor_id = 0
    }

    if (msg.goal_point !== undefined) {
      resolved.goal_point = perception_interface_msgs.msg.Point3d.Resolve(msg.goal_point)
    }
    else {
      resolved.goal_point = new perception_interface_msgs.msg.Point3d()
    }

    if (msg.multi_modality_id !== undefined) {
      resolved.multi_modality_id = msg.multi_modality_id;
    }
    else {
      resolved.multi_modality_id = 0
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = DLPTrajectory;
