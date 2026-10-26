// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RecordingV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.start = null;
      this.name = null;
      this.collect_type = null;
      this.topics = null;
      this.tags = null;
      this.debug_reject = null;
      this.debug_start = null;
      this.detail = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = false;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = '';
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('debug_reject')) {
        this.debug_reject = initObj.debug_reject
      }
      else {
        this.debug_reject = false;
      }
      if (initObj.hasOwnProperty('debug_start')) {
        this.debug_start = initObj.debug_start
      }
      else {
        this.debug_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('detail')) {
        this.detail = initObj.detail
      }
      else {
        this.detail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordingV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.bool(obj.start, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [collect_type]
    bufferOffset = _serializer.string(obj.collect_type, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [debug_reject]
    bufferOffset = _serializer.bool(obj.debug_reject, buffer, bufferOffset);
    // Serialize message field [debug_start]
    bufferOffset = _serializer.time(obj.debug_start, buffer, bufferOffset);
    // Serialize message field [detail]
    bufferOffset = _serializer.string(obj.detail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordingV2
    let len;
    let data = new RecordingV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collect_type]
    data.collect_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [debug_reject]
    data.debug_reject = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [debug_start]
    data.debug_start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [detail]
    data.detail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.name);
    length += _getByteLength(object.collect_type);
    object.topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.detail);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/RecordingV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fc9f062a52a51e5b80226a642201fa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool start
    string name
    string collect_type
    string[] topics
    string[] tags
    bool debug_reject
    time debug_start
    string detail
    
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
    const resolved = new RecordingV2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = false
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = ''
    }

    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.debug_reject !== undefined) {
      resolved.debug_reject = msg.debug_reject;
    }
    else {
      resolved.debug_reject = false
    }

    if (msg.debug_start !== undefined) {
      resolved.debug_start = msg.debug_start;
    }
    else {
      resolved.debug_start = {secs: 0, nsecs: 0}
    }

    if (msg.detail !== undefined) {
      resolved.detail = msg.detail;
    }
    else {
      resolved.detail = ''
    }

    return resolved;
    }
};

module.exports = RecordingV2;
