// Auto-generated. Do not edit!

// (in-package can_bridge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Meta = require('./Meta.js');
let CanMessage = require('./CanMessage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CanBridge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.can = null;
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
        this.meta = new Meta();
      }
      if (initObj.hasOwnProperty('can')) {
        this.can = initObj.can
      }
      else {
        this.can = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CanBridge
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = Meta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [can]
    // Serialize the length for message field [can]
    bufferOffset = _serializer.uint32(obj.can.length, buffer, bufferOffset);
    obj.can.forEach((val) => {
      bufferOffset = CanMessage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanBridge
    let len;
    let data = new CanBridge(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = Meta.deserialize(buffer, bufferOffset);
    // Deserialize message field [can]
    // Deserialize array length for message field [can]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.can = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.can[i] = CanMessage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.can.forEach((val) => {
      length += CanMessage.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_bridge_msgs/CanBridge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bab2daea292bfed2b50d56bf735ebbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    can_bridge_msgs/Meta meta
    can_bridge_msgs/CanMessage[] can
    
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
    MSG: can_bridge_msgs/Meta
    uint64 sensor_timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: can_bridge_msgs/CanMessage
    uint32 can_id
    int32 ts_offset
    uint8 is_convert
    uint8 channel
    uint8 len
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanBridge(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = Meta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new Meta()
    }

    if (msg.can !== undefined) {
      resolved.can = new Array(msg.can.length);
      for (let i = 0; i < resolved.can.length; ++i) {
        resolved.can[i] = CanMessage.Resolve(msg.can[i]);
      }
    }
    else {
      resolved.can = []
    }

    return resolved;
    }
};

module.exports = CanBridge;
