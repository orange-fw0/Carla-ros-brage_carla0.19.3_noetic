// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TBTMainAction {
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
    // Serializes a message object of type TBTMainAction
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTMainAction
    let len;
    let data = new TBTMainAction(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTMainAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '131551752205e5e351b7ddb2d49fa66a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 MainActionNULL = 0
    uint16 MainActionTurnLeft = 1
    uint16 MainActionTurnRight = 2
    uint16 MainActionSlightLeft = 3
    uint16 MainActionSlightRight = 4
    uint16 MainActionTurnHardLeft = 5
    uint16 MainActionTurnHardRight = 6
    uint16 MainActionUTurn = 7
    uint16 MainActionContinue = 8
    uint16 MainActionMergeLeft = 9
    uint16 MainActionMergeRight = 10
    uint16 MainActionEntryRing = 11
    uint16 MainActionLeaveRing = 12
    uint16 MainActionSlow = 13
    uint16 MainActionPlugContinue = 14
    uint16 MainActionEnterBuilding = 65
    uint16 MainActionLeaveBuilding = 66
    uint16 MainActionByElevator = 67
    uint16 MainActionByStair = 68
    uint16 MainActionByEscalator = 69
    uint16 MainActionCount = 70
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TBTMainAction(null);
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
TBTMainAction.Constants = {
  MAINACTIONNULL: 0,
  MAINACTIONTURNLEFT: 1,
  MAINACTIONTURNRIGHT: 2,
  MAINACTIONSLIGHTLEFT: 3,
  MAINACTIONSLIGHTRIGHT: 4,
  MAINACTIONTURNHARDLEFT: 5,
  MAINACTIONTURNHARDRIGHT: 6,
  MAINACTIONUTURN: 7,
  MAINACTIONCONTINUE: 8,
  MAINACTIONMERGELEFT: 9,
  MAINACTIONMERGERIGHT: 10,
  MAINACTIONENTRYRING: 11,
  MAINACTIONLEAVERING: 12,
  MAINACTIONSLOW: 13,
  MAINACTIONPLUGCONTINUE: 14,
  MAINACTIONENTERBUILDING: 65,
  MAINACTIONLEAVEBUILDING: 66,
  MAINACTIONBYELEVATOR: 67,
  MAINACTIONBYSTAIR: 68,
  MAINACTIONBYESCALATOR: 69,
  MAINACTIONCOUNT: 70,
}

module.exports = TBTMainAction;
