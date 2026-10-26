// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FleetDiskStatusData = require('./FleetDiskStatusData.js');

//-----------------------------------------------------------

class FleetDiskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.fleet_disk_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('fleet_disk_status_data')) {
        this.fleet_disk_status_data = initObj.fleet_disk_status_data
      }
      else {
        this.fleet_disk_status_data = new FleetDiskStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FleetDiskStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [fleet_disk_status_data]
    bufferOffset = FleetDiskStatusData.serialize(obj.fleet_disk_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FleetDiskStatus
    let len;
    let data = new FleetDiskStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fleet_disk_status_data]
    data.fleet_disk_status_data = FleetDiskStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FleetDiskStatusData.getMessageSize(object.fleet_disk_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/FleetDiskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a458147320c67acd8cff34daf7970047';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FLEET_DISK_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/FleetDiskStatusData fleet_disk_status_data
    
    ================================================================================
    MSG: framework_status_msgs/FleetDiskStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    framework_status_msgs/SingleDiskStatus[] single_disk_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleDiskStatus
    string sn
    string disk_type
    string status
    uint64 space_size
    uint64 space_used
    string driver
    string speed
    int64 availability
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FleetDiskStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.fleet_disk_status_data !== undefined) {
      resolved.fleet_disk_status_data = FleetDiskStatusData.Resolve(msg.fleet_disk_status_data)
    }
    else {
      resolved.fleet_disk_status_data = new FleetDiskStatusData()
    }

    return resolved;
    }
};

// Constants for message
FleetDiskStatus.Constants = {
  FLEET_DISK_STATUS_DATA: 1,
}

module.exports = FleetDiskStatus;
