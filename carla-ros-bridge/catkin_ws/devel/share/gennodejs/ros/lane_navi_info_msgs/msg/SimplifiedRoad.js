// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpeedLimit = require('./SpeedLimit.js');
let Curvature = require('./Curvature.js');
let Slope = require('./Slope.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class SimplifiedRoad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_id = null;
      this.length = null;
      this.speed_limits = null;
      this.curvatures = null;
      this.slopes = null;
      this.road_class = null;
      this.formways = null;
      this.prev_roads = null;
      this.next_roads = null;
    }
    else {
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('speed_limits')) {
        this.speed_limits = initObj.speed_limits
      }
      else {
        this.speed_limits = [];
      }
      if (initObj.hasOwnProperty('curvatures')) {
        this.curvatures = initObj.curvatures
      }
      else {
        this.curvatures = [];
      }
      if (initObj.hasOwnProperty('slopes')) {
        this.slopes = initObj.slopes
      }
      else {
        this.slopes = [];
      }
      if (initObj.hasOwnProperty('road_class')) {
        this.road_class = initObj.road_class
      }
      else {
        this.road_class = new landmark_msgs.msg.RoadNodeRoadClassEnum();
      }
      if (initObj.hasOwnProperty('formways')) {
        this.formways = initObj.formways
      }
      else {
        this.formways = [];
      }
      if (initObj.hasOwnProperty('prev_roads')) {
        this.prev_roads = initObj.prev_roads
      }
      else {
        this.prev_roads = [];
      }
      if (initObj.hasOwnProperty('next_roads')) {
        this.next_roads = initObj.next_roads
      }
      else {
        this.next_roads = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimplifiedRoad
    // Serialize message field [road_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.road_id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [speed_limits]
    // Serialize the length for message field [speed_limits]
    bufferOffset = _serializer.uint32(obj.speed_limits.length, buffer, bufferOffset);
    obj.speed_limits.forEach((val) => {
      bufferOffset = SpeedLimit.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [curvatures]
    // Serialize the length for message field [curvatures]
    bufferOffset = _serializer.uint32(obj.curvatures.length, buffer, bufferOffset);
    obj.curvatures.forEach((val) => {
      bufferOffset = Curvature.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [slopes]
    // Serialize the length for message field [slopes]
    bufferOffset = _serializer.uint32(obj.slopes.length, buffer, bufferOffset);
    obj.slopes.forEach((val) => {
      bufferOffset = Slope.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_class]
    bufferOffset = landmark_msgs.msg.RoadNodeRoadClassEnum.serialize(obj.road_class, buffer, bufferOffset);
    // Serialize message field [formways]
    // Serialize the length for message field [formways]
    bufferOffset = _serializer.uint32(obj.formways.length, buffer, bufferOffset);
    obj.formways.forEach((val) => {
      bufferOffset = landmark_msgs.msg.RoadNodeFormwayEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [prev_roads]
    // Serialize the length for message field [prev_roads]
    bufferOffset = _serializer.uint32(obj.prev_roads.length, buffer, bufferOffset);
    obj.prev_roads.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_roads]
    // Serialize the length for message field [next_roads]
    bufferOffset = _serializer.uint32(obj.next_roads.length, buffer, bufferOffset);
    obj.next_roads.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimplifiedRoad
    let len;
    let data = new SimplifiedRoad(null);
    // Deserialize message field [road_id]
    data.road_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_limits]
    // Deserialize array length for message field [speed_limits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_limits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_limits[i] = SpeedLimit.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [curvatures]
    // Deserialize array length for message field [curvatures]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.curvatures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.curvatures[i] = Curvature.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [slopes]
    // Deserialize array length for message field [slopes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slopes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slopes[i] = Slope.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_class]
    data.road_class = landmark_msgs.msg.RoadNodeRoadClassEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [formways]
    // Deserialize array length for message field [formways]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.formways = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.formways[i] = landmark_msgs.msg.RoadNodeFormwayEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [prev_roads]
    // Deserialize array length for message field [prev_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prev_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prev_roads[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_roads]
    // Deserialize array length for message field [next_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.next_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.next_roads[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.speed_limits.forEach((val) => {
      length += SpeedLimit.getMessageSize(val);
    });
    object.curvatures.forEach((val) => {
      length += Curvature.getMessageSize(val);
    });
    object.slopes.forEach((val) => {
      length += Slope.getMessageSize(val);
    });
    length += object.formways.length;
    length += 18 * object.prev_roads.length;
    length += 18 * object.next_roads.length;
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SimplifiedRoad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aef7b7ef92d6c0f4181b1f65bc9a8145';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId road_id
    float32 length
    lane_navi_info_msgs/SpeedLimit[] speed_limits
    lane_navi_info_msgs/Curvature[] curvatures
    lane_navi_info_msgs/Slope[] slopes
    landmark_msgs/RoadNodeRoadClassEnum road_class
    landmark_msgs/RoadNodeFormwayEnum[] formways
    landmark_msgs/TrackId[] prev_roads
    landmark_msgs/TrackId[] next_roads
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/SpeedLimit
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/InterpolationType
    uint8 UNKNOWN = 0
    uint8 STEP = 1
    uint8 LINEAR = 2
    uint8 GENERAL = 3
    uint8 OHTERS = 255
    uint8 type
    float32[] addition_values
    float32[] params
    
    ================================================================================
    MSG: lane_navi_info_msgs/Curvature
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/Slope
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeRoadClassEnum
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
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeFormwayEnum
    uint8 FORMWAY_UNKNOWN = 0
    uint8 SINGLE_CARRIAGE_WAY = 1
    uint8 IC = 2
    uint8 JCT = 3
    uint8 SERVICE = 4
    uint8 TUNNEL = 5
    uint8 TOLL = 6
    uint8 SLIP_ROAD = 7
    uint8 SIDEROAD = 8
    uint8 ROUNDABOUT = 9
    uint8 RAMP_ENTRY = 10
    uint8 RAMP_EXIT = 11
    uint8 SAPA = 12
    uint8 PARKING_RAMP = 13
    uint8 PARKING_ROAD = 14
    uint8 U_TURN = 15
    uint8 TURN_RIGHT = 16
    uint8 TURN_LEFT = 17
    uint8 TURN_LEFT_RIGHT = 18
    uint8 CROSS_LINK = 19
    uint8 SERVICE_AND_SLIP_ROAD = 20
    uint8 SERVICE_AND_JCT = 21
    uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
    uint8 MULTIPLE_CARRIAGE_WAY = 23
    uint8 CHECK_POINT = 24
    uint8 WALK_ROAD = 25
    uint8 PARALLED_ROAD = 26
    uint8 OTHERS = 99
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimplifiedRoad(null);
    if (msg.road_id !== undefined) {
      resolved.road_id = landmark_msgs.msg.TrackId.Resolve(msg.road_id)
    }
    else {
      resolved.road_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.speed_limits !== undefined) {
      resolved.speed_limits = new Array(msg.speed_limits.length);
      for (let i = 0; i < resolved.speed_limits.length; ++i) {
        resolved.speed_limits[i] = SpeedLimit.Resolve(msg.speed_limits[i]);
      }
    }
    else {
      resolved.speed_limits = []
    }

    if (msg.curvatures !== undefined) {
      resolved.curvatures = new Array(msg.curvatures.length);
      for (let i = 0; i < resolved.curvatures.length; ++i) {
        resolved.curvatures[i] = Curvature.Resolve(msg.curvatures[i]);
      }
    }
    else {
      resolved.curvatures = []
    }

    if (msg.slopes !== undefined) {
      resolved.slopes = new Array(msg.slopes.length);
      for (let i = 0; i < resolved.slopes.length; ++i) {
        resolved.slopes[i] = Slope.Resolve(msg.slopes[i]);
      }
    }
    else {
      resolved.slopes = []
    }

    if (msg.road_class !== undefined) {
      resolved.road_class = landmark_msgs.msg.RoadNodeRoadClassEnum.Resolve(msg.road_class)
    }
    else {
      resolved.road_class = new landmark_msgs.msg.RoadNodeRoadClassEnum()
    }

    if (msg.formways !== undefined) {
      resolved.formways = new Array(msg.formways.length);
      for (let i = 0; i < resolved.formways.length; ++i) {
        resolved.formways[i] = landmark_msgs.msg.RoadNodeFormwayEnum.Resolve(msg.formways[i]);
      }
    }
    else {
      resolved.formways = []
    }

    if (msg.prev_roads !== undefined) {
      resolved.prev_roads = new Array(msg.prev_roads.length);
      for (let i = 0; i < resolved.prev_roads.length; ++i) {
        resolved.prev_roads[i] = landmark_msgs.msg.TrackId.Resolve(msg.prev_roads[i]);
      }
    }
    else {
      resolved.prev_roads = []
    }

    if (msg.next_roads !== undefined) {
      resolved.next_roads = new Array(msg.next_roads.length);
      for (let i = 0; i < resolved.next_roads.length; ++i) {
        resolved.next_roads[i] = landmark_msgs.msg.TrackId.Resolve(msg.next_roads[i]);
      }
    }
    else {
      resolved.next_roads = []
    }

    return resolved;
    }
};

module.exports = SimplifiedRoad;
