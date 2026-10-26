// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionFusionResultMeta = require('./PerceptionFusionResultMeta.js');
let PerceptionFusionObjectData = require('./PerceptionFusionObjectData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PerceptionFusionObjectResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.perception_fusion_objects_data = null;
      this.reserved_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new PerceptionFusionResultMeta();
      }
      if (initObj.hasOwnProperty('perception_fusion_objects_data')) {
        this.perception_fusion_objects_data = initObj.perception_fusion_objects_data
      }
      else {
        this.perception_fusion_objects_data = [];
      }
      if (initObj.hasOwnProperty('reserved_infos')) {
        this.reserved_infos = initObj.reserved_infos
      }
      else {
        this.reserved_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionFusionObjectResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionFusionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [perception_fusion_objects_data]
    // Serialize the length for message field [perception_fusion_objects_data]
    bufferOffset = _serializer.uint32(obj.perception_fusion_objects_data.length, buffer, bufferOffset);
    obj.perception_fusion_objects_data.forEach((val) => {
      bufferOffset = PerceptionFusionObjectData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionFusionObjectResult
    let len;
    let data = new PerceptionFusionObjectResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionFusionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [perception_fusion_objects_data]
    // Deserialize array length for message field [perception_fusion_objects_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.perception_fusion_objects_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.perception_fusion_objects_data[i] = PerceptionFusionObjectData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionFusionResultMeta.getMessageSize(object.meta);
    object.perception_fusion_objects_data.forEach((val) => {
      length += PerceptionFusionObjectData.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PerceptionFusionObjectResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e4f5bb6f871646b48bfda3532be6803';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionFusionResultMeta meta
    perception_interface_msgs/PerceptionFusionObjectData[] perception_fusion_objects_data
    string[] reserved_infos
    
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
    MSG: perception_interface_msgs/PerceptionFusionResultMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string version_tag
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionFusionObjectData
    uint64 track_id
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/BarrierStateInfo barrier_state_info
    bool is_static
    float32 static_confidence
    perception_interface_msgs/VehicleStateInfo vehicle_state_info
    perception_interface_msgs/Shape3d shape
    perception_interface_msgs/Point3d position
    perception_interface_msgs/Vector3d velocity
    perception_interface_msgs/Vector3d acceleration
    float32 heading_yaw
    float32 angular_velocity
    perception_interface_msgs/Point3d relative_position
    perception_interface_msgs/Vector3d relative_velocity
    perception_interface_msgs/Vector3d relative_acceleration
    float32 relative_heading_yaw
    float32 relative_angular_velocity
    perception_interface_msgs/Vector3d velocity_relative_to_ground
    perception_interface_msgs/Vector3d acceleration_relative_to_ground
    float32 score
    float32 crash_risk_ttc
    perception_interface_msgs/Polygon3f polygon_bottom
    perception_interface_msgs/Polygon3f polygon_top
    bool available
    perception_interface_msgs/PerceptionObjectTypeEnum object_type
    perception_interface_msgs/PerceptionSceneTypeEnum scene_type
    float32 scene_confidence
    string source_sensor
    float64 source_timestamp
    float32 visibility
    string extra_json
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTypeInfo
    perception_interface_msgs/ObjectTypePropertyEnum[] type_properties
    perception_interface_msgs/ObjectTypeEnum type
    perception_interface_msgs/GeneralObjectTypeEnum general_object_type
    perception_interface_msgs/VehicleTypeEnum vehicle_type
    perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type
    perception_interface_msgs/VRUTypeEnum vru_type
    perception_interface_msgs/VRUSubTypeEnum vru_sub_type
    perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type
    perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type
    perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type
    perception_interface_msgs/TrafficLightTypeEnum traffic_light_type
    perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTypePropertyEnum
    uint8 PROPERTY_OBJECT_TYPE_ENUM = 0
    uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1
    uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2
    uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3
    uint8 PROPERTY_VRU_TYPE_ENUM = 4
    uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5
    uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6
    uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTypeEnum
    uint8 OBJECT_TYPE_GENERAL_OBJECT = 0
    uint8 OBJECT_TYPE_VEHICLE = 1
    uint8 OBJECT_TYPE_VRU = 2
    uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3
    uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/GeneralObjectTypeEnum
    uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0
    uint8 GENERAL_OBJECT_TYPE_POINT = 1
    uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTypeEnum
    uint8 VEHICLE_TYPE_UNKNOWN = 0
    uint8 VEHICLE_TYPE_CAR = 1
    uint8 VEHICLE_TYPE_TRUCK = 2
    uint8 VEHICLE_TYPE_BUS = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleSubTypeEnum
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0
    uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2
    uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3
    uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4
    uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5
    uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7
    uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8
    uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9
    uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10
    uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11
    uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12
    uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13
    uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14
    uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15
    uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16
    uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17
    uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19
    uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20
    uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21
    uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22
    uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23
    uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24
    uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25
    uint8 VEHICLE_SUB_TYPE_RV_BUS = 26
    uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27
    uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28
    uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29
    uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30
    uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31
    uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VRUTypeEnum
    uint8 VRU_TYPE_UNKNOWN = 0
    uint8 VRU_TYPE_PEDESTRIAN = 1
    uint8 VRU_TYPE_BICYCLIST = 2
    uint8 VRU_TYPE_TRICYCLIST = 3
    uint8 VRU_TYPE_TROLLEY = 4
    uint8 VRU_TYPE_ANIMAL = 5
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VRUSubTypeEnum
    uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0
    uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1
    uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2
    uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3
    uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4
    uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5
    uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6
    uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7
    uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8
    uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9
    uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10
    uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11
    uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12
    uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13
    uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14
    uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15
    uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16
    uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17
    uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18
    uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19
    uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20
    uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21
    uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22
    uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23
    uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24
    uint8 VRU_SUB_TYPE_ANIMAL = 25
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VRUAniSubTypeEnum
    uint8 VRU_TYPE_UNKNOWN = 0
    uint8 VRU_ANI_TYPE_DOG = 1
    uint8 VRU_ANI_TYPE_CAT = 2
    uint8 VRU_ANI_TYPE_HORSE = 3
    uint8 VRU_ANI_TYPE_COW = 4
    uint8 VRU_ANI_TYPE_SHEEP = 5
    uint8 VRU_ANI_TYPE_PIG = 6
    uint8 VRU_ANI_TYPE_OTHER = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VRUPedSubTypeEnum
    uint8 VRU_TYPE_UNKNOWN = 0
    uint8 VRU_PED_TYPE_WORKER = 1
    uint8 VRU_PED_TYPE_CHILD = 2
    uint8 VRU_PED_TYPE_ADULT = 3
    uint8 VRU_PED_TYPE_POLICE = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierTypeEnum
    uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
    uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
    uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
    uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
    uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
    uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
    uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
    uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10
    uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11
    uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12
    uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16
    uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17
    uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18
    uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19
    uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20
    uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21
    uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22
    uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23
    uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24
    uint8 TRAFFIC_BARRIER_TYPE_FAR = 25
    uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightTypeEnum
    uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/AvoidObjectTypeEnum
    uint8 AVOID_VEHICLE_TYPE = 0
    uint8 AVOID_VRU_TYPE = 1
    uint8 AVOID_BARRIER_TYPE = 2
    uint8 AVOID_OTHER_TYPE = 3
    uint8 AVOID_TYPE_UNMARKED = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/BarrierStateInfo
    perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo
    float32 distance_to_left_line
    float32 distance_to_right_line
    perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation
    perception_interface_msgs/TrafficBarrierUsefulEnum useful
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierUsefulEnum
    uint8 TRAFFIC_BARRIER_UNUSEFUL = 0
    uint8 TRAFFIC_BARRIER_USEFUL = 1
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleStateInfo
    perception_interface_msgs/VehicleBrakeLightInfo brake_light_info
    perception_interface_msgs/VehicleTailLightInfo tail_light_info
    perception_interface_msgs/VehicleBlinkLightInfo blink_light_info
    perception_interface_msgs/VehicleBeamLightInfo beam_light_info
    perception_interface_msgs/VehicleDoorStateInfo door_state_info
    perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info
    perception_interface_msgs/VehicleCutinStateInfo cutin_info
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBrakeLightInfo
    float32 brake_light_on_score
    perception_interface_msgs/VehicleBrakeLightEnum brake_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBrakeLightEnum
    uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
    uint8 VEHICLE_BRAKELIGHT_OFF = 1
    uint8 VEHICLE_BRAKELIGHT_ON = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTailLightInfo
    float32 tail_light_score
    float32 tail_light_unkown_score
    float32 tail_light_off_score
    float32 tail_light_on_score
    float32 tail_light_high_on_score
    perception_interface_msgs/VehicleTailLightEnum tail_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTailLightEnum
    uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
    uint8 VEHICLE_TAILLIGHT_OFF = 1
    uint8 VEHICLE_TAILLIGHT_ON = 2
    uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBlinkLightInfo
    float32 blink_light_left_score
    float32 blink_light_right_score
    float32 blink_light_both_score
    perception_interface_msgs/VehicleBlinkLightEnum blink_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBlinkLightEnum
    uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BLINKLIGHT_OFF = 1
    uint8 VEHICLE_BLINKLIGHT_LEFT = 2
    uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
    uint8 VEHICLE_BLINKLIGHT_BOTH = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBeamLightInfo
    float32 beam_light_on_score
    perception_interface_msgs/VehicleBeamLightEnum beam_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBeamLightEnum
    uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BEAMLIGHT_OFF = 1
    uint8 VEHICLE_BEAMLIGHT_LOW = 2
    uint8 VEHICLE_BEAMLIGHT_HIGH = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleDoorStateInfo
    float32 door_state_on_score
    perception_interface_msgs/VehicleDoorStateEnum door_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleDoorStateEnum
    uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
    uint8 VEHICLE_DOORSTATE_OFF = 1
    uint8 VEHICLE_DOORSTATE_ON = 2
    uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
    uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
    uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
    uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
    uint8 VEHICLE_DOOR_OPEN_BOTH = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo
    float32 ego_lane_overlap_score
    float32 ego_lane_no_overlap_score
    perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum
    uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0
    uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1
    uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2
    uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleCutinStateInfo
    float32 cutin_state_on_score
    perception_interface_msgs/VehicleCutinStateEnum cutin_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleCutinStateEnum
    uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
    uint8 VEHICLE_CUTINSTATE_OFF = 1
    uint8 VEHICLE_CUTINSTATE_ON = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Shape3d
    float64 height
    float64 length
    float64 width
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/Polygon3f
    perception_interface_msgs/Point3f[] points
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionObjectTypeEnum
    uint8 OBJECT_TYPE_UNKNOWN = 0
    uint8 OBJECT_TYPE_RAW = 1
    uint8 OBJECT_TYPE_NORMAL = 2
    uint8 OBJECT_TYPE_RADAR_ONLY = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionSceneTypeEnum
    uint8 SCENE_TYPE_UNKNOWN = 0
    uint8 SCENE_TYPE_QUEUE = 1
    uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2
    uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionFusionObjectResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionFusionResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionFusionResultMeta()
    }

    if (msg.perception_fusion_objects_data !== undefined) {
      resolved.perception_fusion_objects_data = new Array(msg.perception_fusion_objects_data.length);
      for (let i = 0; i < resolved.perception_fusion_objects_data.length; ++i) {
        resolved.perception_fusion_objects_data[i] = PerceptionFusionObjectData.Resolve(msg.perception_fusion_objects_data[i]);
      }
    }
    else {
      resolved.perception_fusion_objects_data = []
    }

    if (msg.reserved_infos !== undefined) {
      resolved.reserved_infos = msg.reserved_infos;
    }
    else {
      resolved.reserved_infos = []
    }

    return resolved;
    }
};

module.exports = PerceptionFusionObjectResult;
