// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FunctionalRoadClassType {
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
    // Serializes a message object of type FunctionalRoadClassType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FunctionalRoadClassType
    let len;
    let data = new FunctionalRoadClassType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/FunctionalRoadClassType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c25d4b2779450dd40b9eff67c90eef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 HIGH_WAY = 1
    uint8 URBAN_EXPRESS_WAY = 2
    uint8 NATIONAL_ROAD = 3
    uint8 PROVINCE_OR_COUNTRY_ROAD = 4
    uint8 URBAN_MAIN_ROAD = 5
    uint8 OTHER_ROAD_OR_AVENUE = 6
    uint8 NOT_APPLICABLE = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FunctionalRoadClassType(null);
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
FunctionalRoadClassType.Constants = {
  UNKNOWN: 0,
  HIGH_WAY: 1,
  URBAN_EXPRESS_WAY: 2,
  NATIONAL_ROAD: 3,
  PROVINCE_OR_COUNTRY_ROAD: 4,
  URBAN_MAIN_ROAD: 5,
  OTHER_ROAD_OR_AVENUE: 6,
  NOT_APPLICABLE: 7,
}

module.exports = FunctionalRoadClassType;
