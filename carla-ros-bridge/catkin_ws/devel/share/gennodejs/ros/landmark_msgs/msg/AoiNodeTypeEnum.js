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

class AoiNodeTypeEnum {
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
    // Serializes a message object of type AoiNodeTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AoiNodeTypeEnum
    let len;
    let data = new AoiNodeTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/AoiNodeTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6de3066781b9a65077179a9c754202a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AOI_TYPE_UNKNOWN = 0
    uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1
    uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2
    uint8 AOI_TYPE_TOLLGATE = 3
    uint8 AOI_TYPE_CHECK_POINT = 4
    uint8 AOI_TYPE_SERVICE_AREA = 5
    uint8 AOI_TYPE_CONSTRUCTION_AREA = 6
    uint8 AOI_TYPE_INTERSECTION = 7
    uint8 AOI_TYPE_BARRIER_GAP = 8
    uint8 AOI_TYPE_STOPPING_AREA = 9
    uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10
    uint8 AOI_TYPE_FACILITY_ENTRANCE = 11
    uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12
    uint8 AOI_TYPE_FLOORS = 13
    uint8 AOI_TYPE_GARAGE_EXIT = 14
    uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15
    uint8 AOI_TYPE_HILL = 16
    uint8 AOI_TYPE_HUMAN_ACCESS = 17
    uint8 AOI_TYPE_PARK_INTERSECTION = 18
    uint8 AOI_TYPE_TOLL_GATE = 19
    uint8 AOI_TYPE_SUB_REGION = 20
    uint8 AOI_TYPE_MARKET_ENTRANCE = 21
    uint8 AOI_TYPE_GARAGE_ENTRANCE = 22
    uint8 AOI_TYPE_FACILITY_EXIT = 23
    uint8 AOI_TYPE_BUS_STOP = 24
    uint8 AOI_TYPE_CHARGIINIG_AREA = 25
    uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26
    uint8 AOI_TYPE_DASH_UTURN_AREA = 27
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AoiNodeTypeEnum(null);
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
AoiNodeTypeEnum.Constants = {
  AOI_TYPE_UNKNOWN: 0,
  AOI_TYPE_EMERGENCY_PARKING_AREA: 1,
  AOI_TYPE_EMERGENCY_ESCAPE_AREA: 2,
  AOI_TYPE_TOLLGATE: 3,
  AOI_TYPE_CHECK_POINT: 4,
  AOI_TYPE_SERVICE_AREA: 5,
  AOI_TYPE_CONSTRUCTION_AREA: 6,
  AOI_TYPE_INTERSECTION: 7,
  AOI_TYPE_BARRIER_GAP: 8,
  AOI_TYPE_STOPPING_AREA: 9,
  AOI_TYPE_ELEVATOR_ENTRANCE: 10,
  AOI_TYPE_FACILITY_ENTRANCE: 11,
  AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE: 12,
  AOI_TYPE_FLOORS: 13,
  AOI_TYPE_GARAGE_EXIT: 14,
  AOI_TYPE_GARAGE_ENTRANCE_EXIT: 15,
  AOI_TYPE_HILL: 16,
  AOI_TYPE_HUMAN_ACCESS: 17,
  AOI_TYPE_PARK_INTERSECTION: 18,
  AOI_TYPE_TOLL_GATE: 19,
  AOI_TYPE_SUB_REGION: 20,
  AOI_TYPE_MARKET_ENTRANCE: 21,
  AOI_TYPE_GARAGE_ENTRANCE: 22,
  AOI_TYPE_FACILITY_EXIT: 23,
  AOI_TYPE_BUS_STOP: 24,
  AOI_TYPE_CHARGIINIG_AREA: 25,
  AOI_TYPE_ESCALATOR_ENTRANCE: 26,
  AOI_TYPE_DASH_UTURN_AREA: 27,
}

module.exports = AoiNodeTypeEnum;
