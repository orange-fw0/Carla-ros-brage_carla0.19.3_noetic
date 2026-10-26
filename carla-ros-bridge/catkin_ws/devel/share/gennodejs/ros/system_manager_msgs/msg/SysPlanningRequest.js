// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SystemCmdTypeEnum = require('./SystemCmdTypeEnum.js');
let SystemCmdChildType = require('./SystemCmdChildType.js');
let SysPlanningInfoForParking = require('./SysPlanningInfoForParking.js');
let SysPlanningInfoForHighway = require('./SysPlanningInfoForHighway.js');
let SysPlanningInfoForRADS = require('./SysPlanningInfoForRADS.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SysPlanningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cmd = null;
      this.ccmd = null;
      this.parking_info = null;
      this.highway_info = null;
      this.rads_info = null;
      this.switch_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new SystemCmdTypeEnum();
      }
      if (initObj.hasOwnProperty('ccmd')) {
        this.ccmd = initObj.ccmd
      }
      else {
        this.ccmd = new SystemCmdChildType();
      }
      if (initObj.hasOwnProperty('parking_info')) {
        this.parking_info = initObj.parking_info
      }
      else {
        this.parking_info = new SysPlanningInfoForParking();
      }
      if (initObj.hasOwnProperty('highway_info')) {
        this.highway_info = initObj.highway_info
      }
      else {
        this.highway_info = new SysPlanningInfoForHighway();
      }
      if (initObj.hasOwnProperty('rads_info')) {
        this.rads_info = initObj.rads_info
      }
      else {
        this.rads_info = new SysPlanningInfoForRADS();
      }
      if (initObj.hasOwnProperty('switch_info')) {
        this.switch_info = initObj.switch_info
      }
      else {
        this.switch_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysPlanningRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = SystemCmdTypeEnum.serialize(obj.cmd, buffer, bufferOffset);
    // Serialize message field [ccmd]
    bufferOffset = SystemCmdChildType.serialize(obj.ccmd, buffer, bufferOffset);
    // Serialize message field [parking_info]
    bufferOffset = SysPlanningInfoForParking.serialize(obj.parking_info, buffer, bufferOffset);
    // Serialize message field [highway_info]
    bufferOffset = SysPlanningInfoForHighway.serialize(obj.highway_info, buffer, bufferOffset);
    // Serialize message field [rads_info]
    bufferOffset = SysPlanningInfoForRADS.serialize(obj.rads_info, buffer, bufferOffset);
    // Serialize message field [switch_info]
    bufferOffset = _serializer.string(obj.switch_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysPlanningRequest
    let len;
    let data = new SysPlanningRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = SystemCmdTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [ccmd]
    data.ccmd = SystemCmdChildType.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_info]
    data.parking_info = SysPlanningInfoForParking.deserialize(buffer, bufferOffset);
    // Deserialize message field [highway_info]
    data.highway_info = SysPlanningInfoForHighway.deserialize(buffer, bufferOffset);
    // Deserialize message field [rads_info]
    data.rads_info = SysPlanningInfoForRADS.deserialize(buffer, bufferOffset);
    // Deserialize message field [switch_info]
    data.switch_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += SysPlanningInfoForRADS.getMessageSize(object.rads_info);
    length += _getByteLength(object.switch_info);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysPlanningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1be425a993cd710e44988ea16c71c747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    system_manager_msgs/SystemCmdTypeEnum cmd
    system_manager_msgs/SystemCmdChildType ccmd
    system_manager_msgs/SysPlanningInfoForParking parking_info
    system_manager_msgs/SysPlanningInfoForHighway highway_info
    system_manager_msgs/SysPlanningInfoForRADS rads_info
    string switch_info
    
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
    MSG: system_manager_msgs/SystemCmdTypeEnum
    uint32 PLAC_CAMERA_START = 65537
    uint32 PLAC_CAMERA_CANCEL = 65538
    uint32 PLAC_CAMERA_STOP = 65539
    uint32 PLAC_FISHEYE_CAMERA_START = 65540
    uint32 PLAC_FISHEYE_CAMERA_CANCEL = 65541
    uint32 PLAC_FISHEYE_CAMERA_STOP = 65542
    uint32 PLAC_NON_FISHEYE_CAMERA_START = 65543
    uint32 PLAC_NON_FISHEYE_CAMERA_CANCEL = 65544
    uint32 PLAC_NON_FISHEYE_CAMERA_STOP = 65545
    uint32 PLAC_IMU_START = 65546
    uint32 PLAC_IMU_CANCEL = 65547
    uint32 PLAC_IMU_STOP = 65548
    uint32 PLAC_LIDAR_START = 65549
    uint32 PLAC_LIDAR_CANCEL = 65550
    uint32 PLAC_LIDAR_STOP = 65551
    uint32 PLAC_RADAR_START = 65552
    uint32 PLAC_RADAR_CANCEL = 65553
    uint32 PLAC_RADAR_STOP = 65554
    uint32 ACE_CAMERA_DETECT_START = 131073
    uint32 ACE_CAMERA_DETECT_CANCEL = 131074
    uint32 ACE_CAMERA_DETECT_STOP = 131075
    uint32 ACE_CAMERA_CALIBRATION_START = 131076
    uint32 ACE_CAMERA_CALIBRATION_CANCEL = 131077
    uint32 ACE_CAMERA_CALIBRATION_STOP = 131078
    uint32 ACE_LIDAR_DETECT_START = 131079
    uint32 ACE_LIDAR_DETECT_CANCEL = 131080
    uint32 ACE_LIDAR_DETECT_STOP = 131081
    uint32 ACE_LIDAR_CALIBRATION_START = 131082
    uint32 ACE_LIDAR_CALIBRATION_CANCEL = 131083
    uint32 ACE_LIDAR_CALIBRATION_STOP = 131084
    uint32 ACE_IMU_CALIBRATION_START = 131085
    uint32 ACE_IMU_CALIBRATION_CANCEL = 131086
    uint32 ACE_IMU_CALIBRATION_STOP = 131087
    uint32 ACE_C2B_CALIBRATION_START = 131088
    uint32 ACE_C2B_CALIBRATION_CANCEL = 131089
    uint32 ACE_C2B_CALIBRATION_STOP = 131090
    uint32 ACE_CAMERA_ONLINE_CALIBRATION_START = 135169
    uint32 ACE_CAMERA_ONLINE_CALIBRATION_CANCEL = 135170
    uint32 ACE_CAMERA_ONLINE_CALIBRATION_STOP = 135171
    uint32 ACE_UPDATE_CALIB_RESULT = 135172
    uint32 CAMERA_PLAC_IMAGE_GENERATE_START = 196609
    uint32 CAMERA_PLAC_IMAGE_GENERATE_CANCEL = 196610
    uint32 CAMERA_PLAC_IMAGE_GENERATE_STOP = 196611
    uint32 CAMERA_SERVICE_360_CHECK = 196612
    uint32 CAMERA_SERVICE_360_REQUEST = 196613
    uint32 CAMERA_SERVICE_360_STOP_REQUEST = 196614
    uint32 CAMERA_SERVICE_DVR_CHECK = 196615
    uint32 CAMERA_SERVICE_DVR_REQUEST = 196616
    uint32 CAMERA_SERVICE_DVR_STOP_REQUEST = 196617
    uint32 CAMERA_SERVICE_UPDATE_INTRINSIC = 196618
    uint32 CAMERA_SERVICE_SHUTDOWN = 196619
    uint32 CAMERA_SERVICE_ENTER_SENTRY_MODE = 196620
    uint32 CAMERA_SERVICE_EXIT_SENTRY_MODE = 196621
    uint32 VEHICLE_SERVICE_HIGHWAY_FUNCTION_MODE = 262145
    uint32 VEHICLE_SERVICE_PARKING_FUNCTION_MODE = 262146
    uint32 PERCEPTION_VISION_APA_START = 327681
    uint32 PERCEPTION_VISION_APA_STOP = 327682
    uint32 PERCEPTION_VISION_SVP_START = 327683
    uint32 PERCEPTION_VISION_SVP_STOP = 327684
    uint32 PERCEPTION_VISION_LVP_START = 327685
    uint32 PERCEPTION_VISION_LVP_STOP = 327686
    uint32 FUSION_PARKING_APA_START = 393217
    uint32 FUSION_PARKING_APA_STOP = 393218
    uint32 FUSION_PARKING_SVP_START = 393219
    uint32 FUSION_PARKING_SVP_STOP = 393220
    uint32 FUSION_PARKING_LVP_START = 393221
    uint32 FUSION_PARKING_LVP_STOP = 393222
    uint32 MAP_MANAGER_HIGHWAY_SET_NAVI_PATH = 458753
    uint32 MAP_PROVIDER_QUERY_PARKING_LOT = 458754
    uint32 MAP_PROVIDER_DOWNLOAD_PARKING_LOT = 458755
    uint32 MAP_PROVIDER_LOAD_PARKING_LOT = 458756
    uint32 MAP_PROVIDER_DELETE_PARKING_LOT = 458757
    uint32 MAP_RROVIDER_SET_PARKING_LOT = 458758
    uint32 MAP_PROVIDER_DELETE_ALL = 458759
    uint32 MAP_PROVIDER_QUERY_PARKING_LOT_ONLINE = 458760
    uint32 WORLDMODEL_PARKING_APA_START = 524289
    uint32 WORLDMODEL_PARKING_APA_STOP = 524290
    uint32 WORLDMODEL_PARKING_SVP_START = 524291
    uint32 WORLDMODEL_PARKING_SVP_STOP = 524292
    uint32 WORLDMODEL_PARKING_LVP_START = 524293
    uint32 WORLDMODEL_PARKING_LVP_STOP = 524294
    uint32 WORLDMODEL_HIGHWAY_FUNCTION_MODE = 524295
    uint32 PLANNING_CHANGE_MODE = 655361
    uint32 PLANNING_RANDOM_PARKIN = 655362
    uint32 PLANNING_DESIGNATE_PARKIN = 655363
    uint32 PLANNING_PARKOUT = 655364
    uint32 PLANNING_STOP = 655365
    uint32 PLANNING_EXIT = 655366
    uint32 PLANNING_HIGHWAY_FUNCTION_MODE = 655367
    uint32 PLANNING_HIGHWAY_NAVI_SETTINGS = 655368
    uint32 PLANNING_HIGHWAY_DRIVING_STYLE = 655369
    uint32 PLANNING_HIGHWAY_LANE_CHANGE = 655370
    uint32 PLANNING_HIGHWAY_START_STOP = 655371
    uint32 PLANNING_PAUSE = 655372
    uint32 PLANNING_CONTINUE = 655373
    uint32 PLANNING_RADS_FUNCTION_MODE = 655374
    uint32 PLANNING_PARKOUT_STANDBY = 655375
    uint32 PLANNING_PULL_OVER = 655376
    uint32 PLANNING_EMERGENCY_STOP = 655377
    uint32 PLANNING_EMERGENCY_PAUSE = 655378
    uint32 PLANNING_FORWARD = 655379
    uint32 PLANNING_BACKWARD = 655380
    uint32 PLANNING_RPA_STANDBY = 655381
    uint32 PLANNING_PARK_GLOBAL_TRAJECTORY = 655382
    uint32 PLANNING_PAUSE_GEAR_P = 655383
    uint32 PLANNING_NEARBY_PAUSE = 655384
    uint32 PLANNING_ERASE_SIDE_POINT = 655385
    uint32 PLANNING_SWITCH_SETTING = 655386
    uint32 PLANNING_TOR_NORMAL = 655387
    uint32 PLANNING_TOR_SLOWDOWN = 655388
    uint32 PLANNING_MRM_SLOW_STOP = 655389
    uint32 PLANNING_MRM_FAST_STOP = 655390
    uint32 PLANNING_MRM_BLIND_STOP = 655391
    uint32 PLANNING_PULL_EPB = 655392
    uint32 CONTROLLER_FUNCTION_MODE = 720897
    uint32 CONTROLLER_ENTER_STRAIGHT = 720898
    uint32 CONTROLLER_EXIT_STRAIGHT = 720899
    uint32 CONTROLLER_ERASE_SIDE_POINT = 720900
    uint32 CONTROLLER_LAT_ONLY = 720901
    uint32 CONTROLLER_LONG_ONLY = 720902
    uint32 EGOPOSE_MANAGER_FUNCTION_MODE = 786433
    uint32 PREDICTION_FUNCTION_MODE = 851969
    uint32 value
    
    ================================================================================
    MSG: system_manager_msgs/SystemCmdChildType
    system_manager_msgs/SteeringReq steering_req
    system_manager_msgs/GearReq gear_req
    system_manager_msgs/BrakeReq brake_req
    system_manager_msgs/LightReq light_req
    
    ================================================================================
    MSG: system_manager_msgs/SteeringReq
    uint8 NO_STEERING_RESET = 0
    uint8 STEERING_RESET = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/GearReq
    uint8 NO_REQ = 0
    uint8 GEAR_P = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/BrakeReq
    uint8 NO_REQ = 0
    uint8 HEAVY_BRAKE = 1
    uint8 NO_BRAKE = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LightReq
    uint8 NO_REQ = 0
    uint8 TURN_OFF = 1
    uint8 EMERGENCY_FLASHER = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/SysPlanningInfoForParking
    system_manager_msgs/SysPlanningModeTypeForParking mode
    uint32 id
    bool wireless_charge
    system_manager_msgs/ParkingDirectionType parking_direction
    
    ================================================================================
    MSG: system_manager_msgs/SysPlanningModeTypeForParking
    uint8 PLANNING_APA = 1
    uint8 PLANNING_LVP = 2
    uint8 PLANNING_SVP = 3
    uint8 PLANNING_NEARBY = 4
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ParkingDirectionType
    uint32 AUTO_SELECT = 0
    uint32 PERPENDICULAR_FRONT_OUT = 1
    uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2
    uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4
    uint32 PERPENDICULAR_REAR_OUT = 8
    uint32 PERPENDICULAR_REAR_LEFT_OUT = 16
    uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32
    uint32 PARALLEL_LEFT_OUT = 64
    uint32 PARALLEL_LEFT_FRONT_OUT = 128
    uint32 PARALLEL_RIGHT_OUT = 256
    uint32 PARALLEL_RIGHT_FRONT_OUT = 512
    uint32 FRONT_IN = 2001
    uint32 BACK_IN = 2002
    uint32 value
    
    ================================================================================
    MSG: system_manager_msgs/SysPlanningInfoForHighway
    system_manager_msgs/FunctionModeEnum function_mode
    system_manager_msgs/NaviSettings navi_settings
    system_manager_msgs/DrivingStyleEnum driving_style
    system_manager_msgs/LaneChangeCmd lane_change_cmd
    system_manager_msgs/StartStopCmdEnum start_stop_cmd
    system_manager_msgs/LaneChangeStyleEnum lane_change_style
    
    ================================================================================
    MSG: system_manager_msgs/FunctionModeEnum
    uint8 ACC = 0
    uint8 CP = 1
    uint8 HNP = 2
    uint8 APA = 3
    uint8 SVP = 4
    uint8 PLAC = 5
    uint8 ACE = 6
    uint8 PNP = 7
    uint8 LPNP = 8
    uint8 LPNP_MAPPING = 9
    uint8 MEB = 10
    uint8 RADS = 11
    uint8 MANUAL = 12
    uint8 NRP = 13
    uint8 UNP = 14
    uint8 RPA = 15
    uint8 MANUAL_WITH_CPP = 16
    uint8 EESF = 17
    uint8 LKC = 18
    uint8 SENTRY_MODE = 20
    uint8 ECO_ASSIST = 21
    uint8 MNP = 22
    uint8 MNP_MAPPING = 23
    uint8 L3_FADEIN = 24
    uint8 MANUAL_WITH_NPP = 66
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/NaviSettings
    float32 navi_max_speed
    system_manager_msgs/NaviTimeDistance navi_time_distance
    
    ================================================================================
    MSG: system_manager_msgs/NaviTimeDistance
    uint8 AGGRESIVE = 0
    uint8 MODERATE_AGGRESIVE = 1
    uint8 NORMAL = 2
    uint8 MODERATE_CONSERVATIVE = 3
    uint8 CONSERVATIVE = 4
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/DrivingStyleEnum
    uint8 AGGRESIVE = 0
    uint8 NORMAL = 1
    uint8 CONSERVATIVE = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeCmd
    system_manager_msgs/LaneChangeTypeEnum type
    system_manager_msgs/LaneChangeDirectionEnum direction
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeTypeEnum
    uint8 FORBIDDEN = 0
    uint8 INTERACTIVE = 1
    uint8 REMOVE_FORBIDDEN = 2
    uint8 REMOVE_INTERACTIVE = 3
    uint8 CONFIRM_MODE = 4
    uint8 REMOVE_CONFIRM_MODE = 5
    uint8 CONFIRM_APPROVED = 6
    uint8 CONFIRM_REFUSED = 7
    uint8 ENABLE_EVASIVE = 10
    uint8 DISABLE_EVASIVE = 11
    uint8 FORBIDDEN_INTERACTIVE = 12
    uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
    uint8 FORBIDDEN_AUTO = 14
    uint8 REMOVE_FORBIDDEN_AUTO = 15
    uint8 FORBIDDEN_NAVI = 16
    uint8 REMOVE_FORBIDDEN_NAVI = 17
    uint8 CONFIRM_TIMEOUT = 18
    uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
    uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
    uint8 DISABLE_AUTOMOUS = 22
    uint8 ENABLE_PREFERED_LANE = 23
    uint8 DISABLE_PREFERED_LANE = 24
    uint8 LEFT_FIRST_LANE = 25
    uint8 LEFT_SECOND_LANE = 26
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeDirectionEnum
    uint8 LEFT = 0
    uint8 RIGHT = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/StartStopCmdEnum
    uint8 START = 0
    uint8 STOP = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeStyleEnum
    uint8 AGGRESIVE = 0
    uint8 NORMAL = 1
    uint8 CONSERVATIVE = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/SysPlanningInfoForRADS
    system_manager_msgs/FunctionModeEnum mode
    system_manager_msgs/TrajectoryPoint[] trajectory_points
    
    ================================================================================
    MSG: system_manager_msgs/TrajectoryPoint
    mla_localization_msgs/MLAPosLocal position
    float64 velocity
    float64 reserved
    bool is_reverse
    float32 steering_report
    float64 yaw
    string reserved_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysPlanningRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = SystemCmdTypeEnum.Resolve(msg.cmd)
    }
    else {
      resolved.cmd = new SystemCmdTypeEnum()
    }

    if (msg.ccmd !== undefined) {
      resolved.ccmd = SystemCmdChildType.Resolve(msg.ccmd)
    }
    else {
      resolved.ccmd = new SystemCmdChildType()
    }

    if (msg.parking_info !== undefined) {
      resolved.parking_info = SysPlanningInfoForParking.Resolve(msg.parking_info)
    }
    else {
      resolved.parking_info = new SysPlanningInfoForParking()
    }

    if (msg.highway_info !== undefined) {
      resolved.highway_info = SysPlanningInfoForHighway.Resolve(msg.highway_info)
    }
    else {
      resolved.highway_info = new SysPlanningInfoForHighway()
    }

    if (msg.rads_info !== undefined) {
      resolved.rads_info = SysPlanningInfoForRADS.Resolve(msg.rads_info)
    }
    else {
      resolved.rads_info = new SysPlanningInfoForRADS()
    }

    if (msg.switch_info !== undefined) {
      resolved.switch_info = msg.switch_info;
    }
    else {
      resolved.switch_info = ''
    }

    return resolved;
    }
};

module.exports = SysPlanningRequest;
