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

class LaneCenterNodeLaneTypeEnum {
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
    // Serializes a message object of type LaneCenterNodeLaneTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterNodeLaneTypeEnum
    let len;
    let data = new LaneCenterNodeLaneTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterNodeLaneTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd87743cc10a6d211c9706a4529ee106b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_TYPE_UNKNOWN = 0
    uint8 LANE_TYPE_NORMAL = 1
    uint8 LANE_TYPE_EMERGENCY = 5
    uint8 LANE_TYPE_BUS = 6
    uint8 LANE_TYPE_PASSING = 7
    uint8 LANE_TYPE_HOV = 8
    uint8 LANE_TYPE_ACCELERATE = 9
    uint8 LANE_TYPE_UTURN = 10
    uint8 LANE_TYPE_DECELERATE = 11
    uint8 LANE_TYPE_SHOULDER = 12
    uint8 LANE_TYPE_INTERSECTION = 14
    uint8 LANE_TYPE_NON_MOTOR = 15
    uint8 LANE_TYPE_MIXED_MOTOR = 16
    uint8 LANE_TYPE_SIDE_WALK = 17
    uint8 LANE_TYPE_MOTORCYCLE = 18
    uint8 LANE_TYPE_TOLL_ETC = 19
    uint8 LANE_TYPE_TOLL = 20
    uint8 LANE_TYPE_CHECKPOINT = 21
    uint8 LANE_TYPE_RAMP = 22
    uint8 LANE_TYPE_BARRIER = 23
    uint8 LANE_TYPE_CHANNELIZATION = 24
    uint8 LANE_TYPE_EMERGENCE_STOP = 25
    uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
    uint8 LANE_TYPE_STEEP_GRADE = 27
    uint8 LANE_TYPE_DIREC_VARIABLE = 28
    uint8 LANE_TYPE_CUSTOMS_SUP = 29
    uint8 LANE_TYPE_EMERGENCE_RAMP = 30
    uint8 LANE_TYPE_PARKING = 31
    uint8 LANE_TYPE_TIDAL = 32
    uint8 LANE_TYPE_TEMPORARY = 33
    uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
    uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
    uint8 LANE_TYPE_LEFT_ACC = 36
    uint8 LANE_TYPE_RIGHT_ACC = 37
    uint8 LANE_TYPE_LEFT_DEC = 38
    uint8 LANE_TYPE_RIGHT_DEC = 39
    uint8 LANE_TYPE_SERVICE_RAMP = 40
    uint8 LANE_TYPE_CURB = 41
    uint8 LANE_TYPE_RAILWAY = 42
    uint8 LANE_TYPE_BUS_STOP = 43
    uint8 LANE_TYPE_ROUNDABOUT = 44
    uint8 LANE_TYPE_INVALID = 45
    uint8 LANE_TYPE_WIDE = 46
    uint8 LANE_TYPE_VIRTUAL = 47
    uint8 LANE_TYPE_OTHERS = 63
    uint8 LANE_TYPE_ACC_DEC = 70
    uint8 LANE_TYPE_WAITING_AREA = 71
    uint8 LANE_TYPE_TOLL_MANUAL = 72
    uint8 LANE_TYPE_INCOMPLETE = 73
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneCenterNodeLaneTypeEnum(null);
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
LaneCenterNodeLaneTypeEnum.Constants = {
  LANE_TYPE_UNKNOWN: 0,
  LANE_TYPE_NORMAL: 1,
  LANE_TYPE_EMERGENCY: 5,
  LANE_TYPE_BUS: 6,
  LANE_TYPE_PASSING: 7,
  LANE_TYPE_HOV: 8,
  LANE_TYPE_ACCELERATE: 9,
  LANE_TYPE_UTURN: 10,
  LANE_TYPE_DECELERATE: 11,
  LANE_TYPE_SHOULDER: 12,
  LANE_TYPE_INTERSECTION: 14,
  LANE_TYPE_NON_MOTOR: 15,
  LANE_TYPE_MIXED_MOTOR: 16,
  LANE_TYPE_SIDE_WALK: 17,
  LANE_TYPE_MOTORCYCLE: 18,
  LANE_TYPE_TOLL_ETC: 19,
  LANE_TYPE_TOLL: 20,
  LANE_TYPE_CHECKPOINT: 21,
  LANE_TYPE_RAMP: 22,
  LANE_TYPE_BARRIER: 23,
  LANE_TYPE_CHANNELIZATION: 24,
  LANE_TYPE_EMERGENCE_STOP: 25,
  LANE_TYPE_HAZARDOUS_GOODS: 26,
  LANE_TYPE_STEEP_GRADE: 27,
  LANE_TYPE_DIREC_VARIABLE: 28,
  LANE_TYPE_CUSTOMS_SUP: 29,
  LANE_TYPE_EMERGENCE_RAMP: 30,
  LANE_TYPE_PARKING: 31,
  LANE_TYPE_TIDAL: 32,
  LANE_TYPE_TEMPORARY: 33,
  LANE_TYPE_LEFT_TURN_WAITING_AREA: 34,
  LANE_TYPE_STRAIGHT_TURN_WAITING_AREA: 35,
  LANE_TYPE_LEFT_ACC: 36,
  LANE_TYPE_RIGHT_ACC: 37,
  LANE_TYPE_LEFT_DEC: 38,
  LANE_TYPE_RIGHT_DEC: 39,
  LANE_TYPE_SERVICE_RAMP: 40,
  LANE_TYPE_CURB: 41,
  LANE_TYPE_RAILWAY: 42,
  LANE_TYPE_BUS_STOP: 43,
  LANE_TYPE_ROUNDABOUT: 44,
  LANE_TYPE_INVALID: 45,
  LANE_TYPE_WIDE: 46,
  LANE_TYPE_VIRTUAL: 47,
  LANE_TYPE_OTHERS: 63,
  LANE_TYPE_ACC_DEC: 70,
  LANE_TYPE_WAITING_AREA: 71,
  LANE_TYPE_TOLL_MANUAL: 72,
  LANE_TYPE_INCOMPLETE: 73,
}

module.exports = LaneCenterNodeLaneTypeEnum;
