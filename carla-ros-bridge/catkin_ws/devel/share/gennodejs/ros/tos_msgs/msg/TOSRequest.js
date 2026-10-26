// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TOSScenarioEnum = require('./TOSScenarioEnum.js');
let TOSDecisionEnum = require('./TOSDecisionEnum.js');
let TOSRequestRenderInfo = require('./TOSRequestRenderInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TOSRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scenario = null;
      this.decision = null;
      this.render_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scenario')) {
        this.scenario = initObj.scenario
      }
      else {
        this.scenario = new TOSScenarioEnum();
      }
      if (initObj.hasOwnProperty('decision')) {
        this.decision = initObj.decision
      }
      else {
        this.decision = new TOSDecisionEnum();
      }
      if (initObj.hasOwnProperty('render_info')) {
        this.render_info = initObj.render_info
      }
      else {
        this.render_info = new TOSRequestRenderInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [scenario]
    bufferOffset = TOSScenarioEnum.serialize(obj.scenario, buffer, bufferOffset);
    // Serialize message field [decision]
    bufferOffset = TOSDecisionEnum.serialize(obj.decision, buffer, bufferOffset);
    // Serialize message field [render_info]
    bufferOffset = TOSRequestRenderInfo.serialize(obj.render_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSRequest
    let len;
    let data = new TOSRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scenario]
    data.scenario = TOSScenarioEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [decision]
    data.decision = TOSDecisionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [render_info]
    data.render_info = TOSRequestRenderInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TOSRequestRenderInfo.getMessageSize(object.render_info);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6eb17c6ccf81d2ccd3af4ef75a4fcc47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    tos_msgs/TOSScenarioEnum scenario
    tos_msgs/TOSDecisionEnum decision
    tos_msgs/TOSRequestRenderInfo render_info
    
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
    MSG: tos_msgs/TOSScenarioEnum
    uint8 LANE_BORROW = 0
    uint8 TRAFFIC_LIGHT = 1
    uint8 value
    
    ================================================================================
    MSG: tos_msgs/TOSDecisionEnum
    uint8 NUDGE = 0
    uint8 LEFT_NUDGE = 1
    uint8 RIGHT_NUDGE = 2
    uint8 STOP = 3
    uint8 value
    
    ================================================================================
    MSG: tos_msgs/TOSRequestRenderInfo
    tos_msgs/TOSRequestRenderODInfo[] od_info
    tos_msgs/TOSRequestRenderLDInfo[] ld_info
    tos_msgs/TOSRequestCandidate[] candidates
    
    ================================================================================
    MSG: tos_msgs/TOSRequestRenderODInfo
    uint32 id
    float64 target_s
    float64 target_l
    
    ================================================================================
    MSG: tos_msgs/TOSRequestRenderLDInfo
    uint32 lane_id
    
    ================================================================================
    MSG: tos_msgs/TOSRequestCandidate
    uint32 candidate_id
    perception_interface_msgs/Point3d[] traj
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scenario !== undefined) {
      resolved.scenario = TOSScenarioEnum.Resolve(msg.scenario)
    }
    else {
      resolved.scenario = new TOSScenarioEnum()
    }

    if (msg.decision !== undefined) {
      resolved.decision = TOSDecisionEnum.Resolve(msg.decision)
    }
    else {
      resolved.decision = new TOSDecisionEnum()
    }

    if (msg.render_info !== undefined) {
      resolved.render_info = TOSRequestRenderInfo.Resolve(msg.render_info)
    }
    else {
      resolved.render_info = new TOSRequestRenderInfo()
    }

    return resolved;
    }
};

module.exports = TOSRequest;
