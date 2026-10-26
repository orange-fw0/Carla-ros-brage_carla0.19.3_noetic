// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LidarError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MemsIntialization_Err = null;
      this.MemsOperating_Err = null;
      this.LidarTransmitting_Err = null;
      this.LidarReceiving_Err = null;
      this.Lidar_Fusa_Err = null;
      this.WindowContamination_Err = null;
      this.SunBlind_Err = null;
      this.WindowHeating_Err = null;
      this.LidarInternal_Err = null;
      this.LidarExternal_Err = null;
      this.LidarInternal_Volt_Err = null;
      this.Lidar_Temp_Err = null;
      this.Clock_Err = null;
      this.Sync_Err = null;
      this.reserved1 = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('MemsIntialization_Err')) {
        this.MemsIntialization_Err = initObj.MemsIntialization_Err
      }
      else {
        this.MemsIntialization_Err = 0;
      }
      if (initObj.hasOwnProperty('MemsOperating_Err')) {
        this.MemsOperating_Err = initObj.MemsOperating_Err
      }
      else {
        this.MemsOperating_Err = 0;
      }
      if (initObj.hasOwnProperty('LidarTransmitting_Err')) {
        this.LidarTransmitting_Err = initObj.LidarTransmitting_Err
      }
      else {
        this.LidarTransmitting_Err = 0;
      }
      if (initObj.hasOwnProperty('LidarReceiving_Err')) {
        this.LidarReceiving_Err = initObj.LidarReceiving_Err
      }
      else {
        this.LidarReceiving_Err = 0;
      }
      if (initObj.hasOwnProperty('Lidar_Fusa_Err')) {
        this.Lidar_Fusa_Err = initObj.Lidar_Fusa_Err
      }
      else {
        this.Lidar_Fusa_Err = 0;
      }
      if (initObj.hasOwnProperty('WindowContamination_Err')) {
        this.WindowContamination_Err = initObj.WindowContamination_Err
      }
      else {
        this.WindowContamination_Err = 0;
      }
      if (initObj.hasOwnProperty('SunBlind_Err')) {
        this.SunBlind_Err = initObj.SunBlind_Err
      }
      else {
        this.SunBlind_Err = 0;
      }
      if (initObj.hasOwnProperty('WindowHeating_Err')) {
        this.WindowHeating_Err = initObj.WindowHeating_Err
      }
      else {
        this.WindowHeating_Err = 0;
      }
      if (initObj.hasOwnProperty('LidarInternal_Err')) {
        this.LidarInternal_Err = initObj.LidarInternal_Err
      }
      else {
        this.LidarInternal_Err = 0;
      }
      if (initObj.hasOwnProperty('LidarExternal_Err')) {
        this.LidarExternal_Err = initObj.LidarExternal_Err
      }
      else {
        this.LidarExternal_Err = 0;
      }
      if (initObj.hasOwnProperty('LidarInternal_Volt_Err')) {
        this.LidarInternal_Volt_Err = initObj.LidarInternal_Volt_Err
      }
      else {
        this.LidarInternal_Volt_Err = 0;
      }
      if (initObj.hasOwnProperty('Lidar_Temp_Err')) {
        this.Lidar_Temp_Err = initObj.Lidar_Temp_Err
      }
      else {
        this.Lidar_Temp_Err = 0;
      }
      if (initObj.hasOwnProperty('Clock_Err')) {
        this.Clock_Err = initObj.Clock_Err
      }
      else {
        this.Clock_Err = 0;
      }
      if (initObj.hasOwnProperty('Sync_Err')) {
        this.Sync_Err = initObj.Sync_Err
      }
      else {
        this.Sync_Err = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarError
    // Serialize message field [MemsIntialization_Err]
    bufferOffset = _serializer.uint8(obj.MemsIntialization_Err, buffer, bufferOffset);
    // Serialize message field [MemsOperating_Err]
    bufferOffset = _serializer.uint8(obj.MemsOperating_Err, buffer, bufferOffset);
    // Serialize message field [LidarTransmitting_Err]
    bufferOffset = _serializer.uint8(obj.LidarTransmitting_Err, buffer, bufferOffset);
    // Serialize message field [LidarReceiving_Err]
    bufferOffset = _serializer.uint8(obj.LidarReceiving_Err, buffer, bufferOffset);
    // Serialize message field [Lidar_Fusa_Err]
    bufferOffset = _serializer.uint8(obj.Lidar_Fusa_Err, buffer, bufferOffset);
    // Serialize message field [WindowContamination_Err]
    bufferOffset = _serializer.uint8(obj.WindowContamination_Err, buffer, bufferOffset);
    // Serialize message field [SunBlind_Err]
    bufferOffset = _serializer.uint8(obj.SunBlind_Err, buffer, bufferOffset);
    // Serialize message field [WindowHeating_Err]
    bufferOffset = _serializer.uint8(obj.WindowHeating_Err, buffer, bufferOffset);
    // Serialize message field [LidarInternal_Err]
    bufferOffset = _serializer.uint8(obj.LidarInternal_Err, buffer, bufferOffset);
    // Serialize message field [LidarExternal_Err]
    bufferOffset = _serializer.uint8(obj.LidarExternal_Err, buffer, bufferOffset);
    // Serialize message field [LidarInternal_Volt_Err]
    bufferOffset = _serializer.uint8(obj.LidarInternal_Volt_Err, buffer, bufferOffset);
    // Serialize message field [Lidar_Temp_Err]
    bufferOffset = _serializer.uint32(obj.Lidar_Temp_Err, buffer, bufferOffset);
    // Serialize message field [Clock_Err]
    bufferOffset = _serializer.uint8(obj.Clock_Err, buffer, bufferOffset);
    // Serialize message field [Sync_Err]
    bufferOffset = _serializer.uint8(obj.Sync_Err, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint8(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarError
    let len;
    let data = new LidarError(null);
    // Deserialize message field [MemsIntialization_Err]
    data.MemsIntialization_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [MemsOperating_Err]
    data.MemsOperating_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LidarTransmitting_Err]
    data.LidarTransmitting_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LidarReceiving_Err]
    data.LidarReceiving_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Lidar_Fusa_Err]
    data.Lidar_Fusa_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WindowContamination_Err]
    data.WindowContamination_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SunBlind_Err]
    data.SunBlind_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WindowHeating_Err]
    data.WindowHeating_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LidarInternal_Err]
    data.LidarInternal_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LidarExternal_Err]
    data.LidarExternal_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LidarInternal_Volt_Err]
    data.LidarInternal_Volt_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Lidar_Temp_Err]
    data.Lidar_Temp_Err = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Clock_Err]
    data.Clock_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Sync_Err]
    data.Sync_Err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a95160d0c9ab50db5596dcb007fb02d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MemsIntialization_Err
    uint8 MemsOperating_Err
    uint8 LidarTransmitting_Err
    uint8 LidarReceiving_Err
    uint8 Lidar_Fusa_Err
    uint8 WindowContamination_Err
    uint8 SunBlind_Err
    uint8 WindowHeating_Err
    uint8 LidarInternal_Err
    uint8 LidarExternal_Err
    uint8 LidarInternal_Volt_Err
    uint32 Lidar_Temp_Err
    uint8 Clock_Err
    uint8 Sync_Err
    uint8 reserved1
    uint8 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarError(null);
    if (msg.MemsIntialization_Err !== undefined) {
      resolved.MemsIntialization_Err = msg.MemsIntialization_Err;
    }
    else {
      resolved.MemsIntialization_Err = 0
    }

    if (msg.MemsOperating_Err !== undefined) {
      resolved.MemsOperating_Err = msg.MemsOperating_Err;
    }
    else {
      resolved.MemsOperating_Err = 0
    }

    if (msg.LidarTransmitting_Err !== undefined) {
      resolved.LidarTransmitting_Err = msg.LidarTransmitting_Err;
    }
    else {
      resolved.LidarTransmitting_Err = 0
    }

    if (msg.LidarReceiving_Err !== undefined) {
      resolved.LidarReceiving_Err = msg.LidarReceiving_Err;
    }
    else {
      resolved.LidarReceiving_Err = 0
    }

    if (msg.Lidar_Fusa_Err !== undefined) {
      resolved.Lidar_Fusa_Err = msg.Lidar_Fusa_Err;
    }
    else {
      resolved.Lidar_Fusa_Err = 0
    }

    if (msg.WindowContamination_Err !== undefined) {
      resolved.WindowContamination_Err = msg.WindowContamination_Err;
    }
    else {
      resolved.WindowContamination_Err = 0
    }

    if (msg.SunBlind_Err !== undefined) {
      resolved.SunBlind_Err = msg.SunBlind_Err;
    }
    else {
      resolved.SunBlind_Err = 0
    }

    if (msg.WindowHeating_Err !== undefined) {
      resolved.WindowHeating_Err = msg.WindowHeating_Err;
    }
    else {
      resolved.WindowHeating_Err = 0
    }

    if (msg.LidarInternal_Err !== undefined) {
      resolved.LidarInternal_Err = msg.LidarInternal_Err;
    }
    else {
      resolved.LidarInternal_Err = 0
    }

    if (msg.LidarExternal_Err !== undefined) {
      resolved.LidarExternal_Err = msg.LidarExternal_Err;
    }
    else {
      resolved.LidarExternal_Err = 0
    }

    if (msg.LidarInternal_Volt_Err !== undefined) {
      resolved.LidarInternal_Volt_Err = msg.LidarInternal_Volt_Err;
    }
    else {
      resolved.LidarInternal_Volt_Err = 0
    }

    if (msg.Lidar_Temp_Err !== undefined) {
      resolved.Lidar_Temp_Err = msg.Lidar_Temp_Err;
    }
    else {
      resolved.Lidar_Temp_Err = 0
    }

    if (msg.Clock_Err !== undefined) {
      resolved.Clock_Err = msg.Clock_Err;
    }
    else {
      resolved.Clock_Err = 0
    }

    if (msg.Sync_Err !== undefined) {
      resolved.Sync_Err = msg.Sync_Err;
    }
    else {
      resolved.Sync_Err = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    return resolved;
    }
};

module.exports = LidarError;
