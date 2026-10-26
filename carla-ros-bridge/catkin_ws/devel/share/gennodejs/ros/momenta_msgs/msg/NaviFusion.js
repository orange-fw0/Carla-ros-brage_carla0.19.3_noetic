// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NaviFusion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enu = null;
      this.pose = null;
      this.wgs84_position = null;
      this.imu = null;
      this.vel = null;
      this.vel_scalar = null;
      this.gps_status = null;
      this.sat_cnt1 = null;
      this.sat_cnt2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enu')) {
        this.enu = initObj.enu
      }
      else {
        this.enu = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('wgs84_position')) {
        this.wgs84_position = initObj.wgs84_position
      }
      else {
        this.wgs84_position = new sensor_msgs.msg.NavSatFix();
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('vel_scalar')) {
        this.vel_scalar = initObj.vel_scalar
      }
      else {
        this.vel_scalar = 0.0;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = 0;
      }
      if (initObj.hasOwnProperty('sat_cnt1')) {
        this.sat_cnt1 = initObj.sat_cnt1
      }
      else {
        this.sat_cnt1 = 0;
      }
      if (initObj.hasOwnProperty('sat_cnt2')) {
        this.sat_cnt2 = initObj.sat_cnt2
      }
      else {
        this.sat_cnt2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviFusion
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enu]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.enu, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [wgs84_position]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.wgs84_position, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [vel_scalar]
    bufferOffset = _serializer.float64(obj.vel_scalar, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.uint8(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [sat_cnt1]
    bufferOffset = _serializer.uint8(obj.sat_cnt1, buffer, bufferOffset);
    // Serialize message field [sat_cnt2]
    bufferOffset = _serializer.uint8(obj.sat_cnt2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviFusion
    let len;
    let data = new NaviFusion(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enu]
    data.enu = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [wgs84_position]
    data.wgs84_position = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_scalar]
    data.vel_scalar = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sat_cnt1]
    data.sat_cnt1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sat_cnt2]
    data.sat_cnt2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.wgs84_position);
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu);
    return length + 139;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/NaviFusion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '026fb76e29658a0e5c85e1bf4f35d61a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Pose enu
    geometry_msgs/Pose2D pose
    sensor_msgs/NavSatFix wgs84_position
    sensor_msgs/Imu imu
    geometry_msgs/Twist vel
    float64 vel_scalar
    uint8 gps_status
    uint8 sat_cnt1
    uint8 sat_cnt2
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: sensor_msgs/NavSatFix
    # Navigation Satellite fix for any Global Navigation Satellite System
    #
    # Specified using the WGS 84 reference ellipsoid
    
    # header.stamp specifies the ROS time for this measurement (the
    #        corresponding satellite time may be reported using the
    #        sensor_msgs/TimeReference message).
    #
    # header.frame_id is the frame of reference reported by the satellite
    #        receiver, usually the location of the antenna.  This is a
    #        Euclidean frame relative to the vehicle, not a reference
    #        ellipsoid.
    Header header
    
    # satellite fix status information
    NavSatStatus status
    
    # Latitude [degrees]. Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is west.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid
    # (quiet NaN if no altitude is available).
    float64 altitude
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    #
    # Beware: this coordinate system exhibits singularities at the poles.
    
    float64[9] position_covariance
    
    # If the covariance of the fix is known, fill it in completely. If the
    # GPS receiver provides the variance of each measurement, put them
    # along the diagonal. If only Dilution of Precision is available,
    # estimate an approximate covariance from that.
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    
    uint8 position_covariance_type
    
    ================================================================================
    MSG: sensor_msgs/NavSatStatus
    # Navigation Satellite fix status for any Global Navigation Satellite System
    
    # Whether to output an augmented fix is determined by both the fix
    # type and the last time differential corrections were received.  A
    # fix is valid when status >= STATUS_FIX.
    
    int8 STATUS_NO_FIX =  -1        # unable to fix position
    int8 STATUS_FIX =      0        # unaugmented fix
    int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
    int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation
    
    int8 status
    
    # Bits defining which Global Navigation Satellite System signals were
    # used by the receiver.
    
    uint16 SERVICE_GPS =     1
    uint16 SERVICE_GLONASS = 2
    uint16 SERVICE_COMPASS = 4      # includes BeiDou.
    uint16 SERVICE_GALILEO = 8
    
    uint16 service
    
    ================================================================================
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviFusion(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enu !== undefined) {
      resolved.enu = geometry_msgs.msg.Pose.Resolve(msg.enu)
    }
    else {
      resolved.enu = new geometry_msgs.msg.Pose()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.wgs84_position !== undefined) {
      resolved.wgs84_position = sensor_msgs.msg.NavSatFix.Resolve(msg.wgs84_position)
    }
    else {
      resolved.wgs84_position = new sensor_msgs.msg.NavSatFix()
    }

    if (msg.imu !== undefined) {
      resolved.imu = sensor_msgs.msg.Imu.Resolve(msg.imu)
    }
    else {
      resolved.imu = new sensor_msgs.msg.Imu()
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    if (msg.vel_scalar !== undefined) {
      resolved.vel_scalar = msg.vel_scalar;
    }
    else {
      resolved.vel_scalar = 0.0
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = 0
    }

    if (msg.sat_cnt1 !== undefined) {
      resolved.sat_cnt1 = msg.sat_cnt1;
    }
    else {
      resolved.sat_cnt1 = 0
    }

    if (msg.sat_cnt2 !== undefined) {
      resolved.sat_cnt2 = msg.sat_cnt2;
    }
    else {
      resolved.sat_cnt2 = 0
    }

    return resolved;
    }
};

module.exports = NaviFusion;
