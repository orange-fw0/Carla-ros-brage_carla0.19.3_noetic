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

class Stub {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cyclic_counter = null;
      this.is_retransmission = null;
      this.path_index = null;
      this.offset = null;
      this.is_update = null;
      this.sub_path_index = null;
      this.turn_angle = null;
      this.relative_probability = null;
      this.functional_road_class = null;
      this.form_of_way = null;
      this.lanes_num_of_driving_dir = null;
      this.lanes_num_of_opposite_dir = null;
      this.complex_intersection = null;
      this.right_of_way = null;
      this.part_of_calculated_route = null;
      this.is_last_stub_at_offset = null;
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
      if (initObj.hasOwnProperty('sub_path_index')) {
        this.sub_path_index = initObj.sub_path_index
      }
      else {
        this.sub_path_index = 0;
      }
      if (initObj.hasOwnProperty('turn_angle')) {
        this.turn_angle = initObj.turn_angle
      }
      else {
        this.turn_angle = 0;
      }
      if (initObj.hasOwnProperty('relative_probability')) {
        this.relative_probability = initObj.relative_probability
      }
      else {
        this.relative_probability = 0;
      }
      if (initObj.hasOwnProperty('functional_road_class')) {
        this.functional_road_class = initObj.functional_road_class
      }
      else {
        this.functional_road_class = 0;
      }
      if (initObj.hasOwnProperty('form_of_way')) {
        this.form_of_way = initObj.form_of_way
      }
      else {
        this.form_of_way = 0;
      }
      if (initObj.hasOwnProperty('lanes_num_of_driving_dir')) {
        this.lanes_num_of_driving_dir = initObj.lanes_num_of_driving_dir
      }
      else {
        this.lanes_num_of_driving_dir = 0;
      }
      if (initObj.hasOwnProperty('lanes_num_of_opposite_dir')) {
        this.lanes_num_of_opposite_dir = initObj.lanes_num_of_opposite_dir
      }
      else {
        this.lanes_num_of_opposite_dir = 0;
      }
      if (initObj.hasOwnProperty('complex_intersection')) {
        this.complex_intersection = initObj.complex_intersection
      }
      else {
        this.complex_intersection = 0;
      }
      if (initObj.hasOwnProperty('right_of_way')) {
        this.right_of_way = initObj.right_of_way
      }
      else {
        this.right_of_way = 0;
      }
      if (initObj.hasOwnProperty('part_of_calculated_route')) {
        this.part_of_calculated_route = initObj.part_of_calculated_route
      }
      else {
        this.part_of_calculated_route = 0;
      }
      if (initObj.hasOwnProperty('is_last_stub_at_offset')) {
        this.is_last_stub_at_offset = initObj.is_last_stub_at_offset
      }
      else {
        this.is_last_stub_at_offset = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stub
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
    // Serialize message field [sub_path_index]
    bufferOffset = _serializer.uint8(obj.sub_path_index, buffer, bufferOffset);
    // Serialize message field [turn_angle]
    bufferOffset = _serializer.uint8(obj.turn_angle, buffer, bufferOffset);
    // Serialize message field [relative_probability]
    bufferOffset = _serializer.uint8(obj.relative_probability, buffer, bufferOffset);
    // Serialize message field [functional_road_class]
    bufferOffset = _serializer.uint8(obj.functional_road_class, buffer, bufferOffset);
    // Serialize message field [form_of_way]
    bufferOffset = _serializer.uint8(obj.form_of_way, buffer, bufferOffset);
    // Serialize message field [lanes_num_of_driving_dir]
    bufferOffset = _serializer.uint8(obj.lanes_num_of_driving_dir, buffer, bufferOffset);
    // Serialize message field [lanes_num_of_opposite_dir]
    bufferOffset = _serializer.uint8(obj.lanes_num_of_opposite_dir, buffer, bufferOffset);
    // Serialize message field [complex_intersection]
    bufferOffset = _serializer.uint8(obj.complex_intersection, buffer, bufferOffset);
    // Serialize message field [right_of_way]
    bufferOffset = _serializer.uint8(obj.right_of_way, buffer, bufferOffset);
    // Serialize message field [part_of_calculated_route]
    bufferOffset = _serializer.uint8(obj.part_of_calculated_route, buffer, bufferOffset);
    // Serialize message field [is_last_stub_at_offset]
    bufferOffset = _serializer.uint8(obj.is_last_stub_at_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stub
    let len;
    let data = new Stub(null);
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
    // Deserialize message field [sub_path_index]
    data.sub_path_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turn_angle]
    data.turn_angle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [relative_probability]
    data.relative_probability = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [functional_road_class]
    data.functional_road_class = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [form_of_way]
    data.form_of_way = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanes_num_of_driving_dir]
    data.lanes_num_of_driving_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanes_num_of_opposite_dir]
    data.lanes_num_of_opposite_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [complex_intersection]
    data.complex_intersection = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_of_way]
    data.right_of_way = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [part_of_calculated_route]
    data.part_of_calculated_route = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_last_stub_at_offset]
    data.is_last_stub_at_offset = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/Stub';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1af69f6c8366879d6dab4dd7cbe1a298';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 sub_path_index
    uint8 turn_angle
    uint8 relative_probability
    uint8 functional_road_class
    uint8 form_of_way
    uint8 lanes_num_of_driving_dir
    uint8 lanes_num_of_opposite_dir
    uint8 complex_intersection
    uint8 right_of_way
    uint8 part_of_calculated_route
    uint8 is_last_stub_at_offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stub(null);
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

    if (msg.sub_path_index !== undefined) {
      resolved.sub_path_index = msg.sub_path_index;
    }
    else {
      resolved.sub_path_index = 0
    }

    if (msg.turn_angle !== undefined) {
      resolved.turn_angle = msg.turn_angle;
    }
    else {
      resolved.turn_angle = 0
    }

    if (msg.relative_probability !== undefined) {
      resolved.relative_probability = msg.relative_probability;
    }
    else {
      resolved.relative_probability = 0
    }

    if (msg.functional_road_class !== undefined) {
      resolved.functional_road_class = msg.functional_road_class;
    }
    else {
      resolved.functional_road_class = 0
    }

    if (msg.form_of_way !== undefined) {
      resolved.form_of_way = msg.form_of_way;
    }
    else {
      resolved.form_of_way = 0
    }

    if (msg.lanes_num_of_driving_dir !== undefined) {
      resolved.lanes_num_of_driving_dir = msg.lanes_num_of_driving_dir;
    }
    else {
      resolved.lanes_num_of_driving_dir = 0
    }

    if (msg.lanes_num_of_opposite_dir !== undefined) {
      resolved.lanes_num_of_opposite_dir = msg.lanes_num_of_opposite_dir;
    }
    else {
      resolved.lanes_num_of_opposite_dir = 0
    }

    if (msg.complex_intersection !== undefined) {
      resolved.complex_intersection = msg.complex_intersection;
    }
    else {
      resolved.complex_intersection = 0
    }

    if (msg.right_of_way !== undefined) {
      resolved.right_of_way = msg.right_of_way;
    }
    else {
      resolved.right_of_way = 0
    }

    if (msg.part_of_calculated_route !== undefined) {
      resolved.part_of_calculated_route = msg.part_of_calculated_route;
    }
    else {
      resolved.part_of_calculated_route = 0
    }

    if (msg.is_last_stub_at_offset !== undefined) {
      resolved.is_last_stub_at_offset = msg.is_last_stub_at_offset;
    }
    else {
      resolved.is_last_stub_at_offset = 0
    }

    return resolved;
    }
};

module.exports = Stub;
