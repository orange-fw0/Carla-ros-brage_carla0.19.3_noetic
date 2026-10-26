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

class VehicleDoorStateEnum {
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
    // Serializes a message object of type VehicleDoorStateEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleDoorStateEnum
    let len;
    let data = new VehicleDoorStateEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleDoorStateEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6264e92bf3a46ef8a94b9440e7fb99b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
    uint8 VEHICLE_DOORSTATE_OFF = 1
    uint8 VEHICLE_DOORSTATE_ON = 2
    uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
    uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
    uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
    uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
    uint8 VEHICLE_DOOR_OPEN_BOTH = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleDoorStateEnum(null);
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
VehicleDoorStateEnum.Constants = {
  VEHICLE_DOORSTATE_UNKNOWN: 0,
  VEHICLE_DOORSTATE_OFF: 1,
  VEHICLE_DOORSTATE_ON: 2,
  VEHICLE_RIGHT_DOOR_OPEN_FULL: 3,
  VEHICLE_RIGHT_DOOR_OPEN_HALF: 4,
  VEHICLE_LEFT_DOOR_OPEN_FULL: 5,
  VEHICLE_LEFT_DOOR_OPEN_HALF: 6,
  VEHICLE_DOOR_OPEN_BOTH: 7,
}

module.exports = VehicleDoorStateEnum;
