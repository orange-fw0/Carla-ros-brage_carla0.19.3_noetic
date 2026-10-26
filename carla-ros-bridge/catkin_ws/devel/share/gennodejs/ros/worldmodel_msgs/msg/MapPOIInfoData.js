// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapPOIType = require('./MapPOIType.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class MapPOIInfoData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.length = null;
      this.type = null;
      this.key_points_enu = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new MapPOIType();
      }
      if (initObj.hasOwnProperty('key_points_enu')) {
        this.key_points_enu = initObj.key_points_enu
      }
      else {
        this.key_points_enu = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPOIInfoData
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = MapPOIType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [key_points_enu]
    // Serialize the length for message field [key_points_enu]
    bufferOffset = _serializer.uint32(obj.key_points_enu.length, buffer, bufferOffset);
    obj.key_points_enu.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPOIInfoData
    let len;
    let data = new MapPOIInfoData(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = MapPOIType.deserialize(buffer, bufferOffset);
    // Deserialize message field [key_points_enu]
    // Deserialize array length for message field [key_points_enu]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.key_points_enu = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.key_points_enu[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.key_points_enu.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/MapPOIInfoData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a272a26a543b9830a26c84ebf4afbde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    float64 length
    worldmodel_msgs/MapPOIType type
    perception_interface_msgs/Point3f[] key_points_enu
    
    ================================================================================
    MSG: worldmodel_msgs/MapPOIType
    uint8 UNKNOWN = 0
    uint8 PARKING_LOT = 1
    uint8 HUMAN_ACCESS = 2
    uint8 DESTINATION = 3
    uint8 PARKING = 4
    uint8 BARRIER_GAP = 5
    uint8 FACILITY_ENTRANCE = 6
    uint8 FACILITY_EXIT = 7
    uint8 FACILITY_EXIT_AND_ENTRANCE = 8
    uint8 BUS_STOP = 9
    uint8 GARAGE_ENTRANCE = 10
    uint8 GARAGE_EXIT = 11
    uint8 SPEED_BUMP = 12
    uint8 CROSS_WALK = 13
    uint8 DASHED_SEGMENT = 14
    uint8 CENTRAL_CIRCLE = 15
    uint8 NO_PARKING_ZONE = 16
    uint8 ROAD_MERGE = 17
    uint8 ROAD_SPLIT = 18
    uint8 TUNNEL = 19
    uint8 TOLL_STATION = 20
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapPOIInfoData(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = MapPOIType.Resolve(msg.type)
    }
    else {
      resolved.type = new MapPOIType()
    }

    if (msg.key_points_enu !== undefined) {
      resolved.key_points_enu = new Array(msg.key_points_enu.length);
      for (let i = 0; i < resolved.key_points_enu.length; ++i) {
        resolved.key_points_enu[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.key_points_enu[i]);
      }
    }
    else {
      resolved.key_points_enu = []
    }

    return resolved;
    }
};

module.exports = MapPOIInfoData;
