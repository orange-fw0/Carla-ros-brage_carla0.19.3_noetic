// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DMSGazeRoiZonesTypeEnum {
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
    // Serializes a message object of type DMSGazeRoiZonesTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSGazeRoiZonesTypeEnum
    let len;
    let data = new DMSGazeRoiZonesTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSGazeRoiZonesTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0589f1c3aee746b0829940dc6bc5f641';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 WINDSHIELDDRIVER = 1
    uint32 REARVIEWMIRROR = 2
    uint32 WINDSHIELDPASSENGER = 3
    uint32 RESERVED = 4
    uint32 DIM = 5
    uint32 IHU = 6
    uint32 WINDOWDRIVER = 7
    uint32 REARMIRRORLEFT = 8
    uint32 DOORDRIVER = 9
    uint32 WINDOWPASSENGER = 10
    uint32 REARMIRRORRIGHT = 11
    uint32 DOORDPASSENGER = 12
    uint32 FLOORDRIVER = 13
    uint32 FLOORPASSENGER = 14
    uint32 OTHER = 15
    uint32 RESERVED1 = 16
    uint32 RESERVED2 = 17
    uint32 RESERVED3 = 18
    uint32 STEERWHEELLE = 19
    uint32 STEERWHEELRI = 20
    uint32 RESERVED4 = 21
    uint32 RESERVED5 = 22
    uint32 RESERVED6 = 23
    uint32 RESERVED7 = 24
    uint32 RESERVED8 = 25
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSGazeRoiZonesTypeEnum(null);
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
DMSGazeRoiZonesTypeEnum.Constants = {
  WINDSHIELDDRIVER: 1,
  REARVIEWMIRROR: 2,
  WINDSHIELDPASSENGER: 3,
  RESERVED: 4,
  DIM: 5,
  IHU: 6,
  WINDOWDRIVER: 7,
  REARMIRRORLEFT: 8,
  DOORDRIVER: 9,
  WINDOWPASSENGER: 10,
  REARMIRRORRIGHT: 11,
  DOORDPASSENGER: 12,
  FLOORDRIVER: 13,
  FLOORPASSENGER: 14,
  OTHER: 15,
  RESERVED1: 16,
  RESERVED2: 17,
  RESERVED3: 18,
  STEERWHEELLE: 19,
  STEERWHEELRI: 20,
  RESERVED4: 21,
  RESERVED5: 22,
  RESERVED6: 23,
  RESERVED7: 24,
  RESERVED8: 25,
}

module.exports = DMSGazeRoiZonesTypeEnum;
