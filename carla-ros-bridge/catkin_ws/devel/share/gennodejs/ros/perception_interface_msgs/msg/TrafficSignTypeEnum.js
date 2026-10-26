// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficSignTypeEnum {
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
    // Serializes a message object of type TrafficSignTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignTypeEnum
    let len;
    let data = new TrafficSignTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficSignTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d1f59c612360338a4df0f58eb640df8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
    uint8 TRAFFIC_SIGN_TYPE_STOP = 2
    uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
    uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
    uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
    uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
    uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
    uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
    uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
    uint8 TRAFFIC_SIGN_TYPE_TIME = 13
    uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
    uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
    uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
    uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
    uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
    uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
    uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
    uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
    uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
    uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
    uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
    uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
    uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
    uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
    uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
    uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
    uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
    uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
    uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignTypeEnum(null);
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
TrafficSignTypeEnum.Constants = {
  TRAFFIC_SIGN_TYPE_UNKNOWN: 0,
  TRAFFIC_SIGN_TYPE_OTHER: 1,
  TRAFFIC_SIGN_TYPE_STOP: 2,
  TRAFFIC_SIGN_TYPE_GIVE_WAY: 3,
  TRAFFIC_SIGN_TYPE_NO_OVERTAKING: 4,
  TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING: 5,
  TRAFFIC_SIGN_TYPE_NO_ENTRANCE: 6,
  TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE: 7,
  TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS: 8,
  TRAFFIC_SIGN_TYPE_NO_VEHICLE: 9,
  TRAFFIC_SIGN_TYPE_RAMP: 10,
  TRAFFIC_SIGN_TYPE_EXIT: 11,
  TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING: 12,
  TRAFFIC_SIGN_TYPE_TIME: 13,
  TRAFFIC_SIGN_TYPE_NO_MINIBUSES: 14,
  TRAFFIC_SIGN_TYPE_NO_LEFT_TURN: 15,
  TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN: 16,
  TRAFFIC_SIGN_TYPE_NO_U_TURN: 17,
  TRAFFIC_SIGN_TYPE_NO_HONKING: 18,
  TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD: 19,
  TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING: 20,
  TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING: 21,
  TRAFFIC_SIGN_TYPE_ROAD_WORK: 22,
  TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN: 23,
  TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS: 24,
  TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE: 25,
  TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION: 26,
  TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT: 27,
  TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT: 28,
  TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD: 29,
  TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD: 30,
  TRAFFIC_SIGN_TYPE_UPHILL_AHEAD: 31,
  TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD: 32,
  TRAFFIC_SIGN_TYPE_NO_PARKING: 33,
  TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING: 34,
  TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING: 35,
  TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING: 36,
  TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE: 37,
  TRAFFIC_SIGN_TYPE_EXPWAY_EXIT: 38,
  TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS: 39,
  TRAFFIC_SIGN_TYPE_PARKING: 40,
  TRAFFIC_SIGN_TYPE_RESERVED_PARKING: 41,
  TRAFFIC_SIGN_TYPE_PAYMENT_PARKING: 42,
}

module.exports = TrafficSignTypeEnum;
