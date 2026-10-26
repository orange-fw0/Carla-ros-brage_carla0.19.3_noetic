// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimplifiedRoad = require('./SimplifiedRoad.js');
let Meta = require('./Meta.js');
let std_msgs = _finder('std_msgs');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class SimplifiedLaneNaviInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path_road_ids = null;
      this.roads = null;
      this.meta = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path_road_ids')) {
        this.path_road_ids = initObj.path_road_ids
      }
      else {
        this.path_road_ids = [];
      }
      if (initObj.hasOwnProperty('roads')) {
        this.roads = initObj.roads
      }
      else {
        this.roads = [];
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new Meta();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimplifiedLaneNaviInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path_road_ids]
    // Serialize the length for message field [path_road_ids]
    bufferOffset = _serializer.uint32(obj.path_road_ids.length, buffer, bufferOffset);
    obj.path_road_ids.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [roads]
    // Serialize the length for message field [roads]
    bufferOffset = _serializer.uint32(obj.roads.length, buffer, bufferOffset);
    obj.roads.forEach((val) => {
      bufferOffset = SimplifiedRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [meta]
    bufferOffset = Meta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimplifiedLaneNaviInfo
    let len;
    let data = new SimplifiedLaneNaviInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_road_ids]
    // Deserialize array length for message field [path_road_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_road_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_road_ids[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [roads]
    // Deserialize array length for message field [roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roads[i] = SimplifiedRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [meta]
    data.meta = Meta.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 18 * object.path_road_ids.length;
    object.roads.forEach((val) => {
      length += SimplifiedRoad.getMessageSize(val);
    });
    length += Meta.getMessageSize(object.meta);
    length += _getByteLength(object.reserved);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SimplifiedLaneNaviInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b22ecc10ca9f8d08af284a87babe91a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    landmark_msgs/TrackId[] path_road_ids
    lane_navi_info_msgs/SimplifiedRoad[] roads
    lane_navi_info_msgs/Meta meta
    string reserved
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/SimplifiedRoad
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
    
    ================================================================================
    MSG: lane_navi_info_msgs/Meta
    string source
    string version
    string reserved_data
    lane_navi_info_msgs/MapType map_type
    lane_navi_info_msgs/AdministrativeInfo administrative_info
    lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule
    
    ================================================================================
    MSG: lane_navi_info_msgs/MapType
    uint8 SD_PRO = 0
    uint8 SD_MAP = 1
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/AdministrativeInfo
    uint16 UNKNOWN = 0
    uint16 BELGIEN = 56
    uint16 BULGARIEN = 100
    uint16 DAENEMARK = 208
    uint16 DEUTSCHLAND = 276
    uint16 ESTLAND = 233
    uint16 FINNLAND = 246
    uint16 FRANKREICH = 250
    uint16 GRIECHENLAND = 300
    uint16 GROSSBRITANNIEN = 826
    uint16 IRLAND = 372
    uint16 ISLAND = 352
    uint16 ISRAEL = 376
    uint16 ITALIEN = 380
    uint16 KROATIEN = 191
    uint16 LETTLAND = 428
    uint16 LITAUEN = 440
    uint16 LUXEMBURG = 442
    uint16 MALTA = 470
    uint16 NIEDERLANDE = 528
    uint16 NORWEGEN = 578
    uint16 OESTERREICH = 40
    uint16 POLEN = 616
    uint16 PORTUGAL = 620
    uint16 RUMAENIEN = 642
    uint16 SCHWEDEN = 752
    uint16 SCHWEIZ = 756
    uint16 SLOWAKISCHE_REPUBLIK = 703
    uint16 SLOWENIEN = 705
    uint16 SPANIEN = 724
    uint16 TSCHECHISCHE_REPUBLIK = 203
    uint16 UNGARN = 348
    uint16 ZYPERN_EU_GEBIET = 196
    uint16 HONGKONG = 344
    uint16 MACAO = 446
    uint16 SINGAPUR = 702
    uint16 FRANZ_POLYNES = 258
    uint16 REP_NORDMAZEDONIEN = 807
    uint16 SERBIEN = 688
    uint16 TUERKEI = 792
    uint16 UKRAINE = 804
    uint16 WESTJORDANLAND = 275
    uint16 ZYPERN_NORD = 10001
    uint16 CHINA = 156
    uint16 JAPAN = 392
    uint16 USA = 840
    uint16 OTHERS = 9999
    uint16 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimplifiedLaneNaviInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path_road_ids !== undefined) {
      resolved.path_road_ids = new Array(msg.path_road_ids.length);
      for (let i = 0; i < resolved.path_road_ids.length; ++i) {
        resolved.path_road_ids[i] = landmark_msgs.msg.TrackId.Resolve(msg.path_road_ids[i]);
      }
    }
    else {
      resolved.path_road_ids = []
    }

    if (msg.roads !== undefined) {
      resolved.roads = new Array(msg.roads.length);
      for (let i = 0; i < resolved.roads.length; ++i) {
        resolved.roads[i] = SimplifiedRoad.Resolve(msg.roads[i]);
      }
    }
    else {
      resolved.roads = []
    }

    if (msg.meta !== undefined) {
      resolved.meta = Meta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new Meta()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = SimplifiedLaneNaviInfo;
