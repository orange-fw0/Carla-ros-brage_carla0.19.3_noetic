// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoadNodeRoadClassEnum {
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
    // Serializes a message object of type RoadNodeRoadClassEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadNodeRoadClassEnum
    let len;
    let data = new RoadNodeRoadClassEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadNodeRoadClassEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1904da43f4202d5a315d1867284cfca2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROAD_CLASS_UNKNOWN = 0
    uint8 HIGHWAY = 1
    uint8 URBAN = 2
    uint8 CITY_EXPRESSWAY = 3
    uint8 STATE_ROAD = 4
    uint8 PROVINCIAL_ROAD = 5
    uint8 MAIN_ROAD = 6
    uint8 SECONDARY_ROAD = 7
    uint8 NORMAL_ROAD = 8
    uint8 COUNTY_ROAD = 9
    uint8 COUNTRY_ROAD = 10
    uint8 INTERNAL_ROAD = 11
    uint8 OTHERS = 99
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadNodeRoadClassEnum(null);
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
RoadNodeRoadClassEnum.Constants = {
  ROAD_CLASS_UNKNOWN: 0,
  HIGHWAY: 1,
  URBAN: 2,
  CITY_EXPRESSWAY: 3,
  STATE_ROAD: 4,
  PROVINCIAL_ROAD: 5,
  MAIN_ROAD: 6,
  SECONDARY_ROAD: 7,
  NORMAL_ROAD: 8,
  COUNTY_ROAD: 9,
  COUNTRY_ROAD: 10,
  INTERNAL_ROAD: 11,
  OTHERS: 99,
}

module.exports = RoadNodeRoadClassEnum;
