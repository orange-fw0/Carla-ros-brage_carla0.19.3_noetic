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

class ArsCluster {
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
      this.pdh0 = null;
      this.ambigstate = null;
      this.invalidstate = null;
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
      if (initObj.hasOwnProperty('pdh0')) {
        this.pdh0 = initObj.pdh0
      }
      else {
        this.pdh0 = 0;
      }
      if (initObj.hasOwnProperty('ambigstate')) {
        this.ambigstate = initObj.ambigstate
      }
      else {
        this.ambigstate = 0;
      }
      if (initObj.hasOwnProperty('invalidstate')) {
        this.invalidstate = initObj.invalidstate
      }
      else {
        this.invalidstate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArsCluster
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
    // Serialize message field [pdh0]
    bufferOffset = _serializer.uint8(obj.pdh0, buffer, bufferOffset);
    // Serialize message field [ambigstate]
    bufferOffset = _serializer.uint8(obj.ambigstate, buffer, bufferOffset);
    // Serialize message field [invalidstate]
    bufferOffset = _serializer.uint8(obj.invalidstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArsCluster
    let len;
    let data = new ArsCluster(null);
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
    // Deserialize message field [pdh0]
    data.pdh0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ambigstate]
    data.ambigstate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [invalidstate]
    data.invalidstate = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/ArsCluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '116a250881e257c3186d20d0388e7b45';
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
    uint8 pdh0
    uint8 ambigstate
    uint8 invalidstate
    
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
    const resolved = new ArsCluster(null);
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

    if (msg.pdh0 !== undefined) {
      resolved.pdh0 = msg.pdh0;
    }
    else {
      resolved.pdh0 = 0
    }

    if (msg.ambigstate !== undefined) {
      resolved.ambigstate = msg.ambigstate;
    }
    else {
      resolved.ambigstate = 0
    }

    if (msg.invalidstate !== undefined) {
      resolved.invalidstate = msg.invalidstate;
    }
    else {
      resolved.invalidstate = 0
    }

    return resolved;
    }
};

module.exports = ArsCluster;
