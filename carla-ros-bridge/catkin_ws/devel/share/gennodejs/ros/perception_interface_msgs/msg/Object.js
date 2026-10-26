// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let Rect4f = require('./Rect4f.js');
let ObjectTrackInfo = require('./ObjectTrackInfo.js');
let ObjectReIDFeature = require('./ObjectReIDFeature.js');
let VehicleStateInfo = require('./VehicleStateInfo.js');
let BarrierStateInfo = require('./BarrierStateInfo.js');
let Shape3f = require('./Shape3f.js');
let Vector3f = require('./Vector3f.js');
let Point3f = require('./Point3f.js');
let ObjectAEBFeature = require('./ObjectAEBFeature.js');
let VehicleVPBInfo = require('./VehicleVPBInfo.js');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.type_info = null;
      this.score = null;
      this.visibility_2d = null;
      this.bounding_box_2d = null;
      this.track_info = null;
      this.reid_feature = null;
      this.vehicle_state_info = null;
      this.barrier_state_info = null;
      this.shape_3d = null;
      this.heading_theta_bv = null;
      this.velocity_bv = null;
      this.location_bv = null;
      this.aeb_feature = null;
      this.ttc = null;
      this.is_cipv = null;
      this.vehicle_vpb_info = null;
      this.available = null;
      this.subtype_score = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_source')) {
        this.camera_source = initObj.camera_source
      }
      else {
        this.camera_source = new CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new CameraModelEnum();
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new ObjectTypeInfo();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('visibility_2d')) {
        this.visibility_2d = initObj.visibility_2d
      }
      else {
        this.visibility_2d = 0.0;
      }
      if (initObj.hasOwnProperty('bounding_box_2d')) {
        this.bounding_box_2d = initObj.bounding_box_2d
      }
      else {
        this.bounding_box_2d = new Rect4f();
      }
      if (initObj.hasOwnProperty('track_info')) {
        this.track_info = initObj.track_info
      }
      else {
        this.track_info = new ObjectTrackInfo();
      }
      if (initObj.hasOwnProperty('reid_feature')) {
        this.reid_feature = initObj.reid_feature
      }
      else {
        this.reid_feature = new ObjectReIDFeature();
      }
      if (initObj.hasOwnProperty('vehicle_state_info')) {
        this.vehicle_state_info = initObj.vehicle_state_info
      }
      else {
        this.vehicle_state_info = new VehicleStateInfo();
      }
      if (initObj.hasOwnProperty('barrier_state_info')) {
        this.barrier_state_info = initObj.barrier_state_info
      }
      else {
        this.barrier_state_info = new BarrierStateInfo();
      }
      if (initObj.hasOwnProperty('shape_3d')) {
        this.shape_3d = initObj.shape_3d
      }
      else {
        this.shape_3d = new Shape3f();
      }
      if (initObj.hasOwnProperty('heading_theta_bv')) {
        this.heading_theta_bv = initObj.heading_theta_bv
      }
      else {
        this.heading_theta_bv = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_bv')) {
        this.velocity_bv = initObj.velocity_bv
      }
      else {
        this.velocity_bv = new Vector3f();
      }
      if (initObj.hasOwnProperty('location_bv')) {
        this.location_bv = initObj.location_bv
      }
      else {
        this.location_bv = new Point3f();
      }
      if (initObj.hasOwnProperty('aeb_feature')) {
        this.aeb_feature = initObj.aeb_feature
      }
      else {
        this.aeb_feature = new ObjectAEBFeature();
      }
      if (initObj.hasOwnProperty('ttc')) {
        this.ttc = initObj.ttc
      }
      else {
        this.ttc = 0.0;
      }
      if (initObj.hasOwnProperty('is_cipv')) {
        this.is_cipv = initObj.is_cipv
      }
      else {
        this.is_cipv = false;
      }
      if (initObj.hasOwnProperty('vehicle_vpb_info')) {
        this.vehicle_vpb_info = initObj.vehicle_vpb_info
      }
      else {
        this.vehicle_vpb_info = new VehicleVPBInfo();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('subtype_score')) {
        this.subtype_score = initObj.subtype_score
      }
      else {
        this.subtype_score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = ObjectTypeInfo.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [visibility_2d]
    bufferOffset = _serializer.float32(obj.visibility_2d, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [track_info]
    bufferOffset = ObjectTrackInfo.serialize(obj.track_info, buffer, bufferOffset);
    // Serialize message field [reid_feature]
    bufferOffset = ObjectReIDFeature.serialize(obj.reid_feature, buffer, bufferOffset);
    // Serialize message field [vehicle_state_info]
    bufferOffset = VehicleStateInfo.serialize(obj.vehicle_state_info, buffer, bufferOffset);
    // Serialize message field [barrier_state_info]
    bufferOffset = BarrierStateInfo.serialize(obj.barrier_state_info, buffer, bufferOffset);
    // Serialize message field [shape_3d]
    bufferOffset = Shape3f.serialize(obj.shape_3d, buffer, bufferOffset);
    // Serialize message field [heading_theta_bv]
    bufferOffset = _serializer.float32(obj.heading_theta_bv, buffer, bufferOffset);
    // Serialize message field [velocity_bv]
    bufferOffset = Vector3f.serialize(obj.velocity_bv, buffer, bufferOffset);
    // Serialize message field [location_bv]
    bufferOffset = Point3f.serialize(obj.location_bv, buffer, bufferOffset);
    // Serialize message field [aeb_feature]
    bufferOffset = ObjectAEBFeature.serialize(obj.aeb_feature, buffer, bufferOffset);
    // Serialize message field [ttc]
    bufferOffset = _serializer.float32(obj.ttc, buffer, bufferOffset);
    // Serialize message field [is_cipv]
    bufferOffset = _serializer.bool(obj.is_cipv, buffer, bufferOffset);
    // Serialize message field [vehicle_vpb_info]
    bufferOffset = VehicleVPBInfo.serialize(obj.vehicle_vpb_info, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [subtype_score]
    bufferOffset = _serializer.float32(obj.subtype_score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = ObjectTypeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visibility_2d]
    data.visibility_2d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_info]
    data.track_info = ObjectTrackInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [reid_feature]
    data.reid_feature = ObjectReIDFeature.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_state_info]
    data.vehicle_state_info = VehicleStateInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [barrier_state_info]
    data.barrier_state_info = BarrierStateInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape_3d]
    data.shape_3d = Shape3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_theta_bv]
    data.heading_theta_bv = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_bv]
    data.velocity_bv = Vector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [location_bv]
    data.location_bv = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [aeb_feature]
    data.aeb_feature = ObjectAEBFeature.deserialize(buffer, bufferOffset);
    // Deserialize message field [ttc]
    data.ttc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_cipv]
    data.is_cipv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_vpb_info]
    data.vehicle_vpb_info = VehicleVPBInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [subtype_score]
    data.subtype_score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectTypeInfo.getMessageSize(object.type_info);
    length += ObjectReIDFeature.getMessageSize(object.reid_feature);
    length += ObjectAEBFeature.getMessageSize(object.aeb_feature);
    length += VehicleVPBInfo.getMessageSize(object.vehicle_vpb_info);
    return length + 169;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c17608303369a0d2549284c16303a11b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/ObjectTypeInfo type_info
    float32 score
    float32 visibility_2d
    perception_interface_msgs/Rect4f bounding_box_2d
    perception_interface_msgs/ObjectTrackInfo track_info
    perception_interface_msgs/ObjectReIDFeature reid_feature
    perception_interface_msgs/VehicleStateInfo vehicle_state_info
    perception_interface_msgs/BarrierStateInfo barrier_state_info
    perception_interface_msgs/Shape3f shape_3d
    float32 heading_theta_bv
    perception_interface_msgs/Vector3f velocity_bv
    perception_interface_msgs/Point3f location_bv
    perception_interface_msgs/ObjectAEBFeature aeb_feature
    float32 ttc
    bool is_cipv
    perception_interface_msgs/VehicleVPBInfo vehicle_vpb_info
    bool available
    float32 subtype_score
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
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
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTrackInfo
    uint64 track_id
    uint64 track_times
    float32 age_in_seconds
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectReIDFeature
    float32[] data
    
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
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectAEBFeature
    float32[] data
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleVPBInfo
    uint8 vpb_point_num
    float32[] vpb_bv_x
    float32[] vpb_bv_y
    float32[] vpb_bv_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.camera_source !== undefined) {
      resolved.camera_source = CameraSourceEnum.Resolve(msg.camera_source)
    }
    else {
      resolved.camera_source = new CameraSourceEnum()
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = CameraModelEnum.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new CameraModelEnum()
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = ObjectTypeInfo.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new ObjectTypeInfo()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.visibility_2d !== undefined) {
      resolved.visibility_2d = msg.visibility_2d;
    }
    else {
      resolved.visibility_2d = 0.0
    }

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = Rect4f.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new Rect4f()
    }

    if (msg.track_info !== undefined) {
      resolved.track_info = ObjectTrackInfo.Resolve(msg.track_info)
    }
    else {
      resolved.track_info = new ObjectTrackInfo()
    }

    if (msg.reid_feature !== undefined) {
      resolved.reid_feature = ObjectReIDFeature.Resolve(msg.reid_feature)
    }
    else {
      resolved.reid_feature = new ObjectReIDFeature()
    }

    if (msg.vehicle_state_info !== undefined) {
      resolved.vehicle_state_info = VehicleStateInfo.Resolve(msg.vehicle_state_info)
    }
    else {
      resolved.vehicle_state_info = new VehicleStateInfo()
    }

    if (msg.barrier_state_info !== undefined) {
      resolved.barrier_state_info = BarrierStateInfo.Resolve(msg.barrier_state_info)
    }
    else {
      resolved.barrier_state_info = new BarrierStateInfo()
    }

    if (msg.shape_3d !== undefined) {
      resolved.shape_3d = Shape3f.Resolve(msg.shape_3d)
    }
    else {
      resolved.shape_3d = new Shape3f()
    }

    if (msg.heading_theta_bv !== undefined) {
      resolved.heading_theta_bv = msg.heading_theta_bv;
    }
    else {
      resolved.heading_theta_bv = 0.0
    }

    if (msg.velocity_bv !== undefined) {
      resolved.velocity_bv = Vector3f.Resolve(msg.velocity_bv)
    }
    else {
      resolved.velocity_bv = new Vector3f()
    }

    if (msg.location_bv !== undefined) {
      resolved.location_bv = Point3f.Resolve(msg.location_bv)
    }
    else {
      resolved.location_bv = new Point3f()
    }

    if (msg.aeb_feature !== undefined) {
      resolved.aeb_feature = ObjectAEBFeature.Resolve(msg.aeb_feature)
    }
    else {
      resolved.aeb_feature = new ObjectAEBFeature()
    }

    if (msg.ttc !== undefined) {
      resolved.ttc = msg.ttc;
    }
    else {
      resolved.ttc = 0.0
    }

    if (msg.is_cipv !== undefined) {
      resolved.is_cipv = msg.is_cipv;
    }
    else {
      resolved.is_cipv = false
    }

    if (msg.vehicle_vpb_info !== undefined) {
      resolved.vehicle_vpb_info = VehicleVPBInfo.Resolve(msg.vehicle_vpb_info)
    }
    else {
      resolved.vehicle_vpb_info = new VehicleVPBInfo()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.subtype_score !== undefined) {
      resolved.subtype_score = msg.subtype_score;
    }
    else {
      resolved.subtype_score = 0.0
    }

    return resolved;
    }
};

module.exports = Object;
