// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2f = require('./Point2f.js');
let ParkingSlotTypeEnum = require('./ParkingSlotTypeEnum.js');
let ParkingSlotChargeTypeEnum = require('./ParkingSlotChargeTypeEnum.js');
let ParkingSlotSpecialTypeEnum = require('./ParkingSlotSpecialTypeEnum.js');

//-----------------------------------------------------------

class ParkingSlotCenterPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.available_type = null;
      this.confidence = null;
      this.center_line_angle = null;
      this.charge_type = null;
      this.special_type = null;
      this.special_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2f();
      }
      if (initObj.hasOwnProperty('available_type')) {
        this.available_type = initObj.available_type
      }
      else {
        this.available_type = new ParkingSlotTypeEnum();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('center_line_angle')) {
        this.center_line_angle = initObj.center_line_angle
      }
      else {
        this.center_line_angle = 0.0;
      }
      if (initObj.hasOwnProperty('charge_type')) {
        this.charge_type = initObj.charge_type
      }
      else {
        this.charge_type = new ParkingSlotChargeTypeEnum();
      }
      if (initObj.hasOwnProperty('special_type')) {
        this.special_type = initObj.special_type
      }
      else {
        this.special_type = new ParkingSlotSpecialTypeEnum();
      }
      if (initObj.hasOwnProperty('special_confidence')) {
        this.special_confidence = initObj.special_confidence
      }
      else {
        this.special_confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotCenterPoint
    // Serialize message field [position]
    bufferOffset = Point2f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [available_type]
    bufferOffset = ParkingSlotTypeEnum.serialize(obj.available_type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [center_line_angle]
    bufferOffset = _serializer.float32(obj.center_line_angle, buffer, bufferOffset);
    // Serialize message field [charge_type]
    bufferOffset = ParkingSlotChargeTypeEnum.serialize(obj.charge_type, buffer, bufferOffset);
    // Serialize message field [special_type]
    bufferOffset = ParkingSlotSpecialTypeEnum.serialize(obj.special_type, buffer, bufferOffset);
    // Serialize message field [special_confidence]
    bufferOffset = _serializer.float32(obj.special_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotCenterPoint
    let len;
    let data = new ParkingSlotCenterPoint(null);
    // Deserialize message field [position]
    data.position = Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [available_type]
    data.available_type = ParkingSlotTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_line_angle]
    data.center_line_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charge_type]
    data.charge_type = ParkingSlotChargeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [special_type]
    data.special_type = ParkingSlotSpecialTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [special_confidence]
    data.special_confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ParkingSlotCenterPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e47dee11eefcbac6dcb78dde2360eb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point2f position
    perception_interface_msgs/ParkingSlotTypeEnum available_type
    float32 confidence
    float32 center_line_angle
    perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
    perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
    float32 special_confidence
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotTypeEnum
    uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
    uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
    uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
    uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
    uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
    uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotCenterPoint(null);
    if (msg.position !== undefined) {
      resolved.position = Point2f.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2f()
    }

    if (msg.available_type !== undefined) {
      resolved.available_type = ParkingSlotTypeEnum.Resolve(msg.available_type)
    }
    else {
      resolved.available_type = new ParkingSlotTypeEnum()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.center_line_angle !== undefined) {
      resolved.center_line_angle = msg.center_line_angle;
    }
    else {
      resolved.center_line_angle = 0.0
    }

    if (msg.charge_type !== undefined) {
      resolved.charge_type = ParkingSlotChargeTypeEnum.Resolve(msg.charge_type)
    }
    else {
      resolved.charge_type = new ParkingSlotChargeTypeEnum()
    }

    if (msg.special_type !== undefined) {
      resolved.special_type = ParkingSlotSpecialTypeEnum.Resolve(msg.special_type)
    }
    else {
      resolved.special_type = new ParkingSlotSpecialTypeEnum()
    }

    if (msg.special_confidence !== undefined) {
      resolved.special_confidence = msg.special_confidence;
    }
    else {
      resolved.special_confidence = 0.0
    }

    return resolved;
    }
};

module.exports = ParkingSlotCenterPoint;
