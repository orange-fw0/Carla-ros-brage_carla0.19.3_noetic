// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HdmapDdldModeEnum = require('./HdmapDdldModeEnum.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HdmapDdldSwitchCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hdmap_ddld_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hdmap_ddld_mode')) {
        this.hdmap_ddld_mode = initObj.hdmap_ddld_mode
      }
      else {
        this.hdmap_ddld_mode = new HdmapDdldModeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HdmapDdldSwitchCmdRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hdmap_ddld_mode]
    bufferOffset = HdmapDdldModeEnum.serialize(obj.hdmap_ddld_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HdmapDdldSwitchCmdRequest
    let len;
    let data = new HdmapDdldSwitchCmdRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hdmap_ddld_mode]
    data.hdmap_ddld_mode = HdmapDdldModeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/HdmapDdldSwitchCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33ce916f016e7663814c8f691666481d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    system_manager_msgs/HdmapDdldModeEnum hdmap_ddld_mode
    
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
    MSG: system_manager_msgs/HdmapDdldModeEnum
    uint8 HDMAP = 0
    uint8 DDLD = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HdmapDdldSwitchCmdRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hdmap_ddld_mode !== undefined) {
      resolved.hdmap_ddld_mode = HdmapDdldModeEnum.Resolve(msg.hdmap_ddld_mode)
    }
    else {
      resolved.hdmap_ddld_mode = new HdmapDdldModeEnum()
    }

    return resolved;
    }
};

module.exports = HdmapDdldSwitchCmdRequest;
