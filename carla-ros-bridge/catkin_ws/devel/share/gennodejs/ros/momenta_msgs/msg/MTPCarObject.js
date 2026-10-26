// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MTPCarObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.left = null;
      this.top = null;
      this.right = null;
      this.bottom = null;
      this.score = null;
      this.visibility = null;
      this.wheels_position_x = null;
      this.wheels_position_y = null;
      this.wheels_visibility = null;
      this.wheels_count = null;
      this.pillars_position_x = null;
      this.pillars_visibility = null;
      this.pillars_count = null;
      this.heading = null;
      this.track_id = null;
      this.track_times = null;
      this.live = null;
      this.angle_yaw = null;
      this.backlamp = null;
      this.type = null;
      this.reid_feature_length = null;
      this.reid_feature = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0.0;
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0.0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0.0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = 0.0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('visibility')) {
        this.visibility = initObj.visibility
      }
      else {
        this.visibility = 0;
      }
      if (initObj.hasOwnProperty('wheels_position_x')) {
        this.wheels_position_x = initObj.wheels_position_x
      }
      else {
        this.wheels_position_x = [];
      }
      if (initObj.hasOwnProperty('wheels_position_y')) {
        this.wheels_position_y = initObj.wheels_position_y
      }
      else {
        this.wheels_position_y = [];
      }
      if (initObj.hasOwnProperty('wheels_visibility')) {
        this.wheels_visibility = initObj.wheels_visibility
      }
      else {
        this.wheels_visibility = [];
      }
      if (initObj.hasOwnProperty('wheels_count')) {
        this.wheels_count = initObj.wheels_count
      }
      else {
        this.wheels_count = 0;
      }
      if (initObj.hasOwnProperty('pillars_position_x')) {
        this.pillars_position_x = initObj.pillars_position_x
      }
      else {
        this.pillars_position_x = [];
      }
      if (initObj.hasOwnProperty('pillars_visibility')) {
        this.pillars_visibility = initObj.pillars_visibility
      }
      else {
        this.pillars_visibility = [];
      }
      if (initObj.hasOwnProperty('pillars_count')) {
        this.pillars_count = initObj.pillars_count
      }
      else {
        this.pillars_count = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('track_times')) {
        this.track_times = initObj.track_times
      }
      else {
        this.track_times = 0;
      }
      if (initObj.hasOwnProperty('live')) {
        this.live = initObj.live
      }
      else {
        this.live = 0;
      }
      if (initObj.hasOwnProperty('angle_yaw')) {
        this.angle_yaw = initObj.angle_yaw
      }
      else {
        this.angle_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('backlamp')) {
        this.backlamp = initObj.backlamp
      }
      else {
        this.backlamp = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('reid_feature_length')) {
        this.reid_feature_length = initObj.reid_feature_length
      }
      else {
        this.reid_feature_length = 0;
      }
      if (initObj.hasOwnProperty('reid_feature')) {
        this.reid_feature = initObj.reid_feature
      }
      else {
        this.reid_feature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MTPCarObject
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.float32(obj.left, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.float32(obj.top, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.float32(obj.right, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _serializer.float32(obj.bottom, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [visibility]
    bufferOffset = _serializer.int32(obj.visibility, buffer, bufferOffset);
    // Serialize message field [wheels_position_x]
    bufferOffset = _arraySerializer.float32(obj.wheels_position_x, buffer, bufferOffset, null);
    // Serialize message field [wheels_position_y]
    bufferOffset = _arraySerializer.float32(obj.wheels_position_y, buffer, bufferOffset, null);
    // Serialize message field [wheels_visibility]
    bufferOffset = _arraySerializer.float32(obj.wheels_visibility, buffer, bufferOffset, null);
    // Serialize message field [wheels_count]
    bufferOffset = _serializer.int32(obj.wheels_count, buffer, bufferOffset);
    // Serialize message field [pillars_position_x]
    bufferOffset = _arraySerializer.float32(obj.pillars_position_x, buffer, bufferOffset, null);
    // Serialize message field [pillars_visibility]
    bufferOffset = _arraySerializer.float32(obj.pillars_visibility, buffer, bufferOffset, null);
    // Serialize message field [pillars_count]
    bufferOffset = _serializer.int32(obj.pillars_count, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.uint32(obj.heading, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [track_times]
    bufferOffset = _serializer.uint64(obj.track_times, buffer, bufferOffset);
    // Serialize message field [live]
    bufferOffset = _serializer.int32(obj.live, buffer, bufferOffset);
    // Serialize message field [angle_yaw]
    bufferOffset = _serializer.float32(obj.angle_yaw, buffer, bufferOffset);
    // Serialize message field [backlamp]
    bufferOffset = _serializer.uint32(obj.backlamp, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [reid_feature_length]
    bufferOffset = _serializer.uint32(obj.reid_feature_length, buffer, bufferOffset);
    // Serialize message field [reid_feature]
    bufferOffset = _arraySerializer.float32(obj.reid_feature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MTPCarObject
    let len;
    let data = new MTPCarObject(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [visibility]
    data.visibility = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheels_position_x]
    data.wheels_position_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheels_position_y]
    data.wheels_position_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheels_visibility]
    data.wheels_visibility = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheels_count]
    data.wheels_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pillars_position_x]
    data.pillars_position_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pillars_visibility]
    data.pillars_visibility = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pillars_count]
    data.pillars_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [track_times]
    data.track_times = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [live]
    data.live = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle_yaw]
    data.angle_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backlamp]
    data.backlamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reid_feature_length]
    data.reid_feature_length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reid_feature]
    data.reid_feature = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.wheels_position_x.length;
    length += 4 * object.wheels_position_y.length;
    length += 4 * object.wheels_visibility.length;
    length += 4 * object.pillars_position_x.length;
    length += 4 * object.pillars_visibility.length;
    length += 4 * object.reid_feature.length;
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MTPCarObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77a423611d04ca20ceb99fc7f5d80ce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 available
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    int32 visibility
    float32[] wheels_position_x
    float32[] wheels_position_y
    float32[] wheels_visibility
    int32 wheels_count
    float32[] pillars_position_x
    float32[] pillars_visibility
    int32 pillars_count
    uint32 heading
    uint64 track_id
    uint64 track_times
    int32 live
    float32 angle_yaw
    uint32 backlamp
    uint32 type
    uint32 reid_feature_length
    float32[] reid_feature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MTPCarObject(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0.0
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0.0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0.0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = 0.0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.visibility !== undefined) {
      resolved.visibility = msg.visibility;
    }
    else {
      resolved.visibility = 0
    }

    if (msg.wheels_position_x !== undefined) {
      resolved.wheels_position_x = msg.wheels_position_x;
    }
    else {
      resolved.wheels_position_x = []
    }

    if (msg.wheels_position_y !== undefined) {
      resolved.wheels_position_y = msg.wheels_position_y;
    }
    else {
      resolved.wheels_position_y = []
    }

    if (msg.wheels_visibility !== undefined) {
      resolved.wheels_visibility = msg.wheels_visibility;
    }
    else {
      resolved.wheels_visibility = []
    }

    if (msg.wheels_count !== undefined) {
      resolved.wheels_count = msg.wheels_count;
    }
    else {
      resolved.wheels_count = 0
    }

    if (msg.pillars_position_x !== undefined) {
      resolved.pillars_position_x = msg.pillars_position_x;
    }
    else {
      resolved.pillars_position_x = []
    }

    if (msg.pillars_visibility !== undefined) {
      resolved.pillars_visibility = msg.pillars_visibility;
    }
    else {
      resolved.pillars_visibility = []
    }

    if (msg.pillars_count !== undefined) {
      resolved.pillars_count = msg.pillars_count;
    }
    else {
      resolved.pillars_count = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.track_times !== undefined) {
      resolved.track_times = msg.track_times;
    }
    else {
      resolved.track_times = 0
    }

    if (msg.live !== undefined) {
      resolved.live = msg.live;
    }
    else {
      resolved.live = 0
    }

    if (msg.angle_yaw !== undefined) {
      resolved.angle_yaw = msg.angle_yaw;
    }
    else {
      resolved.angle_yaw = 0.0
    }

    if (msg.backlamp !== undefined) {
      resolved.backlamp = msg.backlamp;
    }
    else {
      resolved.backlamp = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.reid_feature_length !== undefined) {
      resolved.reid_feature_length = msg.reid_feature_length;
    }
    else {
      resolved.reid_feature_length = 0
    }

    if (msg.reid_feature !== undefined) {
      resolved.reid_feature = msg.reid_feature;
    }
    else {
      resolved.reid_feature = []
    }

    return resolved;
    }
};

module.exports = MTPCarObject;
