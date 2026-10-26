// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FeaturePointArrayPropertyEnum {
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
    // Serializes a message object of type FeaturePointArrayPropertyEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeaturePointArrayPropertyEnum
    let len;
    let data = new FeaturePointArrayPropertyEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FeaturePointArrayPropertyEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '104404b0b6ef7ba60d2836c3b46814dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEATURE_POINT_ARRAY_PROPERTY_TAG = 0
    uint8 FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE = 1
    uint8 FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT = 2
    uint8 FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS = 3
    uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_XS = 4
    uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_YS = 5
    uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE = 6
    uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS = 7
    uint8 FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D = 8
    uint8 FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO = 9
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeaturePointArrayPropertyEnum(null);
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
FeaturePointArrayPropertyEnum.Constants = {
  FEATURE_POINT_ARRAY_PROPERTY_TAG: 0,
  FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE: 1,
  FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT: 2,
  FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS: 3,
  FEATURE_POINT_ARRAY_PROPERTY_POINT_XS: 4,
  FEATURE_POINT_ARRAY_PROPERTY_POINT_YS: 5,
  FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE: 6,
  FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS: 7,
  FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D: 8,
  FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO: 9,
}

module.exports = FeaturePointArrayPropertyEnum;
