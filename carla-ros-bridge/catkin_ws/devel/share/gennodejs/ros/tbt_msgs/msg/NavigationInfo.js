// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CurrentRoadInfo = require('./CurrentRoadInfo.js');
let NextIntersection = require('./NextIntersection.js');
let RoadCurve = require('./RoadCurve.js');
let WarningSignBoard = require('./WarningSignBoard.js');
let TrafficJam = require('./TrafficJam.js');
let ConstructionSite = require('./ConstructionSite.js');
let CurrentLocation = require('./CurrentLocation.js');
let RelativeLocationOnRoute = require('./RelativeLocationOnRoute.js');
let NaviStatusEnum = require('./NaviStatusEnum.js');
let SpeedLimitCamera = require('./SpeedLimitCamera.js');
let IntervalCamera = require('./IntervalCamera.js');
let NaviRoadTrafficLightSts = require('./NaviRoadTrafficLightSts.js');
let GuideActionEnum = require('./GuideActionEnum.js');
let TrafficLightsLocation = require('./TrafficLightsLocation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavigationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_road_info = null;
      this.next_intersection = null;
      this.road_curve = null;
      this.distance_to_next_guidance = null;
      this.warning_sign_board = null;
      this.distance_to_toll_station = null;
      this.distance_to_ramp = null;
      this.traffic_jam = null;
      this.tunnel_reminder = null;
      this.construction_site = null;
      this.current_location = null;
      this.relative_location_on_route = null;
      this.navi_status = null;
      this.speed_limit_camera = null;
      this.interval_camera = null;
      this.navi_road_traffic_light_sts = null;
      this.distance_to_destination = null;
      this.guide_action = null;
      this.origin_icon_type = null;
      this.traffic_lights_location = null;
      this.tts_text = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_road_info')) {
        this.current_road_info = initObj.current_road_info
      }
      else {
        this.current_road_info = new CurrentRoadInfo();
      }
      if (initObj.hasOwnProperty('next_intersection')) {
        this.next_intersection = initObj.next_intersection
      }
      else {
        this.next_intersection = new NextIntersection();
      }
      if (initObj.hasOwnProperty('road_curve')) {
        this.road_curve = initObj.road_curve
      }
      else {
        this.road_curve = new RoadCurve();
      }
      if (initObj.hasOwnProperty('distance_to_next_guidance')) {
        this.distance_to_next_guidance = initObj.distance_to_next_guidance
      }
      else {
        this.distance_to_next_guidance = 0;
      }
      if (initObj.hasOwnProperty('warning_sign_board')) {
        this.warning_sign_board = initObj.warning_sign_board
      }
      else {
        this.warning_sign_board = new WarningSignBoard();
      }
      if (initObj.hasOwnProperty('distance_to_toll_station')) {
        this.distance_to_toll_station = initObj.distance_to_toll_station
      }
      else {
        this.distance_to_toll_station = 0;
      }
      if (initObj.hasOwnProperty('distance_to_ramp')) {
        this.distance_to_ramp = initObj.distance_to_ramp
      }
      else {
        this.distance_to_ramp = 0;
      }
      if (initObj.hasOwnProperty('traffic_jam')) {
        this.traffic_jam = initObj.traffic_jam
      }
      else {
        this.traffic_jam = new TrafficJam();
      }
      if (initObj.hasOwnProperty('tunnel_reminder')) {
        this.tunnel_reminder = initObj.tunnel_reminder
      }
      else {
        this.tunnel_reminder = 0;
      }
      if (initObj.hasOwnProperty('construction_site')) {
        this.construction_site = initObj.construction_site
      }
      else {
        this.construction_site = new ConstructionSite();
      }
      if (initObj.hasOwnProperty('current_location')) {
        this.current_location = initObj.current_location
      }
      else {
        this.current_location = new CurrentLocation();
      }
      if (initObj.hasOwnProperty('relative_location_on_route')) {
        this.relative_location_on_route = initObj.relative_location_on_route
      }
      else {
        this.relative_location_on_route = new RelativeLocationOnRoute();
      }
      if (initObj.hasOwnProperty('navi_status')) {
        this.navi_status = initObj.navi_status
      }
      else {
        this.navi_status = new NaviStatusEnum();
      }
      if (initObj.hasOwnProperty('speed_limit_camera')) {
        this.speed_limit_camera = initObj.speed_limit_camera
      }
      else {
        this.speed_limit_camera = new SpeedLimitCamera();
      }
      if (initObj.hasOwnProperty('interval_camera')) {
        this.interval_camera = initObj.interval_camera
      }
      else {
        this.interval_camera = new IntervalCamera();
      }
      if (initObj.hasOwnProperty('navi_road_traffic_light_sts')) {
        this.navi_road_traffic_light_sts = initObj.navi_road_traffic_light_sts
      }
      else {
        this.navi_road_traffic_light_sts = new NaviRoadTrafficLightSts();
      }
      if (initObj.hasOwnProperty('distance_to_destination')) {
        this.distance_to_destination = initObj.distance_to_destination
      }
      else {
        this.distance_to_destination = 0;
      }
      if (initObj.hasOwnProperty('guide_action')) {
        this.guide_action = initObj.guide_action
      }
      else {
        this.guide_action = new GuideActionEnum();
      }
      if (initObj.hasOwnProperty('origin_icon_type')) {
        this.origin_icon_type = initObj.origin_icon_type
      }
      else {
        this.origin_icon_type = 0;
      }
      if (initObj.hasOwnProperty('traffic_lights_location')) {
        this.traffic_lights_location = initObj.traffic_lights_location
      }
      else {
        this.traffic_lights_location = [];
      }
      if (initObj.hasOwnProperty('tts_text')) {
        this.tts_text = initObj.tts_text
      }
      else {
        this.tts_text = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_road_info]
    bufferOffset = CurrentRoadInfo.serialize(obj.current_road_info, buffer, bufferOffset);
    // Serialize message field [next_intersection]
    bufferOffset = NextIntersection.serialize(obj.next_intersection, buffer, bufferOffset);
    // Serialize message field [road_curve]
    bufferOffset = RoadCurve.serialize(obj.road_curve, buffer, bufferOffset);
    // Serialize message field [distance_to_next_guidance]
    bufferOffset = _serializer.uint16(obj.distance_to_next_guidance, buffer, bufferOffset);
    // Serialize message field [warning_sign_board]
    bufferOffset = WarningSignBoard.serialize(obj.warning_sign_board, buffer, bufferOffset);
    // Serialize message field [distance_to_toll_station]
    bufferOffset = _serializer.uint16(obj.distance_to_toll_station, buffer, bufferOffset);
    // Serialize message field [distance_to_ramp]
    bufferOffset = _serializer.uint16(obj.distance_to_ramp, buffer, bufferOffset);
    // Serialize message field [traffic_jam]
    bufferOffset = TrafficJam.serialize(obj.traffic_jam, buffer, bufferOffset);
    // Serialize message field [tunnel_reminder]
    bufferOffset = _serializer.uint16(obj.tunnel_reminder, buffer, bufferOffset);
    // Serialize message field [construction_site]
    bufferOffset = ConstructionSite.serialize(obj.construction_site, buffer, bufferOffset);
    // Serialize message field [current_location]
    bufferOffset = CurrentLocation.serialize(obj.current_location, buffer, bufferOffset);
    // Serialize message field [relative_location_on_route]
    bufferOffset = RelativeLocationOnRoute.serialize(obj.relative_location_on_route, buffer, bufferOffset);
    // Serialize message field [navi_status]
    bufferOffset = NaviStatusEnum.serialize(obj.navi_status, buffer, bufferOffset);
    // Serialize message field [speed_limit_camera]
    bufferOffset = SpeedLimitCamera.serialize(obj.speed_limit_camera, buffer, bufferOffset);
    // Serialize message field [interval_camera]
    bufferOffset = IntervalCamera.serialize(obj.interval_camera, buffer, bufferOffset);
    // Serialize message field [navi_road_traffic_light_sts]
    bufferOffset = NaviRoadTrafficLightSts.serialize(obj.navi_road_traffic_light_sts, buffer, bufferOffset);
    // Serialize message field [distance_to_destination]
    bufferOffset = _serializer.uint16(obj.distance_to_destination, buffer, bufferOffset);
    // Serialize message field [guide_action]
    bufferOffset = GuideActionEnum.serialize(obj.guide_action, buffer, bufferOffset);
    // Serialize message field [origin_icon_type]
    bufferOffset = _serializer.uint16(obj.origin_icon_type, buffer, bufferOffset);
    // Serialize message field [traffic_lights_location]
    // Serialize the length for message field [traffic_lights_location]
    bufferOffset = _serializer.uint32(obj.traffic_lights_location.length, buffer, bufferOffset);
    obj.traffic_lights_location.forEach((val) => {
      bufferOffset = TrafficLightsLocation.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tts_text]
    bufferOffset = _arraySerializer.string(obj.tts_text, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationInfo
    let len;
    let data = new NavigationInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_road_info]
    data.current_road_info = CurrentRoadInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_intersection]
    data.next_intersection = NextIntersection.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_curve]
    data.road_curve = RoadCurve.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_to_next_guidance]
    data.distance_to_next_guidance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [warning_sign_board]
    data.warning_sign_board = WarningSignBoard.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_to_toll_station]
    data.distance_to_toll_station = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distance_to_ramp]
    data.distance_to_ramp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [traffic_jam]
    data.traffic_jam = TrafficJam.deserialize(buffer, bufferOffset);
    // Deserialize message field [tunnel_reminder]
    data.tunnel_reminder = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [construction_site]
    data.construction_site = ConstructionSite.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_location]
    data.current_location = CurrentLocation.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_location_on_route]
    data.relative_location_on_route = RelativeLocationOnRoute.deserialize(buffer, bufferOffset);
    // Deserialize message field [navi_status]
    data.navi_status = NaviStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit_camera]
    data.speed_limit_camera = SpeedLimitCamera.deserialize(buffer, bufferOffset);
    // Deserialize message field [interval_camera]
    data.interval_camera = IntervalCamera.deserialize(buffer, bufferOffset);
    // Deserialize message field [navi_road_traffic_light_sts]
    data.navi_road_traffic_light_sts = NaviRoadTrafficLightSts.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_to_destination]
    data.distance_to_destination = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [guide_action]
    data.guide_action = GuideActionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [origin_icon_type]
    data.origin_icon_type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [traffic_lights_location]
    // Deserialize array length for message field [traffic_lights_location]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_lights_location = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_lights_location[i] = TrafficLightsLocation.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tts_text]
    data.tts_text = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += NextIntersection.getMessageSize(object.next_intersection);
    length += RoadCurve.getMessageSize(object.road_curve);
    length += WarningSignBoard.getMessageSize(object.warning_sign_board);
    length += ConstructionSite.getMessageSize(object.construction_site);
    length += 16 * object.traffic_lights_location.length;
    object.tts_text.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 119;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/NavigationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17e980566be3580dc3d3bf1dda4ecef6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    tbt_msgs/CurrentRoadInfo current_road_info
    tbt_msgs/NextIntersection next_intersection
    tbt_msgs/RoadCurve road_curve
    uint16 distance_to_next_guidance
    tbt_msgs/WarningSignBoard warning_sign_board
    uint16 distance_to_toll_station
    uint16 distance_to_ramp
    tbt_msgs/TrafficJam traffic_jam
    uint16 tunnel_reminder
    tbt_msgs/ConstructionSite construction_site
    tbt_msgs/CurrentLocation current_location
    tbt_msgs/RelativeLocationOnRoute relative_location_on_route
    tbt_msgs/NaviStatusEnum navi_status
    tbt_msgs/SpeedLimitCamera speed_limit_camera
    tbt_msgs/IntervalCamera interval_camera
    tbt_msgs/NaviRoadTrafficLightSts navi_road_traffic_light_sts
    uint16 distance_to_destination
    tbt_msgs/GuideActionEnum guide_action
    uint16 origin_icon_type
    tbt_msgs/TrafficLightsLocation[] traffic_lights_location
    string[] tts_text
    
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
    MSG: tbt_msgs/CurrentRoadInfo
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
    
    ================================================================================
    MSG: tbt_msgs/NextIntersection
    uint8 number_of_lanes
    tbt_msgs/LaneActionEnum[] lane_guidance_list
    tbt_msgs/HighLightLaneEnum[] highlight_lane_list
    tbt_msgs/LaneActionEnum[] origin_highlight_lane_list
    
    ================================================================================
    MSG: tbt_msgs/LaneActionEnum
    uint8 LaneActionAhead = 0
    uint8 LaneActionLeft = 1
    uint8 LaneActionAheadLeft = 2
    uint8 LaneActionRight = 3
    uint8 LaneActionAheadRight = 4
    uint8 LaneActionLUTurn = 5
    uint8 LaneActionLeftRigh = 6
    uint8 LaneActionAheadLeftRight = 7
    uint8 LaneActionRUTurn = 8
    uint8 LaneActionAheadLUTurn = 9
    uint8 LaneActionAheadRUTurn = 10
    uint8 LaneActionLeftLUTurn = 11
    uint8 LaneActionRightRUTurn = 12
    uint8 LaneActionLeftInAhead = 13
    uint8 LaneActionLeftLUTurnLEx = 14
    uint8 LaneActionReserved = 15
    uint8 LaneActionAheadLeftLUTurn = 16
    uint8 LaneActionRightLUTurn = 17
    uint8 LaneActionLeftRightLUTurn = 18
    uint8 LaneActionAheadRightLUTurn = 19
    uint8 LaneActionLeftRUTurn = 20
    uint8 LaneActionBus = 21
    uint8 LaneActionEmpty = 22
    uint8 LaneActionVariable = 23
    uint8 LaneActionNULL = 255
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/HighLightLaneEnum
    uint8 Default = 0
    uint8 HighLight = 1
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/RoadCurve
    uint16[] curvature_list
    float64[] latitude_list
    float64[] longitude_list
    
    ================================================================================
    MSG: tbt_msgs/WarningSignBoard
    tbt_msgs/SignTypeEnum[] sign_type_list
    uint16[] distance_to_sign_list
    uint8[] speed_limit_list
    
    ================================================================================
    MSG: tbt_msgs/SignTypeEnum
    uint8 FacilityTypeNULL = 0
    uint8 FacilityTypeLeftInterflow = 1
    uint8 FacilityTypeRightInterflow = 2
    uint8 FacilityTypeSharpTurn = 3
    uint8 FacilityTypeReverseTurn = 4
    uint8 FacilityTypeLinkingTurn = 5
    uint8 FacilityTypeAccidentArea = 6
    uint8 FacilityTypeFallingRocks = 7
    uint8 FacilityTypeFailwayCross = 8
    uint8 FacilityTypeSlippery = 9
    uint8 FacilityTypeMaxSpeedLimit = 10
    uint8 FacilityTypeMinSpeedLimit = 11
    uint8 FacilityTypeVillage = 12
    uint8 FacilityTypeLeftNarrow = 13
    uint8 FacilityTypeRightNarrow = 14
    uint8 FacilityTypeDoubleNarrow = 15
    uint8 FacilityTypeCrosswindArea = 16
    uint8 FacilityTypeSchoolZone = 17
    uint8 FacilityTypeOvertakeForbid = 18
    uint8 FacilityTypeNarrowBridge = 19
    uint8 FacilityTypeDoubleDetour = 20
    uint8 FacilityTypeLeftDetour = 21
    uint8 FacilityTypeRightDetour = 22
    uint8 FacilityTypeLeftDangerous = 23
    uint8 FacilityTypeRightDangerous = 24
    uint8 FacilityTypeUpperSteep = 25
    uint8 FacilityTypeDownSteep = 26
    uint8 FacilityTypeWaterPavement = 27
    uint8 FacilityTypeIrregularityPavement = 28
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/TrafficJam
    tbt_msgs/TrafficJamStatusEnum status
    uint32 length
    uint32 distance_to_jam
    
    ================================================================================
    MSG: tbt_msgs/TrafficJamStatusEnum
    uint8 Unkwon = 0
    uint8 TrafStsFast = 1
    uint8 TrafStsSlow = 2
    uint8 TrafStsJamed = 3
    uint8 TrafStsJamedBad = 4
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/ConstructionSite
    tbt_msgs/ConstructionSiteStatusEnum status
    float64[] latitude_list
    float64[] longitude_list
    
    ================================================================================
    MSG: tbt_msgs/ConstructionSiteStatusEnum
    uint8 Unkwon = 0
    uint8 No = 1
    uint8 Yes = 2
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/CurrentLocation
    float64 latitude
    float64 longitude
    uint8 invalid
    
    ================================================================================
    MSG: tbt_msgs/RelativeLocationOnRoute
    uint32 ori_cur_step_id
    uint32 ori_cur_link_id_in_step
    uint32 ori_link_offset
    uint32 link_index
    uint32 offset
    uint8 valid
    
    ================================================================================
    MSG: tbt_msgs/NaviStatusEnum
    uint8 NavSts_0_invalid = 0
    uint8 NavSts_1_navigation = 1
    uint8 NavSts_2_routing = 2
    uint8 NavSts_3_Cruise = 3
    uint8 NavSts_4_yaw = 4
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/SpeedLimitCamera
    uint8 speed_limit
    uint32 distance
    
    ================================================================================
    MSG: tbt_msgs/IntervalCamera
    uint8 speed_limit
    uint16 distance
    float64 start_lat
    float64 start_long
    float64 end_lat
    float64 end_long
    
    ================================================================================
    MSG: tbt_msgs/NaviRoadTrafficLightSts
    uint8 status
    uint32 dist
    
    ================================================================================
    MSG: tbt_msgs/GuideActionEnum
    uint8 NO_NAVI_ACTION = 0
    uint8 TURN_LEFT = 1
    uint8 TURN_RIGHT = 2
    uint8 DRIVE_LEFT_FRONT = 3
    uint8 DRIVE_RIGHT_FRONT = 4
    uint8 DRIVE_LEFT_REAR = 5
    uint8 DRIVE_RIGHT_REAR = 6
    uint8 TURN_LEFT_TURN_AROUND = 7
    uint8 GO_STRAIGHT = 8
    uint8 FRONT_ROAD_ALONG_LEFT = 9
    uint8 FRONT_ROAD_ALONG_RIGHT = 10
    uint8 TRIFURCATION_ALONG_LEFT = 11
    uint8 TRIFURCATION_ALONG_MIDDLE = 12
    uint8 TRIFURCATION_ALONG_RIGHT = 13
    uint8 TWO_STRAIGHT_ALONG_LEFT = 14
    uint8 TWO_STRAIGHT_ALONG_RIGHT = 15
    uint8 THREE_STRAIGHT_ALONG_LEFT = 16
    uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17
    uint8 THREE_STRAIGHT_ALONG_RIGHT = 18
    uint8 ENTRY_RING = 19
    uint8 DESTINATION = 20
    uint8 value
    
    ================================================================================
    MSG: tbt_msgs/TrafficLightsLocation
    float64 lat
    float64 lon
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_road_info !== undefined) {
      resolved.current_road_info = CurrentRoadInfo.Resolve(msg.current_road_info)
    }
    else {
      resolved.current_road_info = new CurrentRoadInfo()
    }

    if (msg.next_intersection !== undefined) {
      resolved.next_intersection = NextIntersection.Resolve(msg.next_intersection)
    }
    else {
      resolved.next_intersection = new NextIntersection()
    }

    if (msg.road_curve !== undefined) {
      resolved.road_curve = RoadCurve.Resolve(msg.road_curve)
    }
    else {
      resolved.road_curve = new RoadCurve()
    }

    if (msg.distance_to_next_guidance !== undefined) {
      resolved.distance_to_next_guidance = msg.distance_to_next_guidance;
    }
    else {
      resolved.distance_to_next_guidance = 0
    }

    if (msg.warning_sign_board !== undefined) {
      resolved.warning_sign_board = WarningSignBoard.Resolve(msg.warning_sign_board)
    }
    else {
      resolved.warning_sign_board = new WarningSignBoard()
    }

    if (msg.distance_to_toll_station !== undefined) {
      resolved.distance_to_toll_station = msg.distance_to_toll_station;
    }
    else {
      resolved.distance_to_toll_station = 0
    }

    if (msg.distance_to_ramp !== undefined) {
      resolved.distance_to_ramp = msg.distance_to_ramp;
    }
    else {
      resolved.distance_to_ramp = 0
    }

    if (msg.traffic_jam !== undefined) {
      resolved.traffic_jam = TrafficJam.Resolve(msg.traffic_jam)
    }
    else {
      resolved.traffic_jam = new TrafficJam()
    }

    if (msg.tunnel_reminder !== undefined) {
      resolved.tunnel_reminder = msg.tunnel_reminder;
    }
    else {
      resolved.tunnel_reminder = 0
    }

    if (msg.construction_site !== undefined) {
      resolved.construction_site = ConstructionSite.Resolve(msg.construction_site)
    }
    else {
      resolved.construction_site = new ConstructionSite()
    }

    if (msg.current_location !== undefined) {
      resolved.current_location = CurrentLocation.Resolve(msg.current_location)
    }
    else {
      resolved.current_location = new CurrentLocation()
    }

    if (msg.relative_location_on_route !== undefined) {
      resolved.relative_location_on_route = RelativeLocationOnRoute.Resolve(msg.relative_location_on_route)
    }
    else {
      resolved.relative_location_on_route = new RelativeLocationOnRoute()
    }

    if (msg.navi_status !== undefined) {
      resolved.navi_status = NaviStatusEnum.Resolve(msg.navi_status)
    }
    else {
      resolved.navi_status = new NaviStatusEnum()
    }

    if (msg.speed_limit_camera !== undefined) {
      resolved.speed_limit_camera = SpeedLimitCamera.Resolve(msg.speed_limit_camera)
    }
    else {
      resolved.speed_limit_camera = new SpeedLimitCamera()
    }

    if (msg.interval_camera !== undefined) {
      resolved.interval_camera = IntervalCamera.Resolve(msg.interval_camera)
    }
    else {
      resolved.interval_camera = new IntervalCamera()
    }

    if (msg.navi_road_traffic_light_sts !== undefined) {
      resolved.navi_road_traffic_light_sts = NaviRoadTrafficLightSts.Resolve(msg.navi_road_traffic_light_sts)
    }
    else {
      resolved.navi_road_traffic_light_sts = new NaviRoadTrafficLightSts()
    }

    if (msg.distance_to_destination !== undefined) {
      resolved.distance_to_destination = msg.distance_to_destination;
    }
    else {
      resolved.distance_to_destination = 0
    }

    if (msg.guide_action !== undefined) {
      resolved.guide_action = GuideActionEnum.Resolve(msg.guide_action)
    }
    else {
      resolved.guide_action = new GuideActionEnum()
    }

    if (msg.origin_icon_type !== undefined) {
      resolved.origin_icon_type = msg.origin_icon_type;
    }
    else {
      resolved.origin_icon_type = 0
    }

    if (msg.traffic_lights_location !== undefined) {
      resolved.traffic_lights_location = new Array(msg.traffic_lights_location.length);
      for (let i = 0; i < resolved.traffic_lights_location.length; ++i) {
        resolved.traffic_lights_location[i] = TrafficLightsLocation.Resolve(msg.traffic_lights_location[i]);
      }
    }
    else {
      resolved.traffic_lights_location = []
    }

    if (msg.tts_text !== undefined) {
      resolved.tts_text = msg.tts_text;
    }
    else {
      resolved.tts_text = []
    }

    return resolved;
    }
};

module.exports = NavigationInfo;
