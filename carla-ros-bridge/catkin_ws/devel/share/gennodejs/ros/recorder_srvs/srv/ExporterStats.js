// Auto-generated. Do not edit!

// (in-package recorder_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ExporterStatsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExporterStatsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExporterStatsRequest
    let len;
    let data = new ExporterStatsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExporterStatsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExporterStatsRequest(null);
    return resolved;
    }
};

class ExporterStatsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.export_running = null;
      this.export_disk_recording = null;
      this.error_msg = null;
      this.processed_time = null;
      this.reporting_size = null;
      this.reported_size = null;
      this.reading_capacity = null;
      this.read_capacity = null;
      this.writing_capacity = null;
      this.written_capacity = null;
      this.request_items = null;
      this.enqueued_items = null;
      this.exporting_items = null;
      this.exported_items = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('export_running')) {
        this.export_running = initObj.export_running
      }
      else {
        this.export_running = false;
      }
      if (initObj.hasOwnProperty('export_disk_recording')) {
        this.export_disk_recording = initObj.export_disk_recording
      }
      else {
        this.export_disk_recording = false;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
      if (initObj.hasOwnProperty('processed_time')) {
        this.processed_time = initObj.processed_time
      }
      else {
        this.processed_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('reporting_size')) {
        this.reporting_size = initObj.reporting_size
      }
      else {
        this.reporting_size = 0;
      }
      if (initObj.hasOwnProperty('reported_size')) {
        this.reported_size = initObj.reported_size
      }
      else {
        this.reported_size = 0;
      }
      if (initObj.hasOwnProperty('reading_capacity')) {
        this.reading_capacity = initObj.reading_capacity
      }
      else {
        this.reading_capacity = 0;
      }
      if (initObj.hasOwnProperty('read_capacity')) {
        this.read_capacity = initObj.read_capacity
      }
      else {
        this.read_capacity = 0;
      }
      if (initObj.hasOwnProperty('writing_capacity')) {
        this.writing_capacity = initObj.writing_capacity
      }
      else {
        this.writing_capacity = 0;
      }
      if (initObj.hasOwnProperty('written_capacity')) {
        this.written_capacity = initObj.written_capacity
      }
      else {
        this.written_capacity = 0;
      }
      if (initObj.hasOwnProperty('request_items')) {
        this.request_items = initObj.request_items
      }
      else {
        this.request_items = 0;
      }
      if (initObj.hasOwnProperty('enqueued_items')) {
        this.enqueued_items = initObj.enqueued_items
      }
      else {
        this.enqueued_items = 0;
      }
      if (initObj.hasOwnProperty('exporting_items')) {
        this.exporting_items = initObj.exporting_items
      }
      else {
        this.exporting_items = 0;
      }
      if (initObj.hasOwnProperty('exported_items')) {
        this.exported_items = initObj.exported_items
      }
      else {
        this.exported_items = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExporterStatsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [export_running]
    bufferOffset = _serializer.bool(obj.export_running, buffer, bufferOffset);
    // Serialize message field [export_disk_recording]
    bufferOffset = _serializer.bool(obj.export_disk_recording, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    // Serialize message field [processed_time]
    bufferOffset = _serializer.time(obj.processed_time, buffer, bufferOffset);
    // Serialize message field [reporting_size]
    bufferOffset = _serializer.uint32(obj.reporting_size, buffer, bufferOffset);
    // Serialize message field [reported_size]
    bufferOffset = _serializer.uint32(obj.reported_size, buffer, bufferOffset);
    // Serialize message field [reading_capacity]
    bufferOffset = _serializer.uint64(obj.reading_capacity, buffer, bufferOffset);
    // Serialize message field [read_capacity]
    bufferOffset = _serializer.uint64(obj.read_capacity, buffer, bufferOffset);
    // Serialize message field [writing_capacity]
    bufferOffset = _serializer.uint64(obj.writing_capacity, buffer, bufferOffset);
    // Serialize message field [written_capacity]
    bufferOffset = _serializer.uint64(obj.written_capacity, buffer, bufferOffset);
    // Serialize message field [request_items]
    bufferOffset = _serializer.uint32(obj.request_items, buffer, bufferOffset);
    // Serialize message field [enqueued_items]
    bufferOffset = _serializer.uint32(obj.enqueued_items, buffer, bufferOffset);
    // Serialize message field [exporting_items]
    bufferOffset = _serializer.uint32(obj.exporting_items, buffer, bufferOffset);
    // Serialize message field [exported_items]
    bufferOffset = _serializer.uint32(obj.exported_items, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExporterStatsResponse
    let len;
    let data = new ExporterStatsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [export_running]
    data.export_running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [export_disk_recording]
    data.export_disk_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [processed_time]
    data.processed_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [reporting_size]
    data.reporting_size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reported_size]
    data.reported_size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reading_capacity]
    data.reading_capacity = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [read_capacity]
    data.read_capacity = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [writing_capacity]
    data.writing_capacity = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [written_capacity]
    data.written_capacity = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [request_items]
    data.request_items = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [enqueued_items]
    data.enqueued_items = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [exporting_items]
    data.exporting_items = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [exported_items]
    data.exported_items = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += _getByteLength(object.error_msg);
    return length + 75;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExporterStatsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '111f10718e56a34dd9ce0e4e2ba876fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    bool export_running
    bool export_disk_recording
    string error_msg
    time processed_time
    uint32 reporting_size
    uint32 reported_size
    uint64 reading_capacity
    uint64 read_capacity
    uint64 writing_capacity
    uint64 written_capacity
    uint32 request_items
    uint32 enqueued_items
    uint32 exporting_items
    uint32 exported_items
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExporterStatsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.export_running !== undefined) {
      resolved.export_running = msg.export_running;
    }
    else {
      resolved.export_running = false
    }

    if (msg.export_disk_recording !== undefined) {
      resolved.export_disk_recording = msg.export_disk_recording;
    }
    else {
      resolved.export_disk_recording = false
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    if (msg.processed_time !== undefined) {
      resolved.processed_time = msg.processed_time;
    }
    else {
      resolved.processed_time = {secs: 0, nsecs: 0}
    }

    if (msg.reporting_size !== undefined) {
      resolved.reporting_size = msg.reporting_size;
    }
    else {
      resolved.reporting_size = 0
    }

    if (msg.reported_size !== undefined) {
      resolved.reported_size = msg.reported_size;
    }
    else {
      resolved.reported_size = 0
    }

    if (msg.reading_capacity !== undefined) {
      resolved.reading_capacity = msg.reading_capacity;
    }
    else {
      resolved.reading_capacity = 0
    }

    if (msg.read_capacity !== undefined) {
      resolved.read_capacity = msg.read_capacity;
    }
    else {
      resolved.read_capacity = 0
    }

    if (msg.writing_capacity !== undefined) {
      resolved.writing_capacity = msg.writing_capacity;
    }
    else {
      resolved.writing_capacity = 0
    }

    if (msg.written_capacity !== undefined) {
      resolved.written_capacity = msg.written_capacity;
    }
    else {
      resolved.written_capacity = 0
    }

    if (msg.request_items !== undefined) {
      resolved.request_items = msg.request_items;
    }
    else {
      resolved.request_items = 0
    }

    if (msg.enqueued_items !== undefined) {
      resolved.enqueued_items = msg.enqueued_items;
    }
    else {
      resolved.enqueued_items = 0
    }

    if (msg.exporting_items !== undefined) {
      resolved.exporting_items = msg.exporting_items;
    }
    else {
      resolved.exporting_items = 0
    }

    if (msg.exported_items !== undefined) {
      resolved.exported_items = msg.exported_items;
    }
    else {
      resolved.exported_items = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ExporterStatsRequest,
  Response: ExporterStatsResponse,
  md5sum() { return '111f10718e56a34dd9ce0e4e2ba876fa'; },
  datatype() { return 'recorder_srvs/ExporterStats'; }
};
