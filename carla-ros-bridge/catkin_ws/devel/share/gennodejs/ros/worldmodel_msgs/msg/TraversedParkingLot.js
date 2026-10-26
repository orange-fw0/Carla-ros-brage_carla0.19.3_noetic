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

class TraversedParkingLot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parking_lot_id = null;
      this.parking_lot_position = null;
      this.parking_lot_center = null;
      this.parking_lot_entrance_center = null;
      this.available_inner_width = null;
      this.available_outter_width = null;
      this.next_parking_lot_id = null;
      this.previous_parking_lot_id = null;
      this.left_extended_distance = null;
      this.right_extended_distance = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('parking_lot_id')) {
        this.parking_lot_id = initObj.parking_lot_id
      }
      else {
        this.parking_lot_id = 0;
      }
      if (initObj.hasOwnProperty('parking_lot_position')) {
        this.parking_lot_position = initObj.parking_lot_position
      }
      else {
        this.parking_lot_position = new perception_interface_msgs.msg.Polygon3f();
      }
      if (initObj.hasOwnProperty('parking_lot_center')) {
        this.parking_lot_center = initObj.parking_lot_center
      }
      else {
        this.parking_lot_center = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('parking_lot_entrance_center')) {
        this.parking_lot_entrance_center = initObj.parking_lot_entrance_center
      }
      else {
        this.parking_lot_entrance_center = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('available_inner_width')) {
        this.available_inner_width = initObj.available_inner_width
      }
      else {
        this.available_inner_width = 0.0;
      }
      if (initObj.hasOwnProperty('available_outter_width')) {
        this.available_outter_width = initObj.available_outter_width
      }
      else {
        this.available_outter_width = 0.0;
      }
      if (initObj.hasOwnProperty('next_parking_lot_id')) {
        this.next_parking_lot_id = initObj.next_parking_lot_id
      }
      else {
        this.next_parking_lot_id = 0;
      }
      if (initObj.hasOwnProperty('previous_parking_lot_id')) {
        this.previous_parking_lot_id = initObj.previous_parking_lot_id
      }
      else {
        this.previous_parking_lot_id = 0;
      }
      if (initObj.hasOwnProperty('left_extended_distance')) {
        this.left_extended_distance = initObj.left_extended_distance
      }
      else {
        this.left_extended_distance = 0.0;
      }
      if (initObj.hasOwnProperty('right_extended_distance')) {
        this.right_extended_distance = initObj.right_extended_distance
      }
      else {
        this.right_extended_distance = 0.0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TraversedParkingLot
    // Serialize message field [parking_lot_id]
    bufferOffset = _serializer.uint16(obj.parking_lot_id, buffer, bufferOffset);
    // Serialize message field [parking_lot_position]
    bufferOffset = perception_interface_msgs.msg.Polygon3f.serialize(obj.parking_lot_position, buffer, bufferOffset);
    // Serialize message field [parking_lot_center]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.parking_lot_center, buffer, bufferOffset);
    // Serialize message field [parking_lot_entrance_center]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.parking_lot_entrance_center, buffer, bufferOffset);
    // Serialize message field [available_inner_width]
    bufferOffset = _serializer.float64(obj.available_inner_width, buffer, bufferOffset);
    // Serialize message field [available_outter_width]
    bufferOffset = _serializer.float64(obj.available_outter_width, buffer, bufferOffset);
    // Serialize message field [next_parking_lot_id]
    bufferOffset = _serializer.uint16(obj.next_parking_lot_id, buffer, bufferOffset);
    // Serialize message field [previous_parking_lot_id]
    bufferOffset = _serializer.uint16(obj.previous_parking_lot_id, buffer, bufferOffset);
    // Serialize message field [left_extended_distance]
    bufferOffset = _serializer.float64(obj.left_extended_distance, buffer, bufferOffset);
    // Serialize message field [right_extended_distance]
    bufferOffset = _serializer.float64(obj.right_extended_distance, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TraversedParkingLot
    let len;
    let data = new TraversedParkingLot(null);
    // Deserialize message field [parking_lot_id]
    data.parking_lot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [parking_lot_position]
    data.parking_lot_position = perception_interface_msgs.msg.Polygon3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_lot_center]
    data.parking_lot_center = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_lot_entrance_center]
    data.parking_lot_entrance_center = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [available_inner_width]
    data.available_inner_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [available_outter_width]
    data.available_outter_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [next_parking_lot_id]
    data.next_parking_lot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [previous_parking_lot_id]
    data.previous_parking_lot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left_extended_distance]
    data.left_extended_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_extended_distance]
    data.right_extended_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += perception_interface_msgs.msg.Polygon3f.getMessageSize(object.parking_lot_position);
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/TraversedParkingLot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99833757c467c39052e43667a23c3f17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TraversedParkingLot(null);
    if (msg.parking_lot_id !== undefined) {
      resolved.parking_lot_id = msg.parking_lot_id;
    }
    else {
      resolved.parking_lot_id = 0
    }

    if (msg.parking_lot_position !== undefined) {
      resolved.parking_lot_position = perception_interface_msgs.msg.Polygon3f.Resolve(msg.parking_lot_position)
    }
    else {
      resolved.parking_lot_position = new perception_interface_msgs.msg.Polygon3f()
    }

    if (msg.parking_lot_center !== undefined) {
      resolved.parking_lot_center = perception_interface_msgs.msg.Point3f.Resolve(msg.parking_lot_center)
    }
    else {
      resolved.parking_lot_center = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.parking_lot_entrance_center !== undefined) {
      resolved.parking_lot_entrance_center = perception_interface_msgs.msg.Point3f.Resolve(msg.parking_lot_entrance_center)
    }
    else {
      resolved.parking_lot_entrance_center = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.available_inner_width !== undefined) {
      resolved.available_inner_width = msg.available_inner_width;
    }
    else {
      resolved.available_inner_width = 0.0
    }

    if (msg.available_outter_width !== undefined) {
      resolved.available_outter_width = msg.available_outter_width;
    }
    else {
      resolved.available_outter_width = 0.0
    }

    if (msg.next_parking_lot_id !== undefined) {
      resolved.next_parking_lot_id = msg.next_parking_lot_id;
    }
    else {
      resolved.next_parking_lot_id = 0
    }

    if (msg.previous_parking_lot_id !== undefined) {
      resolved.previous_parking_lot_id = msg.previous_parking_lot_id;
    }
    else {
      resolved.previous_parking_lot_id = 0
    }

    if (msg.left_extended_distance !== undefined) {
      resolved.left_extended_distance = msg.left_extended_distance;
    }
    else {
      resolved.left_extended_distance = 0.0
    }

    if (msg.right_extended_distance !== undefined) {
      resolved.right_extended_distance = msg.right_extended_distance;
    }
    else {
      resolved.right_extended_distance = 0.0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = TraversedParkingLot;
