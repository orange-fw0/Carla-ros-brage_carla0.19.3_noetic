// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DestinationParkingType = require('./DestinationParkingType.js');
let TrackId = require('./TrackId.js');

//-----------------------------------------------------------

class DestinationParkingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.parking_type = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = new DestinationParkingType();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new TrackId();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DestinationParkingInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = DestinationParkingType.serialize(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = TrackId.serialize(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DestinationParkingInfo
    let len;
    let data = new DestinationParkingInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = DestinationParkingType.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = TrackId.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/DestinationParkingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a1b9d331c13ba8270660a4d56a17c0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PARKING_TYPE_VALID = 1
    uint8 ID_VALID = 2
    uint8 available
    landmark_msgs/DestinationParkingType parking_type
    landmark_msgs/TrackId id
    
    ================================================================================
    MSG: landmark_msgs/DestinationParkingType
    uint8 UNKNOWN = 0
    uint8 NORMAL_DESTINATION = 1
    uint8 PARKING_SPACE = 2
    uint8 PARKING_AOI = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DestinationParkingInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = DestinationParkingType.Resolve(msg.parking_type)
    }
    else {
      resolved.parking_type = new DestinationParkingType()
    }

    if (msg.id !== undefined) {
      resolved.id = TrackId.Resolve(msg.id)
    }
    else {
      resolved.id = new TrackId()
    }

    return resolved;
    }
};

// Constants for message
DestinationParkingInfo.Constants = {
  PARKING_TYPE_VALID: 1,
  ID_VALID: 2,
}

module.exports = DestinationParkingInfo;
