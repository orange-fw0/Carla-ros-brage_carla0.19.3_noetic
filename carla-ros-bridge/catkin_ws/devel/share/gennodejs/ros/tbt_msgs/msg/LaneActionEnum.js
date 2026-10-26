// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneActionEnum {
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
    // Serializes a message object of type LaneActionEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneActionEnum
    let len;
    let data = new LaneActionEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/LaneActionEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '382832d4819bfde2d55fca448b8bea7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LaneActionAhead = 0
    uint8 LaneActionLeft = 1
    uint8 LaneActionAheadLeft = 2
    uint8 LaneActionRight = 3
    uint8 LaneActionAheadRight = 4
    uint8 LaneActionLUTurn = 5
    uint8 LaneActionLeftRigh = 6
    uint8 LaneActionAheadLeftRight = 7
    uint8 LaneActionRUTurn = 8
    uint8 LaneActionAheadLUTurn = 9
    uint8 LaneActionAheadRUTurn = 10
    uint8 LaneActionLeftLUTurn = 11
    uint8 LaneActionRightRUTurn = 12
    uint8 LaneActionLeftInAhead = 13
    uint8 LaneActionLeftLUTurnLEx = 14
    uint8 LaneActionReserved = 15
    uint8 LaneActionAheadLeftLUTurn = 16
    uint8 LaneActionRightLUTurn = 17
    uint8 LaneActionLeftRightLUTurn = 18
    uint8 LaneActionAheadRightLUTurn = 19
    uint8 LaneActionLeftRUTurn = 20
    uint8 LaneActionBus = 21
    uint8 LaneActionEmpty = 22
    uint8 LaneActionVariable = 23
    uint8 LaneActionNULL = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneActionEnum(null);
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
LaneActionEnum.Constants = {
  LANEACTIONAHEAD: 0,
  LANEACTIONLEFT: 1,
  LANEACTIONAHEADLEFT: 2,
  LANEACTIONRIGHT: 3,
  LANEACTIONAHEADRIGHT: 4,
  LANEACTIONLUTURN: 5,
  LANEACTIONLEFTRIGH: 6,
  LANEACTIONAHEADLEFTRIGHT: 7,
  LANEACTIONRUTURN: 8,
  LANEACTIONAHEADLUTURN: 9,
  LANEACTIONAHEADRUTURN: 10,
  LANEACTIONLEFTLUTURN: 11,
  LANEACTIONRIGHTRUTURN: 12,
  LANEACTIONLEFTINAHEAD: 13,
  LANEACTIONLEFTLUTURNLEX: 14,
  LANEACTIONRESERVED: 15,
  LANEACTIONAHEADLEFTLUTURN: 16,
  LANEACTIONRIGHTLUTURN: 17,
  LANEACTIONLEFTRIGHTLUTURN: 18,
  LANEACTIONAHEADRIGHTLUTURN: 19,
  LANEACTIONLEFTRUTURN: 20,
  LANEACTIONBUS: 21,
  LANEACTIONEMPTY: 22,
  LANEACTIONVARIABLE: 23,
  LANEACTIONNULL: 255,
}

module.exports = LaneActionEnum;
