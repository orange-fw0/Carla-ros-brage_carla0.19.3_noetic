// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModuleType = require('./ModuleType.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModuleControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp_us = null;
      this.module_type = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('module_type')) {
        this.module_type = initObj.module_type
      }
      else {
        this.module_type = new ModuleType();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = ModuleType.serialize(obj.module_type, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleControl
    let len;
    let data = new ModuleControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = ModuleType.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ModuleControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abff0e71cedf4e41f7acb471b6a5e192';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOP = 0
    uint8 START = 1
    std_msgs/Header header
    uint64 timestamp_us
    framework_status_msgs/ModuleType module_type
    uint8 action
    
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
    MSG: framework_status_msgs/ModuleType
    uint8 PREDICTION = 0
    uint8 ROUTING = 1
    uint8 PLANNING = 2
    uint8 CONTROLLER = 3
    uint8 ENDPOINT = 4
    uint8 VEHICLE_REPORTER = 5
    uint8 WORLDMODEL = 6
    uint8 RADAR_PERCEPTION = 7
    uint8 VISION_PERCEPTION = 8
    uint8 LIDAR_PERCEPTION = 9
    uint8 FUSION_PERCEPTION = 10
    uint8 LOCATION = 11
    uint8 VISION_TFC_PERCEPTION = 12
    uint8 SENSOR_SERVICE = 13
    uint8 CAMERA_SERVICE = 14
    uint8 EGOPOSE_MANAGER = 15
    uint8 EGOMOTION = 16
    uint8 MAP_MANAGER = 17
    uint8 LDP_PLANNING = 18
    uint8 PLAC = 19
    uint8 ACE = 20
    uint8 VISTA = 21
    uint8 DYNAMIC_SAFETY_CHECK = 22
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.module_type !== undefined) {
      resolved.module_type = ModuleType.Resolve(msg.module_type)
    }
    else {
      resolved.module_type = new ModuleType()
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
ModuleControl.Constants = {
  STOP: 0,
  START: 1,
}

module.exports = ModuleControl;
