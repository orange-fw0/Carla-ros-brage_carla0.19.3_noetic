// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FrameMeta = require('./FrameMeta.js');
let EgoposeFrameMeta = require('./EgoposeFrameMeta.js');

//-----------------------------------------------------------

class PerceptionMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.algorithm_name = null;
      this.instance_name = null;
      this.sensor_timestamp_us = null;
      this.pipeline_start_timestamp_us = null;
      this.pipeline_finish_timestamp_us = null;
      this.relevant_frames = null;
      this.egopose_relevant_frame = null;
      this.version_tag = null;
      this.ts_log = null;
      this.sequence = null;
      this.task_tag = null;
    }
    else {
      if (initObj.hasOwnProperty('algorithm_name')) {
        this.algorithm_name = initObj.algorithm_name
      }
      else {
        this.algorithm_name = '';
      }
      if (initObj.hasOwnProperty('instance_name')) {
        this.instance_name = initObj.instance_name
      }
      else {
        this.instance_name = '';
      }
      if (initObj.hasOwnProperty('sensor_timestamp_us')) {
        this.sensor_timestamp_us = initObj.sensor_timestamp_us
      }
      else {
        this.sensor_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('pipeline_start_timestamp_us')) {
        this.pipeline_start_timestamp_us = initObj.pipeline_start_timestamp_us
      }
      else {
        this.pipeline_start_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('pipeline_finish_timestamp_us')) {
        this.pipeline_finish_timestamp_us = initObj.pipeline_finish_timestamp_us
      }
      else {
        this.pipeline_finish_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('relevant_frames')) {
        this.relevant_frames = initObj.relevant_frames
      }
      else {
        this.relevant_frames = [];
      }
      if (initObj.hasOwnProperty('egopose_relevant_frame')) {
        this.egopose_relevant_frame = initObj.egopose_relevant_frame
      }
      else {
        this.egopose_relevant_frame = new EgoposeFrameMeta();
      }
      if (initObj.hasOwnProperty('version_tag')) {
        this.version_tag = initObj.version_tag
      }
      else {
        this.version_tag = '';
      }
      if (initObj.hasOwnProperty('ts_log')) {
        this.ts_log = initObj.ts_log
      }
      else {
        this.ts_log = '';
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('task_tag')) {
        this.task_tag = initObj.task_tag
      }
      else {
        this.task_tag = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionMeta
    // Serialize message field [algorithm_name]
    bufferOffset = _serializer.string(obj.algorithm_name, buffer, bufferOffset);
    // Serialize message field [instance_name]
    bufferOffset = _serializer.string(obj.instance_name, buffer, bufferOffset);
    // Serialize message field [sensor_timestamp_us]
    bufferOffset = _serializer.uint64(obj.sensor_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_start_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_start_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_finish_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_finish_timestamp_us, buffer, bufferOffset);
    // Serialize message field [relevant_frames]
    // Serialize the length for message field [relevant_frames]
    bufferOffset = _serializer.uint32(obj.relevant_frames.length, buffer, bufferOffset);
    obj.relevant_frames.forEach((val) => {
      bufferOffset = FrameMeta.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [egopose_relevant_frame]
    bufferOffset = EgoposeFrameMeta.serialize(obj.egopose_relevant_frame, buffer, bufferOffset);
    // Serialize message field [version_tag]
    bufferOffset = _serializer.string(obj.version_tag, buffer, bufferOffset);
    // Serialize message field [ts_log]
    bufferOffset = _serializer.string(obj.ts_log, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint64(obj.sequence, buffer, bufferOffset);
    // Serialize message field [task_tag]
    bufferOffset = _serializer.string(obj.task_tag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionMeta
    let len;
    let data = new PerceptionMeta(null);
    // Deserialize message field [algorithm_name]
    data.algorithm_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [instance_name]
    data.instance_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_timestamp_us]
    data.sensor_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_start_timestamp_us]
    data.pipeline_start_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_finish_timestamp_us]
    data.pipeline_finish_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [relevant_frames]
    // Deserialize array length for message field [relevant_frames]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.relevant_frames = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.relevant_frames[i] = FrameMeta.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [egopose_relevant_frame]
    data.egopose_relevant_frame = EgoposeFrameMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_tag]
    data.version_tag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ts_log]
    data.ts_log = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [task_tag]
    data.task_tag = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.algorithm_name);
    length += _getByteLength(object.instance_name);
    length += 18 * object.relevant_frames.length;
    length += _getByteLength(object.version_tag);
    length += _getByteLength(object.ts_log);
    length += _getByteLength(object.task_tag);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/PerceptionMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0ac2a0dbcdbff1e1000251c81dc5d53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string algorithm_name
    string instance_name
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    landmark_msgs/FrameMeta[] relevant_frames
    landmark_msgs/EgoposeFrameMeta egopose_relevant_frame
    string version_tag
    string ts_log
    uint64 sequence
    string task_tag
    
    ================================================================================
    MSG: landmark_msgs/FrameMeta
    uint64 timestamp_us
    uint64 sequence
    landmark_msgs/CameraSourceEnum camera_source
    landmark_msgs/CameraModelEnum camera_model
    
    ================================================================================
    MSG: landmark_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/EgoposeFrameMeta
    uint64 timestamp_us
    uint64 sequence
    landmark_msgs/CameraSourceEnum sync_camera_source
    landmark_msgs/CameraModelEnum sync_camera_model
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionMeta(null);
    if (msg.algorithm_name !== undefined) {
      resolved.algorithm_name = msg.algorithm_name;
    }
    else {
      resolved.algorithm_name = ''
    }

    if (msg.instance_name !== undefined) {
      resolved.instance_name = msg.instance_name;
    }
    else {
      resolved.instance_name = ''
    }

    if (msg.sensor_timestamp_us !== undefined) {
      resolved.sensor_timestamp_us = msg.sensor_timestamp_us;
    }
    else {
      resolved.sensor_timestamp_us = 0
    }

    if (msg.pipeline_start_timestamp_us !== undefined) {
      resolved.pipeline_start_timestamp_us = msg.pipeline_start_timestamp_us;
    }
    else {
      resolved.pipeline_start_timestamp_us = 0
    }

    if (msg.pipeline_finish_timestamp_us !== undefined) {
      resolved.pipeline_finish_timestamp_us = msg.pipeline_finish_timestamp_us;
    }
    else {
      resolved.pipeline_finish_timestamp_us = 0
    }

    if (msg.relevant_frames !== undefined) {
      resolved.relevant_frames = new Array(msg.relevant_frames.length);
      for (let i = 0; i < resolved.relevant_frames.length; ++i) {
        resolved.relevant_frames[i] = FrameMeta.Resolve(msg.relevant_frames[i]);
      }
    }
    else {
      resolved.relevant_frames = []
    }

    if (msg.egopose_relevant_frame !== undefined) {
      resolved.egopose_relevant_frame = EgoposeFrameMeta.Resolve(msg.egopose_relevant_frame)
    }
    else {
      resolved.egopose_relevant_frame = new EgoposeFrameMeta()
    }

    if (msg.version_tag !== undefined) {
      resolved.version_tag = msg.version_tag;
    }
    else {
      resolved.version_tag = ''
    }

    if (msg.ts_log !== undefined) {
      resolved.ts_log = msg.ts_log;
    }
    else {
      resolved.ts_log = ''
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.task_tag !== undefined) {
      resolved.task_tag = msg.task_tag;
    }
    else {
      resolved.task_tag = ''
    }

    return resolved;
    }
};

module.exports = PerceptionMeta;
