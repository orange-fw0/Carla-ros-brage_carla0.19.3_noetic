// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.det_trunc = null;
      this.position = null;
      this.sigma_position = null;
      this.velocity = null;
      this.sigma_velocity = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.sigma_length = null;
      this.sigma_width = null;
      this.sigma_height = null;
      this.theta = null;
      this.sigma_theta = null;
      this.type = null;
      this.track_times = null;
      this.visibility = null;
      this.back_lamp = null;
      this.det_score = null;
      this.bbox_pts = null;
      this.reid_feature = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('det_trunc')) {
        this.det_trunc = initObj.det_trunc
      }
      else {
        this.det_trunc = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('sigma_position')) {
        this.sigma_position = initObj.sigma_position
      }
      else {
        this.sigma_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sigma_velocity')) {
        this.sigma_velocity = initObj.sigma_velocity
      }
      else {
        this.sigma_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_length')) {
        this.sigma_length = initObj.sigma_length
      }
      else {
        this.sigma_length = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_width')) {
        this.sigma_width = initObj.sigma_width
      }
      else {
        this.sigma_width = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_height')) {
        this.sigma_height = initObj.sigma_height
      }
      else {
        this.sigma_height = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_theta')) {
        this.sigma_theta = initObj.sigma_theta
      }
      else {
        this.sigma_theta = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('track_times')) {
        this.track_times = initObj.track_times
      }
      else {
        this.track_times = 0;
      }
      if (initObj.hasOwnProperty('visibility')) {
        this.visibility = initObj.visibility
      }
      else {
        this.visibility = 0;
      }
      if (initObj.hasOwnProperty('back_lamp')) {
        this.back_lamp = initObj.back_lamp
      }
      else {
        this.back_lamp = 0;
      }
      if (initObj.hasOwnProperty('det_score')) {
        this.det_score = initObj.det_score
      }
      else {
        this.det_score = 0.0;
      }
      if (initObj.hasOwnProperty('bbox_pts')) {
        this.bbox_pts = initObj.bbox_pts
      }
      else {
        this.bbox_pts = [];
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
    // Serializes a message object of type Object
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [det_trunc]
    bufferOffset = _serializer.int32(obj.det_trunc, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [sigma_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sigma_position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [sigma_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sigma_velocity, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [sigma_length]
    bufferOffset = _serializer.float32(obj.sigma_length, buffer, bufferOffset);
    // Serialize message field [sigma_width]
    bufferOffset = _serializer.float32(obj.sigma_width, buffer, bufferOffset);
    // Serialize message field [sigma_height]
    bufferOffset = _serializer.float32(obj.sigma_height, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [sigma_theta]
    bufferOffset = _serializer.float32(obj.sigma_theta, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [track_times]
    bufferOffset = _serializer.uint64(obj.track_times, buffer, bufferOffset);
    // Serialize message field [visibility]
    bufferOffset = _serializer.int32(obj.visibility, buffer, bufferOffset);
    // Serialize message field [back_lamp]
    bufferOffset = _serializer.int32(obj.back_lamp, buffer, bufferOffset);
    // Serialize message field [det_score]
    bufferOffset = _serializer.float32(obj.det_score, buffer, bufferOffset);
    // Serialize message field [bbox_pts]
    bufferOffset = _arraySerializer.int32(obj.bbox_pts, buffer, bufferOffset, null);
    // Serialize message field [reid_feature]
    bufferOffset = _arraySerializer.float32(obj.reid_feature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [det_trunc]
    data.det_trunc = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [sigma_position]
    data.sigma_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sigma_velocity]
    data.sigma_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_length]
    data.sigma_length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_width]
    data.sigma_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_height]
    data.sigma_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_theta]
    data.sigma_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track_times]
    data.track_times = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [visibility]
    data.visibility = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_lamp]
    data.back_lamp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [det_score]
    data.det_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bbox_pts]
    data.bbox_pts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [reid_feature]
    data.reid_feature = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.bbox_pts.length;
    length += 4 * object.reid_feature.length;
    return length + 172;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef54b0b3b22f969ed9a8987b9425a2ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
    int32 det_trunc
    geometry_msgs/Point position
    geometry_msgs/Vector3 sigma_position
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 sigma_velocity
    float32 length
    float32 width
    float32 height
    float32 sigma_length
    float32 sigma_width
    float32 sigma_height
    float32 theta
    float32 sigma_theta
    uint32 type
    uint64 track_times
    int32 visibility
    int32 back_lamp
    float32 det_score
    int32[] bbox_pts
    float32[] reid_feature
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.det_trunc !== undefined) {
      resolved.det_trunc = msg.det_trunc;
    }
    else {
      resolved.det_trunc = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.sigma_position !== undefined) {
      resolved.sigma_position = geometry_msgs.msg.Vector3.Resolve(msg.sigma_position)
    }
    else {
      resolved.sigma_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.sigma_velocity !== undefined) {
      resolved.sigma_velocity = geometry_msgs.msg.Vector3.Resolve(msg.sigma_velocity)
    }
    else {
      resolved.sigma_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.sigma_length !== undefined) {
      resolved.sigma_length = msg.sigma_length;
    }
    else {
      resolved.sigma_length = 0.0
    }

    if (msg.sigma_width !== undefined) {
      resolved.sigma_width = msg.sigma_width;
    }
    else {
      resolved.sigma_width = 0.0
    }

    if (msg.sigma_height !== undefined) {
      resolved.sigma_height = msg.sigma_height;
    }
    else {
      resolved.sigma_height = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.sigma_theta !== undefined) {
      resolved.sigma_theta = msg.sigma_theta;
    }
    else {
      resolved.sigma_theta = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.track_times !== undefined) {
      resolved.track_times = msg.track_times;
    }
    else {
      resolved.track_times = 0
    }

    if (msg.visibility !== undefined) {
      resolved.visibility = msg.visibility;
    }
    else {
      resolved.visibility = 0
    }

    if (msg.back_lamp !== undefined) {
      resolved.back_lamp = msg.back_lamp;
    }
    else {
      resolved.back_lamp = 0
    }

    if (msg.det_score !== undefined) {
      resolved.det_score = msg.det_score;
    }
    else {
      resolved.det_score = 0.0
    }

    if (msg.bbox_pts !== undefined) {
      resolved.bbox_pts = msg.bbox_pts;
    }
    else {
      resolved.bbox_pts = []
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

module.exports = Object;
