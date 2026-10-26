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
let ADBSysStatusEnum = require('./ADBSysStatusEnum.js');
let ADBObjectData = require('./ADBObjectData.js');
let ADASPerceptionResult = require('./ADASPerceptionResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADBInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.adb_sys_status = null;
      this.adb_objects_data = null;
      this.object_num = null;
      this.too_many_obj = null;
      this.ihc_info = null;
      this.road_illuminate_state = null;
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
      if (initObj.hasOwnProperty('adb_sys_status')) {
        this.adb_sys_status = initObj.adb_sys_status
      }
      else {
        this.adb_sys_status = new ADBSysStatusEnum();
      }
      if (initObj.hasOwnProperty('adb_objects_data')) {
        this.adb_objects_data = initObj.adb_objects_data
      }
      else {
        this.adb_objects_data = [];
      }
      if (initObj.hasOwnProperty('object_num')) {
        this.object_num = initObj.object_num
      }
      else {
        this.object_num = 0;
      }
      if (initObj.hasOwnProperty('too_many_obj')) {
        this.too_many_obj = initObj.too_many_obj
      }
      else {
        this.too_many_obj = false;
      }
      if (initObj.hasOwnProperty('ihc_info')) {
        this.ihc_info = initObj.ihc_info
      }
      else {
        this.ihc_info = new ADASPerceptionResult();
      }
      if (initObj.hasOwnProperty('road_illuminate_state')) {
        this.road_illuminate_state = initObj.road_illuminate_state
      }
      else {
        this.road_illuminate_state = 0;
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
    // Serializes a message object of type ADBInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionFusionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [adb_sys_status]
    bufferOffset = ADBSysStatusEnum.serialize(obj.adb_sys_status, buffer, bufferOffset);
    // Serialize message field [adb_objects_data]
    // Serialize the length for message field [adb_objects_data]
    bufferOffset = _serializer.uint32(obj.adb_objects_data.length, buffer, bufferOffset);
    obj.adb_objects_data.forEach((val) => {
      bufferOffset = ADBObjectData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [object_num]
    bufferOffset = _serializer.uint8(obj.object_num, buffer, bufferOffset);
    // Serialize message field [too_many_obj]
    bufferOffset = _serializer.bool(obj.too_many_obj, buffer, bufferOffset);
    // Serialize message field [ihc_info]
    bufferOffset = ADASPerceptionResult.serialize(obj.ihc_info, buffer, bufferOffset);
    // Serialize message field [road_illuminate_state]
    bufferOffset = _serializer.uint8(obj.road_illuminate_state, buffer, bufferOffset);
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADBInfo
    let len;
    let data = new ADBInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionFusionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [adb_sys_status]
    data.adb_sys_status = ADBSysStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [adb_objects_data]
    // Deserialize array length for message field [adb_objects_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.adb_objects_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.adb_objects_data[i] = ADBObjectData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [object_num]
    data.object_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [too_many_obj]
    data.too_many_obj = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ihc_info]
    data.ihc_info = ADASPerceptionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_illuminate_state]
    data.road_illuminate_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionFusionResultMeta.getMessageSize(object.meta);
    object.adb_objects_data.forEach((val) => {
      length += ADBObjectData.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ADBInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '060b7c14aaad9880e85f4373bc300a63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionFusionResultMeta meta
    perception_interface_msgs/ADBSysStatusEnum adb_sys_status
    perception_interface_msgs/ADBObjectData[] adb_objects_data
    uint8 object_num
    bool too_many_obj
    perception_interface_msgs/ADASPerceptionResult ihc_info
    uint8 road_illuminate_state
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
    MSG: perception_interface_msgs/ADBSysStatusEnum
    uint8 INVALID = 0
    uint8 DETECTED_NO_FAULT = 1
    uint8 DETECTED_FAULT = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ADBObjectData
    perception_interface_msgs/ObjectTrackInfo track_info
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/Shape3f shape
    perception_interface_msgs/Point3f relative_position
    perception_interface_msgs/Vector3f relative_velocity
    perception_interface_msgs/Vector3f relative_acceleration
    float32 relative_heading_yaw
    float32 score
    perception_interface_msgs/ObjectConfidenceEnum confidence_level
    float32 relative_distance
    perception_interface_msgs/DirectionEnum direction
    perception_interface_msgs/Vector2f horizontal_angle
    perception_interface_msgs/Vector2f horizontal_angular_velocity
    perception_interface_msgs/Vector2f vertical_angle
    perception_interface_msgs/Vector2f vertical_angular_velocity
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTrackInfo
    uint64 track_id
    uint64 track_times
    float32 age_in_seconds
    
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
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectConfidenceEnum
    uint8 LOW_CONFIDENCE = 0
    uint8 MIDIUM_CONFIDENCE = 1
    uint8 HIGH_CONFIDENCE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/DirectionEnum
    uint8 UNKNOWN = 0
    uint8 ONCOMING = 1
    uint8 PRECEDING = 2
    uint8 OTHERS = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Vector2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/ADASPerceptionResult
    uint8 ihc_highbeam_on
    float64 ihc_highbeam_score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADBInfo(null);
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

    if (msg.adb_sys_status !== undefined) {
      resolved.adb_sys_status = ADBSysStatusEnum.Resolve(msg.adb_sys_status)
    }
    else {
      resolved.adb_sys_status = new ADBSysStatusEnum()
    }

    if (msg.adb_objects_data !== undefined) {
      resolved.adb_objects_data = new Array(msg.adb_objects_data.length);
      for (let i = 0; i < resolved.adb_objects_data.length; ++i) {
        resolved.adb_objects_data[i] = ADBObjectData.Resolve(msg.adb_objects_data[i]);
      }
    }
    else {
      resolved.adb_objects_data = []
    }

    if (msg.object_num !== undefined) {
      resolved.object_num = msg.object_num;
    }
    else {
      resolved.object_num = 0
    }

    if (msg.too_many_obj !== undefined) {
      resolved.too_many_obj = msg.too_many_obj;
    }
    else {
      resolved.too_many_obj = false
    }

    if (msg.ihc_info !== undefined) {
      resolved.ihc_info = ADASPerceptionResult.Resolve(msg.ihc_info)
    }
    else {
      resolved.ihc_info = new ADASPerceptionResult()
    }

    if (msg.road_illuminate_state !== undefined) {
      resolved.road_illuminate_state = msg.road_illuminate_state;
    }
    else {
      resolved.road_illuminate_state = 0
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

module.exports = ADBInfo;
