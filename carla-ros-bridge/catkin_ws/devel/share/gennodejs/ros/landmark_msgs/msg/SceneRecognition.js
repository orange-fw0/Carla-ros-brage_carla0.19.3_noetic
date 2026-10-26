// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SceneRecognitionType = require('./SceneRecognitionType.js');

//-----------------------------------------------------------

class SceneRecognition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene_types = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('scene_types')) {
        this.scene_types = initObj.scene_types
      }
      else {
        this.scene_types = [];
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
    // Serializes a message object of type SceneRecognition
    // Serialize message field [scene_types]
    // Serialize the length for message field [scene_types]
    bufferOffset = _serializer.uint32(obj.scene_types.length, buffer, bufferOffset);
    obj.scene_types.forEach((val) => {
      bufferOffset = SceneRecognitionType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneRecognition
    let len;
    let data = new SceneRecognition(null);
    // Deserialize message field [scene_types]
    // Deserialize array length for message field [scene_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scene_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scene_types[i] = SceneRecognitionType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.scene_types.length;
    length += _getByteLength(object.reserved_info);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/SceneRecognition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fce90c362d21b9e64e5e0e241351d65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/SceneRecognitionType[] scene_types
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/SceneRecognitionType
    uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3
    uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4
    uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5
    uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6
    uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13
    uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14
    uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16
    uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17
    uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneRecognition(null);
    if (msg.scene_types !== undefined) {
      resolved.scene_types = new Array(msg.scene_types.length);
      for (let i = 0; i < resolved.scene_types.length; ++i) {
        resolved.scene_types[i] = SceneRecognitionType.Resolve(msg.scene_types[i]);
      }
    }
    else {
      resolved.scene_types = []
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

module.exports = SceneRecognition;
