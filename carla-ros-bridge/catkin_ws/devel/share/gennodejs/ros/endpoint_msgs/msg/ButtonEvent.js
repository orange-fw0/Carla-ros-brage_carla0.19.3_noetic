// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ButtonEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonEvent
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonEvent
    let len;
    let data = new ButtonEvent(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ButtonEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01c4b9d758885b8ed39729214ca2ab7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ButtonEvent(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
ButtonEvent.Constants = {
  BUTTON1: 0,
  BUTTON2: 1,
  BUTTON3: 2,
  BUTTON4: 3,
  BUTTON5: 4,
  BUTTON6: 5,
  BUTTON7: 6,
  BUTTON8: 7,
  BUTTON9: 8,
  BUTTON10: 9,
  BUTTON11: 10,
  BUTTON12: 11,
  BUTTON13: 12,
  BUTTON14: 13,
  BUTTON15: 14,
  BUTTON16: 15,
  BUTTON17: 16,
  BUTTON18: 17,
  BUTTON19: 18,
  BUTTON20: 19,
}

module.exports = ButtonEvent;
