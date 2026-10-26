// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ParkingOutPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_parking_lot_id = null;
      this.source_parking_lot_position = null;
      this.target_position = null;
      this.target_heading_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('source_parking_lot_id')) {
        this.source_parking_lot_id = initObj.source_parking_lot_id
      }
      else {
        this.source_parking_lot_id = 0;
      }
      if (initObj.hasOwnProperty('source_parking_lot_position')) {
        this.source_parking_lot_position = initObj.source_parking_lot_position
      }
      else {
        this.source_parking_lot_position = new perception_interface_msgs.msg.Polygon3f();
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('target_heading_yaw')) {
        this.target_heading_yaw = initObj.target_heading_yaw
      }
      else {
        this.target_heading_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingOutPosition
    // Serialize message field [source_parking_lot_id]
    bufferOffset = _serializer.uint16(obj.source_parking_lot_id, buffer, bufferOffset);
    // Serialize message field [source_parking_lot_position]
    bufferOffset = perception_interface_msgs.msg.Polygon3f.serialize(obj.source_parking_lot_position, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.target_position, buffer, bufferOffset);
    // Serialize message field [target_heading_yaw]
    bufferOffset = _serializer.float64(obj.target_heading_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingOutPosition
    let len;
    let data = new ParkingOutPosition(null);
    // Deserialize message field [source_parking_lot_id]
    data.source_parking_lot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [source_parking_lot_position]
    data.source_parking_lot_position = perception_interface_msgs.msg.Polygon3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_heading_yaw]
    data.target_heading_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += perception_interface_msgs.msg.Polygon3f.getMessageSize(object.source_parking_lot_position);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ParkingOutPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b814692f7a170f06545586a256496d60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 source_parking_lot_id
    perception_interface_msgs/Polygon3f source_parking_lot_position
    perception_interface_msgs/Point3f target_position
    float64 target_heading_yaw
    
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
    const resolved = new ParkingOutPosition(null);
    if (msg.source_parking_lot_id !== undefined) {
      resolved.source_parking_lot_id = msg.source_parking_lot_id;
    }
    else {
      resolved.source_parking_lot_id = 0
    }

    if (msg.source_parking_lot_position !== undefined) {
      resolved.source_parking_lot_position = perception_interface_msgs.msg.Polygon3f.Resolve(msg.source_parking_lot_position)
    }
    else {
      resolved.source_parking_lot_position = new perception_interface_msgs.msg.Polygon3f()
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = perception_interface_msgs.msg.Point3f.Resolve(msg.target_position)
    }
    else {
      resolved.target_position = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.target_heading_yaw !== undefined) {
      resolved.target_heading_yaw = msg.target_heading_yaw;
    }
    else {
      resolved.target_heading_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = ParkingOutPosition;
