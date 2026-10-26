// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarPerceptionResultMeta = require('./LidarPerceptionResultMeta.js');
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let Vector2d = require('./Vector2d.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarBEVGridMapResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.available = null;
      this.width = null;
      this.height = null;
      this.sparse_flag = null;
      this.score = null;
      this.visibility = null;
      this.type_info = null;
      this.velocity = null;
      this.angular_velocity = null;
      this.grid_height = null;
      this.sparse_x = null;
      this.sparse_y = null;
      this.front = null;
      this.back = null;
      this.left = null;
      this.right = null;
      this.grid_size_w = null;
      this.grid_size_h = null;
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
        this.meta = new LidarPerceptionResultMeta();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('sparse_flag')) {
        this.sparse_flag = initObj.sparse_flag
      }
      else {
        this.sparse_flag = false;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = [];
      }
      if (initObj.hasOwnProperty('visibility')) {
        this.visibility = initObj.visibility
      }
      else {
        this.visibility = [];
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = [];
      }
      if (initObj.hasOwnProperty('grid_height')) {
        this.grid_height = initObj.grid_height
      }
      else {
        this.grid_height = [];
      }
      if (initObj.hasOwnProperty('sparse_x')) {
        this.sparse_x = initObj.sparse_x
      }
      else {
        this.sparse_x = [];
      }
      if (initObj.hasOwnProperty('sparse_y')) {
        this.sparse_y = initObj.sparse_y
      }
      else {
        this.sparse_y = [];
      }
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = 0.0;
      }
      if (initObj.hasOwnProperty('back')) {
        this.back = initObj.back
      }
      else {
        this.back = 0.0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0.0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0.0;
      }
      if (initObj.hasOwnProperty('grid_size_w')) {
        this.grid_size_w = initObj.grid_size_w
      }
      else {
        this.grid_size_w = 0.0;
      }
      if (initObj.hasOwnProperty('grid_size_h')) {
        this.grid_size_h = initObj.grid_size_h
      }
      else {
        this.grid_size_h = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarBEVGridMapResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = LidarPerceptionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [sparse_flag]
    bufferOffset = _serializer.bool(obj.sparse_flag, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _arraySerializer.float32(obj.score, buffer, bufferOffset, null);
    // Serialize message field [visibility]
    bufferOffset = _arraySerializer.float32(obj.visibility, buffer, bufferOffset, null);
    // Serialize message field [type_info]
    // Serialize the length for message field [type_info]
    bufferOffset = _serializer.uint32(obj.type_info.length, buffer, bufferOffset);
    obj.type_info.forEach((val) => {
      bufferOffset = ObjectTypeInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity]
    // Serialize the length for message field [velocity]
    bufferOffset = _serializer.uint32(obj.velocity.length, buffer, bufferOffset);
    obj.velocity.forEach((val) => {
      bufferOffset = Vector2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [angular_velocity]
    bufferOffset = _arraySerializer.float32(obj.angular_velocity, buffer, bufferOffset, null);
    // Serialize message field [grid_height]
    bufferOffset = _arraySerializer.float32(obj.grid_height, buffer, bufferOffset, null);
    // Serialize message field [sparse_x]
    bufferOffset = _arraySerializer.uint16(obj.sparse_x, buffer, bufferOffset, null);
    // Serialize message field [sparse_y]
    bufferOffset = _arraySerializer.uint16(obj.sparse_y, buffer, bufferOffset, null);
    // Serialize message field [front]
    bufferOffset = _serializer.float32(obj.front, buffer, bufferOffset);
    // Serialize message field [back]
    bufferOffset = _serializer.float32(obj.back, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.float32(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.float32(obj.right, buffer, bufferOffset);
    // Serialize message field [grid_size_w]
    bufferOffset = _serializer.float32(obj.grid_size_w, buffer, bufferOffset);
    // Serialize message field [grid_size_h]
    bufferOffset = _serializer.float32(obj.grid_size_h, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarBEVGridMapResult
    let len;
    let data = new LidarBEVGridMapResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = LidarPerceptionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sparse_flag]
    data.sparse_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [visibility]
    data.visibility = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type_info]
    // Deserialize array length for message field [type_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.type_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.type_info[i] = ObjectTypeInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity]
    // Deserialize array length for message field [velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.velocity[i] = Vector2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [grid_height]
    data.grid_height = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sparse_x]
    data.sparse_x = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [sparse_y]
    data.sparse_y = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [front]
    data.front = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back]
    data.back = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_size_w]
    data.grid_size_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_size_h]
    data.grid_size_h = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += LidarPerceptionResultMeta.getMessageSize(object.meta);
    length += 4 * object.score.length;
    length += 4 * object.visibility.length;
    object.type_info.forEach((val) => {
      length += ObjectTypeInfo.getMessageSize(val);
    });
    length += 16 * object.velocity.length;
    length += 4 * object.angular_velocity.length;
    length += 4 * object.grid_height.length;
    length += 2 * object.sparse_x.length;
    length += 2 * object.sparse_y.length;
    return length + 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LidarBEVGridMapResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ab5eed7390b21b0dcc92d6ba46d3b7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/LidarPerceptionResultMeta meta
    uint8 available
    uint32 width
    uint32 height
    bool sparse_flag
    float32[] score
    float32[] visibility
    perception_interface_msgs/ObjectTypeInfo[] type_info
    perception_interface_msgs/Vector2d[] velocity
    float32[] angular_velocity
    float32[] grid_height
    uint16[] sparse_x
    uint16[] sparse_y
    float32 front
    float32 back
    float32 left
    float32 right
    float32 grid_size_w
    float32 grid_size_h
    
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
    MSG: perception_interface_msgs/LidarPerceptionResultMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string version_tag
    
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
    MSG: perception_interface_msgs/Vector2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarBEVGridMapResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = LidarPerceptionResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new LidarPerceptionResultMeta()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.sparse_flag !== undefined) {
      resolved.sparse_flag = msg.sparse_flag;
    }
    else {
      resolved.sparse_flag = false
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = []
    }

    if (msg.visibility !== undefined) {
      resolved.visibility = msg.visibility;
    }
    else {
      resolved.visibility = []
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = new Array(msg.type_info.length);
      for (let i = 0; i < resolved.type_info.length; ++i) {
        resolved.type_info[i] = ObjectTypeInfo.Resolve(msg.type_info[i]);
      }
    }
    else {
      resolved.type_info = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = new Array(msg.velocity.length);
      for (let i = 0; i < resolved.velocity.length; ++i) {
        resolved.velocity[i] = Vector2d.Resolve(msg.velocity[i]);
      }
    }
    else {
      resolved.velocity = []
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = []
    }

    if (msg.grid_height !== undefined) {
      resolved.grid_height = msg.grid_height;
    }
    else {
      resolved.grid_height = []
    }

    if (msg.sparse_x !== undefined) {
      resolved.sparse_x = msg.sparse_x;
    }
    else {
      resolved.sparse_x = []
    }

    if (msg.sparse_y !== undefined) {
      resolved.sparse_y = msg.sparse_y;
    }
    else {
      resolved.sparse_y = []
    }

    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = 0.0
    }

    if (msg.back !== undefined) {
      resolved.back = msg.back;
    }
    else {
      resolved.back = 0.0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0.0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0.0
    }

    if (msg.grid_size_w !== undefined) {
      resolved.grid_size_w = msg.grid_size_w;
    }
    else {
      resolved.grid_size_w = 0.0
    }

    if (msg.grid_size_h !== undefined) {
      resolved.grid_size_h = msg.grid_size_h;
    }
    else {
      resolved.grid_size_h = 0.0
    }

    return resolved;
    }
};

module.exports = LidarBEVGridMapResult;
