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

class SignTypeEnum {
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
    // Serializes a message object of type SignTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignTypeEnum
    let len;
    let data = new SignTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/SignTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce9f7ec7ae1c22a2321b9761d7247759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FacilityTypeNULL = 0
    uint8 FacilityTypeLeftInterflow = 1
    uint8 FacilityTypeRightInterflow = 2
    uint8 FacilityTypeSharpTurn = 3
    uint8 FacilityTypeReverseTurn = 4
    uint8 FacilityTypeLinkingTurn = 5
    uint8 FacilityTypeAccidentArea = 6
    uint8 FacilityTypeFallingRocks = 7
    uint8 FacilityTypeFailwayCross = 8
    uint8 FacilityTypeSlippery = 9
    uint8 FacilityTypeMaxSpeedLimit = 10
    uint8 FacilityTypeMinSpeedLimit = 11
    uint8 FacilityTypeVillage = 12
    uint8 FacilityTypeLeftNarrow = 13
    uint8 FacilityTypeRightNarrow = 14
    uint8 FacilityTypeDoubleNarrow = 15
    uint8 FacilityTypeCrosswindArea = 16
    uint8 FacilityTypeSchoolZone = 17
    uint8 FacilityTypeOvertakeForbid = 18
    uint8 FacilityTypeNarrowBridge = 19
    uint8 FacilityTypeDoubleDetour = 20
    uint8 FacilityTypeLeftDetour = 21
    uint8 FacilityTypeRightDetour = 22
    uint8 FacilityTypeLeftDangerous = 23
    uint8 FacilityTypeRightDangerous = 24
    uint8 FacilityTypeUpperSteep = 25
    uint8 FacilityTypeDownSteep = 26
    uint8 FacilityTypeWaterPavement = 27
    uint8 FacilityTypeIrregularityPavement = 28
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignTypeEnum(null);
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
SignTypeEnum.Constants = {
  FACILITYTYPENULL: 0,
  FACILITYTYPELEFTINTERFLOW: 1,
  FACILITYTYPERIGHTINTERFLOW: 2,
  FACILITYTYPESHARPTURN: 3,
  FACILITYTYPEREVERSETURN: 4,
  FACILITYTYPELINKINGTURN: 5,
  FACILITYTYPEACCIDENTAREA: 6,
  FACILITYTYPEFALLINGROCKS: 7,
  FACILITYTYPEFAILWAYCROSS: 8,
  FACILITYTYPESLIPPERY: 9,
  FACILITYTYPEMAXSPEEDLIMIT: 10,
  FACILITYTYPEMINSPEEDLIMIT: 11,
  FACILITYTYPEVILLAGE: 12,
  FACILITYTYPELEFTNARROW: 13,
  FACILITYTYPERIGHTNARROW: 14,
  FACILITYTYPEDOUBLENARROW: 15,
  FACILITYTYPECROSSWINDAREA: 16,
  FACILITYTYPESCHOOLZONE: 17,
  FACILITYTYPEOVERTAKEFORBID: 18,
  FACILITYTYPENARROWBRIDGE: 19,
  FACILITYTYPEDOUBLEDETOUR: 20,
  FACILITYTYPELEFTDETOUR: 21,
  FACILITYTYPERIGHTDETOUR: 22,
  FACILITYTYPELEFTDANGEROUS: 23,
  FACILITYTYPERIGHTDANGEROUS: 24,
  FACILITYTYPEUPPERSTEEP: 25,
  FACILITYTYPEDOWNSTEEP: 26,
  FACILITYTYPEWATERPAVEMENT: 27,
  FACILITYTYPEIRREGULARITYPAVEMENT: 28,
}

module.exports = SignTypeEnum;
