// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleMessageStatus = require('./SingleMessageStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MessageStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp_us = null;
      this.message_status_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('message_status_list')) {
        this.message_status_list = initObj.message_status_list
      }
      else {
        this.message_status_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MessageStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [message_status_list]
    // Serialize the length for message field [message_status_list]
    bufferOffset = _serializer.uint32(obj.message_status_list.length, buffer, bufferOffset);
    obj.message_status_list.forEach((val) => {
      bufferOffset = SingleMessageStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageStatus
    let len;
    let data = new MessageStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [message_status_list]
    // Deserialize array length for message field [message_status_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.message_status_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.message_status_list[i] = SingleMessageStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.message_status_list.forEach((val) => {
      length += SingleMessageStatus.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/MessageStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c33039895927ea8c4f54a135adcf66f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint64 timestamp_us
    framework_status_msgs/SingleMessageStatus[] message_status_list
    
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
    MSG: framework_status_msgs/SingleMessageStatus
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    string name
    uint64 start_timestamp_us
    uint64 end_timestamp_us
    float32 frame_rate
    float32 standard_frame_rate
    framework_status_msgs/StatisticValue interval_ms
    framework_status_msgs/StatisticValue header_delay_ms
    uint32 current_loss_frame_count
    uint32 total_loss_frame_count
    bool in_order
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/StatisticValue
    float32 average
    float32 standard_deviation
    float32 max_value
    float32 min_value
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MessageStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.message_status_list !== undefined) {
      resolved.message_status_list = new Array(msg.message_status_list.length);
      for (let i = 0; i < resolved.message_status_list.length; ++i) {
        resolved.message_status_list[i] = SingleMessageStatus.Resolve(msg.message_status_list[i]);
      }
    }
    else {
      resolved.message_status_list = []
    }

    return resolved;
    }
};

module.exports = MessageStatus;
