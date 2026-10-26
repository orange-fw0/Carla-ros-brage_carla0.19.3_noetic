// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BasicRadarPerceptionObjectData = require('./BasicRadarPerceptionObjectData.js');
let BoschRadarPerceptionObjectData = require('./BoschRadarPerceptionObjectData.js');
let ContiRadarPerceptionObjectData = require('./ContiRadarPerceptionObjectData.js');

//-----------------------------------------------------------

class RadarPerceptionObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.basic_radar_perception_object_data = null;
      this.bosch_radar_perception_object_data = null;
      this.conti_radar_perception_object_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('basic_radar_perception_object_data')) {
        this.basic_radar_perception_object_data = initObj.basic_radar_perception_object_data
      }
      else {
        this.basic_radar_perception_object_data = [];
      }
      if (initObj.hasOwnProperty('bosch_radar_perception_object_data')) {
        this.bosch_radar_perception_object_data = initObj.bosch_radar_perception_object_data
      }
      else {
        this.bosch_radar_perception_object_data = [];
      }
      if (initObj.hasOwnProperty('conti_radar_perception_object_data')) {
        this.conti_radar_perception_object_data = initObj.conti_radar_perception_object_data
      }
      else {
        this.conti_radar_perception_object_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarPerceptionObjects
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [basic_radar_perception_object_data]
    // Serialize the length for message field [basic_radar_perception_object_data]
    bufferOffset = _serializer.uint32(obj.basic_radar_perception_object_data.length, buffer, bufferOffset);
    obj.basic_radar_perception_object_data.forEach((val) => {
      bufferOffset = BasicRadarPerceptionObjectData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bosch_radar_perception_object_data]
    // Serialize the length for message field [bosch_radar_perception_object_data]
    bufferOffset = _serializer.uint32(obj.bosch_radar_perception_object_data.length, buffer, bufferOffset);
    obj.bosch_radar_perception_object_data.forEach((val) => {
      bufferOffset = BoschRadarPerceptionObjectData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [conti_radar_perception_object_data]
    // Serialize the length for message field [conti_radar_perception_object_data]
    bufferOffset = _serializer.uint32(obj.conti_radar_perception_object_data.length, buffer, bufferOffset);
    obj.conti_radar_perception_object_data.forEach((val) => {
      bufferOffset = ContiRadarPerceptionObjectData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarPerceptionObjects
    let len;
    let data = new RadarPerceptionObjects(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [basic_radar_perception_object_data]
    // Deserialize array length for message field [basic_radar_perception_object_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.basic_radar_perception_object_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.basic_radar_perception_object_data[i] = BasicRadarPerceptionObjectData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bosch_radar_perception_object_data]
    // Deserialize array length for message field [bosch_radar_perception_object_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bosch_radar_perception_object_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bosch_radar_perception_object_data[i] = BoschRadarPerceptionObjectData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [conti_radar_perception_object_data]
    // Deserialize array length for message field [conti_radar_perception_object_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.conti_radar_perception_object_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.conti_radar_perception_object_data[i] = ContiRadarPerceptionObjectData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.basic_radar_perception_object_data.forEach((val) => {
      length += BasicRadarPerceptionObjectData.getMessageSize(val);
    });
    object.bosch_radar_perception_object_data.forEach((val) => {
      length += BoschRadarPerceptionObjectData.getMessageSize(val);
    });
    object.conti_radar_perception_object_data.forEach((val) => {
      length += ContiRadarPerceptionObjectData.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RadarPerceptionObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12ffaffe2641546bc7472424e7a4eb4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BASIC_RADAR_PERCEPTION_OBJECT_DATA = 1
    uint8 BOSCH_RADAR_PERCEPTION_OBJECT_DATA = 2
    uint8 CONTI_RADAR_PERCEPTION_OBJECT_DATA = 4
    uint8 BASIC_RADAR_PERCEPTION_OBJECT_DATA_FAULTY = 17
    uint8 BOSCH_RADAR_PERCEPTION_OBJECT_DATA_FAULTY = 18
    uint8 CONTI_RADAR_PERCEPTION_OBJECT_DATA_FAULTY = 20
    uint8 available
    perception_interface_msgs/BasicRadarPerceptionObjectData[] basic_radar_perception_object_data
    perception_interface_msgs/BoschRadarPerceptionObjectData[] bosch_radar_perception_object_data
    perception_interface_msgs/ContiRadarPerceptionObjectData[] conti_radar_perception_object_data
    
    ================================================================================
    MSG: perception_interface_msgs/BasicRadarPerceptionObjectData
    uint16 object_id
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/Point3d relative_position
    perception_interface_msgs/Point3d relative_velocity
    float32 obstacle_prob
    float32 exist_prob
    
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
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/BoschRadarPerceptionObjectData
    uint16 object_id
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/Point3d relative_position
    perception_interface_msgs/Vector3d relative_velocity
    float32 obstacle_prob
    float32 exist_prob
    perception_interface_msgs/BoschRadarSensorStatus sensor_status
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/BoschRadarSensorStatus
    string sensor_tag
    int16 hardware_failure
    int16 alignment_failure
    int16 sgu_failure
    int16 sensor_dirty
    int16 other_failure
    uint64 status
    string details
    
    ================================================================================
    MSG: perception_interface_msgs/ContiRadarPerceptionObjectData
    uint16 object_id
    perception_interface_msgs/Point3d relative_position
    perception_interface_msgs/Vector3d relative_velocity
    float32 orientation_angle
    float32 longitudinal_relative_acceleration
    float32 lateral_relative_acceleration
    float32 length
    float32 width
    float32 radar_cross_section
    uint8 longitudinal_relative_distance_rms
    uint8 lateral_relative_distance_rms
    uint8 longitudinal_relative_velocity_rms
    uint8 lateral_relative_velocity_rms
    uint8 longitudinal_relative_acceleration_rms
    uint8 lateral_relative_acceleration_rms
    uint8 relative_orientation_angle_rms
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/ContiRadarDynamicProperty dynamic_property
    perception_interface_msgs/ContiRadarMeasurementState measurement_state
    perception_interface_msgs/ContiRadarExistenceProbabilityType existence_probability_type
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/ContiRadarDynamicProperty
    uint8 MOVING = 0
    uint8 STATIONARY = 1
    uint8 ON_COMING = 2
    uint8 STATIONARY_CANDIDATE = 3
    uint8 UNKNOWN = 4
    uint8 CROSSING_STATIONARY = 5
    uint8 CROSSING_MOVING = 6
    uint8 STOPPED = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ContiRadarMeasurementState
    uint8 DELETED = 0
    uint8 NEW = 1
    uint8 MEASURED = 2
    uint8 PREDICTED = 3
    uint8 DELETED_FOR_MERGE = 4
    uint8 NEW_FROM_MERGE = 5
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ContiRadarExistenceProbabilityType
    uint8 INVALID = 0
    uint8 PROBABILITY_25 = 1
    uint8 PROBABILITY_50 = 2
    uint8 PROBABILITY_75 = 3
    uint8 PROBABILITY_90 = 4
    uint8 PROBABILITY_99 = 5
    uint8 PROBABILITY_99_9 = 6
    uint8 PROBABILITY_100 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarPerceptionObjects(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.basic_radar_perception_object_data !== undefined) {
      resolved.basic_radar_perception_object_data = new Array(msg.basic_radar_perception_object_data.length);
      for (let i = 0; i < resolved.basic_radar_perception_object_data.length; ++i) {
        resolved.basic_radar_perception_object_data[i] = BasicRadarPerceptionObjectData.Resolve(msg.basic_radar_perception_object_data[i]);
      }
    }
    else {
      resolved.basic_radar_perception_object_data = []
    }

    if (msg.bosch_radar_perception_object_data !== undefined) {
      resolved.bosch_radar_perception_object_data = new Array(msg.bosch_radar_perception_object_data.length);
      for (let i = 0; i < resolved.bosch_radar_perception_object_data.length; ++i) {
        resolved.bosch_radar_perception_object_data[i] = BoschRadarPerceptionObjectData.Resolve(msg.bosch_radar_perception_object_data[i]);
      }
    }
    else {
      resolved.bosch_radar_perception_object_data = []
    }

    if (msg.conti_radar_perception_object_data !== undefined) {
      resolved.conti_radar_perception_object_data = new Array(msg.conti_radar_perception_object_data.length);
      for (let i = 0; i < resolved.conti_radar_perception_object_data.length; ++i) {
        resolved.conti_radar_perception_object_data[i] = ContiRadarPerceptionObjectData.Resolve(msg.conti_radar_perception_object_data[i]);
      }
    }
    else {
      resolved.conti_radar_perception_object_data = []
    }

    return resolved;
    }
};

// Constants for message
RadarPerceptionObjects.Constants = {
  BASIC_RADAR_PERCEPTION_OBJECT_DATA: 1,
  BOSCH_RADAR_PERCEPTION_OBJECT_DATA: 2,
  CONTI_RADAR_PERCEPTION_OBJECT_DATA: 4,
  BASIC_RADAR_PERCEPTION_OBJECT_DATA_FAULTY: 17,
  BOSCH_RADAR_PERCEPTION_OBJECT_DATA_FAULTY: 18,
  CONTI_RADAR_PERCEPTION_OBJECT_DATA_FAULTY: 20,
}

module.exports = RadarPerceptionObjects;
