// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MLAImuBasic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accx = null;
      this.accy = null;
      this.accz = null;
      this.gyrox = null;
      this.gyroy = null;
      this.gyroz = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('accx')) {
        this.accx = initObj.accx
      }
      else {
        this.accx = 0.0;
      }
      if (initObj.hasOwnProperty('accy')) {
        this.accy = initObj.accy
      }
      else {
        this.accy = 0.0;
      }
      if (initObj.hasOwnProperty('accz')) {
        this.accz = initObj.accz
      }
      else {
        this.accz = 0.0;
      }
      if (initObj.hasOwnProperty('gyrox')) {
        this.gyrox = initObj.gyrox
      }
      else {
        this.gyrox = 0.0;
      }
      if (initObj.hasOwnProperty('gyroy')) {
        this.gyroy = initObj.gyroy
      }
      else {
        this.gyroy = 0.0;
      }
      if (initObj.hasOwnProperty('gyroz')) {
        this.gyroz = initObj.gyroz
      }
      else {
        this.gyroz = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAImuBasic
    // Serialize message field [accx]
    bufferOffset = _serializer.float64(obj.accx, buffer, bufferOffset);
    // Serialize message field [accy]
    bufferOffset = _serializer.float64(obj.accy, buffer, bufferOffset);
    // Serialize message field [accz]
    bufferOffset = _serializer.float64(obj.accz, buffer, bufferOffset);
    // Serialize message field [gyrox]
    bufferOffset = _serializer.float64(obj.gyrox, buffer, bufferOffset);
    // Serialize message field [gyroy]
    bufferOffset = _serializer.float64(obj.gyroy, buffer, bufferOffset);
    // Serialize message field [gyroz]
    bufferOffset = _serializer.float64(obj.gyroz, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAImuBasic
    let len;
    let data = new MLAImuBasic(null);
    // Deserialize message field [accx]
    data.accx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accy]
    data.accy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accz]
    data.accz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyrox]
    data.gyrox = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyroy]
    data.gyroy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyroz]
    data.gyroz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAImuBasic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e48b0634009003373d93d35ff65e87fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 accx
    float64 accy
    float64 accz
    float64 gyrox
    float64 gyroy
    float64 gyroz
    float64 temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAImuBasic(null);
    if (msg.accx !== undefined) {
      resolved.accx = msg.accx;
    }
    else {
      resolved.accx = 0.0
    }

    if (msg.accy !== undefined) {
      resolved.accy = msg.accy;
    }
    else {
      resolved.accy = 0.0
    }

    if (msg.accz !== undefined) {
      resolved.accz = msg.accz;
    }
    else {
      resolved.accz = 0.0
    }

    if (msg.gyrox !== undefined) {
      resolved.gyrox = msg.gyrox;
    }
    else {
      resolved.gyrox = 0.0
    }

    if (msg.gyroy !== undefined) {
      resolved.gyroy = msg.gyroy;
    }
    else {
      resolved.gyroy = 0.0
    }

    if (msg.gyroz !== undefined) {
      resolved.gyroz = msg.gyroz;
    }
    else {
      resolved.gyroz = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = MLAImuBasic;
