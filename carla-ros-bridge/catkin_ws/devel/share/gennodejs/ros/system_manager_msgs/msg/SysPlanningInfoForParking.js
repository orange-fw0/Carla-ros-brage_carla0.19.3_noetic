// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SysPlanningModeTypeForParking = require('./SysPlanningModeTypeForParking.js');
let ParkingDirectionType = require('./ParkingDirectionType.js');

//-----------------------------------------------------------

class SysPlanningInfoForParking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.id = null;
      this.wireless_charge = null;
      this.parking_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new SysPlanningModeTypeForParking();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('wireless_charge')) {
        this.wireless_charge = initObj.wireless_charge
      }
      else {
        this.wireless_charge = false;
      }
      if (initObj.hasOwnProperty('parking_direction')) {
        this.parking_direction = initObj.parking_direction
      }
      else {
        this.parking_direction = new ParkingDirectionType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysPlanningInfoForParking
    // Serialize message field [mode]
    bufferOffset = SysPlanningModeTypeForParking.serialize(obj.mode, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [wireless_charge]
    bufferOffset = _serializer.bool(obj.wireless_charge, buffer, bufferOffset);
    // Serialize message field [parking_direction]
    bufferOffset = ParkingDirectionType.serialize(obj.parking_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysPlanningInfoForParking
    let len;
    let data = new SysPlanningInfoForParking(null);
    // Deserialize message field [mode]
    data.mode = SysPlanningModeTypeForParking.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wireless_charge]
    data.wireless_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parking_direction]
    data.parking_direction = ParkingDirectionType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysPlanningInfoForParking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50faaf8c956959a45a6177170cecd2f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/SysPlanningModeTypeForParking mode
    uint32 id
    bool wireless_charge
    system_manager_msgs/ParkingDirectionType parking_direction
    
    ================================================================================
    MSG: system_manager_msgs/SysPlanningModeTypeForParking
    uint8 PLANNING_APA = 1
    uint8 PLANNING_LVP = 2
    uint8 PLANNING_SVP = 3
    uint8 PLANNING_NEARBY = 4
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ParkingDirectionType
    uint32 AUTO_SELECT = 0
    uint32 PERPENDICULAR_FRONT_OUT = 1
    uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2
    uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4
    uint32 PERPENDICULAR_REAR_OUT = 8
    uint32 PERPENDICULAR_REAR_LEFT_OUT = 16
    uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32
    uint32 PARALLEL_LEFT_OUT = 64
    uint32 PARALLEL_LEFT_FRONT_OUT = 128
    uint32 PARALLEL_RIGHT_OUT = 256
    uint32 PARALLEL_RIGHT_FRONT_OUT = 512
    uint32 FRONT_IN = 2001
    uint32 BACK_IN = 2002
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysPlanningInfoForParking(null);
    if (msg.mode !== undefined) {
      resolved.mode = SysPlanningModeTypeForParking.Resolve(msg.mode)
    }
    else {
      resolved.mode = new SysPlanningModeTypeForParking()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.wireless_charge !== undefined) {
      resolved.wireless_charge = msg.wireless_charge;
    }
    else {
      resolved.wireless_charge = false
    }

    if (msg.parking_direction !== undefined) {
      resolved.parking_direction = ParkingDirectionType.Resolve(msg.parking_direction)
    }
    else {
      resolved.parking_direction = new ParkingDirectionType()
    }

    return resolved;
    }
};

module.exports = SysPlanningInfoForParking;
