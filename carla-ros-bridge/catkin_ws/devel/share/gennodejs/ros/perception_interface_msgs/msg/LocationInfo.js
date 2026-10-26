// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_valid = null;
      this.qw = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.tx = null;
      this.ty = null;
      this.tz = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
      if (initObj.hasOwnProperty('qw')) {
        this.qw = initObj.qw
      }
      else {
        this.qw = 0.0;
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = 0.0;
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = 0.0;
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = 0.0;
      }
      if (initObj.hasOwnProperty('tx')) {
        this.tx = initObj.tx
      }
      else {
        this.tx = 0.0;
      }
      if (initObj.hasOwnProperty('ty')) {
        this.ty = initObj.ty
      }
      else {
        this.ty = 0.0;
      }
      if (initObj.hasOwnProperty('tz')) {
        this.tz = initObj.tz
      }
      else {
        this.tz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [qw]
    bufferOffset = _serializer.float32(obj.qw, buffer, bufferOffset);
    // Serialize message field [qx]
    bufferOffset = _serializer.float32(obj.qx, buffer, bufferOffset);
    // Serialize message field [qy]
    bufferOffset = _serializer.float32(obj.qy, buffer, bufferOffset);
    // Serialize message field [qz]
    bufferOffset = _serializer.float32(obj.qz, buffer, bufferOffset);
    // Serialize message field [tx]
    bufferOffset = _serializer.float32(obj.tx, buffer, bufferOffset);
    // Serialize message field [ty]
    bufferOffset = _serializer.float32(obj.ty, buffer, bufferOffset);
    // Serialize message field [tz]
    bufferOffset = _serializer.float32(obj.tz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationInfo
    let len;
    let data = new LocationInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [qw]
    data.qw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [qx]
    data.qx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [qy]
    data.qy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [qz]
    data.qz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tx]
    data.tx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ty]
    data.ty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tz]
    data.tz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LocationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baefd7a9d9eeeb6de8e84a99f6c9939f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool is_valid
    float32 qw
    float32 qx
    float32 qy
    float32 qz
    float32 tx
    float32 ty
    float32 tz
    
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
    const resolved = new LocationInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    if (msg.qw !== undefined) {
      resolved.qw = msg.qw;
    }
    else {
      resolved.qw = 0.0
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = 0.0
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = 0.0
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = 0.0
    }

    if (msg.tx !== undefined) {
      resolved.tx = msg.tx;
    }
    else {
      resolved.tx = 0.0
    }

    if (msg.ty !== undefined) {
      resolved.ty = msg.ty;
    }
    else {
      resolved.ty = 0.0
    }

    if (msg.tz !== undefined) {
      resolved.tz = msg.tz;
    }
    else {
      resolved.tz = 0.0
    }

    return resolved;
    }
};

module.exports = LocationInfo;
