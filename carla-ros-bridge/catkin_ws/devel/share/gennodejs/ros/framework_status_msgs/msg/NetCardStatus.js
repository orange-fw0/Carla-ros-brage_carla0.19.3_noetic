// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NetCardStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.net_card_name = null;
      this.bytes_sent_rate = null;
      this.bytes_recv_rate = null;
      this.packets_sent_rate = null;
      this.packets_recv_rate = null;
      this.errin_rate = null;
      this.errout_rate = null;
      this.dropin_rate = null;
      this.dropout_rate = null;
      this.net_card_isup = null;
      this.duplex = null;
      this.speed = null;
      this.mtu = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('net_card_name')) {
        this.net_card_name = initObj.net_card_name
      }
      else {
        this.net_card_name = '';
      }
      if (initObj.hasOwnProperty('bytes_sent_rate')) {
        this.bytes_sent_rate = initObj.bytes_sent_rate
      }
      else {
        this.bytes_sent_rate = 0.0;
      }
      if (initObj.hasOwnProperty('bytes_recv_rate')) {
        this.bytes_recv_rate = initObj.bytes_recv_rate
      }
      else {
        this.bytes_recv_rate = 0.0;
      }
      if (initObj.hasOwnProperty('packets_sent_rate')) {
        this.packets_sent_rate = initObj.packets_sent_rate
      }
      else {
        this.packets_sent_rate = 0.0;
      }
      if (initObj.hasOwnProperty('packets_recv_rate')) {
        this.packets_recv_rate = initObj.packets_recv_rate
      }
      else {
        this.packets_recv_rate = 0.0;
      }
      if (initObj.hasOwnProperty('errin_rate')) {
        this.errin_rate = initObj.errin_rate
      }
      else {
        this.errin_rate = 0.0;
      }
      if (initObj.hasOwnProperty('errout_rate')) {
        this.errout_rate = initObj.errout_rate
      }
      else {
        this.errout_rate = 0.0;
      }
      if (initObj.hasOwnProperty('dropin_rate')) {
        this.dropin_rate = initObj.dropin_rate
      }
      else {
        this.dropin_rate = 0.0;
      }
      if (initObj.hasOwnProperty('dropout_rate')) {
        this.dropout_rate = initObj.dropout_rate
      }
      else {
        this.dropout_rate = 0.0;
      }
      if (initObj.hasOwnProperty('net_card_isup')) {
        this.net_card_isup = initObj.net_card_isup
      }
      else {
        this.net_card_isup = false;
      }
      if (initObj.hasOwnProperty('duplex')) {
        this.duplex = initObj.duplex
      }
      else {
        this.duplex = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('mtu')) {
        this.mtu = initObj.mtu
      }
      else {
        this.mtu = 0;
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
    // Serializes a message object of type NetCardStatus
    // Serialize message field [net_card_name]
    bufferOffset = _serializer.string(obj.net_card_name, buffer, bufferOffset);
    // Serialize message field [bytes_sent_rate]
    bufferOffset = _serializer.float32(obj.bytes_sent_rate, buffer, bufferOffset);
    // Serialize message field [bytes_recv_rate]
    bufferOffset = _serializer.float32(obj.bytes_recv_rate, buffer, bufferOffset);
    // Serialize message field [packets_sent_rate]
    bufferOffset = _serializer.float32(obj.packets_sent_rate, buffer, bufferOffset);
    // Serialize message field [packets_recv_rate]
    bufferOffset = _serializer.float32(obj.packets_recv_rate, buffer, bufferOffset);
    // Serialize message field [errin_rate]
    bufferOffset = _serializer.float32(obj.errin_rate, buffer, bufferOffset);
    // Serialize message field [errout_rate]
    bufferOffset = _serializer.float32(obj.errout_rate, buffer, bufferOffset);
    // Serialize message field [dropin_rate]
    bufferOffset = _serializer.float32(obj.dropin_rate, buffer, bufferOffset);
    // Serialize message field [dropout_rate]
    bufferOffset = _serializer.float32(obj.dropout_rate, buffer, bufferOffset);
    // Serialize message field [net_card_isup]
    bufferOffset = _serializer.bool(obj.net_card_isup, buffer, bufferOffset);
    // Serialize message field [duplex]
    bufferOffset = _serializer.uint8(obj.duplex, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint32(obj.speed, buffer, bufferOffset);
    // Serialize message field [mtu]
    bufferOffset = _serializer.uint32(obj.mtu, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetCardStatus
    let len;
    let data = new NetCardStatus(null);
    // Deserialize message field [net_card_name]
    data.net_card_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bytes_sent_rate]
    data.bytes_sent_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bytes_recv_rate]
    data.bytes_recv_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [packets_sent_rate]
    data.packets_sent_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [packets_recv_rate]
    data.packets_recv_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errin_rate]
    data.errin_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errout_rate]
    data.errout_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dropin_rate]
    data.dropin_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dropout_rate]
    data.dropout_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [net_card_isup]
    data.net_card_isup = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [duplex]
    data.duplex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mtu]
    data.mtu = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.net_card_name);
    length += _getByteLength(object.reserved_info);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NetCardStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fffdcb72a8d94123d5dcaa023e00c013';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string net_card_name
    float32 bytes_sent_rate
    float32 bytes_recv_rate
    float32 packets_sent_rate
    float32 packets_recv_rate
    float32 errin_rate
    float32 errout_rate
    float32 dropin_rate
    float32 dropout_rate
    bool net_card_isup
    uint8 duplex
    uint32 speed
    uint32 mtu
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NetCardStatus(null);
    if (msg.net_card_name !== undefined) {
      resolved.net_card_name = msg.net_card_name;
    }
    else {
      resolved.net_card_name = ''
    }

    if (msg.bytes_sent_rate !== undefined) {
      resolved.bytes_sent_rate = msg.bytes_sent_rate;
    }
    else {
      resolved.bytes_sent_rate = 0.0
    }

    if (msg.bytes_recv_rate !== undefined) {
      resolved.bytes_recv_rate = msg.bytes_recv_rate;
    }
    else {
      resolved.bytes_recv_rate = 0.0
    }

    if (msg.packets_sent_rate !== undefined) {
      resolved.packets_sent_rate = msg.packets_sent_rate;
    }
    else {
      resolved.packets_sent_rate = 0.0
    }

    if (msg.packets_recv_rate !== undefined) {
      resolved.packets_recv_rate = msg.packets_recv_rate;
    }
    else {
      resolved.packets_recv_rate = 0.0
    }

    if (msg.errin_rate !== undefined) {
      resolved.errin_rate = msg.errin_rate;
    }
    else {
      resolved.errin_rate = 0.0
    }

    if (msg.errout_rate !== undefined) {
      resolved.errout_rate = msg.errout_rate;
    }
    else {
      resolved.errout_rate = 0.0
    }

    if (msg.dropin_rate !== undefined) {
      resolved.dropin_rate = msg.dropin_rate;
    }
    else {
      resolved.dropin_rate = 0.0
    }

    if (msg.dropout_rate !== undefined) {
      resolved.dropout_rate = msg.dropout_rate;
    }
    else {
      resolved.dropout_rate = 0.0
    }

    if (msg.net_card_isup !== undefined) {
      resolved.net_card_isup = msg.net_card_isup;
    }
    else {
      resolved.net_card_isup = false
    }

    if (msg.duplex !== undefined) {
      resolved.duplex = msg.duplex;
    }
    else {
      resolved.duplex = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.mtu !== undefined) {
      resolved.mtu = msg.mtu;
    }
    else {
      resolved.mtu = 0
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

module.exports = NetCardStatus;
