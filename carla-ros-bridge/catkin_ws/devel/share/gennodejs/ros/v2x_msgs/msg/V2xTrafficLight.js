// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xMeta = require('./V2xMeta.js');
let V2xTrafficLightInfo = require('./V2xTrafficLightInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class V2xTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.v2x_traffic_light_info = null;
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
        this.meta = new V2xMeta();
      }
      if (initObj.hasOwnProperty('v2x_traffic_light_info')) {
        this.v2x_traffic_light_info = initObj.v2x_traffic_light_info
      }
      else {
        this.v2x_traffic_light_info = new V2xTrafficLightInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xTrafficLight
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = V2xMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [v2x_traffic_light_info]
    bufferOffset = V2xTrafficLightInfo.serialize(obj.v2x_traffic_light_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xTrafficLight
    let len;
    let data = new V2xTrafficLight(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = V2xMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [v2x_traffic_light_info]
    data.v2x_traffic_light_info = V2xTrafficLightInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += V2xMeta.getMessageSize(object.meta);
    length += V2xTrafficLightInfo.getMessageSize(object.v2x_traffic_light_info);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d30e375a597d2397918c9af98d8b1b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    v2x_msgs/V2xMeta meta
    v2x_msgs/V2xTrafficLightInfo v2x_traffic_light_info
    
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
    MSG: v2x_msgs/V2xMeta
    uint64 timestamp_us
    string frame_id
    
    ================================================================================
    MSG: v2x_msgs/V2xTrafficLightInfo
    uint8 V2X_INTERSECTION_STATE = 1
    uint8 available
    v2x_msgs/V2xIntersectionState[] v2x_intersection_state
    
    ================================================================================
    MSG: v2x_msgs/V2xIntersectionState
    int32 intersection_id
    v2x_msgs/V2xPhase[] v2x_phase
    
    ================================================================================
    MSG: v2x_msgs/V2xPhase
    int32 phase_id
    v2x_msgs/V2xPhaseState v2x_phase_state
    
    ================================================================================
    MSG: v2x_msgs/V2xPhaseState
    perception_interface_msgs/TrafficLightStatusEnum status
    float64 start_time
    float64 likely_end_time
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xTrafficLight(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = V2xMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new V2xMeta()
    }

    if (msg.v2x_traffic_light_info !== undefined) {
      resolved.v2x_traffic_light_info = V2xTrafficLightInfo.Resolve(msg.v2x_traffic_light_info)
    }
    else {
      resolved.v2x_traffic_light_info = new V2xTrafficLightInfo()
    }

    return resolved;
    }
};

module.exports = V2xTrafficLight;
