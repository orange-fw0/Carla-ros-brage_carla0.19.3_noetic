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

class ObjectTypePropertyEnum {
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
    // Serializes a message object of type ObjectTypePropertyEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectTypePropertyEnum
    let len;
    let data = new ObjectTypePropertyEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ObjectTypePropertyEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66ce81927f218dd4fb2e91cd30496614';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PROPERTY_OBJECT_TYPE_ENUM = 0
    uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1
    uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2
    uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3
    uint8 PROPERTY_VRU_TYPE_ENUM = 4
    uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5
    uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6
    uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectTypePropertyEnum(null);
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
ObjectTypePropertyEnum.Constants = {
  PROPERTY_OBJECT_TYPE_ENUM: 0,
  PROPERTY_GENERAL_OBJECT_TYPE_ENUM: 1,
  PROPERTY_VEHICLE_TYPE_ENUM: 2,
  PROPERTY_VEHICLE_SUB_TYPE_ENUM: 3,
  PROPERTY_VRU_TYPE_ENUM: 4,
  PROPERTY_VRU_SUB_TYPE_ENUM: 5,
  PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM: 6,
  PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM: 7,
}

module.exports = ObjectTypePropertyEnum;
