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

class SystemMonitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.system_status = null;
      this.warning_nodes_list = null;
      this.error_nodes_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
      if (initObj.hasOwnProperty('warning_nodes_list')) {
        this.warning_nodes_list = initObj.warning_nodes_list
      }
      else {
        this.warning_nodes_list = [];
      }
      if (initObj.hasOwnProperty('error_nodes_list')) {
        this.error_nodes_list = initObj.error_nodes_list
      }
      else {
        this.error_nodes_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemMonitor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    // Serialize message field [warning_nodes_list]
    bufferOffset = _arraySerializer.string(obj.warning_nodes_list, buffer, bufferOffset, null);
    // Serialize message field [error_nodes_list]
    bufferOffset = _arraySerializer.string(obj.error_nodes_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemMonitor
    let len;
    let data = new SystemMonitor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [warning_nodes_list]
    data.warning_nodes_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [error_nodes_list]
    data.error_nodes_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.warning_nodes_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.error_nodes_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/SystemMonitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18f8caf115f21f130c236c5cd871b95f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SYSTEM_STATUS_NORMAL_TYPE = 0
    uint8 SYSTEM_STATUS_WARNING_TYPE = 1
    uint8 SYSTEM_STATUS_ERROR_TYPE = 2
    std_msgs/Header header
    uint8 system_status
    string[] warning_nodes_list
    string[] error_nodes_list
    
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
    const resolved = new SystemMonitor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    if (msg.warning_nodes_list !== undefined) {
      resolved.warning_nodes_list = msg.warning_nodes_list;
    }
    else {
      resolved.warning_nodes_list = []
    }

    if (msg.error_nodes_list !== undefined) {
      resolved.error_nodes_list = msg.error_nodes_list;
    }
    else {
      resolved.error_nodes_list = []
    }

    return resolved;
    }
};

// Constants for message
SystemMonitor.Constants = {
  SYSTEM_STATUS_NORMAL_TYPE: 0,
  SYSTEM_STATUS_WARNING_TYPE: 1,
  SYSTEM_STATUS_ERROR_TYPE: 2,
}

module.exports = SystemMonitor;
