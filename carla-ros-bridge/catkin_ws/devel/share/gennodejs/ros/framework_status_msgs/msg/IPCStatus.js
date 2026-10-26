// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CPUStatus = require('./CPUStatus.js');
let DiskStatus = require('./DiskStatus.js');
let GPUStatus = require('./GPUStatus.js');
let MemoryStatus = require('./MemoryStatus.js');
let NetStatus = require('./NetStatus.js');
let ProcessStatus = require('./ProcessStatus.js');
let TimeStatus = require('./TimeStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class IPCStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cpu_status = null;
      this.disk_status = null;
      this.gpu_status = null;
      this.memory_status = null;
      this.net_status = null;
      this.process_status = null;
      this.time_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cpu_status')) {
        this.cpu_status = initObj.cpu_status
      }
      else {
        this.cpu_status = new CPUStatus();
      }
      if (initObj.hasOwnProperty('disk_status')) {
        this.disk_status = initObj.disk_status
      }
      else {
        this.disk_status = new DiskStatus();
      }
      if (initObj.hasOwnProperty('gpu_status')) {
        this.gpu_status = initObj.gpu_status
      }
      else {
        this.gpu_status = new GPUStatus();
      }
      if (initObj.hasOwnProperty('memory_status')) {
        this.memory_status = initObj.memory_status
      }
      else {
        this.memory_status = new MemoryStatus();
      }
      if (initObj.hasOwnProperty('net_status')) {
        this.net_status = initObj.net_status
      }
      else {
        this.net_status = new NetStatus();
      }
      if (initObj.hasOwnProperty('process_status')) {
        this.process_status = initObj.process_status
      }
      else {
        this.process_status = new ProcessStatus();
      }
      if (initObj.hasOwnProperty('time_status')) {
        this.time_status = initObj.time_status
      }
      else {
        this.time_status = new TimeStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IPCStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cpu_status]
    bufferOffset = CPUStatus.serialize(obj.cpu_status, buffer, bufferOffset);
    // Serialize message field [disk_status]
    bufferOffset = DiskStatus.serialize(obj.disk_status, buffer, bufferOffset);
    // Serialize message field [gpu_status]
    bufferOffset = GPUStatus.serialize(obj.gpu_status, buffer, bufferOffset);
    // Serialize message field [memory_status]
    bufferOffset = MemoryStatus.serialize(obj.memory_status, buffer, bufferOffset);
    // Serialize message field [net_status]
    bufferOffset = NetStatus.serialize(obj.net_status, buffer, bufferOffset);
    // Serialize message field [process_status]
    bufferOffset = ProcessStatus.serialize(obj.process_status, buffer, bufferOffset);
    // Serialize message field [time_status]
    bufferOffset = TimeStatus.serialize(obj.time_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IPCStatus
    let len;
    let data = new IPCStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cpu_status]
    data.cpu_status = CPUStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [disk_status]
    data.disk_status = DiskStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpu_status]
    data.gpu_status = GPUStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [memory_status]
    data.memory_status = MemoryStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [net_status]
    data.net_status = NetStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [process_status]
    data.process_status = ProcessStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_status]
    data.time_status = TimeStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += CPUStatus.getMessageSize(object.cpu_status);
    length += DiskStatus.getMessageSize(object.disk_status);
    length += GPUStatus.getMessageSize(object.gpu_status);
    length += MemoryStatus.getMessageSize(object.memory_status);
    length += NetStatus.getMessageSize(object.net_status);
    length += ProcessStatus.getMessageSize(object.process_status);
    length += TimeStatus.getMessageSize(object.time_status);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/IPCStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b015f3f3cd15999614995c189967cea3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    framework_status_msgs/CPUStatus cpu_status
    framework_status_msgs/DiskStatus disk_status
    framework_status_msgs/GPUStatus gpu_status
    framework_status_msgs/MemoryStatus memory_status
    framework_status_msgs/NetStatus net_status
    framework_status_msgs/ProcessStatus process_status
    framework_status_msgs/TimeStatus time_status
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: framework_status_msgs/CPUStatus
    uint8 CPU_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/CPUStatusData cpu_status_data
    
    ================================================================================
    MSG: framework_status_msgs/CPUStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint8 cpu_count
    float32 cpu_current_percent
    float32 cpu_average_percent
    float32[] cpu_average_load
    float32 cpu_average_temperature
    float32 cpu_average_frequency
    string[] top_processes
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/DiskStatus
    uint8 DISK_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/DiskStatusData disk_status_data
    
    ================================================================================
    MSG: framework_status_msgs/DiskStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    float32 disk_usage
    string disk_io_counters
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/GPUStatus
    uint8 GPU_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/GPUStatusData gpu_status_data
    
    ================================================================================
    MSG: framework_status_msgs/GPUStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/SingleGPUStatus[] gpu_status_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleGPUStatus
    uint8 gpu_id
    float32 gpu_current_percent
    float32 gpu_average_percent
    float32 gpu_memory_current_percent
    float32 gpu_memory_average_percent
    float32 gpu_temperature
    float32 gpu_power
    string[] top_processes
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/MemoryStatus
    uint8 MEMORY_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/MemoryStatusData memory_status_data
    
    ================================================================================
    MSG: framework_status_msgs/MemoryStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    float32 virtual_memory
    float32 swap_memory
    string[] top_processes
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/NetStatus
    uint8 NET_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/NetStatusData net_status_data
    
    ================================================================================
    MSG: framework_status_msgs/NetStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/NetCardStatus[] net_card_status_list
    framework_status_msgs/NetAliveStatus[] net_alive_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/NetCardStatus
    string net_card_name
    float32 bytes_sent_rate
    float32 bytes_recv_rate
    float32 packets_sent_rate
    float32 packets_recv_rate
    float32 errin_rate
    float32 errout_rate
    float32 dropin_rate
    float32 dropout_rate
    bool net_card_isup
    uint8 duplex
    uint32 speed
    uint32 mtu
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/NetAliveStatus
    string name
    uint32 loss_count
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/ProcessStatus
    uint8 PROCESS_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/ProcessStatusData process_status_data
    
    ================================================================================
    MSG: framework_status_msgs/ProcessStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/SingleProcessStatus[] process_status_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleProcessStatus
    string process_name
    bool is_alive
    uint8 num_threads
    float32 voluntary_ctxt_switches_rate
    float32 nonvoluntary_ctxt_switches_rate
    float32 cpu_current_percent
    float32 cpu_average_percent
    float32 memory_current_percent
    float32 memory_average_percent
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/TimeStatus
    uint8 TIME_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/TimeStatusData time_status_data
    
    ================================================================================
    MSG: framework_status_msgs/TimeStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IPCStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cpu_status !== undefined) {
      resolved.cpu_status = CPUStatus.Resolve(msg.cpu_status)
    }
    else {
      resolved.cpu_status = new CPUStatus()
    }

    if (msg.disk_status !== undefined) {
      resolved.disk_status = DiskStatus.Resolve(msg.disk_status)
    }
    else {
      resolved.disk_status = new DiskStatus()
    }

    if (msg.gpu_status !== undefined) {
      resolved.gpu_status = GPUStatus.Resolve(msg.gpu_status)
    }
    else {
      resolved.gpu_status = new GPUStatus()
    }

    if (msg.memory_status !== undefined) {
      resolved.memory_status = MemoryStatus.Resolve(msg.memory_status)
    }
    else {
      resolved.memory_status = new MemoryStatus()
    }

    if (msg.net_status !== undefined) {
      resolved.net_status = NetStatus.Resolve(msg.net_status)
    }
    else {
      resolved.net_status = new NetStatus()
    }

    if (msg.process_status !== undefined) {
      resolved.process_status = ProcessStatus.Resolve(msg.process_status)
    }
    else {
      resolved.process_status = new ProcessStatus()
    }

    if (msg.time_status !== undefined) {
      resolved.time_status = TimeStatus.Resolve(msg.time_status)
    }
    else {
      resolved.time_status = new TimeStatus()
    }

    return resolved;
    }
};

module.exports = IPCStatus;
