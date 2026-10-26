// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class V2xIntersectionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intersection_id = null;
      this.enter_angle = null;
      this.exit_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('intersection_id')) {
        this.intersection_id = initObj.intersection_id
      }
      else {
        this.intersection_id = 0;
      }
      if (initObj.hasOwnProperty('enter_angle')) {
        this.enter_angle = initObj.enter_angle
      }
      else {
        this.enter_angle = 0.0;
      }
      if (initObj.hasOwnProperty('exit_angle')) {
        this.exit_angle = initObj.exit_angle
      }
      else {
        this.exit_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xIntersectionData
    // Serialize message field [intersection_id]
    bufferOffset = _serializer.int32(obj.intersection_id, buffer, bufferOffset);
    // Serialize message field [enter_angle]
    bufferOffset = _serializer.float64(obj.enter_angle, buffer, bufferOffset);
    // Serialize message field [exit_angle]
    bufferOffset = _serializer.float64(obj.exit_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xIntersectionData
    let len;
    let data = new V2xIntersectionData(null);
    // Deserialize message field [intersection_id]
    data.intersection_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enter_angle]
    data.enter_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exit_angle]
    data.exit_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xIntersectionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f61aadbc50212199e203c182bad568f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 intersection_id
    float64 enter_angle
    float64 exit_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xIntersectionData(null);
    if (msg.intersection_id !== undefined) {
      resolved.intersection_id = msg.intersection_id;
    }
    else {
      resolved.intersection_id = 0
    }

    if (msg.enter_angle !== undefined) {
      resolved.enter_angle = msg.enter_angle;
    }
    else {
      resolved.enter_angle = 0.0
    }

    if (msg.exit_angle !== undefined) {
      resolved.exit_angle = msg.exit_angle;
    }
    else {
      resolved.exit_angle = 0.0
    }

    return resolved;
    }
};

module.exports = V2xIntersectionData;
