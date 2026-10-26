// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SignTypeEnum = require('./SignTypeEnum.js');

//-----------------------------------------------------------

class WarningSignBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sign_type_list = null;
      this.distance_to_sign_list = null;
      this.speed_limit_list = null;
    }
    else {
      if (initObj.hasOwnProperty('sign_type_list')) {
        this.sign_type_list = initObj.sign_type_list
      }
      else {
        this.sign_type_list = [];
      }
      if (initObj.hasOwnProperty('distance_to_sign_list')) {
        this.distance_to_sign_list = initObj.distance_to_sign_list
      }
      else {
        this.distance_to_sign_list = [];
      }
      if (initObj.hasOwnProperty('speed_limit_list')) {
        this.speed_limit_list = initObj.speed_limit_list
      }
      else {
        this.speed_limit_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningSignBoard
    // Serialize message field [sign_type_list]
    // Serialize the length for message field [sign_type_list]
    bufferOffset = _serializer.uint32(obj.sign_type_list.length, buffer, bufferOffset);
    obj.sign_type_list.forEach((val) => {
      bufferOffset = SignTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [distance_to_sign_list]
    bufferOffset = _arraySerializer.uint16(obj.distance_to_sign_list, buffer, bufferOffset, null);
    // Serialize message field [speed_limit_list]
    bufferOffset = _arraySerializer.uint8(obj.speed_limit_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningSignBoard
    let len;
    let data = new WarningSignBoard(null);
    // Deserialize message field [sign_type_list]
    // Deserialize array length for message field [sign_type_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sign_type_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sign_type_list[i] = SignTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [distance_to_sign_list]
    data.distance_to_sign_list = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [speed_limit_list]
    data.speed_limit_list = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sign_type_list.length;
    length += 2 * object.distance_to_sign_list.length;
    length += object.speed_limit_list.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/WarningSignBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8da5e5656ae20c7c4bc7bd2dbf8039f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tbt_msgs/SignTypeEnum[] sign_type_list
    uint16[] distance_to_sign_list
    uint8[] speed_limit_list
    
    ================================================================================
    MSG: tbt_msgs/SignTypeEnum
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
    const resolved = new WarningSignBoard(null);
    if (msg.sign_type_list !== undefined) {
      resolved.sign_type_list = new Array(msg.sign_type_list.length);
      for (let i = 0; i < resolved.sign_type_list.length; ++i) {
        resolved.sign_type_list[i] = SignTypeEnum.Resolve(msg.sign_type_list[i]);
      }
    }
    else {
      resolved.sign_type_list = []
    }

    if (msg.distance_to_sign_list !== undefined) {
      resolved.distance_to_sign_list = msg.distance_to_sign_list;
    }
    else {
      resolved.distance_to_sign_list = []
    }

    if (msg.speed_limit_list !== undefined) {
      resolved.speed_limit_list = msg.speed_limit_list;
    }
    else {
      resolved.speed_limit_list = []
    }

    return resolved;
    }
};

module.exports = WarningSignBoard;
