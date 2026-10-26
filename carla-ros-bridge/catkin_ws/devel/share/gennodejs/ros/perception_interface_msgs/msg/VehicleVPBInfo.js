// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleVPBInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vpb_point_num = null;
      this.vpb_bv_x = null;
      this.vpb_bv_y = null;
      this.vpb_bv_z = null;
    }
    else {
      if (initObj.hasOwnProperty('vpb_point_num')) {
        this.vpb_point_num = initObj.vpb_point_num
      }
      else {
        this.vpb_point_num = 0;
      }
      if (initObj.hasOwnProperty('vpb_bv_x')) {
        this.vpb_bv_x = initObj.vpb_bv_x
      }
      else {
        this.vpb_bv_x = [];
      }
      if (initObj.hasOwnProperty('vpb_bv_y')) {
        this.vpb_bv_y = initObj.vpb_bv_y
      }
      else {
        this.vpb_bv_y = [];
      }
      if (initObj.hasOwnProperty('vpb_bv_z')) {
        this.vpb_bv_z = initObj.vpb_bv_z
      }
      else {
        this.vpb_bv_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleVPBInfo
    // Serialize message field [vpb_point_num]
    bufferOffset = _serializer.uint8(obj.vpb_point_num, buffer, bufferOffset);
    // Serialize message field [vpb_bv_x]
    bufferOffset = _arraySerializer.float32(obj.vpb_bv_x, buffer, bufferOffset, null);
    // Serialize message field [vpb_bv_y]
    bufferOffset = _arraySerializer.float32(obj.vpb_bv_y, buffer, bufferOffset, null);
    // Serialize message field [vpb_bv_z]
    bufferOffset = _arraySerializer.float32(obj.vpb_bv_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleVPBInfo
    let len;
    let data = new VehicleVPBInfo(null);
    // Deserialize message field [vpb_point_num]
    data.vpb_point_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vpb_bv_x]
    data.vpb_bv_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [vpb_bv_y]
    data.vpb_bv_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [vpb_bv_z]
    data.vpb_bv_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.vpb_bv_x.length;
    length += 4 * object.vpb_bv_y.length;
    length += 4 * object.vpb_bv_z.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleVPBInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89a7e56a1af901c508a46725ee5a3d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 vpb_point_num
    float32[] vpb_bv_x
    float32[] vpb_bv_y
    float32[] vpb_bv_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleVPBInfo(null);
    if (msg.vpb_point_num !== undefined) {
      resolved.vpb_point_num = msg.vpb_point_num;
    }
    else {
      resolved.vpb_point_num = 0
    }

    if (msg.vpb_bv_x !== undefined) {
      resolved.vpb_bv_x = msg.vpb_bv_x;
    }
    else {
      resolved.vpb_bv_x = []
    }

    if (msg.vpb_bv_y !== undefined) {
      resolved.vpb_bv_y = msg.vpb_bv_y;
    }
    else {
      resolved.vpb_bv_y = []
    }

    if (msg.vpb_bv_z !== undefined) {
      resolved.vpb_bv_z = msg.vpb_bv_z;
    }
    else {
      resolved.vpb_bv_z = []
    }

    return resolved;
    }
};

module.exports = VehicleVPBInfo;
