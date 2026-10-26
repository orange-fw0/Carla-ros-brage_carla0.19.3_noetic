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

class TrafficSignType {
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
    // Serializes a message object of type TrafficSignType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignType
    let len;
    let data = new TrafficSignType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/TrafficSignType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69343a205513aa9979e8a3d9b2935824';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DANGER = 0
    uint8 PASS_LEFT_OR_RIGHT_SIDE = 1
    uint8 PASS_LEFT_SIDE = 2
    uint8 PASS_RIGHT_SIDE = 3
    uint8 DOMESTIC_ANIMALS_CROSSING = 4
    uint8 WILD_ANIMALS_CROSSING = 5
    uint8 ROAD_WORKS = 6
    uint8 RESIDENTIAL_AREA = 7
    uint8 END_OF_RESIDENTIAL_AREA = 8
    uint8 RIGHT_BEND = 9
    uint8 LEFT_BEND = 10
    uint8 DOUBLE_BEND_RIGHT_FIRST = 13
    uint8 DOUBLE_BEND_LEFT_FIRST = 14
    uint8 CURVY_ROAD = 17
    uint8 OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED = 20
    uint8 END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES = 21
    uint8 DANGEROUS_INTERSECTION = 22
    uint8 TUNNEL = 24
    uint8 FERRY_TERMINAL = 25
    uint8 NARROW_BRIDGE = 26
    uint8 HUMPBACK_BRIDGE = 28
    uint8 RIVER_BANK = 29
    uint8 RIVER_BANK_LEFT = 30
    uint8 LIGHT_SIGNALS = 31
    uint8 GIVE_WAY_YIELD = 32
    uint8 STOP = 33
    uint8 PRIORITY_ROAD = 34
    uint8 INTERSECTION = 35
    uint8 INTERSECTION_WITH_MINOR_ROAD = 36
    uint8 INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT = 37
    uint8 DIRECTION_TO_THE_RIGHT = 38
    uint8 DIRECTION_TO_THE_LEFT = 39
    uint8 CARRIAGEWAY_NARROWS = 40
    uint8 CARRIAGEWAY_NARROWS_RIGHT = 41
    uint8 CARRIAGEWAY_NARROWS_LEFT = 42
    uint8 LANE_MERGE_LEFT = 43
    uint8 LANE_MERGE_RIGHT = 44
    uint8 LANE_MERGE_CENTER = 45
    uint8 OVERTAKING_PROHIBITED_ = 46
    uint8 END_OF_PROHIBITION_ON_OVERTAKING = 47
    uint8 PEDESTRIANS = 50
    uint8 PEDESTRIAN_CROSSING = 51
    uint8 CHILDREN = 52
    uint8 SCHOOL_ZOME = 53
    uint8 CYCLISTS = 54
    uint8 TWO_WAY_TRAFFIC = 55
    uint8 RAILWAY_CROSSING_WITH_GATES = 56
    uint8 RAILWAY_CROSSING_WITHOUT_GATES = 57
    uint8 RAILWAY_CROSSING = 58
    uint8 TRAMWAY = 59
    uint8 FALLING_ROCKS = 60
    uint8 FALLING_ROCKS_LEFT = 61
    uint8 FALLING_ROCKS_RIGHT = 62
    uint8 STEEP_DROP_LEFT = 63
    uint8 STEEP_DROP_RIGHT = 64
    uint8 VARIABLE_SIGN_MECHANIC_ELEMENTS = 65
    uint8 SLIPPERY_ROAD = 66
    uint8 STEEP_ASCENT = 67
    uint8 STEEP_DESCENT = 68
    uint8 UNEVEN_ROAD = 69
    uint8 HUMP = 70
    uint8 DIP = 71
    uint8 ROAD_FLOODS = 72
    uint8 ICY_ROAD = 73
    uint8 SIDE_WINDS = 74
    uint8 TRAFFIC_CONGESTION = 75
    uint8 HIGH_ACCIDENT_AREA = 76
    uint8 BEGINNING_OF_BUILT_UP_AREA = 77
    uint8 END_OF_ALL_PROHIBITIONS = 79
    uint8 VARIABLE_SIGN_LIGHT_ELEMENTS = 80
    uint8 PRIORITY_OVER_ONCOMING_TRAFFIC = 81
    uint8 PRIORITY_FOR_ONCOMING_TRAFIIC = 82
    uint8 END_OF_BUILT_UP_AREA = 83
    uint8 SPEED_LIMIT = 87
    uint8 END_OF_SPEED_LIMIT = 88
    uint8 TOLL_STATION = 150
    uint8 END_INTERVAL_VELOCITY_MEASUR = 237
    uint8 START_INTERVAL_VELOCITY_MEASUR = 238
    uint8 INTERVAL_VELOCITY_MEASURE = 239
    uint8 NON_MOTORIZED_VEHICLE_LANE = 240
    uint8 EMERGENCY_LANE = 241
    uint8 BUS_LANE_CAMERA = 242
    uint8 VIOLATION_CAMERA = 243
    uint8 RED_LIGHT_SHOOTING = 244
    uint8 MONITOR_CAMERA = 249
    uint8 SPEED_MEASURE_RADAR = 250
    uint8 RAILROAD_CROSSING = 251
    uint8 ZEBRA_PEDESTRIAN_CROSSING = 252
    uint8 SPEED_BUMP = 253
    uint8 TRAFFIC_LIGHT = 254
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignType(null);
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
TrafficSignType.Constants = {
  DANGER: 0,
  PASS_LEFT_OR_RIGHT_SIDE: 1,
  PASS_LEFT_SIDE: 2,
  PASS_RIGHT_SIDE: 3,
  DOMESTIC_ANIMALS_CROSSING: 4,
  WILD_ANIMALS_CROSSING: 5,
  ROAD_WORKS: 6,
  RESIDENTIAL_AREA: 7,
  END_OF_RESIDENTIAL_AREA: 8,
  RIGHT_BEND: 9,
  LEFT_BEND: 10,
  DOUBLE_BEND_RIGHT_FIRST: 13,
  DOUBLE_BEND_LEFT_FIRST: 14,
  CURVY_ROAD: 17,
  OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED: 20,
  END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES: 21,
  DANGEROUS_INTERSECTION: 22,
  TUNNEL: 24,
  FERRY_TERMINAL: 25,
  NARROW_BRIDGE: 26,
  HUMPBACK_BRIDGE: 28,
  RIVER_BANK: 29,
  RIVER_BANK_LEFT: 30,
  LIGHT_SIGNALS: 31,
  GIVE_WAY_YIELD: 32,
  STOP: 33,
  PRIORITY_ROAD: 34,
  INTERSECTION: 35,
  INTERSECTION_WITH_MINOR_ROAD: 36,
  INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT: 37,
  DIRECTION_TO_THE_RIGHT: 38,
  DIRECTION_TO_THE_LEFT: 39,
  CARRIAGEWAY_NARROWS: 40,
  CARRIAGEWAY_NARROWS_RIGHT: 41,
  CARRIAGEWAY_NARROWS_LEFT: 42,
  LANE_MERGE_LEFT: 43,
  LANE_MERGE_RIGHT: 44,
  LANE_MERGE_CENTER: 45,
  OVERTAKING_PROHIBITED_: 46,
  END_OF_PROHIBITION_ON_OVERTAKING: 47,
  PEDESTRIANS: 50,
  PEDESTRIAN_CROSSING: 51,
  CHILDREN: 52,
  SCHOOL_ZOME: 53,
  CYCLISTS: 54,
  TWO_WAY_TRAFFIC: 55,
  RAILWAY_CROSSING_WITH_GATES: 56,
  RAILWAY_CROSSING_WITHOUT_GATES: 57,
  RAILWAY_CROSSING: 58,
  TRAMWAY: 59,
  FALLING_ROCKS: 60,
  FALLING_ROCKS_LEFT: 61,
  FALLING_ROCKS_RIGHT: 62,
  STEEP_DROP_LEFT: 63,
  STEEP_DROP_RIGHT: 64,
  VARIABLE_SIGN_MECHANIC_ELEMENTS: 65,
  SLIPPERY_ROAD: 66,
  STEEP_ASCENT: 67,
  STEEP_DESCENT: 68,
  UNEVEN_ROAD: 69,
  HUMP: 70,
  DIP: 71,
  ROAD_FLOODS: 72,
  ICY_ROAD: 73,
  SIDE_WINDS: 74,
  TRAFFIC_CONGESTION: 75,
  HIGH_ACCIDENT_AREA: 76,
  BEGINNING_OF_BUILT_UP_AREA: 77,
  END_OF_ALL_PROHIBITIONS: 79,
  VARIABLE_SIGN_LIGHT_ELEMENTS: 80,
  PRIORITY_OVER_ONCOMING_TRAFFIC: 81,
  PRIORITY_FOR_ONCOMING_TRAFIIC: 82,
  END_OF_BUILT_UP_AREA: 83,
  SPEED_LIMIT: 87,
  END_OF_SPEED_LIMIT: 88,
  TOLL_STATION: 150,
  END_INTERVAL_VELOCITY_MEASUR: 237,
  START_INTERVAL_VELOCITY_MEASUR: 238,
  INTERVAL_VELOCITY_MEASURE: 239,
  NON_MOTORIZED_VEHICLE_LANE: 240,
  EMERGENCY_LANE: 241,
  BUS_LANE_CAMERA: 242,
  VIOLATION_CAMERA: 243,
  RED_LIGHT_SHOOTING: 244,
  MONITOR_CAMERA: 249,
  SPEED_MEASURE_RADAR: 250,
  RAILROAD_CROSSING: 251,
  ZEBRA_PEDESTRIAN_CROSSING: 252,
  SPEED_BUMP: 253,
  TRAFFIC_LIGHT: 254,
}

module.exports = TrafficSignType;
