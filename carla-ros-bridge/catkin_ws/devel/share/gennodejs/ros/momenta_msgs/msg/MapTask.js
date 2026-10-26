// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapTaskRange = require('./MapTaskRange.js');

//-----------------------------------------------------------

class MapTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_tasks = null;
      this.left_lane_tasks = null;
      this.right_lane_tasks = null;
      this.first_task_ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('current_tasks')) {
        this.current_tasks = initObj.current_tasks
      }
      else {
        this.current_tasks = [];
      }
      if (initObj.hasOwnProperty('left_lane_tasks')) {
        this.left_lane_tasks = initObj.left_lane_tasks
      }
      else {
        this.left_lane_tasks = [];
      }
      if (initObj.hasOwnProperty('right_lane_tasks')) {
        this.right_lane_tasks = initObj.right_lane_tasks
      }
      else {
        this.right_lane_tasks = [];
      }
      if (initObj.hasOwnProperty('first_task_ranges')) {
        this.first_task_ranges = initObj.first_task_ranges
      }
      else {
        this.first_task_ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapTask
    // Serialize message field [current_tasks]
    bufferOffset = _arraySerializer.int8(obj.current_tasks, buffer, bufferOffset, null);
    // Serialize message field [left_lane_tasks]
    bufferOffset = _arraySerializer.int8(obj.left_lane_tasks, buffer, bufferOffset, null);
    // Serialize message field [right_lane_tasks]
    bufferOffset = _arraySerializer.int8(obj.right_lane_tasks, buffer, bufferOffset, null);
    // Serialize message field [first_task_ranges]
    // Serialize the length for message field [first_task_ranges]
    bufferOffset = _serializer.uint32(obj.first_task_ranges.length, buffer, bufferOffset);
    obj.first_task_ranges.forEach((val) => {
      bufferOffset = MapTaskRange.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapTask
    let len;
    let data = new MapTask(null);
    // Deserialize message field [current_tasks]
    data.current_tasks = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [left_lane_tasks]
    data.left_lane_tasks = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [right_lane_tasks]
    data.right_lane_tasks = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [first_task_ranges]
    // Deserialize array length for message field [first_task_ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.first_task_ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.first_task_ranges[i] = MapTaskRange.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_tasks.length;
    length += object.left_lane_tasks.length;
    length += object.right_lane_tasks.length;
    length += 16 * object.first_task_ranges.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a58556ba5dbcd3438ca23c11204497f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8[] current_tasks
    int8[] left_lane_tasks
    int8[] right_lane_tasks
    momenta_msgs/MapTaskRange[] first_task_ranges
    
    ================================================================================
    MSG: momenta_msgs/MapTaskRange
    float64 begin_pos
    float64 end_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapTask(null);
    if (msg.current_tasks !== undefined) {
      resolved.current_tasks = msg.current_tasks;
    }
    else {
      resolved.current_tasks = []
    }

    if (msg.left_lane_tasks !== undefined) {
      resolved.left_lane_tasks = msg.left_lane_tasks;
    }
    else {
      resolved.left_lane_tasks = []
    }

    if (msg.right_lane_tasks !== undefined) {
      resolved.right_lane_tasks = msg.right_lane_tasks;
    }
    else {
      resolved.right_lane_tasks = []
    }

    if (msg.first_task_ranges !== undefined) {
      resolved.first_task_ranges = new Array(msg.first_task_ranges.length);
      for (let i = 0; i < resolved.first_task_ranges.length; ++i) {
        resolved.first_task_ranges[i] = MapTaskRange.Resolve(msg.first_task_ranges[i]);
      }
    }
    else {
      resolved.first_task_ranges = []
    }

    return resolved;
    }
};

module.exports = MapTask;
