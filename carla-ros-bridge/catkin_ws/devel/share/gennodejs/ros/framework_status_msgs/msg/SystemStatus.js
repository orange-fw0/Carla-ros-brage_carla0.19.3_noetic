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
let OverallStatus = require('./OverallStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.available = null;
      this.function_module_status_array = null;
      this.overall_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('function_module_status_array')) {
        this.function_module_status_array = initObj.function_module_status_array
      }
      else {
        this.function_module_status_array = [];
      }
      if (initObj.hasOwnProperty('overall_status')) {
        this.overall_status = initObj.overall_status
      }
      else {
        this.overall_status = new OverallStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [function_module_status_array]
    // Serialize the length for message field [function_module_status_array]
    bufferOffset = _serializer.uint32(obj.function_module_status_array.length, buffer, bufferOffset);
    obj.function_module_status_array.forEach((val) => {
      bufferOffset = NodeStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [overall_status]
    bufferOffset = OverallStatus.serialize(obj.overall_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatus
    let len;
    let data = new SystemStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [function_module_status_array]
    // Deserialize array length for message field [function_module_status_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.function_module_status_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.function_module_status_array[i] = NodeStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [overall_status]
    data.overall_status = OverallStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.function_module_status_array.forEach((val) => {
      length += NodeStatus.getMessageSize(val);
    });
    length += OverallStatus.getMessageSize(object.overall_status);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/SystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42e87a7dc2e841976934586b192074be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 MODULE_STATUS = 1
    uint32 OVERALL_STATUS = 2
    std_msgs/Header header
    uint32 available
    framework_status_msgs/NodeStatus[] function_module_status_array
    framework_status_msgs/OverallStatus overall_status
    
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
    MSG: framework_status_msgs/OverallStatus
    uint8 STOP = 0
    uint8 SAFTY_RUNNING = 1
    uint8 NORMAL_RUNNING = 2
    uint8 TAKEOVER = 3
    uint8 NONE = 0
    uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1
    std_msgs/Header header
    uint64 timestamp_us
    uint8 status
    uint8 detail_status
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.function_module_status_array !== undefined) {
      resolved.function_module_status_array = new Array(msg.function_module_status_array.length);
      for (let i = 0; i < resolved.function_module_status_array.length; ++i) {
        resolved.function_module_status_array[i] = NodeStatus.Resolve(msg.function_module_status_array[i]);
      }
    }
    else {
      resolved.function_module_status_array = []
    }

    if (msg.overall_status !== undefined) {
      resolved.overall_status = OverallStatus.Resolve(msg.overall_status)
    }
    else {
      resolved.overall_status = new OverallStatus()
    }

    return resolved;
    }
};

// Constants for message
SystemStatus.Constants = {
  MODULE_STATUS: 1,
  OVERALL_STATUS: 2,
}

module.exports = SystemStatus;
