// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mla_localization_msgs = _finder('mla_localization_msgs');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.velocity = null;
      this.reserved = null;
      this.is_reverse = null;
      this.steering_report = null;
      this.yaw = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new mla_localization_msgs.msg.MLAPosLocal();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('is_reverse')) {
        this.is_reverse = initObj.is_reverse
      }
      else {
        this.is_reverse = false;
      }
      if (initObj.hasOwnProperty('steering_report')) {
        this.steering_report = initObj.steering_report
      }
      else {
        this.steering_report = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [position]
    bufferOffset = mla_localization_msgs.msg.MLAPosLocal.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float64(obj.reserved, buffer, bufferOffset);
    // Serialize message field [is_reverse]
    bufferOffset = _serializer.bool(obj.is_reverse, buffer, bufferOffset);
    // Serialize message field [steering_report]
    bufferOffset = _serializer.float32(obj.steering_report, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [position]
    data.position = mla_localization_msgs.msg.MLAPosLocal.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_reverse]
    data.is_reverse = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_report]
    data.steering_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bdd230b17368f5d0d892de70e9feeef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mla_localization_msgs/MLAPosLocal position
    float64 velocity
    float64 reserved
    bool is_reverse
    float32 steering_report
    float64 yaw
    string reserved_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
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
    const resolved = new TrajectoryPoint(null);
    if (msg.position !== undefined) {
      resolved.position = mla_localization_msgs.msg.MLAPosLocal.Resolve(msg.position)
    }
    else {
      resolved.position = new mla_localization_msgs.msg.MLAPosLocal()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.is_reverse !== undefined) {
      resolved.is_reverse = msg.is_reverse;
    }
    else {
      resolved.is_reverse = false
    }

    if (msg.steering_report !== undefined) {
      resolved.steering_report = msg.steering_report;
    }
    else {
      resolved.steering_report = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
