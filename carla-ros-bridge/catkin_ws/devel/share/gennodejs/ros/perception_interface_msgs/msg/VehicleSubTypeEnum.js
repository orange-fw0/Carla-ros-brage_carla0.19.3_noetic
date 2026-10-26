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

class VehicleSubTypeEnum {
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
    // Serializes a message object of type VehicleSubTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSubTypeEnum
    let len;
    let data = new VehicleSubTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleSubTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd189e6ab74e25c32536331914cebc3cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0
    uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2
    uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3
    uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4
    uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5
    uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7
    uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8
    uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9
    uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10
    uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11
    uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12
    uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13
    uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14
    uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15
    uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16
    uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17
    uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18
    uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19
    uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20
    uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21
    uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22
    uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23
    uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24
    uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25
    uint8 VEHICLE_SUB_TYPE_RV_BUS = 26
    uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27
    uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28
    uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29
    uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30
    uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31
    uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleSubTypeEnum(null);
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
VehicleSubTypeEnum.Constants = {
  VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE: 0,
  VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE: 1,
  VEHICLE_SUB_TYPE_UNKNOWN_CAR: 2,
  VEHICLE_SUB_TYPE_SEDAN_CAR: 3,
  VEHICLE_SUB_TYPE_SUV_CAR: 4,
  VEHICLE_SUB_TYPE_POLICE_CAR: 5,
  VEHICLE_SUB_TYPE_PICKUP_CAR: 6,
  VEHICLE_SUB_TYPE_UNKNOWN_TRUCK: 7,
  VEHICLE_SUB_TYPE_VAN_TRUCK: 8,
  VEHICLE_SUB_TYPE_PLATE_TRUCK: 9,
  VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK: 10,
  VEHICLE_SUB_TYPE_TRAILER_TRUCK: 11,
  VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK: 12,
  VEHICLE_SUB_TYPE_ENGINEERING_TRUCK: 13,
  VEHICLE_SUB_TYPE_AMBULANCE_TRUCK: 14,
  VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK: 15,
  VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK: 16,
  VEHICLE_SUB_TYPE_SWEEPER_TRUCK: 17,
  VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK: 18,
  VEHICLE_SUB_TYPE_UNKNOWN_BUS: 19,
  VEHICLE_SUB_TYPE_PASSENGER_BUS: 20,
  VEHICLE_SUB_TYPE_SCHOOL_BUS: 21,
  VEHICLE_SUB_TYPE_CITY_BUS: 22,
  VEHICLE_SUB_TYPE_ARTICULATED_BUS: 23,
  VEHICLE_SUB_TYPE_TROLLEY_BUS: 24,
  VEHICLE_SUB_TYPE_MINI_BUS: 25,
  VEHICLE_SUB_TYPE_RV_BUS: 26,
  VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE: 27,
  VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK: 28,
  VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK: 29,
  VEHICLE_SUB_TYPE_DUMP_TRUCK: 30,
  VEHICLE_SUB_TYPE_TANK_TRUCK: 31,
  VEHICLE_SUB_TYPE_MPV_CAR: 32,
}

module.exports = VehicleSubTypeEnum;
