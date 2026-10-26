// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarID = require('./LidarID.js');

//-----------------------------------------------------------

class LidarNotificationAck {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.value = null;
      this.ack = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new LidarID();
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('ack')) {
        this.ack = initObj.ack
      }
      else {
        this.ack = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarNotificationAck
    // Serialize message field [id]
    bufferOffset = LidarID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    // Serialize message field [ack]
    bufferOffset = _serializer.uint8(obj.ack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarNotificationAck
    let len;
    let data = new LidarNotificationAck(null);
    // Deserialize message field [id]
    data.id = LidarID.deserialize(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ack]
    data.ack = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarNotificationAck';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb93490d1fe826883ec8537e5551344f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 None = 0
    uint32 SN = 1
    uint32 Parameter = 2
    sensor_lidar_msgs/LidarID id
    uint32 value
    uint8 ack
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarID
    uint32 None = 0
    uint32 Front_Left = 1
    uint32 Front_Right = 2
    uint32 Middle_Left = 4
    uint32 Middle_Right = 8
    uint32 Rear_Left = 16
    uint32 Rear_Right = 32
    uint32 Front_Down = 64
    uint32 Front_Up = 128
    uint32 Rear_Down = 256
    uint32 Rear_Up = 512
    uint32 Centre = 1024
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarNotificationAck(null);
    if (msg.id !== undefined) {
      resolved.id = LidarID.Resolve(msg.id)
    }
    else {
      resolved.id = new LidarID()
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.ack !== undefined) {
      resolved.ack = msg.ack;
    }
    else {
      resolved.ack = 0
    }

    return resolved;
    }
};

// Constants for message
LidarNotificationAck.Constants = {
  NONE: 0,
  SN: 1,
  PARAMETER: 2,
}

module.exports = LidarNotificationAck;
