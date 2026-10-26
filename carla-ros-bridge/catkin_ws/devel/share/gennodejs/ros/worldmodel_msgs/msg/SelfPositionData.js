// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SelfPositionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in_map_area = null;
      this.in_intersection = null;
      this.on_ramp = null;
      this.current_parking_slot_id = null;
    }
    else {
      if (initObj.hasOwnProperty('in_map_area')) {
        this.in_map_area = initObj.in_map_area
      }
      else {
        this.in_map_area = false;
      }
      if (initObj.hasOwnProperty('in_intersection')) {
        this.in_intersection = initObj.in_intersection
      }
      else {
        this.in_intersection = false;
      }
      if (initObj.hasOwnProperty('on_ramp')) {
        this.on_ramp = initObj.on_ramp
      }
      else {
        this.on_ramp = false;
      }
      if (initObj.hasOwnProperty('current_parking_slot_id')) {
        this.current_parking_slot_id = initObj.current_parking_slot_id
      }
      else {
        this.current_parking_slot_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SelfPositionData
    // Serialize message field [in_map_area]
    bufferOffset = _serializer.bool(obj.in_map_area, buffer, bufferOffset);
    // Serialize message field [in_intersection]
    bufferOffset = _serializer.bool(obj.in_intersection, buffer, bufferOffset);
    // Serialize message field [on_ramp]
    bufferOffset = _serializer.bool(obj.on_ramp, buffer, bufferOffset);
    // Serialize message field [current_parking_slot_id]
    bufferOffset = _serializer.int32(obj.current_parking_slot_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SelfPositionData
    let len;
    let data = new SelfPositionData(null);
    // Deserialize message field [in_map_area]
    data.in_map_area = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_intersection]
    data.in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [on_ramp]
    data.on_ramp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_parking_slot_id]
    data.current_parking_slot_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/SelfPositionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec8531ae295755dd5b30c71eca0c224';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool in_map_area
    bool in_intersection
    bool on_ramp
    int32 current_parking_slot_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SelfPositionData(null);
    if (msg.in_map_area !== undefined) {
      resolved.in_map_area = msg.in_map_area;
    }
    else {
      resolved.in_map_area = false
    }

    if (msg.in_intersection !== undefined) {
      resolved.in_intersection = msg.in_intersection;
    }
    else {
      resolved.in_intersection = false
    }

    if (msg.on_ramp !== undefined) {
      resolved.on_ramp = msg.on_ramp;
    }
    else {
      resolved.on_ramp = false
    }

    if (msg.current_parking_slot_id !== undefined) {
      resolved.current_parking_slot_id = msg.current_parking_slot_id;
    }
    else {
      resolved.current_parking_slot_id = 0
    }

    return resolved;
    }
};

module.exports = SelfPositionData;
