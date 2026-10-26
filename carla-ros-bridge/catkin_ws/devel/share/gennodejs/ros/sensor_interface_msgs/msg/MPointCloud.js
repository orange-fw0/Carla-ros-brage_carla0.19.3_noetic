// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pointcloud2 = require('./Pointcloud2.js');

//-----------------------------------------------------------

class MPointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.cloud = null;
      this.ptr_cloud = null;
      this.available = null;
      this.lidar_position = null;
      this.reserved = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = new Pointcloud2();
      }
      if (initObj.hasOwnProperty('ptr_cloud')) {
        this.ptr_cloud = initObj.ptr_cloud
      }
      else {
        this.ptr_cloud = 0;
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lidar_position')) {
        this.lidar_position = initObj.lidar_position
      }
      else {
        this.lidar_position = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MPointCloud
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [cloud]
    bufferOffset = Pointcloud2.serialize(obj.cloud, buffer, bufferOffset);
    // Serialize message field [ptr_cloud]
    bufferOffset = _serializer.uint64(obj.ptr_cloud, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lidar_position]
    bufferOffset = _serializer.uint16(obj.lidar_position, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.uint8(obj.status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MPointCloud
    let len;
    let data = new MPointCloud(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [cloud]
    data.cloud = Pointcloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [ptr_cloud]
    data.ptr_cloud = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lidar_position]
    data.lidar_position = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Pointcloud2.getMessageSize(object.cloud);
    length += _getByteLength(object.reserved);
    length += object.status.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/MPointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e0e75773a2d4d0560240ba05a3113be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    sensor_interface_msgs/Pointcloud2 cloud
    uint64 ptr_cloud
    uint8 available
    uint16 lidar_position
    string reserved
    uint8[] status
    
    ================================================================================
    MSG: sensor_interface_msgs/Pointcloud2
    std_msgs/Header header
    uint32 height
    uint32 width
    sensor_interface_msgs/PointField[] fields
    bool is_bigendian
    uint32 point_step
    uint32 row_step
    uint8[] data
    bool is_dense
    
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
    MSG: sensor_interface_msgs/PointField
    uint8 INT8 = 1
    uint8 UINT8 = 2
    uint8 INT16 = 3
    uint8 UINT16 = 4
    uint8 INT32 = 5
    uint8 UINT32 = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    string name
    uint32 offset
    uint8 datatype
    uint32 count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MPointCloud(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.cloud !== undefined) {
      resolved.cloud = Pointcloud2.Resolve(msg.cloud)
    }
    else {
      resolved.cloud = new Pointcloud2()
    }

    if (msg.ptr_cloud !== undefined) {
      resolved.ptr_cloud = msg.ptr_cloud;
    }
    else {
      resolved.ptr_cloud = 0
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lidar_position !== undefined) {
      resolved.lidar_position = msg.lidar_position;
    }
    else {
      resolved.lidar_position = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = MPointCloud;
