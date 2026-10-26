// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ExportDetailsData = require('./ExportDetailsData.js');

//-----------------------------------------------------------

class ExportDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.export_details_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('export_details_data')) {
        this.export_details_data = initObj.export_details_data
      }
      else {
        this.export_details_data = new ExportDetailsData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExportDetails
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [export_details_data]
    bufferOffset = ExportDetailsData.serialize(obj.export_details_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportDetails
    let len;
    let data = new ExportDetails(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [export_details_data]
    data.export_details_data = ExportDetailsData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ExportDetailsData.getMessageSize(object.export_details_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ExportDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99c6a676a5113eb2962c5742c65fbbd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EXPORT_DETAILS_DATA = 1
    uint8 available
    framework_status_msgs/ExportDetailsData export_details_data
    
    ================================================================================
    MSG: framework_status_msgs/ExportDetailsData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExportDetails(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.export_details_data !== undefined) {
      resolved.export_details_data = ExportDetailsData.Resolve(msg.export_details_data)
    }
    else {
      resolved.export_details_data = new ExportDetailsData()
    }

    return resolved;
    }
};

// Constants for message
ExportDetails.Constants = {
  EXPORT_DETAILS_DATA: 1,
}

module.exports = ExportDetails;
