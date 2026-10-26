// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapPOIType {
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
    // Serializes a message object of type MapPOIType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPOIType
    let len;
    let data = new MapPOIType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/MapPOIType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f56ebaef71ba28f4ef78c14b0e5d086f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 PARKING_LOT = 1
    uint8 HUMAN_ACCESS = 2
    uint8 DESTINATION = 3
    uint8 PARKING = 4
    uint8 BARRIER_GAP = 5
    uint8 FACILITY_ENTRANCE = 6
    uint8 FACILITY_EXIT = 7
    uint8 FACILITY_EXIT_AND_ENTRANCE = 8
    uint8 BUS_STOP = 9
    uint8 GARAGE_ENTRANCE = 10
    uint8 GARAGE_EXIT = 11
    uint8 SPEED_BUMP = 12
    uint8 CROSS_WALK = 13
    uint8 DASHED_SEGMENT = 14
    uint8 CENTRAL_CIRCLE = 15
    uint8 NO_PARKING_ZONE = 16
    uint8 ROAD_MERGE = 17
    uint8 ROAD_SPLIT = 18
    uint8 TUNNEL = 19
    uint8 TOLL_STATION = 20
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapPOIType(null);
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
MapPOIType.Constants = {
  UNKNOWN: 0,
  PARKING_LOT: 1,
  HUMAN_ACCESS: 2,
  DESTINATION: 3,
  PARKING: 4,
  BARRIER_GAP: 5,
  FACILITY_ENTRANCE: 6,
  FACILITY_EXIT: 7,
  FACILITY_EXIT_AND_ENTRANCE: 8,
  BUS_STOP: 9,
  GARAGE_ENTRANCE: 10,
  GARAGE_EXIT: 11,
  SPEED_BUMP: 12,
  CROSS_WALK: 13,
  DASHED_SEGMENT: 14,
  CENTRAL_CIRCLE: 15,
  NO_PARKING_ZONE: 16,
  ROAD_MERGE: 17,
  ROAD_SPLIT: 18,
  TUNNEL: 19,
  TOLL_STATION: 20,
}

module.exports = MapPOIType;
