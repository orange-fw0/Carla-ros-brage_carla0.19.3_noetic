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

class SrrCluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detection_id = null;
      this.range = null;
      this.azimuth = null;
      this.vrel = null;
      this.dyn_prop = null;
      this.rcs = null;
    }
    else {
      if (initObj.hasOwnProperty('detection_id')) {
        this.detection_id = initObj.detection_id
      }
      else {
        this.detection_id = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('vrel')) {
        this.vrel = initObj.vrel
      }
      else {
        this.vrel = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrrCluster
    // Serialize message field [detection_id]
    bufferOffset = _serializer.uint16(obj.detection_id, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [vrel]
    bufferOffset = _serializer.float32(obj.vrel, buffer, bufferOffset);
    // Serialize message field [dyn_prop]
    bufferOffset = _serializer.uint8(obj.dyn_prop, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrrCluster
    let len;
    let data = new SrrCluster(null);
    // Deserialize message field [detection_id]
    data.detection_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vrel]
    data.vrel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dyn_prop]
    data.dyn_prop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/SrrCluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8d02025d67bc80f65d08985ba70b84e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 detection_id
    float32 range
    float32 azimuth
    float32 vrel
    uint8 dyn_prop
    float32 rcs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrrCluster(null);
    if (msg.detection_id !== undefined) {
      resolved.detection_id = msg.detection_id;
    }
    else {
      resolved.detection_id = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.vrel !== undefined) {
      resolved.vrel = msg.vrel;
    }
    else {
      resolved.vrel = 0.0
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

    return resolved;
    }
};

module.exports = SrrCluster;
