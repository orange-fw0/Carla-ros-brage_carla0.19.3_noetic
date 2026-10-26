// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TargetMapPOI = require('./TargetMapPOI.js');
let TraversedParkingLot = require('./TraversedParkingLot.js');
let ParkingOutPosition = require('./ParkingOutPosition.js');

//-----------------------------------------------------------

class ParkingTargetPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.target_map_poi = null;
      this.traversed_parking_lots = null;
      this.parking_out_position = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('target_map_poi')) {
        this.target_map_poi = initObj.target_map_poi
      }
      else {
        this.target_map_poi = new TargetMapPOI();
      }
      if (initObj.hasOwnProperty('traversed_parking_lots')) {
        this.traversed_parking_lots = initObj.traversed_parking_lots
      }
      else {
        this.traversed_parking_lots = [];
      }
      if (initObj.hasOwnProperty('parking_out_position')) {
        this.parking_out_position = initObj.parking_out_position
      }
      else {
        this.parking_out_position = new ParkingOutPosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingTargetPosition
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [target_map_poi]
    bufferOffset = TargetMapPOI.serialize(obj.target_map_poi, buffer, bufferOffset);
    // Serialize message field [traversed_parking_lots]
    // Serialize the length for message field [traversed_parking_lots]
    bufferOffset = _serializer.uint32(obj.traversed_parking_lots.length, buffer, bufferOffset);
    obj.traversed_parking_lots.forEach((val) => {
      bufferOffset = TraversedParkingLot.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_out_position]
    bufferOffset = ParkingOutPosition.serialize(obj.parking_out_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingTargetPosition
    let len;
    let data = new ParkingTargetPosition(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [target_map_poi]
    data.target_map_poi = TargetMapPOI.deserialize(buffer, bufferOffset);
    // Deserialize message field [traversed_parking_lots]
    // Deserialize array length for message field [traversed_parking_lots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traversed_parking_lots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traversed_parking_lots[i] = TraversedParkingLot.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_out_position]
    data.parking_out_position = ParkingOutPosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TargetMapPOI.getMessageSize(object.target_map_poi);
    object.traversed_parking_lots.forEach((val) => {
      length += TraversedParkingLot.getMessageSize(val);
    });
    length += ParkingOutPosition.getMessageSize(object.parking_out_position);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ParkingTargetPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50c369e5f394877d68504d4f1d02c447';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 TARGET_MAP_POI = 1
    uint64 TRAVERSED_PARKING_LOTS = 2
    uint64 PARKING_OUT_POSITION = 4
    uint64 available
    worldmodel_msgs/TargetMapPOI target_map_poi
    worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots
    worldmodel_msgs/ParkingOutPosition parking_out_position
    
    ================================================================================
    MSG: worldmodel_msgs/TargetMapPOI
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
    
    ================================================================================
    MSG: worldmodel_msgs/TraversedParkingLot
    uint16 parking_lot_id
    perception_interface_msgs/Polygon3f parking_lot_position
    perception_interface_msgs/Point3f parking_lot_center
    perception_interface_msgs/Point3f parking_lot_entrance_center
    float64 available_inner_width
    float64 available_outter_width
    uint16 next_parking_lot_id
    uint16 previous_parking_lot_id
    float64 left_extended_distance
    float64 right_extended_distance
    float64 score
    
    ================================================================================
    MSG: worldmodel_msgs/ParkingOutPosition
    uint16 source_parking_lot_id
    perception_interface_msgs/Polygon3f source_parking_lot_position
    perception_interface_msgs/Point3f target_position
    float64 target_heading_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingTargetPosition(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.target_map_poi !== undefined) {
      resolved.target_map_poi = TargetMapPOI.Resolve(msg.target_map_poi)
    }
    else {
      resolved.target_map_poi = new TargetMapPOI()
    }

    if (msg.traversed_parking_lots !== undefined) {
      resolved.traversed_parking_lots = new Array(msg.traversed_parking_lots.length);
      for (let i = 0; i < resolved.traversed_parking_lots.length; ++i) {
        resolved.traversed_parking_lots[i] = TraversedParkingLot.Resolve(msg.traversed_parking_lots[i]);
      }
    }
    else {
      resolved.traversed_parking_lots = []
    }

    if (msg.parking_out_position !== undefined) {
      resolved.parking_out_position = ParkingOutPosition.Resolve(msg.parking_out_position)
    }
    else {
      resolved.parking_out_position = new ParkingOutPosition()
    }

    return resolved;
    }
};

// Constants for message
ParkingTargetPosition.Constants = {
  TARGET_MAP_POI: 1,
  TRAVERSED_PARKING_LOTS: 2,
  PARKING_OUT_POSITION: 4,
}

module.exports = ParkingTargetPosition;
