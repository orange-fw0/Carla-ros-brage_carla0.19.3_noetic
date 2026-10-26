// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackId = require('./TrackId.js');
let ParkingFacilityTypeEnum = require('./ParkingFacilityTypeEnum.js');

//-----------------------------------------------------------

class ParkingFacility {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.track_id = null;
      this.type = null;
      this.floor = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ParkingFacilityTypeEnum();
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingFacility
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ParkingFacilityTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.int8(obj.floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingFacility
    let len;
    let data = new ParkingFacility(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ParkingFacilityTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/ParkingFacility';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a1c710636be80b653290a0c57e326d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/ParkingFacilityTypeEnum type
    int8 floor
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/ParkingFacilityTypeEnum
    uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0
    uint8 PARKING_FACILITY_TYPE_FLOOR = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingFacility(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.type !== undefined) {
      resolved.type = ParkingFacilityTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ParkingFacilityTypeEnum()
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = 0
    }

    return resolved;
    }
};

module.exports = ParkingFacility;
