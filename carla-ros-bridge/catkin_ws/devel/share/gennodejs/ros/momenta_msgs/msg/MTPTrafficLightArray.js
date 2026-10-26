// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MTPTrafficLight = require('./MTPTrafficLight.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MTPTrafficLightArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.items = null;
      this.bbox_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('items')) {
        this.items = initObj.items
      }
      else {
        this.items = [];
      }
      if (initObj.hasOwnProperty('bbox_points')) {
        this.bbox_points = initObj.bbox_points
      }
      else {
        this.bbox_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MTPTrafficLightArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [items]
    // Serialize the length for message field [items]
    bufferOffset = _serializer.uint32(obj.items.length, buffer, bufferOffset);
    obj.items.forEach((val) => {
      bufferOffset = MTPTrafficLight.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bbox_points]
    bufferOffset = _arraySerializer.float32(obj.bbox_points, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MTPTrafficLightArray
    let len;
    let data = new MTPTrafficLightArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [items]
    // Deserialize array length for message field [items]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.items = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.items[i] = MTPTrafficLight.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bbox_points]
    data.bbox_points = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.items.forEach((val) => {
      length += MTPTrafficLight.getMessageSize(val);
    });
    length += 4 * object.bbox_points.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MTPTrafficLightArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '450daad939b682bf94fc0c3ec7176756';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/MTPTrafficLight[] items
    float32[] bbox_points
    
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
    MSG: momenta_msgs/MTPTrafficLight
    float32[] rect
    float32 score
    int32 state_enum
    int32 pattern_enum
    int32 track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MTPTrafficLightArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.items !== undefined) {
      resolved.items = new Array(msg.items.length);
      for (let i = 0; i < resolved.items.length; ++i) {
        resolved.items[i] = MTPTrafficLight.Resolve(msg.items[i]);
      }
    }
    else {
      resolved.items = []
    }

    if (msg.bbox_points !== undefined) {
      resolved.bbox_points = msg.bbox_points;
    }
    else {
      resolved.bbox_points = []
    }

    return resolved;
    }
};

module.exports = MTPTrafficLightArray;
