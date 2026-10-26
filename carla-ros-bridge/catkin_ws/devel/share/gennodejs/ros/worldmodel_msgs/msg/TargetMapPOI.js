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

class TargetMapPOI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.position = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new MapPOIType();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new perception_interface_msgs.msg.Polygon3f();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetMapPOI
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = MapPOIType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = perception_interface_msgs.msg.Polygon3f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetMapPOI
    let len;
    let data = new TargetMapPOI(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = MapPOIType.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = perception_interface_msgs.msg.Polygon3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += perception_interface_msgs.msg.Polygon3f.getMessageSize(object.position);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/TargetMapPOI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c173681e5576cb584ac0a57003590dc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 id
    worldmodel_msgs/MapPOIType type
    perception_interface_msgs/Polygon3f position
    float64 distance
    
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
    MSG: perception_interface_msgs/Polygon3f
    perception_interface_msgs/Point3f[] points
    
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
    const resolved = new TargetMapPOI(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = MapPOIType.Resolve(msg.type)
    }
    else {
      resolved.type = new MapPOIType()
    }

    if (msg.position !== undefined) {
      resolved.position = perception_interface_msgs.msg.Polygon3f.Resolve(msg.position)
    }
    else {
      resolved.position = new perception_interface_msgs.msg.Polygon3f()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = TargetMapPOI;
