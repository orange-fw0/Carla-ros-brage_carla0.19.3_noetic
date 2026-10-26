// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParamAggregatorConfig = require('./ParamAggregatorConfig.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParamAggregatorConfigArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.config_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('config_array')) {
        this.config_array = initObj.config_array
      }
      else {
        this.config_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamAggregatorConfigArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [config_array]
    // Serialize the length for message field [config_array]
    bufferOffset = _serializer.uint32(obj.config_array.length, buffer, bufferOffset);
    obj.config_array.forEach((val) => {
      bufferOffset = ParamAggregatorConfig.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamAggregatorConfigArray
    let len;
    let data = new ParamAggregatorConfigArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [config_array]
    // Deserialize array length for message field [config_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.config_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.config_array[i] = ParamAggregatorConfig.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.config_array.forEach((val) => {
      length += ParamAggregatorConfig.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/ParamAggregatorConfigArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24b5eac89139060be3eae4197c8b5d02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/ParamAggregatorConfig[] config_array
    
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
    MSG: momenta_msgs/ParamAggregatorConfig
    string name
    string data
    string type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamAggregatorConfigArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.config_array !== undefined) {
      resolved.config_array = new Array(msg.config_array.length);
      for (let i = 0; i < resolved.config_array.length; ++i) {
        resolved.config_array[i] = ParamAggregatorConfig.Resolve(msg.config_array[i]);
      }
    }
    else {
      resolved.config_array = []
    }

    return resolved;
    }
};

module.exports = ParamAggregatorConfigArray;
