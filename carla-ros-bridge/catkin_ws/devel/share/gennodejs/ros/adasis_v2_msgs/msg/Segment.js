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

class Segment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cyclic_counter = null;
      this.is_retransmission = null;
      this.path_index = null;
      this.offset = null;
      this.is_update = null;
      this.functional_road_class = null;
      this.form_of_way = null;
      this.effective_speed_limit = null;
      this.effective_speed_limit_type = null;
      this.lanes_num_of_driving_dir = null;
      this.lanes_num_of_opposite_dir = null;
      this.tunnel = null;
      this.bridge = null;
      this.divided_road = null;
      this.built_up_area = null;
      this.complex_intersection = null;
      this.relative_probability = null;
      this.part_of_calculated_route = null;
      this.reserved = null;
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
      if (initObj.hasOwnProperty('effective_speed_limit')) {
        this.effective_speed_limit = initObj.effective_speed_limit
      }
      else {
        this.effective_speed_limit = 0;
      }
      if (initObj.hasOwnProperty('effective_speed_limit_type')) {
        this.effective_speed_limit_type = initObj.effective_speed_limit_type
      }
      else {
        this.effective_speed_limit_type = 0;
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
      if (initObj.hasOwnProperty('tunnel')) {
        this.tunnel = initObj.tunnel
      }
      else {
        this.tunnel = 0;
      }
      if (initObj.hasOwnProperty('bridge')) {
        this.bridge = initObj.bridge
      }
      else {
        this.bridge = 0;
      }
      if (initObj.hasOwnProperty('divided_road')) {
        this.divided_road = initObj.divided_road
      }
      else {
        this.divided_road = 0;
      }
      if (initObj.hasOwnProperty('built_up_area')) {
        this.built_up_area = initObj.built_up_area
      }
      else {
        this.built_up_area = 0;
      }
      if (initObj.hasOwnProperty('complex_intersection')) {
        this.complex_intersection = initObj.complex_intersection
      }
      else {
        this.complex_intersection = 0;
      }
      if (initObj.hasOwnProperty('relative_probability')) {
        this.relative_probability = initObj.relative_probability
      }
      else {
        this.relative_probability = 0;
      }
      if (initObj.hasOwnProperty('part_of_calculated_route')) {
        this.part_of_calculated_route = initObj.part_of_calculated_route
      }
      else {
        this.part_of_calculated_route = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segment
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
    // Serialize message field [functional_road_class]
    bufferOffset = _serializer.uint8(obj.functional_road_class, buffer, bufferOffset);
    // Serialize message field [form_of_way]
    bufferOffset = _serializer.uint8(obj.form_of_way, buffer, bufferOffset);
    // Serialize message field [effective_speed_limit]
    bufferOffset = _serializer.uint8(obj.effective_speed_limit, buffer, bufferOffset);
    // Serialize message field [effective_speed_limit_type]
    bufferOffset = _serializer.uint8(obj.effective_speed_limit_type, buffer, bufferOffset);
    // Serialize message field [lanes_num_of_driving_dir]
    bufferOffset = _serializer.uint8(obj.lanes_num_of_driving_dir, buffer, bufferOffset);
    // Serialize message field [lanes_num_of_opposite_dir]
    bufferOffset = _serializer.uint8(obj.lanes_num_of_opposite_dir, buffer, bufferOffset);
    // Serialize message field [tunnel]
    bufferOffset = _serializer.uint8(obj.tunnel, buffer, bufferOffset);
    // Serialize message field [bridge]
    bufferOffset = _serializer.uint8(obj.bridge, buffer, bufferOffset);
    // Serialize message field [divided_road]
    bufferOffset = _serializer.uint8(obj.divided_road, buffer, bufferOffset);
    // Serialize message field [built_up_area]
    bufferOffset = _serializer.uint8(obj.built_up_area, buffer, bufferOffset);
    // Serialize message field [complex_intersection]
    bufferOffset = _serializer.uint8(obj.complex_intersection, buffer, bufferOffset);
    // Serialize message field [relative_probability]
    bufferOffset = _serializer.uint8(obj.relative_probability, buffer, bufferOffset);
    // Serialize message field [part_of_calculated_route]
    bufferOffset = _serializer.uint8(obj.part_of_calculated_route, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segment
    let len;
    let data = new Segment(null);
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
    // Deserialize message field [functional_road_class]
    data.functional_road_class = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [form_of_way]
    data.form_of_way = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [effective_speed_limit]
    data.effective_speed_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [effective_speed_limit_type]
    data.effective_speed_limit_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanes_num_of_driving_dir]
    data.lanes_num_of_driving_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanes_num_of_opposite_dir]
    data.lanes_num_of_opposite_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tunnel]
    data.tunnel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bridge]
    data.bridge = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [divided_road]
    data.divided_road = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [built_up_area]
    data.built_up_area = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [complex_intersection]
    data.complex_intersection = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [relative_probability]
    data.relative_probability = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [part_of_calculated_route]
    data.part_of_calculated_route = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/Segment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '721864ad7aba02e1ec6f73ff17a7fa8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 functional_road_class
    uint8 form_of_way
    uint8 effective_speed_limit
    uint8 effective_speed_limit_type
    uint8 lanes_num_of_driving_dir
    uint8 lanes_num_of_opposite_dir
    uint8 tunnel
    uint8 bridge
    uint8 divided_road
    uint8 built_up_area
    uint8 complex_intersection
    uint8 relative_probability
    uint8 part_of_calculated_route
    uint8 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segment(null);
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

    if (msg.effective_speed_limit !== undefined) {
      resolved.effective_speed_limit = msg.effective_speed_limit;
    }
    else {
      resolved.effective_speed_limit = 0
    }

    if (msg.effective_speed_limit_type !== undefined) {
      resolved.effective_speed_limit_type = msg.effective_speed_limit_type;
    }
    else {
      resolved.effective_speed_limit_type = 0
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

    if (msg.tunnel !== undefined) {
      resolved.tunnel = msg.tunnel;
    }
    else {
      resolved.tunnel = 0
    }

    if (msg.bridge !== undefined) {
      resolved.bridge = msg.bridge;
    }
    else {
      resolved.bridge = 0
    }

    if (msg.divided_road !== undefined) {
      resolved.divided_road = msg.divided_road;
    }
    else {
      resolved.divided_road = 0
    }

    if (msg.built_up_area !== undefined) {
      resolved.built_up_area = msg.built_up_area;
    }
    else {
      resolved.built_up_area = 0
    }

    if (msg.complex_intersection !== undefined) {
      resolved.complex_intersection = msg.complex_intersection;
    }
    else {
      resolved.complex_intersection = 0
    }

    if (msg.relative_probability !== undefined) {
      resolved.relative_probability = msg.relative_probability;
    }
    else {
      resolved.relative_probability = 0
    }

    if (msg.part_of_calculated_route !== undefined) {
      resolved.part_of_calculated_route = msg.part_of_calculated_route;
    }
    else {
      resolved.part_of_calculated_route = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = Segment;
