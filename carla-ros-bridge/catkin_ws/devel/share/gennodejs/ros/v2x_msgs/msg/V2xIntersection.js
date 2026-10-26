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
let V2xIntersectionInfo = require('./V2xIntersectionInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class V2xIntersection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.v2x_intersection_info = null;
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
      if (initObj.hasOwnProperty('v2x_intersection_info')) {
        this.v2x_intersection_info = initObj.v2x_intersection_info
      }
      else {
        this.v2x_intersection_info = new V2xIntersectionInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xIntersection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = V2xMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [v2x_intersection_info]
    bufferOffset = V2xIntersectionInfo.serialize(obj.v2x_intersection_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xIntersection
    let len;
    let data = new V2xIntersection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = V2xMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [v2x_intersection_info]
    data.v2x_intersection_info = V2xIntersectionInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += V2xMeta.getMessageSize(object.meta);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xIntersection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d9da85f26e70015e10ed73b3cb46d59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    v2x_msgs/V2xMeta meta
    v2x_msgs/V2xIntersectionInfo v2x_intersection_info
    
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
    MSG: v2x_msgs/V2xIntersectionInfo
    uint8 V2X_INTERSECTION_DATA = 1
    uint8 available
    v2x_msgs/V2xIntersectionData v2x_intersection_data
    
    ================================================================================
    MSG: v2x_msgs/V2xIntersectionData
    int32 intersection_id
    float64 enter_angle
    float64 exit_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xIntersection(null);
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

    if (msg.v2x_intersection_info !== undefined) {
      resolved.v2x_intersection_info = V2xIntersectionInfo.Resolve(msg.v2x_intersection_info)
    }
    else {
      resolved.v2x_intersection_info = new V2xIntersectionInfo()
    }

    return resolved;
    }
};

module.exports = V2xIntersection;
