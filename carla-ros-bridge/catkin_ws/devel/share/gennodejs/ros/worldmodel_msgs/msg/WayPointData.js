// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WayPointType = require('./WayPointType.js');

//-----------------------------------------------------------

class WayPointData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.way_point_type = null;
      this.longtitude = null;
      this.latitude = null;
      this.altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('way_point_type')) {
        this.way_point_type = initObj.way_point_type
      }
      else {
        this.way_point_type = new WayPointType();
      }
      if (initObj.hasOwnProperty('longtitude')) {
        this.longtitude = initObj.longtitude
      }
      else {
        this.longtitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WayPointData
    // Serialize message field [way_point_type]
    bufferOffset = WayPointType.serialize(obj.way_point_type, buffer, bufferOffset);
    // Serialize message field [longtitude]
    bufferOffset = _serializer.float64(obj.longtitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WayPointData
    let len;
    let data = new WayPointData(null);
    // Deserialize message field [way_point_type]
    data.way_point_type = WayPointType.deserialize(buffer, bufferOffset);
    // Deserialize message field [longtitude]
    data.longtitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/WayPointData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c143696712cc66370c1d8d07f7340403';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    worldmodel_msgs/WayPointType way_point_type
    float64 longtitude
    float64 latitude
    float64 altitude
    
    ================================================================================
    MSG: worldmodel_msgs/WayPointType
    uint8 NORMAL_WAYPOINT = 1
    uint8 INTERSECTION_WAYPOINT = 2
    uint8 RAMP_WAYPOINT = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WayPointData(null);
    if (msg.way_point_type !== undefined) {
      resolved.way_point_type = WayPointType.Resolve(msg.way_point_type)
    }
    else {
      resolved.way_point_type = new WayPointType()
    }

    if (msg.longtitude !== undefined) {
      resolved.longtitude = msg.longtitude;
    }
    else {
      resolved.longtitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    return resolved;
    }
};

module.exports = WayPointData;
