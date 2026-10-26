// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicUpaDistance = require('./UltrasonicUpaDistance.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UltrasonicUpaReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uss_upa_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uss_upa_distance')) {
        this.uss_upa_distance = initObj.uss_upa_distance
      }
      else {
        this.uss_upa_distance = new UltrasonicUpaDistance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicUpaReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uss_upa_distance]
    bufferOffset = UltrasonicUpaDistance.serialize(obj.uss_upa_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicUpaReport
    let len;
    let data = new UltrasonicUpaReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_upa_distance]
    data.uss_upa_distance = UltrasonicUpaDistance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += UltrasonicUpaDistance.getMessageSize(object.uss_upa_distance);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicUpaReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e005b4d2ebad20d43c80bf152864cbc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    sensor_interface_msgs/UltrasonicUpaDistance uss_upa_distance
    
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
    MSG: sensor_interface_msgs/UltrasonicUpaDistance
    uint8 FRONT_LEFT_SIDE = 0
    uint8 FRONT_LEFT_CORNER = 1
    uint8 FRONT_LEFT_CENTER = 2
    uint8 FRONT_RIGHT_CENTER = 3
    uint8 FRONT_RIGHT_CORNER = 4
    uint8 FRONT_RIGHT_SIDE = 5
    uint8 REAR_RIGHT_SIDE = 6
    uint8 REAR_RIGHT_CORNER = 7
    uint8 REAR_RIGHT_CENTER = 8
    uint8 REAR_LEFT_CENTER = 9
    uint8 REAR_LEFT_CORNER = 10
    uint8 REAR_LEFT_SIDE = 11
    sensor_interface_msgs/UltrasonicUpaData[] sonar
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicUpaData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 upadistance
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicUpaReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uss_upa_distance !== undefined) {
      resolved.uss_upa_distance = UltrasonicUpaDistance.Resolve(msg.uss_upa_distance)
    }
    else {
      resolved.uss_upa_distance = new UltrasonicUpaDistance()
    }

    return resolved;
    }
};

module.exports = UltrasonicUpaReport;
