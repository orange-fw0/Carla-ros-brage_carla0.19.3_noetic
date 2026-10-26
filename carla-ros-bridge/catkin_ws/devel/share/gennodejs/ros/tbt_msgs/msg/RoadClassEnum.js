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

class RoadClassEnum {
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
    // Serializes a message object of type RoadClassEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadClassEnum
    let len;
    let data = new RoadClassEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/RoadClassEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b9ef10b9bc99068fa6af9f589ee5ca1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RoadClassFreeway = 0
    uint8 RoadClassNationalRoad = 1
    uint8 RoadClassProvinceRoad = 2
    uint8 RoadClassCountyRoad = 3
    uint8 RoadClassRuralRoad = 4
    uint8 RoadClassInCountyRoad = 5
    uint8 RoadClassCitySpeedway = 6
    uint8 RoadClassMainRoad = 7
    uint8 RoadClassSecondaryRoad = 8
    uint8 RoadClassCommonRoad = 9
    uint8 RoadClassNonNaviRoad = 10
    uint8 RoadClassNULL = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadClassEnum(null);
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
RoadClassEnum.Constants = {
  ROADCLASSFREEWAY: 0,
  ROADCLASSNATIONALROAD: 1,
  ROADCLASSPROVINCEROAD: 2,
  ROADCLASSCOUNTYROAD: 3,
  ROADCLASSRURALROAD: 4,
  ROADCLASSINCOUNTYROAD: 5,
  ROADCLASSCITYSPEEDWAY: 6,
  ROADCLASSMAINROAD: 7,
  ROADCLASSSECONDARYROAD: 8,
  ROADCLASSCOMMONROAD: 9,
  ROADCLASSNONNAVIROAD: 10,
  ROADCLASSNULL: 255,
}

module.exports = RoadClassEnum;
