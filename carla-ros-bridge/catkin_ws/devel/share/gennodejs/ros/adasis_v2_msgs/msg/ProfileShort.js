// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProfileShort {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cyclic_counter = null;
      this.is_retransmission = null;
      this.path_index = null;
      this.offset = null;
      this.is_update = null;
      this.profile_type = null;
      this.is_control_point = null;
      this.value_0 = null;
      this.distance_1 = null;
      this.value_1 = null;
      this.accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('cyclic_counter')) {
        this.cyclic_counter = initObj.cyclic_counter
      }
      else {
        this.cyclic_counter = 0;
      }
      if (initObj.hasOwnProperty('is_retransmission')) {
        this.is_retransmission = initObj.is_retransmission
      }
      else {
        this.is_retransmission = 0;
      }
      if (initObj.hasOwnProperty('path_index')) {
        this.path_index = initObj.path_index
      }
      else {
        this.path_index = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('is_update')) {
        this.is_update = initObj.is_update
      }
      else {
        this.is_update = 0;
      }
      if (initObj.hasOwnProperty('profile_type')) {
        this.profile_type = initObj.profile_type
      }
      else {
        this.profile_type = 0;
      }
      if (initObj.hasOwnProperty('is_control_point')) {
        this.is_control_point = initObj.is_control_point
      }
      else {
        this.is_control_point = 0;
      }
      if (initObj.hasOwnProperty('value_0')) {
        this.value_0 = initObj.value_0
      }
      else {
        this.value_0 = 0;
      }
      if (initObj.hasOwnProperty('distance_1')) {
        this.distance_1 = initObj.distance_1
      }
      else {
        this.distance_1 = 0;
      }
      if (initObj.hasOwnProperty('value_1')) {
        this.value_1 = initObj.value_1
      }
      else {
        this.value_1 = 0;
      }
      if (initObj.hasOwnProperty('accuracy')) {
        this.accuracy = initObj.accuracy
      }
      else {
        this.accuracy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProfileShort
    // Serialize message field [cyclic_counter]
    bufferOffset = _serializer.uint8(obj.cyclic_counter, buffer, bufferOffset);
    // Serialize message field [is_retransmission]
    bufferOffset = _serializer.uint8(obj.is_retransmission, buffer, bufferOffset);
    // Serialize message field [path_index]
    bufferOffset = _serializer.uint8(obj.path_index, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.uint16(obj.offset, buffer, bufferOffset);
    // Serialize message field [is_update]
    bufferOffset = _serializer.uint8(obj.is_update, buffer, bufferOffset);
    // Serialize message field [profile_type]
    bufferOffset = _serializer.uint8(obj.profile_type, buffer, bufferOffset);
    // Serialize message field [is_control_point]
    bufferOffset = _serializer.uint8(obj.is_control_point, buffer, bufferOffset);
    // Serialize message field [value_0]
    bufferOffset = _serializer.uint16(obj.value_0, buffer, bufferOffset);
    // Serialize message field [distance_1]
    bufferOffset = _serializer.uint16(obj.distance_1, buffer, bufferOffset);
    // Serialize message field [value_1]
    bufferOffset = _serializer.uint16(obj.value_1, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = _serializer.uint8(obj.accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProfileShort
    let len;
    let data = new ProfileShort(null);
    // Deserialize message field [cyclic_counter]
    data.cyclic_counter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_retransmission]
    data.is_retransmission = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_index]
    data.path_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [is_update]
    data.is_update = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [profile_type]
    data.profile_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_control_point]
    data.is_control_point = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value_0]
    data.value_0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distance_1]
    data.distance_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [value_1]
    data.value_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/ProfileShort';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f584934032a4b5c391f83031d8a144af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 profile_type
    uint8 is_control_point
    uint16 value_0
    uint16 distance_1
    uint16 value_1
    uint8 accuracy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProfileShort(null);
    if (msg.cyclic_counter !== undefined) {
      resolved.cyclic_counter = msg.cyclic_counter;
    }
    else {
      resolved.cyclic_counter = 0
    }

    if (msg.is_retransmission !== undefined) {
      resolved.is_retransmission = msg.is_retransmission;
    }
    else {
      resolved.is_retransmission = 0
    }

    if (msg.path_index !== undefined) {
      resolved.path_index = msg.path_index;
    }
    else {
      resolved.path_index = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.is_update !== undefined) {
      resolved.is_update = msg.is_update;
    }
    else {
      resolved.is_update = 0
    }

    if (msg.profile_type !== undefined) {
      resolved.profile_type = msg.profile_type;
    }
    else {
      resolved.profile_type = 0
    }

    if (msg.is_control_point !== undefined) {
      resolved.is_control_point = msg.is_control_point;
    }
    else {
      resolved.is_control_point = 0
    }

    if (msg.value_0 !== undefined) {
      resolved.value_0 = msg.value_0;
    }
    else {
      resolved.value_0 = 0
    }

    if (msg.distance_1 !== undefined) {
      resolved.distance_1 = msg.distance_1;
    }
    else {
      resolved.distance_1 = 0
    }

    if (msg.value_1 !== undefined) {
      resolved.value_1 = msg.value_1;
    }
    else {
      resolved.value_1 = 0
    }

    if (msg.accuracy !== undefined) {
      resolved.accuracy = msg.accuracy;
    }
    else {
      resolved.accuracy = 0
    }

    return resolved;
    }
};

module.exports = ProfileShort;
