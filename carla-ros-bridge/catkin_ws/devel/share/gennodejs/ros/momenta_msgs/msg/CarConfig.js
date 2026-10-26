// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lidar_type = null;
      this.camera_type = null;
      this.location_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lidar_type')) {
        this.lidar_type = initObj.lidar_type
      }
      else {
        this.lidar_type = '';
      }
      if (initObj.hasOwnProperty('camera_type')) {
        this.camera_type = initObj.camera_type
      }
      else {
        this.camera_type = '';
      }
      if (initObj.hasOwnProperty('location_type')) {
        this.location_type = initObj.location_type
      }
      else {
        this.location_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarConfig
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lidar_type]
    bufferOffset = _serializer.string(obj.lidar_type, buffer, bufferOffset);
    // Serialize message field [camera_type]
    bufferOffset = _serializer.string(obj.camera_type, buffer, bufferOffset);
    // Serialize message field [location_type]
    bufferOffset = _serializer.string(obj.location_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarConfig
    let len;
    let data = new CarConfig(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lidar_type]
    data.lidar_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_type]
    data.camera_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_type]
    data.location_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.lidar_type);
    length += _getByteLength(object.camera_type);
    length += _getByteLength(object.location_type);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/CarConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '422fbf7a25d29ea17904f99623359848';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string lidar_type
    string camera_type
    string location_type
    
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
    const resolved = new CarConfig(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lidar_type !== undefined) {
      resolved.lidar_type = msg.lidar_type;
    }
    else {
      resolved.lidar_type = ''
    }

    if (msg.camera_type !== undefined) {
      resolved.camera_type = msg.camera_type;
    }
    else {
      resolved.camera_type = ''
    }

    if (msg.location_type !== undefined) {
      resolved.location_type = msg.location_type;
    }
    else {
      resolved.location_type = ''
    }

    return resolved;
    }
};

module.exports = CarConfig;
