// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LPNPMappingParkingSpaceBuildingWayEnum {
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
    // Serializes a message object of type LPNPMappingParkingSpaceBuildingWayEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LPNPMappingParkingSpaceBuildingWayEnum
    let len;
    let data = new LPNPMappingParkingSpaceBuildingWayEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14314fe954b6d64c8501b691e5f7cb76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 PERCEIVED_BELOW = 1
    uint8 USER_SELECTED = 2
    uint8 NO_TARGET_SLOT = 3
    uint8 VIRTUAL = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LPNPMappingParkingSpaceBuildingWayEnum(null);
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
LPNPMappingParkingSpaceBuildingWayEnum.Constants = {
  UNKNOWN: 0,
  PERCEIVED_BELOW: 1,
  USER_SELECTED: 2,
  NO_TARGET_SLOT: 3,
  VIRTUAL: 4,
}

module.exports = LPNPMappingParkingSpaceBuildingWayEnum;
