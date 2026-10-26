// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MagicCarpetMeta = require('./MagicCarpetMeta.js');
let MagicCarpetObject = require('./MagicCarpetObject.js');
let MagicCarpetRawObject = require('./MagicCarpetRawObject.js');
let Point3f = require('./Point3f.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MagicCarpetResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.camera_meta = null;
      this.left_front_objects = null;
      this.right_front_objects = null;
      this.left_front_elevation_points_cm = null;
      this.right_front_elevation_points_cm = null;
      this.raw_objects = null;
      this.system_status = null;
      this.road_scene = null;
      this.source = null;
      this.left_wheel_traj = null;
      this.right_wheel_traj = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('camera_meta')) {
        this.camera_meta = initObj.camera_meta
      }
      else {
        this.camera_meta = [];
      }
      if (initObj.hasOwnProperty('left_front_objects')) {
        this.left_front_objects = initObj.left_front_objects
      }
      else {
        this.left_front_objects = [];
      }
      if (initObj.hasOwnProperty('right_front_objects')) {
        this.right_front_objects = initObj.right_front_objects
      }
      else {
        this.right_front_objects = [];
      }
      if (initObj.hasOwnProperty('left_front_elevation_points_cm')) {
        this.left_front_elevation_points_cm = initObj.left_front_elevation_points_cm
      }
      else {
        this.left_front_elevation_points_cm = [];
      }
      if (initObj.hasOwnProperty('right_front_elevation_points_cm')) {
        this.right_front_elevation_points_cm = initObj.right_front_elevation_points_cm
      }
      else {
        this.right_front_elevation_points_cm = [];
      }
      if (initObj.hasOwnProperty('raw_objects')) {
        this.raw_objects = initObj.raw_objects
      }
      else {
        this.raw_objects = [];
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
      if (initObj.hasOwnProperty('road_scene')) {
        this.road_scene = initObj.road_scene
      }
      else {
        this.road_scene = 0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('left_wheel_traj')) {
        this.left_wheel_traj = initObj.left_wheel_traj
      }
      else {
        this.left_wheel_traj = [];
      }
      if (initObj.hasOwnProperty('right_wheel_traj')) {
        this.right_wheel_traj = initObj.right_wheel_traj
      }
      else {
        this.right_wheel_traj = [];
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
    // Serializes a message object of type MagicCarpetResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [camera_meta]
    // Serialize the length for message field [camera_meta]
    bufferOffset = _serializer.uint32(obj.camera_meta.length, buffer, bufferOffset);
    obj.camera_meta.forEach((val) => {
      bufferOffset = MagicCarpetMeta.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_front_objects]
    // Serialize the length for message field [left_front_objects]
    bufferOffset = _serializer.uint32(obj.left_front_objects.length, buffer, bufferOffset);
    obj.left_front_objects.forEach((val) => {
      bufferOffset = MagicCarpetObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_front_objects]
    // Serialize the length for message field [right_front_objects]
    bufferOffset = _serializer.uint32(obj.right_front_objects.length, buffer, bufferOffset);
    obj.right_front_objects.forEach((val) => {
      bufferOffset = MagicCarpetObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_front_elevation_points_cm]
    bufferOffset = _arraySerializer.float32(obj.left_front_elevation_points_cm, buffer, bufferOffset, null);
    // Serialize message field [right_front_elevation_points_cm]
    bufferOffset = _arraySerializer.float32(obj.right_front_elevation_points_cm, buffer, bufferOffset, null);
    // Serialize message field [raw_objects]
    // Serialize the length for message field [raw_objects]
    bufferOffset = _serializer.uint32(obj.raw_objects.length, buffer, bufferOffset);
    obj.raw_objects.forEach((val) => {
      bufferOffset = MagicCarpetRawObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    // Serialize message field [road_scene]
    bufferOffset = _serializer.uint8(obj.road_scene, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [left_wheel_traj]
    // Serialize the length for message field [left_wheel_traj]
    bufferOffset = _serializer.uint32(obj.left_wheel_traj.length, buffer, bufferOffset);
    obj.left_wheel_traj.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_wheel_traj]
    // Serialize the length for message field [right_wheel_traj]
    bufferOffset = _serializer.uint32(obj.right_wheel_traj.length, buffer, bufferOffset);
    obj.right_wheel_traj.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagicCarpetResult
    let len;
    let data = new MagicCarpetResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_meta]
    // Deserialize array length for message field [camera_meta]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_meta = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_meta[i] = MagicCarpetMeta.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_front_objects]
    // Deserialize array length for message field [left_front_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_front_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_front_objects[i] = MagicCarpetObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_front_objects]
    // Deserialize array length for message field [right_front_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_front_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_front_objects[i] = MagicCarpetObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_front_elevation_points_cm]
    data.left_front_elevation_points_cm = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [right_front_elevation_points_cm]
    data.right_front_elevation_points_cm = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [raw_objects]
    // Deserialize array length for message field [raw_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.raw_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.raw_objects[i] = MagicCarpetRawObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [road_scene]
    data.road_scene = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_wheel_traj]
    // Deserialize array length for message field [left_wheel_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_wheel_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_wheel_traj[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_wheel_traj]
    // Deserialize array length for message field [right_wheel_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_wheel_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_wheel_traj[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.camera_meta.forEach((val) => {
      length += MagicCarpetMeta.getMessageSize(val);
    });
    length += 9 * object.left_front_objects.length;
    length += 9 * object.right_front_objects.length;
    length += 4 * object.left_front_elevation_points_cm.length;
    length += 4 * object.right_front_elevation_points_cm.length;
    object.raw_objects.forEach((val) => {
      length += MagicCarpetRawObject.getMessageSize(val);
    });
    length += _getByteLength(object.source);
    length += 12 * object.left_wheel_traj.length;
    length += 12 * object.right_wheel_traj.length;
    length += _getByteLength(object.reserved);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/MagicCarpetResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '663f8b630aabcd0295b8dbcb7cc0c8d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/MagicCarpetMeta[] camera_meta
    perception_interface_msgs/MagicCarpetObject[] left_front_objects
    perception_interface_msgs/MagicCarpetObject[] right_front_objects
    float32[] left_front_elevation_points_cm
    float32[] right_front_elevation_points_cm
    perception_interface_msgs/MagicCarpetRawObject[] raw_objects
    uint8 system_status
    uint8 road_scene
    string source
    perception_interface_msgs/Point3f[] left_wheel_traj
    perception_interface_msgs/Point3f[] right_wheel_traj
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
    MSG: perception_interface_msgs/MagicCarpetMeta
    uint32 sensor_timestamp_us
    string camera_tag
    
    ================================================================================
    MSG: perception_interface_msgs/MagicCarpetObject
    uint8 UNKNOWN = 0
    uint8 MANHOLE = 1
    uint8 SPEED_BUMP = 2
    uint8 ROAD_CRACK = 3
    uint8 BROKEN_ROAD = 4
    uint8 ROAD_CURB = 5
    uint8 RESERVED_6 = 6
    uint8 RESERVED_7 = 7
    uint8 RESERVED_8 = 8
    uint8 RESERVED_9 = 9
    uint8 RESERVED_10 = 10
    uint8 type
    float32 elevation_cm
    float32 longitude_distance_m
    
    ================================================================================
    MSG: perception_interface_msgs/MagicCarpetRawObject
    uint8 type
    perception_interface_msgs/Point2f[] polygon_2d
    perception_interface_msgs/Point3f[] polygon_3d
    float32 score
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
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
    const resolved = new MagicCarpetResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.camera_meta !== undefined) {
      resolved.camera_meta = new Array(msg.camera_meta.length);
      for (let i = 0; i < resolved.camera_meta.length; ++i) {
        resolved.camera_meta[i] = MagicCarpetMeta.Resolve(msg.camera_meta[i]);
      }
    }
    else {
      resolved.camera_meta = []
    }

    if (msg.left_front_objects !== undefined) {
      resolved.left_front_objects = new Array(msg.left_front_objects.length);
      for (let i = 0; i < resolved.left_front_objects.length; ++i) {
        resolved.left_front_objects[i] = MagicCarpetObject.Resolve(msg.left_front_objects[i]);
      }
    }
    else {
      resolved.left_front_objects = []
    }

    if (msg.right_front_objects !== undefined) {
      resolved.right_front_objects = new Array(msg.right_front_objects.length);
      for (let i = 0; i < resolved.right_front_objects.length; ++i) {
        resolved.right_front_objects[i] = MagicCarpetObject.Resolve(msg.right_front_objects[i]);
      }
    }
    else {
      resolved.right_front_objects = []
    }

    if (msg.left_front_elevation_points_cm !== undefined) {
      resolved.left_front_elevation_points_cm = msg.left_front_elevation_points_cm;
    }
    else {
      resolved.left_front_elevation_points_cm = []
    }

    if (msg.right_front_elevation_points_cm !== undefined) {
      resolved.right_front_elevation_points_cm = msg.right_front_elevation_points_cm;
    }
    else {
      resolved.right_front_elevation_points_cm = []
    }

    if (msg.raw_objects !== undefined) {
      resolved.raw_objects = new Array(msg.raw_objects.length);
      for (let i = 0; i < resolved.raw_objects.length; ++i) {
        resolved.raw_objects[i] = MagicCarpetRawObject.Resolve(msg.raw_objects[i]);
      }
    }
    else {
      resolved.raw_objects = []
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    if (msg.road_scene !== undefined) {
      resolved.road_scene = msg.road_scene;
    }
    else {
      resolved.road_scene = 0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.left_wheel_traj !== undefined) {
      resolved.left_wheel_traj = new Array(msg.left_wheel_traj.length);
      for (let i = 0; i < resolved.left_wheel_traj.length; ++i) {
        resolved.left_wheel_traj[i] = Point3f.Resolve(msg.left_wheel_traj[i]);
      }
    }
    else {
      resolved.left_wheel_traj = []
    }

    if (msg.right_wheel_traj !== undefined) {
      resolved.right_wheel_traj = new Array(msg.right_wheel_traj.length);
      for (let i = 0; i < resolved.right_wheel_traj.length; ++i) {
        resolved.right_wheel_traj[i] = Point3f.Resolve(msg.right_wheel_traj[i]);
      }
    }
    else {
      resolved.right_wheel_traj = []
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

module.exports = MagicCarpetResult;
