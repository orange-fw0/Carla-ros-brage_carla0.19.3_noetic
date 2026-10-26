// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NetStatusData = require('./NetStatusData.js');

//-----------------------------------------------------------

class NetStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.net_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('net_status_data')) {
        this.net_status_data = initObj.net_status_data
      }
      else {
        this.net_status_data = new NetStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NetStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [net_status_data]
    bufferOffset = NetStatusData.serialize(obj.net_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetStatus
    let len;
    let data = new NetStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [net_status_data]
    data.net_status_data = NetStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NetStatusData.getMessageSize(object.net_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NetStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a36dc85c510d6816ad66b723886af27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NET_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/NetStatusData net_status_data
    
    ================================================================================
    MSG: framework_status_msgs/NetStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/NetCardStatus[] net_card_status_list
    framework_status_msgs/NetAliveStatus[] net_alive_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/NetCardStatus
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
    
    ================================================================================
    MSG: framework_status_msgs/NetAliveStatus
    string name
    uint32 loss_count
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NetStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.net_status_data !== undefined) {
      resolved.net_status_data = NetStatusData.Resolve(msg.net_status_data)
    }
    else {
      resolved.net_status_data = new NetStatusData()
    }

    return resolved;
    }
};

// Constants for message
NetStatus.Constants = {
  NET_STATUS_DATA: 1,
}

module.exports = NetStatus;
