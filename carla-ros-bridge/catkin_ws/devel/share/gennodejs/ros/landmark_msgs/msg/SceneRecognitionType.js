// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SceneRecognitionType {
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
    // Serializes a message object of type SceneRecognitionType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneRecognitionType
    let len;
    let data = new SceneRecognitionType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/SceneRecognitionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1294aa3ce27fa345bd746c320d4d55e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SceneRecognitionType(null);
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
SceneRecognitionType.Constants = {
  SCENE_RECOGNITION_TYPE_UKNOWN: 0,
  SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD: 1,
  SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP: 2,
  SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN: 3,
  SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE: 4,
  SCENE_RECOGNITION_TYPE_URBAN_TUNNEL: 5,
  SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD: 6,
  SCENE_RECOGNITION_TYPE_URBAN_OTHER: 7,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE: 8,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT: 9,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION: 10,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER: 11,
  SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND: 12,
  SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND: 13,
  SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE: 14,
  SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE: 15,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD: 16,
  SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD: 17,
  SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE: 18,
}

module.exports = SceneRecognitionType;
