// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');

//-----------------------------------------------------------

class UssEnvelopeId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tx_sensor_id = null;
      this.rx_sensor_id = null;
      this.host_timestamp = null;
      this.meta = null;
    }
    else {
      if (initObj.hasOwnProperty('tx_sensor_id')) {
        this.tx_sensor_id = initObj.tx_sensor_id
      }
      else {
        this.tx_sensor_id = 0;
      }
      if (initObj.hasOwnProperty('rx_sensor_id')) {
        this.rx_sensor_id = initObj.rx_sensor_id
      }
      else {
        this.rx_sensor_id = 0;
      }
      if (initObj.hasOwnProperty('host_timestamp')) {
        this.host_timestamp = initObj.host_timestamp
      }
      else {
        this.host_timestamp = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssEnvelopeId
    // Serialize message field [tx_sensor_id]
    bufferOffset = _serializer.uint8(obj.tx_sensor_id, buffer, bufferOffset);
    // Serialize message field [rx_sensor_id]
    bufferOffset = _serializer.uint8(obj.rx_sensor_id, buffer, bufferOffset);
    // Serialize message field [host_timestamp]
    bufferOffset = _serializer.uint64(obj.host_timestamp, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssEnvelopeId
    let len;
    let data = new UssEnvelopeId(null);
    // Deserialize message field [tx_sensor_id]
    data.tx_sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rx_sensor_id]
    data.rx_sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [host_timestamp]
    data.host_timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssEnvelopeId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a61116ae7661c86f18987f9ab42039db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 tx_sensor_id
    uint8 rx_sensor_id
    uint64 host_timestamp
    sensor_interface_msgs/UltrasonicResultMeta meta
    
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
    const resolved = new UssEnvelopeId(null);
    if (msg.tx_sensor_id !== undefined) {
      resolved.tx_sensor_id = msg.tx_sensor_id;
    }
    else {
      resolved.tx_sensor_id = 0
    }

    if (msg.rx_sensor_id !== undefined) {
      resolved.rx_sensor_id = msg.rx_sensor_id;
    }
    else {
      resolved.rx_sensor_id = 0
    }

    if (msg.host_timestamp !== undefined) {
      resolved.host_timestamp = msg.host_timestamp;
    }
    else {
      resolved.host_timestamp = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    return resolved;
    }
};

module.exports = UssEnvelopeId;
