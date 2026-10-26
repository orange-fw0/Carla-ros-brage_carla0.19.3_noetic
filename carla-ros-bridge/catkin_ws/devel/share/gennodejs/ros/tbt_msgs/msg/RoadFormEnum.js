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

class RoadFormEnum {
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
    // Serializes a message object of type RoadFormEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadFormEnum
    let len;
    let data = new RoadFormEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/RoadFormEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20007d61d8d9173318afdf0d9bf7206f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FormwayDivisedLink = 1
    uint8 FormwayCrossLink = 2
    uint8 FormwayJCT = 3
    uint8 FormwayRoundCircle = 4
    uint8 FormwayServiceRoad = 5
    uint8 FormwaySlipRoad = 6
    uint8 FormwaySideRoad = 7
    uint8 FormwaySlipJCT = 8
    uint8 FormwayExitLink = 9
    uint8 FormwayEntranceLink = 10
    uint8 FormwayTurnRightLineA = 11
    uint8 FormwayTurnRightLineB = 12
    uint8 FormwayTurnLeftLineA = 13
    uint8 FormwayTurnLeftLineB = 14
    uint8 FormwayCommonLink = 15
    uint8 FormwayTurnLeftRightLine = 16
    uint8 FormwayServiceJCTRoad = 53
    uint8 FormwayServiceSlipRoad = 56
    uint8 FormwayServiceSlipJCTRoad = 58
    uint8 FormwayNULL = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadFormEnum(null);
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
RoadFormEnum.Constants = {
  FORMWAYDIVISEDLINK: 1,
  FORMWAYCROSSLINK: 2,
  FORMWAYJCT: 3,
  FORMWAYROUNDCIRCLE: 4,
  FORMWAYSERVICEROAD: 5,
  FORMWAYSLIPROAD: 6,
  FORMWAYSIDEROAD: 7,
  FORMWAYSLIPJCT: 8,
  FORMWAYEXITLINK: 9,
  FORMWAYENTRANCELINK: 10,
  FORMWAYTURNRIGHTLINEA: 11,
  FORMWAYTURNRIGHTLINEB: 12,
  FORMWAYTURNLEFTLINEA: 13,
  FORMWAYTURNLEFTLINEB: 14,
  FORMWAYCOMMONLINK: 15,
  FORMWAYTURNLEFTRIGHTLINE: 16,
  FORMWAYSERVICEJCTROAD: 53,
  FORMWAYSERVICESLIPROAD: 56,
  FORMWAYSERVICESLIPJCTROAD: 58,
  FORMWAYNULL: 255,
}

module.exports = RoadFormEnum;
