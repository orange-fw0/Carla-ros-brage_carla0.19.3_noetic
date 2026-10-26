// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingSpaceStatusEnum = require('./ParkingSpaceStatusEnum.js');
let ParkingSpaceTypeEnum = require('./ParkingSpaceTypeEnum.js');
let mla_localization_msgs = _finder('mla_localization_msgs');

//-----------------------------------------------------------

class ParkingSpaceInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.code = null;
      this.status = null;
      this.type = null;
      this.corners = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new ParkingSpaceStatusEnum();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ParkingSpaceTypeEnum();
      }
      if (initObj.hasOwnProperty('corners')) {
        this.corners = initObj.corners
      }
      else {
        this.corners = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSpaceInfo
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint8(obj.code, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = ParkingSpaceStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ParkingSpaceTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [corners]
    // Serialize the length for message field [corners]
    bufferOffset = _serializer.uint32(obj.corners.length, buffer, bufferOffset);
    obj.corners.forEach((val) => {
      bufferOffset = mla_localization_msgs.msg.MLAPosLocal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSpaceInfo
    let len;
    let data = new ParkingSpaceInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = ParkingSpaceStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ParkingSpaceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [corners]
    // Deserialize array length for message field [corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = mla_localization_msgs.msg.MLAPosLocal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.corners.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/ParkingSpaceInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee747198c9da7f190b2ef73bf49bfcf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 id
    uint8 code
    system_manager_msgs/ParkingSpaceStatusEnum status
    system_manager_msgs/ParkingSpaceTypeEnum type
    mla_localization_msgs/MLAPosLocal[] corners
    
    ================================================================================
    MSG: system_manager_msgs/ParkingSpaceStatusEnum
    uint8 NO_INFORMATION = 0
    uint8 PARKING_SPACE_VACANT = 1
    uint8 PARKING_SPACE_OCCUPIED = 2
    uint8 PARKING_SPACE_HIGHLIGHT = 3
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ParkingSpaceTypeEnum
    uint8 UNKNOWN = 0
    uint8 PARKING_SPACE_WITH_CHARGING = 1
    uint8 value
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSpaceInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.status !== undefined) {
      resolved.status = ParkingSpaceStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new ParkingSpaceStatusEnum()
    }

    if (msg.type !== undefined) {
      resolved.type = ParkingSpaceTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ParkingSpaceTypeEnum()
    }

    if (msg.corners !== undefined) {
      resolved.corners = new Array(msg.corners.length);
      for (let i = 0; i < resolved.corners.length; ++i) {
        resolved.corners[i] = mla_localization_msgs.msg.MLAPosLocal.Resolve(msg.corners[i]);
      }
    }
    else {
      resolved.corners = []
    }

    return resolved;
    }
};

module.exports = ParkingSpaceInfo;
