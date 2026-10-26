// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LightDetectTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.boundary = null;
      this.num_signals = null;
      this.pattern_signals = null;
      this.light_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('boundary')) {
        this.boundary = initObj.boundary
      }
      else {
        this.boundary = [];
      }
      if (initObj.hasOwnProperty('num_signals')) {
        this.num_signals = initObj.num_signals
      }
      else {
        this.num_signals = 0;
      }
      if (initObj.hasOwnProperty('pattern_signals')) {
        this.pattern_signals = initObj.pattern_signals
      }
      else {
        this.pattern_signals = [];
      }
      if (initObj.hasOwnProperty('light_id')) {
        this.light_id = initObj.light_id
      }
      else {
        this.light_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightDetectTrigger
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [boundary]
    // Serialize the length for message field [boundary]
    bufferOffset = _serializer.uint32(obj.boundary.length, buffer, bufferOffset);
    obj.boundary.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num_signals]
    bufferOffset = _serializer.int32(obj.num_signals, buffer, bufferOffset);
    // Serialize message field [pattern_signals]
    bufferOffset = _arraySerializer.int32(obj.pattern_signals, buffer, bufferOffset, null);
    // Serialize message field [light_id]
    bufferOffset = _serializer.uint64(obj.light_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightDetectTrigger
    let len;
    let data = new LightDetectTrigger(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [boundary]
    // Deserialize array length for message field [boundary]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boundary = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundary[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num_signals]
    data.num_signals = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pattern_signals]
    data.pattern_signals = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [light_id]
    data.light_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.boundary.length;
    length += 4 * object.pattern_signals.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/LightDetectTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8875c216bd3d8b8e2f33f0088d50ca8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Point[] boundary
    int32 num_signals
    int32[] pattern_signals
    uint64 light_id
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new LightDetectTrigger(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.boundary !== undefined) {
      resolved.boundary = new Array(msg.boundary.length);
      for (let i = 0; i < resolved.boundary.length; ++i) {
        resolved.boundary[i] = geometry_msgs.msg.Point.Resolve(msg.boundary[i]);
      }
    }
    else {
      resolved.boundary = []
    }

    if (msg.num_signals !== undefined) {
      resolved.num_signals = msg.num_signals;
    }
    else {
      resolved.num_signals = 0
    }

    if (msg.pattern_signals !== undefined) {
      resolved.pattern_signals = msg.pattern_signals;
    }
    else {
      resolved.pattern_signals = []
    }

    if (msg.light_id !== undefined) {
      resolved.light_id = msg.light_id;
    }
    else {
      resolved.light_id = 0
    }

    return resolved;
    }
};

module.exports = LightDetectTrigger;
