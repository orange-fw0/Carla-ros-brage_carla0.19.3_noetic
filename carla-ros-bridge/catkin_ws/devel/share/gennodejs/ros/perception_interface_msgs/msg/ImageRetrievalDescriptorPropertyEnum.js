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

class ImageRetrievalDescriptorPropertyEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageRetrievalDescriptorPropertyEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageRetrievalDescriptorPropertyEnum
    let len;
    let data = new ImageRetrievalDescriptorPropertyEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ImageRetrievalDescriptorPropertyEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e450904a11657950988d27ee93e3765f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG = 0
    uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE = 1
    uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR = 2
    uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D = 3
    uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageRetrievalDescriptorPropertyEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
ImageRetrievalDescriptorPropertyEnum.Constants = {
  IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG: 0,
  IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE: 1,
  IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR: 2,
  IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D: 3,
  IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO: 4,
}

module.exports = ImageRetrievalDescriptorPropertyEnum;
