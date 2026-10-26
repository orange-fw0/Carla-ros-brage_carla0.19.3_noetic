// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionTrajectory = require('./PredictionTrajectory.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ObjectPredictionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.trajectories = null;
      this.extra_json = null;
      this.object_type = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
      if (initObj.hasOwnProperty('extra_json')) {
        this.extra_json = initObj.extra_json
      }
      else {
        this.extra_json = '';
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = new perception_interface_msgs.msg.PerceptionObjectTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectPredictionData
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint64(obj.object_id, buffer, bufferOffset);
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = PredictionTrajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [extra_json]
    bufferOffset = _serializer.string(obj.extra_json, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = perception_interface_msgs.msg.PerceptionObjectTypeEnum.serialize(obj.object_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectPredictionData
    let len;
    let data = new ObjectPredictionData(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = PredictionTrajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [extra_json]
    data.extra_json = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = perception_interface_msgs.msg.PerceptionObjectTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += PredictionTrajectory.getMessageSize(val);
    });
    length += _getByteLength(object.extra_json);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ObjectPredictionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c41ada686ede37812e69452eff1174f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 object_id
    worldmodel_msgs/PredictionTrajectory[] trajectories
    string extra_json
    perception_interface_msgs/PerceptionObjectTypeEnum object_type
    
    ================================================================================
    MSG: worldmodel_msgs/PredictionTrajectory
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
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionObjectTypeEnum
    uint8 OBJECT_TYPE_UNKNOWN = 0
    uint8 OBJECT_TYPE_RAW = 1
    uint8 OBJECT_TYPE_NORMAL = 2
    uint8 OBJECT_TYPE_RADAR_ONLY = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectPredictionData(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = PredictionTrajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    if (msg.extra_json !== undefined) {
      resolved.extra_json = msg.extra_json;
    }
    else {
      resolved.extra_json = ''
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = perception_interface_msgs.msg.PerceptionObjectTypeEnum.Resolve(msg.object_type)
    }
    else {
      resolved.object_type = new perception_interface_msgs.msg.PerceptionObjectTypeEnum()
    }

    return resolved;
    }
};

module.exports = ObjectPredictionData;
