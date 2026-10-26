// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionMeta = require('./PerceptionMeta.js');
let ParkingSlot = require('./ParkingSlot.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParkingSlotPerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.available = null;
      this.parking_slots = null;
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
        this.meta = new PerceptionMeta();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parking_slots')) {
        this.parking_slots = initObj.parking_slots
      }
      else {
        this.parking_slots = [];
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
    // Serializes a message object of type ParkingSlotPerception
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [parking_slots]
    // Serialize the length for message field [parking_slots]
    bufferOffset = _serializer.uint32(obj.parking_slots.length, buffer, bufferOffset);
    obj.parking_slots.forEach((val) => {
      bufferOffset = ParkingSlot.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotPerception
    let len;
    let data = new ParkingSlotPerception(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [parking_slots]
    // Deserialize array length for message field [parking_slots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_slots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_slots[i] = ParkingSlot.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionMeta.getMessageSize(object.meta);
    object.parking_slots.forEach((val) => {
      length += ParkingSlot.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ParkingSlotPerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39f01e8e4feaace55b9cc034ecd0d055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VISION_PERCEPTION_PARKING_SLOT_RESULT = 1
    uint8 VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS = 2
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    uint64 available
    perception_interface_msgs/ParkingSlot[] parking_slots
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
    MSG: perception_interface_msgs/PerceptionMeta
    string algorithm_name
    string instance_name
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    perception_interface_msgs/FrameMeta[] relevant_frames
    string version_tag
    string ts_log
    uint64 sequence
    string task_tag
    
    ================================================================================
    MSG: perception_interface_msgs/FrameMeta
    uint64 timestamp_us
    uint64 sequence
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    
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
    MSG: perception_interface_msgs/ParkingSlot
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    uint8 available
    perception_interface_msgs/ParkingSlotPoint[] corner_points
    perception_interface_msgs/ParkingSlotCenterPoint center_point
    perception_interface_msgs/Point2f[] wheel_stop_points
    perception_interface_msgs/ParkingSlotPoint3d[] points_3d
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPoint
    perception_interface_msgs/Point2f position
    float32 confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum type
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
    uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
    uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotCenterPoint
    perception_interface_msgs/Point2f position
    perception_interface_msgs/ParkingSlotTypeEnum available_type
    float32 confidence
    float32 center_line_angle
    perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
    perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
    float32 special_confidence
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotTypeEnum
    uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
    uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
    uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
    uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
    uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
    uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPoint3d
    perception_interface_msgs/Point3f position
    float32 confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum type
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotPerception(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionMeta()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parking_slots !== undefined) {
      resolved.parking_slots = new Array(msg.parking_slots.length);
      for (let i = 0; i < resolved.parking_slots.length; ++i) {
        resolved.parking_slots[i] = ParkingSlot.Resolve(msg.parking_slots[i]);
      }
    }
    else {
      resolved.parking_slots = []
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

// Constants for message
ParkingSlotPerception.Constants = {
  VISION_PERCEPTION_PARKING_SLOT_RESULT: 1,
  VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS: 2,
}

module.exports = ParkingSlotPerception;
