// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelBrakePadTempData = require('./WheelBrakePadTempData.js');

//-----------------------------------------------------------

class WheelBrakePadTempReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_brake_pad_temp_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_brake_pad_temp_data')) {
        this.wheel_brake_pad_temp_data = initObj.wheel_brake_pad_temp_data
      }
      else {
        this.wheel_brake_pad_temp_data = new WheelBrakePadTempData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelBrakePadTempReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_brake_pad_temp_data]
    bufferOffset = WheelBrakePadTempData.serialize(obj.wheel_brake_pad_temp_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelBrakePadTempReport
    let len;
    let data = new WheelBrakePadTempReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_brake_pad_temp_data]
    data.wheel_brake_pad_temp_data = WheelBrakePadTempData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelBrakePadTempReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c06db4a91197a98259780edeaec81e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelBrakePadTempData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelBrakePadTempReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_brake_pad_temp_data !== undefined) {
      resolved.wheel_brake_pad_temp_data = WheelBrakePadTempData.Resolve(msg.wheel_brake_pad_temp_data)
    }
    else {
      resolved.wheel_brake_pad_temp_data = new WheelBrakePadTempData()
    }

    return resolved;
    }
};

// Constants for message
WheelBrakePadTempReport.Constants = {
  WHEEL_BRAKE_PAD_TEMP_REPORT_DATA: 1,
}

module.exports = WheelBrakePadTempReport;
