// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ButtonEventReportData = require('./ButtonEventReportData.js');

//-----------------------------------------------------------

class ButtonEventReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.button_event_report_data = null;
      this.roller_steps_L = null;
      this.roller_steps_R = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('button_event_report_data')) {
        this.button_event_report_data = initObj.button_event_report_data
      }
      else {
        this.button_event_report_data = new ButtonEventReportData();
      }
      if (initObj.hasOwnProperty('roller_steps_L')) {
        this.roller_steps_L = initObj.roller_steps_L
      }
      else {
        this.roller_steps_L = 0;
      }
      if (initObj.hasOwnProperty('roller_steps_R')) {
        this.roller_steps_R = initObj.roller_steps_R
      }
      else {
        this.roller_steps_R = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonEventReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [button_event_report_data]
    bufferOffset = ButtonEventReportData.serialize(obj.button_event_report_data, buffer, bufferOffset);
    // Serialize message field [roller_steps_L]
    bufferOffset = _serializer.int16(obj.roller_steps_L, buffer, bufferOffset);
    // Serialize message field [roller_steps_R]
    bufferOffset = _serializer.int16(obj.roller_steps_R, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonEventReport
    let len;
    let data = new ButtonEventReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [button_event_report_data]
    data.button_event_report_data = ButtonEventReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [roller_steps_L]
    data.roller_steps_L = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [roller_steps_R]
    data.roller_steps_R = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ButtonEventReportData.getMessageSize(object.button_event_report_data);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ButtonEventReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cef4de0ccb7d5e400a71459300b32f3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BUTTON_EVENT_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/ButtonEventReportData button_event_report_data
    int16 roller_steps_L
    int16 roller_steps_R
    
    ================================================================================
    MSG: endpoint_msgs/ButtonEventReportData
    uint64 timestamp_us
    endpoint_msgs/ButtonEvent[] button_event_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/ButtonEvent
    uint8 BUTTON1 = 0
    uint8 BUTTON2 = 1
    uint8 BUTTON3 = 2
    uint8 BUTTON4 = 3
    uint8 BUTTON5 = 4
    uint8 BUTTON6 = 5
    uint8 BUTTON7 = 6
    uint8 BUTTON8 = 7
    uint8 BUTTON9 = 8
    uint8 BUTTON10 = 9
    uint8 BUTTON11 = 10
    uint8 BUTTON12 = 11
    uint8 BUTTON13 = 12
    uint8 BUTTON14 = 13
    uint8 BUTTON15 = 14
    uint8 BUTTON16 = 15
    uint8 BUTTON17 = 16
    uint8 BUTTON18 = 17
    uint8 BUTTON19 = 18
    uint8 BUTTON20 = 19
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonEventReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.button_event_report_data !== undefined) {
      resolved.button_event_report_data = ButtonEventReportData.Resolve(msg.button_event_report_data)
    }
    else {
      resolved.button_event_report_data = new ButtonEventReportData()
    }

    if (msg.roller_steps_L !== undefined) {
      resolved.roller_steps_L = msg.roller_steps_L;
    }
    else {
      resolved.roller_steps_L = 0
    }

    if (msg.roller_steps_R !== undefined) {
      resolved.roller_steps_R = msg.roller_steps_R;
    }
    else {
      resolved.roller_steps_R = 0
    }

    return resolved;
    }
};

// Constants for message
ButtonEventReport.Constants = {
  BUTTON_EVENT_REPORT_DATA: 1,
}

module.exports = ButtonEventReport;
