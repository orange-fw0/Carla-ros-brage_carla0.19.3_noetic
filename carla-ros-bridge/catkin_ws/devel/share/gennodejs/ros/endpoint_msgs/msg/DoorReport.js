// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DoorReportData = require('./DoorReportData.js');

//-----------------------------------------------------------

class DoorReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.door_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('door_report_data')) {
        this.door_report_data = initObj.door_report_data
      }
      else {
        this.door_report_data = new DoorReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [door_report_data]
    bufferOffset = DoorReportData.serialize(obj.door_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorReport
    let len;
    let data = new DoorReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [door_report_data]
    data.door_report_data = DoorReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DoorReportData.getMessageSize(object.door_report_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/DoorReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '184d144206f18c52f28952c9a0a34578';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DOOR_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/DoorReportData door_report_data
    
    ================================================================================
    MSG: endpoint_msgs/DoorReportData
    uint64 timestamp_us
    endpoint_msgs/DoorType[] opened_door_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/DoorType
    uint8 DRIVER = 0
    uint8 PASSENGER = 1
    uint8 REAR_LEFT = 2
    uint8 REAR_RIGHT = 3
    uint8 HOOD = 4
    uint8 TRUNK = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.door_report_data !== undefined) {
      resolved.door_report_data = DoorReportData.Resolve(msg.door_report_data)
    }
    else {
      resolved.door_report_data = new DoorReportData()
    }

    return resolved;
    }
};

// Constants for message
DoorReport.Constants = {
  DOOR_REPORT_DATA: 1,
}

module.exports = DoorReport;
