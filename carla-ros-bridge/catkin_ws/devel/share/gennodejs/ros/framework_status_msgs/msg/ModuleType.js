// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ModuleType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleType
    let len;
    let data = new ModuleType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ModuleType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfa3aabc499ac91b044bfeb93dc6d206';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ModuleType(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
ModuleType.Constants = {
  PREDICTION: 0,
  ROUTING: 1,
  PLANNING: 2,
  CONTROLLER: 3,
  ENDPOINT: 4,
  VEHICLE_REPORTER: 5,
  WORLDMODEL: 6,
  RADAR_PERCEPTION: 7,
  VISION_PERCEPTION: 8,
  LIDAR_PERCEPTION: 9,
  FUSION_PERCEPTION: 10,
  LOCATION: 11,
  VISION_TFC_PERCEPTION: 12,
  SENSOR_SERVICE: 13,
  CAMERA_SERVICE: 14,
  EGOPOSE_MANAGER: 15,
  EGOMOTION: 16,
  MAP_MANAGER: 17,
  LDP_PLANNING: 18,
  PLAC: 19,
  ACE: 20,
  VISTA: 21,
  DYNAMIC_SAFETY_CHECK: 22,
}

module.exports = ModuleType;
