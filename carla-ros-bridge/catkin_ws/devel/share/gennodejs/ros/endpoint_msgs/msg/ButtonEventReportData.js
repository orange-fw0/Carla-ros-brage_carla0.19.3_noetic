// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ButtonEvent = require('./ButtonEvent.js');

//-----------------------------------------------------------

class ButtonEventReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.button_event_array = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('button_event_array')) {
        this.button_event_array = initObj.button_event_array
      }
      else {
        this.button_event_array = [];
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonEventReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [button_event_array]
    // Serialize the length for message field [button_event_array]
    bufferOffset = _serializer.uint32(obj.button_event_array.length, buffer, bufferOffset);
    obj.button_event_array.forEach((val) => {
      bufferOffset = ButtonEvent.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonEventReportData
    let len;
    let data = new ButtonEventReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [button_event_array]
    // Deserialize array length for message field [button_event_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.button_event_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.button_event_array[i] = ButtonEvent.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.button_event_array.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ButtonEventReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8aa5f88ea6c9cfdaeafa68023f4e2b19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ButtonEventReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.button_event_array !== undefined) {
      resolved.button_event_array = new Array(msg.button_event_array.length);
      for (let i = 0; i < resolved.button_event_array.length; ++i) {
        resolved.button_event_array[i] = ButtonEvent.Resolve(msg.button_event_array[i]);
      }
    }
    else {
      resolved.button_event_array = []
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = ButtonEventReportData;
