// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IntentionType = require('./IntentionType.js');
let LateralIntention = require('./LateralIntention.js');
let LongitudinalIntention = require('./LongitudinalIntention.js');
let PredictionTrajectoryPoint = require('./PredictionTrajectoryPoint.js');

//-----------------------------------------------------------

class PredictionTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confidence = null;
      this.prediction_interval = null;
      this.intention = null;
      this.lateral_intents = null;
      this.longtudinal_intents = null;
      this.trajectory_points = null;
      this.extra_json = null;
    }
    else {
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('prediction_interval')) {
        this.prediction_interval = initObj.prediction_interval
      }
      else {
        this.prediction_interval = 0.0;
      }
      if (initObj.hasOwnProperty('intention')) {
        this.intention = initObj.intention
      }
      else {
        this.intention = new IntentionType();
      }
      if (initObj.hasOwnProperty('lateral_intents')) {
        this.lateral_intents = initObj.lateral_intents
      }
      else {
        this.lateral_intents = [];
      }
      if (initObj.hasOwnProperty('longtudinal_intents')) {
        this.longtudinal_intents = initObj.longtudinal_intents
      }
      else {
        this.longtudinal_intents = [];
      }
      if (initObj.hasOwnProperty('trajectory_points')) {
        this.trajectory_points = initObj.trajectory_points
      }
      else {
        this.trajectory_points = [];
      }
      if (initObj.hasOwnProperty('extra_json')) {
        this.extra_json = initObj.extra_json
      }
      else {
        this.extra_json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionTrajectory
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [prediction_interval]
    bufferOffset = _serializer.float32(obj.prediction_interval, buffer, bufferOffset);
    // Serialize message field [intention]
    bufferOffset = IntentionType.serialize(obj.intention, buffer, bufferOffset);
    // Serialize message field [lateral_intents]
    // Serialize the length for message field [lateral_intents]
    bufferOffset = _serializer.uint32(obj.lateral_intents.length, buffer, bufferOffset);
    obj.lateral_intents.forEach((val) => {
      bufferOffset = LateralIntention.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [longtudinal_intents]
    // Serialize the length for message field [longtudinal_intents]
    bufferOffset = _serializer.uint32(obj.longtudinal_intents.length, buffer, bufferOffset);
    obj.longtudinal_intents.forEach((val) => {
      bufferOffset = LongitudinalIntention.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trajectory_points]
    // Serialize the length for message field [trajectory_points]
    bufferOffset = _serializer.uint32(obj.trajectory_points.length, buffer, bufferOffset);
    obj.trajectory_points.forEach((val) => {
      bufferOffset = PredictionTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [extra_json]
    bufferOffset = _serializer.string(obj.extra_json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionTrajectory
    let len;
    let data = new PredictionTrajectory(null);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prediction_interval]
    data.prediction_interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [intention]
    data.intention = IntentionType.deserialize(buffer, bufferOffset);
    // Deserialize message field [lateral_intents]
    // Deserialize array length for message field [lateral_intents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lateral_intents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lateral_intents[i] = LateralIntention.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [longtudinal_intents]
    // Deserialize array length for message field [longtudinal_intents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.longtudinal_intents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.longtudinal_intents[i] = LongitudinalIntention.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trajectory_points]
    // Deserialize array length for message field [trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_points[i] = PredictionTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [extra_json]
    data.extra_json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.lateral_intents.length;
    length += 6 * object.longtudinal_intents.length;
    length += 40 * object.trajectory_points.length;
    length += _getByteLength(object.extra_json);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/PredictionTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5517c8aaac675df4ed45f9cb7b330f08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 confidence
    float32 prediction_interval
    worldmodel_msgs/IntentionType intention
    worldmodel_msgs/LateralIntention[] lateral_intents
    worldmodel_msgs/LongitudinalIntention[] longtudinal_intents
    worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points
    string extra_json
    
    ================================================================================
    MSG: worldmodel_msgs/IntentionType
    int32 INVALID = -1
    int32 FREE_MOVE = 0
    int32 KEEP_LANE = 1
    int32 LEFT_CHANGE_LANE_OUT = 2
    int32 LEFT_CHANGE_LANE_IN = 3
    int32 RIGHT_CHANGE_LANE_OUT = 4
    int32 RIGHT_CHANGE_LANE_IN = 5
    int32 GO_STRAIGHT = 11
    int32 TURN_LEFT = 12
    int32 TURN_RIGHT = 13
    int32 U_TURN = 14
    int32 value
    
    ================================================================================
    MSG: worldmodel_msgs/LateralIntention
    uint16 INVALID = 0
    uint16 GO_STRAIGHT = 1
    uint16 TURN_LEFT = 2
    uint16 TURN_RIGHT = 3
    uint16 U_TURN = 4
    uint16 CHANGE_LANE_LEFT = 5
    uint16 CHANGE_LANE_RIGHT = 6
    float32 score
    uint16 value
    
    ================================================================================
    MSG: worldmodel_msgs/LongitudinalIntention
    uint16 INVALID = 0
    uint16 ACCELERATE = 1
    uint16 DECELERATE = 2
    uint16 CRUISE = 3
    uint16 START_MOVE = 4
    uint16 STATIONARY = 5
    uint16 REVERSE = 6
    float32 score
    uint16 value
    
    ================================================================================
    MSG: worldmodel_msgs/PredictionTrajectoryPoint
    perception_interface_msgs/Point2f position
    float32 yaw
    float32 theta
    float32 velocity
    float32 confidence
    worldmodel_msgs/Matrix2f covariance_xy
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: worldmodel_msgs/Matrix2f
    float32 x00
    float32 x01
    float32 x10
    float32 x11
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionTrajectory(null);
    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.prediction_interval !== undefined) {
      resolved.prediction_interval = msg.prediction_interval;
    }
    else {
      resolved.prediction_interval = 0.0
    }

    if (msg.intention !== undefined) {
      resolved.intention = IntentionType.Resolve(msg.intention)
    }
    else {
      resolved.intention = new IntentionType()
    }

    if (msg.lateral_intents !== undefined) {
      resolved.lateral_intents = new Array(msg.lateral_intents.length);
      for (let i = 0; i < resolved.lateral_intents.length; ++i) {
        resolved.lateral_intents[i] = LateralIntention.Resolve(msg.lateral_intents[i]);
      }
    }
    else {
      resolved.lateral_intents = []
    }

    if (msg.longtudinal_intents !== undefined) {
      resolved.longtudinal_intents = new Array(msg.longtudinal_intents.length);
      for (let i = 0; i < resolved.longtudinal_intents.length; ++i) {
        resolved.longtudinal_intents[i] = LongitudinalIntention.Resolve(msg.longtudinal_intents[i]);
      }
    }
    else {
      resolved.longtudinal_intents = []
    }

    if (msg.trajectory_points !== undefined) {
      resolved.trajectory_points = new Array(msg.trajectory_points.length);
      for (let i = 0; i < resolved.trajectory_points.length; ++i) {
        resolved.trajectory_points[i] = PredictionTrajectoryPoint.Resolve(msg.trajectory_points[i]);
      }
    }
    else {
      resolved.trajectory_points = []
    }

    if (msg.extra_json !== undefined) {
      resolved.extra_json = msg.extra_json;
    }
    else {
      resolved.extra_json = ''
    }

    return resolved;
    }
};

module.exports = PredictionTrajectory;
