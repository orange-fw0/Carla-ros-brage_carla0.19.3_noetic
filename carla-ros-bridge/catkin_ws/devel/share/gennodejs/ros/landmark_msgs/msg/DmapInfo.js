// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DmapInputData = require('./DmapInputData.js');
let FeatMapData = require('./FeatMapData.js');

//-----------------------------------------------------------

class DmapInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.input_datas = null;
      this.dmap_data = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('input_datas')) {
        this.input_datas = initObj.input_datas
      }
      else {
        this.input_datas = [];
      }
      if (initObj.hasOwnProperty('dmap_data')) {
        this.dmap_data = initObj.dmap_data
      }
      else {
        this.dmap_data = new FeatMapData();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DmapInfo
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [input_datas]
    // Serialize the length for message field [input_datas]
    bufferOffset = _serializer.uint32(obj.input_datas.length, buffer, bufferOffset);
    obj.input_datas.forEach((val) => {
      bufferOffset = DmapInputData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dmap_data]
    bufferOffset = FeatMapData.serialize(obj.dmap_data, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DmapInfo
    let len;
    let data = new DmapInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [input_datas]
    // Deserialize array length for message field [input_datas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.input_datas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.input_datas[i] = DmapInputData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dmap_data]
    data.dmap_data = FeatMapData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.input_datas.forEach((val) => {
      length += DmapInputData.getMessageSize(val);
    });
    length += FeatMapData.getMessageSize(object.dmap_data);
    length += _getByteLength(object.reserved_info);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/DmapInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddceedac66cb602cb8184958f8c12fa9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool available
    landmark_msgs/DmapInputData[] input_datas
    landmark_msgs/FeatMapData dmap_data
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/DmapInputData
    string input_name
    int32[] shape
    float32[] data
    
    ================================================================================
    MSG: landmark_msgs/FeatMapData
    int32[] shape
    float32 map_scalar
    landmark_msgs/FloatRange x_range
    landmark_msgs/FloatRange y_range
    int16 cls_num
    uint8[] cls_map
    float32[] feat_map
    landmark_msgs/FloatRange[] cls_range
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/FloatRange
    float32 min
    float32 max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DmapInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.input_datas !== undefined) {
      resolved.input_datas = new Array(msg.input_datas.length);
      for (let i = 0; i < resolved.input_datas.length; ++i) {
        resolved.input_datas[i] = DmapInputData.Resolve(msg.input_datas[i]);
      }
    }
    else {
      resolved.input_datas = []
    }

    if (msg.dmap_data !== undefined) {
      resolved.dmap_data = FeatMapData.Resolve(msg.dmap_data)
    }
    else {
      resolved.dmap_data = new FeatMapData()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = DmapInfo;
