// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeStatus = require('./NodeStatus.js');
let system_manager_msgs = _finder('system_manager_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NodesStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.nodes_status = null;
      this.running_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('nodes_status')) {
        this.nodes_status = initObj.nodes_status
      }
      else {
        this.nodes_status = [];
      }
      if (initObj.hasOwnProperty('running_mode')) {
        this.running_mode = initObj.running_mode
      }
      else {
        this.running_mode = new system_manager_msgs.msg.RunningModeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodesStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [nodes_status]
    // Serialize the length for message field [nodes_status]
    bufferOffset = _serializer.uint32(obj.nodes_status.length, buffer, bufferOffset);
    obj.nodes_status.forEach((val) => {
      bufferOffset = NodeStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [running_mode]
    bufferOffset = system_manager_msgs.msg.RunningModeEnum.serialize(obj.running_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodesStatus
    let len;
    let data = new NodesStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [nodes_status]
    // Deserialize array length for message field [nodes_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nodes_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nodes_status[i] = NodeStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [running_mode]
    data.running_mode = system_manager_msgs.msg.RunningModeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.nodes_status.forEach((val) => {
      length += NodeStatus.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NodesStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73a976dd1599eb1b9de2a8eb1ff04431';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    framework_status_msgs/NodeStatus[] nodes_status
    system_manager_msgs/RunningModeEnum running_mode
    
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
    MSG: framework_status_msgs/NodeStatus
    uint64 timestamp_us
    uint16 node_type
    uint16 task_type
    uint16 status
    uint16 detail_status
    float32 detail_value
    string reserved_info
    string message
    
    ================================================================================
    MSG: system_manager_msgs/RunningModeEnum
    uint8 PILOT = 0
    uint8 PARKING = 1
    uint8 MANUAL_DRIVING = 2
    uint8 PRODUCTION_LINE = 3
    uint8 MEB = 4
    uint8 RADS = 5
    uint8 PILOT_WITH_PSD = 6
    uint8 SENTRY_MODE = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodesStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.nodes_status !== undefined) {
      resolved.nodes_status = new Array(msg.nodes_status.length);
      for (let i = 0; i < resolved.nodes_status.length; ++i) {
        resolved.nodes_status[i] = NodeStatus.Resolve(msg.nodes_status[i]);
      }
    }
    else {
      resolved.nodes_status = []
    }

    if (msg.running_mode !== undefined) {
      resolved.running_mode = system_manager_msgs.msg.RunningModeEnum.Resolve(msg.running_mode)
    }
    else {
      resolved.running_mode = new system_manager_msgs.msg.RunningModeEnum()
    }

    return resolved;
    }
};

module.exports = NodesStatus;
