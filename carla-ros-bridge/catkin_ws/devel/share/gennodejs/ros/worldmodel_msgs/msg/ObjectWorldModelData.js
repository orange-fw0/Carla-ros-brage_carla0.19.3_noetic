// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ObjectWorldModelData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filtered = null;
      this.occlusion_area = null;
      this.extra_json = null;
    }
    else {
      if (initObj.hasOwnProperty('filtered')) {
        this.filtered = initObj.filtered
      }
      else {
        this.filtered = false;
      }
      if (initObj.hasOwnProperty('occlusion_area')) {
        this.occlusion_area = initObj.occlusion_area
      }
      else {
        this.occlusion_area = [];
      }
      if (initObj.hasOwnProperty('extra_json')) {
        this.extra_json = initObj.extra_json
      }
      else {
        this.extra_json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectWorldModelData
    // Serialize message field [filtered]
    bufferOffset = _serializer.bool(obj.filtered, buffer, bufferOffset);
    // Serialize message field [occlusion_area]
    // Serialize the length for message field [occlusion_area]
    bufferOffset = _serializer.uint32(obj.occlusion_area.length, buffer, bufferOffset);
    obj.occlusion_area.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [extra_json]
    bufferOffset = _serializer.string(obj.extra_json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectWorldModelData
    let len;
    let data = new ObjectWorldModelData(null);
    // Deserialize message field [filtered]
    data.filtered = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [occlusion_area]
    // Deserialize array length for message field [occlusion_area]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.occlusion_area = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.occlusion_area[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [extra_json]
    data.extra_json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.occlusion_area.length;
    length += _getByteLength(object.extra_json);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ObjectWorldModelData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ab7304b697b94d7e5e3d7cc991f778e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool filtered
    perception_interface_msgs/Point3f[] occlusion_area
    string extra_json
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectWorldModelData(null);
    if (msg.filtered !== undefined) {
      resolved.filtered = msg.filtered;
    }
    else {
      resolved.filtered = false
    }

    if (msg.occlusion_area !== undefined) {
      resolved.occlusion_area = new Array(msg.occlusion_area.length);
      for (let i = 0; i < resolved.occlusion_area.length; ++i) {
        resolved.occlusion_area[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.occlusion_area[i]);
      }
    }
    else {
      resolved.occlusion_area = []
    }

    if (msg.extra_json !== undefined) {
      resolved.extra_json = msg.extra_json;
    }
    else {
      resolved.extra_json = ''
    }

    return resolved;
    }
};

module.exports = ObjectWorldModelData;
