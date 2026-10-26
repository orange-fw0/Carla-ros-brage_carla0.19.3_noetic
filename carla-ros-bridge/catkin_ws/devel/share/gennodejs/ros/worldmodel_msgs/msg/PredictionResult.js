// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionResultMeta = require('./PredictionResultMeta.js');
let ObjectPredictionData = require('./ObjectPredictionData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.object_prediction_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new PredictionResultMeta();
      }
      if (initObj.hasOwnProperty('object_prediction_data')) {
        this.object_prediction_data = initObj.object_prediction_data
      }
      else {
        this.object_prediction_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PredictionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [object_prediction_data]
    // Serialize the length for message field [object_prediction_data]
    bufferOffset = _serializer.uint32(obj.object_prediction_data.length, buffer, bufferOffset);
    obj.object_prediction_data.forEach((val) => {
      bufferOffset = ObjectPredictionData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionResult
    let len;
    let data = new PredictionResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PredictionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_prediction_data]
    // Deserialize array length for message field [object_prediction_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_prediction_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_prediction_data[i] = ObjectPredictionData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PredictionResultMeta.getMessageSize(object.meta);
    object.object_prediction_data.forEach((val) => {
      length += ObjectPredictionData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/PredictionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10924c289eea7b16586c77c49438ff19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    worldmodel_msgs/PredictionResultMeta meta
    worldmodel_msgs/ObjectPredictionData[] object_prediction_data
    
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
    MSG: worldmodel_msgs/PredictionResultMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string frame_id
    
    ================================================================================
    MSG: worldmodel_msgs/ObjectPredictionData
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
    const resolved = new PredictionResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PredictionResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PredictionResultMeta()
    }

    if (msg.object_prediction_data !== undefined) {
      resolved.object_prediction_data = new Array(msg.object_prediction_data.length);
      for (let i = 0; i < resolved.object_prediction_data.length; ++i) {
        resolved.object_prediction_data[i] = ObjectPredictionData.Resolve(msg.object_prediction_data[i]);
      }
    }
    else {
      resolved.object_prediction_data = []
    }

    return resolved;
    }
};

module.exports = PredictionResult;
