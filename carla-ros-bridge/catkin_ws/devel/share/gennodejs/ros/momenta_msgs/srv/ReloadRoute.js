// Auto-generated. Do not edit!

// (in-package momenta_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ReloadRouteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.route_file = null;
    }
    else {
      if (initObj.hasOwnProperty('route_file')) {
        this.route_file = initObj.route_file
      }
      else {
        this.route_file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReloadRouteRequest
    // Serialize message field [route_file]
    bufferOffset = _serializer.string(obj.route_file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadRouteRequest
    let len;
    let data = new ReloadRouteRequest(null);
    // Deserialize message field [route_file]
    data.route_file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.route_file);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/ReloadRouteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a102c82fc810433c61b7d441e602d0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string route_file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReloadRouteRequest(null);
    if (msg.route_file !== undefined) {
      resolved.route_file = msg.route_file;
    }
    else {
      resolved.route_file = ''
    }

    return resolved;
    }
};

class ReloadRouteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_count = null;
    }
    else {
      if (initObj.hasOwnProperty('road_count')) {
        this.road_count = initObj.road_count
      }
      else {
        this.road_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReloadRouteResponse
    // Serialize message field [road_count]
    bufferOffset = _serializer.int64(obj.road_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadRouteResponse
    let len;
    let data = new ReloadRouteResponse(null);
    // Deserialize message field [road_count]
    data.road_count = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/ReloadRouteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91916c5f092eee9df5b614855fa44700';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 road_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReloadRouteResponse(null);
    if (msg.road_count !== undefined) {
      resolved.road_count = msg.road_count;
    }
    else {
      resolved.road_count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ReloadRouteRequest,
  Response: ReloadRouteResponse,
  md5sum() { return 'f658c9c823055e3e59793158f6173b34'; },
  datatype() { return 'momenta_msgs/ReloadRoute'; }
};
