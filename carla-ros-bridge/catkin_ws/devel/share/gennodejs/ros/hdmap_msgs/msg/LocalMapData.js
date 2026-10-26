// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocalMapLayer = require('./LocalMapLayer.js');

//-----------------------------------------------------------

class LocalMapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.mdm = null;
      this.andm = null;
      this.map_match_info = null;
      this.other = null;
      this.esr = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('mdm')) {
        this.mdm = initObj.mdm
      }
      else {
        this.mdm = new LocalMapLayer();
      }
      if (initObj.hasOwnProperty('andm')) {
        this.andm = initObj.andm
      }
      else {
        this.andm = new LocalMapLayer();
      }
      if (initObj.hasOwnProperty('map_match_info')) {
        this.map_match_info = initObj.map_match_info
      }
      else {
        this.map_match_info = new LocalMapLayer();
      }
      if (initObj.hasOwnProperty('other')) {
        this.other = initObj.other
      }
      else {
        this.other = new LocalMapLayer();
      }
      if (initObj.hasOwnProperty('esr')) {
        this.esr = initObj.esr
      }
      else {
        this.esr = new LocalMapLayer();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [mdm]
    bufferOffset = LocalMapLayer.serialize(obj.mdm, buffer, bufferOffset);
    // Serialize message field [andm]
    bufferOffset = LocalMapLayer.serialize(obj.andm, buffer, bufferOffset);
    // Serialize message field [map_match_info]
    bufferOffset = LocalMapLayer.serialize(obj.map_match_info, buffer, bufferOffset);
    // Serialize message field [other]
    bufferOffset = LocalMapLayer.serialize(obj.other, buffer, bufferOffset);
    // Serialize message field [esr]
    bufferOffset = LocalMapLayer.serialize(obj.esr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapData
    let len;
    let data = new LocalMapData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mdm]
    data.mdm = LocalMapLayer.deserialize(buffer, bufferOffset);
    // Deserialize message field [andm]
    data.andm = LocalMapLayer.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_match_info]
    data.map_match_info = LocalMapLayer.deserialize(buffer, bufferOffset);
    // Deserialize message field [other]
    data.other = LocalMapLayer.deserialize(buffer, bufferOffset);
    // Deserialize message field [esr]
    data.esr = LocalMapLayer.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LocalMapLayer.getMessageSize(object.mdm);
    length += LocalMapLayer.getMessageSize(object.andm);
    length += LocalMapLayer.getMessageSize(object.map_match_info);
    length += LocalMapLayer.getMessageSize(object.other);
    length += LocalMapLayer.getMessageSize(object.esr);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/LocalMapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97fd3dea48828e3803823e6aa81c15b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MDM = 1
    uint8 ANDM = 2
    uint8 MAP_MATCH_INFO = 4
    uint8 OTHER = 8
    uint8 ESR = 16
    uint8 available
    hdmap_msgs/LocalMapLayer mdm
    hdmap_msgs/LocalMapLayer andm
    hdmap_msgs/LocalMapLayer map_match_info
    hdmap_msgs/LocalMapLayer other
    hdmap_msgs/LocalMapLayer esr
    
    ================================================================================
    MSG: hdmap_msgs/LocalMapLayer
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.mdm !== undefined) {
      resolved.mdm = LocalMapLayer.Resolve(msg.mdm)
    }
    else {
      resolved.mdm = new LocalMapLayer()
    }

    if (msg.andm !== undefined) {
      resolved.andm = LocalMapLayer.Resolve(msg.andm)
    }
    else {
      resolved.andm = new LocalMapLayer()
    }

    if (msg.map_match_info !== undefined) {
      resolved.map_match_info = LocalMapLayer.Resolve(msg.map_match_info)
    }
    else {
      resolved.map_match_info = new LocalMapLayer()
    }

    if (msg.other !== undefined) {
      resolved.other = LocalMapLayer.Resolve(msg.other)
    }
    else {
      resolved.other = new LocalMapLayer()
    }

    if (msg.esr !== undefined) {
      resolved.esr = LocalMapLayer.Resolve(msg.esr)
    }
    else {
      resolved.esr = new LocalMapLayer()
    }

    return resolved;
    }
};

// Constants for message
LocalMapData.Constants = {
  MDM: 1,
  ANDM: 2,
  MAP_MATCH_INFO: 4,
  OTHER: 8,
  ESR: 16,
}

module.exports = LocalMapData;
