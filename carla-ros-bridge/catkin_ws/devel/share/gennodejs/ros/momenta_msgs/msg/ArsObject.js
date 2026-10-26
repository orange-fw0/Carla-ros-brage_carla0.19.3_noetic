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

class ArsObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detection_id = null;
      this.position = null;
      this.velocity = null;
      this.dyn_prop = null;
      this.rcs = null;
      this.dislong_rms = null;
      this.dislat_rms = null;
      this.verllong_rms = null;
      this.verllat_rms = null;
      this.arellong_rms = null;
      this.arellat_rms = null;
      this.orientation_rms = null;
      this.meas_state = null;
      this.probofexist = null;
      this.are_long = null;
      this.obj_class = null;
      this.are_lat = null;
      this.orientation_angle = null;
      this.length = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('detection_id')) {
        this.detection_id = initObj.detection_id
      }
      else {
        this.detection_id = 0;
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
      if (initObj.hasOwnProperty('dyn_prop')) {
        this.dyn_prop = initObj.dyn_prop
      }
      else {
        this.dyn_prop = 0;
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('dislong_rms')) {
        this.dislong_rms = initObj.dislong_rms
      }
      else {
        this.dislong_rms = 0;
      }
      if (initObj.hasOwnProperty('dislat_rms')) {
        this.dislat_rms = initObj.dislat_rms
      }
      else {
        this.dislat_rms = 0;
      }
      if (initObj.hasOwnProperty('verllong_rms')) {
        this.verllong_rms = initObj.verllong_rms
      }
      else {
        this.verllong_rms = 0;
      }
      if (initObj.hasOwnProperty('verllat_rms')) {
        this.verllat_rms = initObj.verllat_rms
      }
      else {
        this.verllat_rms = 0;
      }
      if (initObj.hasOwnProperty('arellong_rms')) {
        this.arellong_rms = initObj.arellong_rms
      }
      else {
        this.arellong_rms = 0;
      }
      if (initObj.hasOwnProperty('arellat_rms')) {
        this.arellat_rms = initObj.arellat_rms
      }
      else {
        this.arellat_rms = 0;
      }
      if (initObj.hasOwnProperty('orientation_rms')) {
        this.orientation_rms = initObj.orientation_rms
      }
      else {
        this.orientation_rms = 0;
      }
      if (initObj.hasOwnProperty('meas_state')) {
        this.meas_state = initObj.meas_state
      }
      else {
        this.meas_state = 0;
      }
      if (initObj.hasOwnProperty('probofexist')) {
        this.probofexist = initObj.probofexist
      }
      else {
        this.probofexist = 0;
      }
      if (initObj.hasOwnProperty('are_long')) {
        this.are_long = initObj.are_long
      }
      else {
        this.are_long = 0.0;
      }
      if (initObj.hasOwnProperty('obj_class')) {
        this.obj_class = initObj.obj_class
      }
      else {
        this.obj_class = 0;
      }
      if (initObj.hasOwnProperty('are_lat')) {
        this.are_lat = initObj.are_lat
      }
      else {
        this.are_lat = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_angle')) {
        this.orientation_angle = initObj.orientation_angle
      }
      else {
        this.orientation_angle = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArsObject
    // Serialize message field [detection_id]
    bufferOffset = _serializer.uint16(obj.detection_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [dyn_prop]
    bufferOffset = _serializer.uint8(obj.dyn_prop, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    // Serialize message field [dislong_rms]
    bufferOffset = _serializer.uint8(obj.dislong_rms, buffer, bufferOffset);
    // Serialize message field [dislat_rms]
    bufferOffset = _serializer.uint8(obj.dislat_rms, buffer, bufferOffset);
    // Serialize message field [verllong_rms]
    bufferOffset = _serializer.uint8(obj.verllong_rms, buffer, bufferOffset);
    // Serialize message field [verllat_rms]
    bufferOffset = _serializer.uint8(obj.verllat_rms, buffer, bufferOffset);
    // Serialize message field [arellong_rms]
    bufferOffset = _serializer.uint8(obj.arellong_rms, buffer, bufferOffset);
    // Serialize message field [arellat_rms]
    bufferOffset = _serializer.uint8(obj.arellat_rms, buffer, bufferOffset);
    // Serialize message field [orientation_rms]
    bufferOffset = _serializer.uint8(obj.orientation_rms, buffer, bufferOffset);
    // Serialize message field [meas_state]
    bufferOffset = _serializer.uint8(obj.meas_state, buffer, bufferOffset);
    // Serialize message field [probofexist]
    bufferOffset = _serializer.uint8(obj.probofexist, buffer, bufferOffset);
    // Serialize message field [are_long]
    bufferOffset = _serializer.float32(obj.are_long, buffer, bufferOffset);
    // Serialize message field [obj_class]
    bufferOffset = _serializer.uint8(obj.obj_class, buffer, bufferOffset);
    // Serialize message field [are_lat]
    bufferOffset = _serializer.float32(obj.are_lat, buffer, bufferOffset);
    // Serialize message field [orientation_angle]
    bufferOffset = _serializer.float32(obj.orientation_angle, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArsObject
    let len;
    let data = new ArsObject(null);
    // Deserialize message field [detection_id]
    data.detection_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dyn_prop]
    data.dyn_prop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dislong_rms]
    data.dislong_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dislat_rms]
    data.dislat_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [verllong_rms]
    data.verllong_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [verllat_rms]
    data.verllat_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [arellong_rms]
    data.arellong_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [arellat_rms]
    data.arellat_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [orientation_rms]
    data.orientation_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meas_state]
    data.meas_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [probofexist]
    data.probofexist = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [are_long]
    data.are_long = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_class]
    data.obj_class = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [are_lat]
    data.are_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation_angle]
    data.orientation_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 85;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/ArsObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64d99256889fd984c50365eb36bd8884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 detection_id
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    uint8 dyn_prop
    float32 rcs
    uint8 dislong_rms
    uint8 dislat_rms
    uint8 verllong_rms
    uint8 verllat_rms
    uint8 arellong_rms
    uint8 arellat_rms
    uint8 orientation_rms
    uint8 meas_state
    uint8 probofexist
    float32 are_long
    uint8 obj_class
    float32 are_lat
    float32 orientation_angle
    float32 length
    float32 width
    
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
    const resolved = new ArsObject(null);
    if (msg.detection_id !== undefined) {
      resolved.detection_id = msg.detection_id;
    }
    else {
      resolved.detection_id = 0
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

    if (msg.dyn_prop !== undefined) {
      resolved.dyn_prop = msg.dyn_prop;
    }
    else {
      resolved.dyn_prop = 0
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.dislong_rms !== undefined) {
      resolved.dislong_rms = msg.dislong_rms;
    }
    else {
      resolved.dislong_rms = 0
    }

    if (msg.dislat_rms !== undefined) {
      resolved.dislat_rms = msg.dislat_rms;
    }
    else {
      resolved.dislat_rms = 0
    }

    if (msg.verllong_rms !== undefined) {
      resolved.verllong_rms = msg.verllong_rms;
    }
    else {
      resolved.verllong_rms = 0
    }

    if (msg.verllat_rms !== undefined) {
      resolved.verllat_rms = msg.verllat_rms;
    }
    else {
      resolved.verllat_rms = 0
    }

    if (msg.arellong_rms !== undefined) {
      resolved.arellong_rms = msg.arellong_rms;
    }
    else {
      resolved.arellong_rms = 0
    }

    if (msg.arellat_rms !== undefined) {
      resolved.arellat_rms = msg.arellat_rms;
    }
    else {
      resolved.arellat_rms = 0
    }

    if (msg.orientation_rms !== undefined) {
      resolved.orientation_rms = msg.orientation_rms;
    }
    else {
      resolved.orientation_rms = 0
    }

    if (msg.meas_state !== undefined) {
      resolved.meas_state = msg.meas_state;
    }
    else {
      resolved.meas_state = 0
    }

    if (msg.probofexist !== undefined) {
      resolved.probofexist = msg.probofexist;
    }
    else {
      resolved.probofexist = 0
    }

    if (msg.are_long !== undefined) {
      resolved.are_long = msg.are_long;
    }
    else {
      resolved.are_long = 0.0
    }

    if (msg.obj_class !== undefined) {
      resolved.obj_class = msg.obj_class;
    }
    else {
      resolved.obj_class = 0
    }

    if (msg.are_lat !== undefined) {
      resolved.are_lat = msg.are_lat;
    }
    else {
      resolved.are_lat = 0.0
    }

    if (msg.orientation_angle !== undefined) {
      resolved.orientation_angle = msg.orientation_angle;
    }
    else {
      resolved.orientation_angle = 0.0
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

    return resolved;
    }
};

module.exports = ArsObject;
