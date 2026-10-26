// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageWithAddress {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.format = null;
      this.device_type = null;
      this.start_address = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = '';
      }
      if (initObj.hasOwnProperty('device_type')) {
        this.device_type = initObj.device_type
      }
      else {
        this.device_type = '';
      }
      if (initObj.hasOwnProperty('start_address')) {
        this.start_address = initObj.start_address
      }
      else {
        this.start_address = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageWithAddress
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [format]
    bufferOffset = _serializer.string(obj.format, buffer, bufferOffset);
    // Serialize message field [device_type]
    bufferOffset = _serializer.string(obj.device_type, buffer, bufferOffset);
    // Serialize message field [start_address]
    bufferOffset = _serializer.uint64(obj.start_address, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageWithAddress
    let len;
    let data = new ImageWithAddress(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [format]
    data.format = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_type]
    data.device_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_address]
    data.start_address = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.format);
    length += _getByteLength(object.device_type);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/ImageWithAddress';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04041cd5163466bc817c7061680e0fe8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string format
    string device_type
    uint64 start_address
    uint32 size
    
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
    const resolved = new ImageWithAddress(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = ''
    }

    if (msg.device_type !== undefined) {
      resolved.device_type = msg.device_type;
    }
    else {
      resolved.device_type = ''
    }

    if (msg.start_address !== undefined) {
      resolved.start_address = msg.start_address;
    }
    else {
      resolved.start_address = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = ImageWithAddress;
