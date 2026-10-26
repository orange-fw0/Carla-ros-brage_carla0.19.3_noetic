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

class FusionPolygon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.type = null;
      this.const_vel_prob = null;
      this.const_acc_prob = null;
      this.still_prob = null;
      this.coord_turn_prob = null;
      this.position = null;
      this.velocity = null;
      this.accelaration = null;
      this.theta = null;
      this.theta_sigma = null;
      this.omega = null;
      this.omega_sigma = null;
      this.d_omega = null;
      this.d_omega_sigma = null;
      this.sigma_position = null;
      this.sigma_velocity = null;
      this.relative_position = null;
      this.relative_velocity = null;
      this.relative_accelaration = null;
      this.relative_theta = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.polygon_bottom = null;
      this.polygon_top = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('const_vel_prob')) {
        this.const_vel_prob = initObj.const_vel_prob
      }
      else {
        this.const_vel_prob = 0.0;
      }
      if (initObj.hasOwnProperty('const_acc_prob')) {
        this.const_acc_prob = initObj.const_acc_prob
      }
      else {
        this.const_acc_prob = 0.0;
      }
      if (initObj.hasOwnProperty('still_prob')) {
        this.still_prob = initObj.still_prob
      }
      else {
        this.still_prob = 0.0;
      }
      if (initObj.hasOwnProperty('coord_turn_prob')) {
        this.coord_turn_prob = initObj.coord_turn_prob
      }
      else {
        this.coord_turn_prob = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accelaration')) {
        this.accelaration = initObj.accelaration
      }
      else {
        this.accelaration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('theta_sigma')) {
        this.theta_sigma = initObj.theta_sigma
      }
      else {
        this.theta_sigma = 0.0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0.0;
      }
      if (initObj.hasOwnProperty('omega_sigma')) {
        this.omega_sigma = initObj.omega_sigma
      }
      else {
        this.omega_sigma = 0.0;
      }
      if (initObj.hasOwnProperty('d_omega')) {
        this.d_omega = initObj.d_omega
      }
      else {
        this.d_omega = 0.0;
      }
      if (initObj.hasOwnProperty('d_omega_sigma')) {
        this.d_omega_sigma = initObj.d_omega_sigma
      }
      else {
        this.d_omega_sigma = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_position')) {
        this.sigma_position = initObj.sigma_position
      }
      else {
        this.sigma_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sigma_velocity')) {
        this.sigma_velocity = initObj.sigma_velocity
      }
      else {
        this.sigma_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('relative_position')) {
        this.relative_position = initObj.relative_position
      }
      else {
        this.relative_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('relative_accelaration')) {
        this.relative_accelaration = initObj.relative_accelaration
      }
      else {
        this.relative_accelaration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('relative_theta')) {
        this.relative_theta = initObj.relative_theta
      }
      else {
        this.relative_theta = 0.0;
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
      if (initObj.hasOwnProperty('polygon_bottom')) {
        this.polygon_bottom = initObj.polygon_bottom
      }
      else {
        this.polygon_bottom = [];
      }
      if (initObj.hasOwnProperty('polygon_top')) {
        this.polygon_top = initObj.polygon_top
      }
      else {
        this.polygon_top = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionPolygon
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [const_vel_prob]
    bufferOffset = _serializer.float32(obj.const_vel_prob, buffer, bufferOffset);
    // Serialize message field [const_acc_prob]
    bufferOffset = _serializer.float32(obj.const_acc_prob, buffer, bufferOffset);
    // Serialize message field [still_prob]
    bufferOffset = _serializer.float32(obj.still_prob, buffer, bufferOffset);
    // Serialize message field [coord_turn_prob]
    bufferOffset = _serializer.float32(obj.coord_turn_prob, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [accelaration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accelaration, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [theta_sigma]
    bufferOffset = _serializer.float32(obj.theta_sigma, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.float32(obj.omega, buffer, bufferOffset);
    // Serialize message field [omega_sigma]
    bufferOffset = _serializer.float32(obj.omega_sigma, buffer, bufferOffset);
    // Serialize message field [d_omega]
    bufferOffset = _serializer.float32(obj.d_omega, buffer, bufferOffset);
    // Serialize message field [d_omega_sigma]
    bufferOffset = _serializer.float32(obj.d_omega_sigma, buffer, bufferOffset);
    // Serialize message field [sigma_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sigma_position, buffer, bufferOffset);
    // Serialize message field [sigma_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sigma_velocity, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [relative_accelaration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.relative_accelaration, buffer, bufferOffset);
    // Serialize message field [relative_theta]
    bufferOffset = _serializer.float32(obj.relative_theta, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [polygon_bottom]
    // Serialize the length for message field [polygon_bottom]
    bufferOffset = _serializer.uint32(obj.polygon_bottom.length, buffer, bufferOffset);
    obj.polygon_bottom.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polygon_top]
    // Serialize the length for message field [polygon_top]
    bufferOffset = _serializer.uint32(obj.polygon_top.length, buffer, bufferOffset);
    obj.polygon_top.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionPolygon
    let len;
    let data = new FusionPolygon(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [const_vel_prob]
    data.const_vel_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [const_acc_prob]
    data.const_acc_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [still_prob]
    data.still_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coord_turn_prob]
    data.coord_turn_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelaration]
    data.accelaration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta_sigma]
    data.theta_sigma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega_sigma]
    data.omega_sigma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d_omega]
    data.d_omega = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d_omega_sigma]
    data.d_omega_sigma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_position]
    data.sigma_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sigma_velocity]
    data.sigma_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_accelaration]
    data.relative_accelaration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_theta]
    data.relative_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [polygon_bottom]
    // Deserialize array length for message field [polygon_bottom]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_bottom = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_bottom[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polygon_top]
    // Deserialize array length for message field [polygon_top]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_top = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_top[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.polygon_bottom.length;
    length += 24 * object.polygon_top.length;
    return length + 268;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/FusionPolygon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ad0d635e605ed8099d63baf144e1363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
    uint32 type
    float32 const_vel_prob
    float32 const_acc_prob
    float32 still_prob
    float32 coord_turn_prob
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 accelaration
    float32 theta
    float32 theta_sigma
    float32 omega
    float32 omega_sigma
    float32 d_omega
    float32 d_omega_sigma
    geometry_msgs/Vector3 sigma_position
    geometry_msgs/Vector3 sigma_velocity
    geometry_msgs/Point relative_position
    geometry_msgs/Vector3 relative_velocity
    geometry_msgs/Vector3 relative_accelaration
    float32 relative_theta
    float32 length
    float32 width
    float32 height
    geometry_msgs/Point[] polygon_bottom
    geometry_msgs/Point[] polygon_top
    
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
    const resolved = new FusionPolygon(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.const_vel_prob !== undefined) {
      resolved.const_vel_prob = msg.const_vel_prob;
    }
    else {
      resolved.const_vel_prob = 0.0
    }

    if (msg.const_acc_prob !== undefined) {
      resolved.const_acc_prob = msg.const_acc_prob;
    }
    else {
      resolved.const_acc_prob = 0.0
    }

    if (msg.still_prob !== undefined) {
      resolved.still_prob = msg.still_prob;
    }
    else {
      resolved.still_prob = 0.0
    }

    if (msg.coord_turn_prob !== undefined) {
      resolved.coord_turn_prob = msg.coord_turn_prob;
    }
    else {
      resolved.coord_turn_prob = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.accelaration !== undefined) {
      resolved.accelaration = geometry_msgs.msg.Vector3.Resolve(msg.accelaration)
    }
    else {
      resolved.accelaration = new geometry_msgs.msg.Vector3()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.theta_sigma !== undefined) {
      resolved.theta_sigma = msg.theta_sigma;
    }
    else {
      resolved.theta_sigma = 0.0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0.0
    }

    if (msg.omega_sigma !== undefined) {
      resolved.omega_sigma = msg.omega_sigma;
    }
    else {
      resolved.omega_sigma = 0.0
    }

    if (msg.d_omega !== undefined) {
      resolved.d_omega = msg.d_omega;
    }
    else {
      resolved.d_omega = 0.0
    }

    if (msg.d_omega_sigma !== undefined) {
      resolved.d_omega_sigma = msg.d_omega_sigma;
    }
    else {
      resolved.d_omega_sigma = 0.0
    }

    if (msg.sigma_position !== undefined) {
      resolved.sigma_position = geometry_msgs.msg.Vector3.Resolve(msg.sigma_position)
    }
    else {
      resolved.sigma_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.sigma_velocity !== undefined) {
      resolved.sigma_velocity = geometry_msgs.msg.Vector3.Resolve(msg.sigma_velocity)
    }
    else {
      resolved.sigma_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.relative_position !== undefined) {
      resolved.relative_position = geometry_msgs.msg.Point.Resolve(msg.relative_position)
    }
    else {
      resolved.relative_position = new geometry_msgs.msg.Point()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = geometry_msgs.msg.Vector3.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.relative_accelaration !== undefined) {
      resolved.relative_accelaration = geometry_msgs.msg.Vector3.Resolve(msg.relative_accelaration)
    }
    else {
      resolved.relative_accelaration = new geometry_msgs.msg.Vector3()
    }

    if (msg.relative_theta !== undefined) {
      resolved.relative_theta = msg.relative_theta;
    }
    else {
      resolved.relative_theta = 0.0
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

    if (msg.polygon_bottom !== undefined) {
      resolved.polygon_bottom = new Array(msg.polygon_bottom.length);
      for (let i = 0; i < resolved.polygon_bottom.length; ++i) {
        resolved.polygon_bottom[i] = geometry_msgs.msg.Point.Resolve(msg.polygon_bottom[i]);
      }
    }
    else {
      resolved.polygon_bottom = []
    }

    if (msg.polygon_top !== undefined) {
      resolved.polygon_top = new Array(msg.polygon_top.length);
      for (let i = 0; i < resolved.polygon_top.length; ++i) {
        resolved.polygon_top[i] = geometry_msgs.msg.Point.Resolve(msg.polygon_top[i]);
      }
    }
    else {
      resolved.polygon_top = []
    }

    return resolved;
    }
};

module.exports = FusionPolygon;
