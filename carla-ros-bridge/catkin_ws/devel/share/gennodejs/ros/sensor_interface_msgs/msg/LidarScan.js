// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelodynePacket = require('./VelodynePacket.js');
let RobosensePacket = require('./RobosensePacket.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.available = null;
      this.lidar_type = null;
      this.reserved = null;
      this.velodyne_packets = null;
      this.robosense_packets = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lidar_type')) {
        this.lidar_type = initObj.lidar_type
      }
      else {
        this.lidar_type = '';
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('velodyne_packets')) {
        this.velodyne_packets = initObj.velodyne_packets
      }
      else {
        this.velodyne_packets = [];
      }
      if (initObj.hasOwnProperty('robosense_packets')) {
        this.robosense_packets = initObj.robosense_packets
      }
      else {
        this.robosense_packets = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarScan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lidar_type]
    bufferOffset = _serializer.string(obj.lidar_type, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [velodyne_packets]
    // Serialize the length for message field [velodyne_packets]
    bufferOffset = _serializer.uint32(obj.velodyne_packets.length, buffer, bufferOffset);
    obj.velodyne_packets.forEach((val) => {
      bufferOffset = VelodynePacket.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [robosense_packets]
    // Serialize the length for message field [robosense_packets]
    bufferOffset = _serializer.uint32(obj.robosense_packets.length, buffer, bufferOffset);
    obj.robosense_packets.forEach((val) => {
      bufferOffset = RobosensePacket.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarScan
    let len;
    let data = new LidarScan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lidar_type]
    data.lidar_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velodyne_packets]
    // Deserialize array length for message field [velodyne_packets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.velodyne_packets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.velodyne_packets[i] = VelodynePacket.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [robosense_packets]
    // Deserialize array length for message field [robosense_packets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robosense_packets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robosense_packets[i] = RobosensePacket.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.lidar_type);
    object.velodyne_packets.forEach((val) => {
      length += VelodynePacket.getMessageSize(val);
    });
    object.robosense_packets.forEach((val) => {
      length += RobosensePacket.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/LidarScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22d6444b5c8a1293a27ea13a834d552d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LIDAR_TYPE_VELODYNE = 1
    uint8 LIDAR_TYPE_ROBOSENSE = 2
    std_msgs/Header header
    uint8 available
    string lidar_type
    uint32 reserved
    sensor_interface_msgs/VelodynePacket[] velodyne_packets
    sensor_interface_msgs/RobosensePacket[] robosense_packets
    string reserved_info
    
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
    MSG: sensor_interface_msgs/VelodynePacket
    uint64 stamp
    int16 id
    uint8[] data
    
    ================================================================================
    MSG: sensor_interface_msgs/RobosensePacket
    uint64 stamp
    int16 id
    uint8[] header
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarScan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lidar_type !== undefined) {
      resolved.lidar_type = msg.lidar_type;
    }
    else {
      resolved.lidar_type = ''
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.velodyne_packets !== undefined) {
      resolved.velodyne_packets = new Array(msg.velodyne_packets.length);
      for (let i = 0; i < resolved.velodyne_packets.length; ++i) {
        resolved.velodyne_packets[i] = VelodynePacket.Resolve(msg.velodyne_packets[i]);
      }
    }
    else {
      resolved.velodyne_packets = []
    }

    if (msg.robosense_packets !== undefined) {
      resolved.robosense_packets = new Array(msg.robosense_packets.length);
      for (let i = 0; i < resolved.robosense_packets.length; ++i) {
        resolved.robosense_packets[i] = RobosensePacket.Resolve(msg.robosense_packets[i]);
      }
    }
    else {
      resolved.robosense_packets = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
LidarScan.Constants = {
  LIDAR_TYPE_VELODYNE: 1,
  LIDAR_TYPE_ROBOSENSE: 2,
}

module.exports = LidarScan;
