// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadClassEnum = require('./RoadClassEnum.js');
let RoadFormEnum = require('./RoadFormEnum.js');
let RoadTypeEnum = require('./RoadTypeEnum.js');
let MainSideRoadStatusEnum = require('./MainSideRoadStatusEnum.js');

//-----------------------------------------------------------

class CurrentRoadInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_class = null;
      this.road_form = null;
      this.road_type = null;
      this.main_side_road_status = null;
      this.current_speed_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('road_class')) {
        this.road_class = initObj.road_class
      }
      else {
        this.road_class = new RoadClassEnum();
      }
      if (initObj.hasOwnProperty('road_form')) {
        this.road_form = initObj.road_form
      }
      else {
        this.road_form = new RoadFormEnum();
      }
      if (initObj.hasOwnProperty('road_type')) {
        this.road_type = initObj.road_type
      }
      else {
        this.road_type = new RoadTypeEnum();
      }
      if (initObj.hasOwnProperty('main_side_road_status')) {
        this.main_side_road_status = initObj.main_side_road_status
      }
      else {
        this.main_side_road_status = new MainSideRoadStatusEnum();
      }
      if (initObj.hasOwnProperty('current_speed_limit')) {
        this.current_speed_limit = initObj.current_speed_limit
      }
      else {
        this.current_speed_limit = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentRoadInfo
    // Serialize message field [road_class]
    bufferOffset = RoadClassEnum.serialize(obj.road_class, buffer, bufferOffset);
    // Serialize message field [road_form]
    bufferOffset = RoadFormEnum.serialize(obj.road_form, buffer, bufferOffset);
    // Serialize message field [road_type]
    bufferOffset = RoadTypeEnum.serialize(obj.road_type, buffer, bufferOffset);
    // Serialize message field [main_side_road_status]
    bufferOffset = MainSideRoadStatusEnum.serialize(obj.main_side_road_status, buffer, bufferOffset);
    // Serialize message field [current_speed_limit]
    bufferOffset = _serializer.uint8(obj.current_speed_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentRoadInfo
    let len;
    let data = new CurrentRoadInfo(null);
    // Deserialize message field [road_class]
    data.road_class = RoadClassEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_form]
    data.road_form = RoadFormEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_type]
    data.road_type = RoadTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [main_side_road_status]
    data.main_side_road_status = MainSideRoadStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_speed_limit]
    data.current_speed_limit = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/CurrentRoadInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ad1d17ea5ef6d3f4b08ffaa60cb67b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tbt_msgs/RoadClassEnum road_class
    tbt_msgs/RoadFormEnum road_form
    tbt_msgs/RoadTypeEnum road_type
    tbt_msgs/MainSideRoadStatusEnum main_side_road_status
    uint8 current_speed_limit
    
    ================================================================================
    MSG: tbt_msgs/RoadClassEnum
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
    
    ================================================================================
    MSG: tbt_msgs/RoadFormEnum
    uint8 FormwayDivisedLink = 1
    uint8 FormwayCrossLink = 2
    uint8 FormwayJCT = 3
    uint8 FormwayRoundCircle = 4
    uint8 FormwayServiceRoad = 5
    uint8 FormwaySlipRoad = 6
    uint8 FormwaySideRoad = 7
    uint8 FormwaySlipJCT = 8
    uint8 FormwayExitLink = 9
    uint8 FormwayEntranceLink = 10
    uint8 FormwayTurnRightLineA = 11
    uint8 FormwayTurnRightLineB = 12
    uint8 FormwayTurnLeftLineA = 13
    uint8 FormwayTurnLeftLineB = 14
    uint8 FormwayCommonLink = 15
    uint8 FormwayTurnLeftRightLine = 16
    uint8 FormwayServiceJCTRoad = 53
    uint8 FormwayServiceSlipRoad = 56
    uint8 FormwayServiceSlipJCTRoad = 58
    uint8 FormwayNULL = 255
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/RoadTypeEnum
    uint8 LinkTypeCommon = 0
    uint8 LinkTypeFerry = 1
    uint8 LinkTypeTunnel = 2
    uint8 LinkTypeBridge = 3
    uint8 LinkTypeElevatedRd = 4
    uint8 LinkTypeNull = 255
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/MainSideRoadStatusEnum
    uint8 Default = 0
    uint8 MainRoad = 1
    uint8 SideRoad = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentRoadInfo(null);
    if (msg.road_class !== undefined) {
      resolved.road_class = RoadClassEnum.Resolve(msg.road_class)
    }
    else {
      resolved.road_class = new RoadClassEnum()
    }

    if (msg.road_form !== undefined) {
      resolved.road_form = RoadFormEnum.Resolve(msg.road_form)
    }
    else {
      resolved.road_form = new RoadFormEnum()
    }

    if (msg.road_type !== undefined) {
      resolved.road_type = RoadTypeEnum.Resolve(msg.road_type)
    }
    else {
      resolved.road_type = new RoadTypeEnum()
    }

    if (msg.main_side_road_status !== undefined) {
      resolved.main_side_road_status = MainSideRoadStatusEnum.Resolve(msg.main_side_road_status)
    }
    else {
      resolved.main_side_road_status = new MainSideRoadStatusEnum()
    }

    if (msg.current_speed_limit !== undefined) {
      resolved.current_speed_limit = msg.current_speed_limit;
    }
    else {
      resolved.current_speed_limit = 0
    }

    return resolved;
    }
};

module.exports = CurrentRoadInfo;
