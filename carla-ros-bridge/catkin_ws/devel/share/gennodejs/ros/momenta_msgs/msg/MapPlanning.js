// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneBoundary = require('./LaneBoundary.js');
let IntersectionManeuver = require('./IntersectionManeuver.js');
let MergePoint = require('./MergePoint.js');
let MapTask = require('./MapTask.js');
let Refline = require('./Refline.js');
let BoundaryInfo = require('./BoundaryInfo.js');
let TrafficLightInfo = require('./TrafficLightInfo.js');
let LaneInfo = require('./LaneInfo.js');
let SpeedChangePoint = require('./SpeedChangePoint.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class MapPlanning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lane_boundaries = null;
      this.next_maneuver = null;
      this.last_maneuver = null;
      this.next_merge = null;
      this.tasks = null;
      this.current_refline = null;
      this.left_left_refline = null;
      this.left_refline = null;
      this.right_refline = null;
      this.right_right_refline = null;
      this.left_boundary_info = null;
      this.right_boundary_info = null;
      this.traffic_light = null;
      this.lanes_info = null;
      this.distance_to_stop_line = null;
      this.distance_to_car_park = null;
      this.distance_to_destination = null;
      this.distance_to_left_waiting_area = null;
      this.distance_to_left_waiting_area_stop_line = null;
      this.distance_to_barrier_gap = null;
      this.current_lane_speed_limit = null;
      this.speed_change_point = null;
      this.is_in_map_area = null;
      this.is_in_intersection = null;
      this.current_lane_index = null;
      this.mono_time = null;
      this.pose = null;
      this.enu = null;
      this.wgs84_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lane_boundaries')) {
        this.lane_boundaries = initObj.lane_boundaries
      }
      else {
        this.lane_boundaries = [];
      }
      if (initObj.hasOwnProperty('next_maneuver')) {
        this.next_maneuver = initObj.next_maneuver
      }
      else {
        this.next_maneuver = new IntersectionManeuver();
      }
      if (initObj.hasOwnProperty('last_maneuver')) {
        this.last_maneuver = initObj.last_maneuver
      }
      else {
        this.last_maneuver = new IntersectionManeuver();
      }
      if (initObj.hasOwnProperty('next_merge')) {
        this.next_merge = initObj.next_merge
      }
      else {
        this.next_merge = new MergePoint();
      }
      if (initObj.hasOwnProperty('tasks')) {
        this.tasks = initObj.tasks
      }
      else {
        this.tasks = new MapTask();
      }
      if (initObj.hasOwnProperty('current_refline')) {
        this.current_refline = initObj.current_refline
      }
      else {
        this.current_refline = new Refline();
      }
      if (initObj.hasOwnProperty('left_left_refline')) {
        this.left_left_refline = initObj.left_left_refline
      }
      else {
        this.left_left_refline = new Refline();
      }
      if (initObj.hasOwnProperty('left_refline')) {
        this.left_refline = initObj.left_refline
      }
      else {
        this.left_refline = new Refline();
      }
      if (initObj.hasOwnProperty('right_refline')) {
        this.right_refline = initObj.right_refline
      }
      else {
        this.right_refline = new Refline();
      }
      if (initObj.hasOwnProperty('right_right_refline')) {
        this.right_right_refline = initObj.right_right_refline
      }
      else {
        this.right_right_refline = new Refline();
      }
      if (initObj.hasOwnProperty('left_boundary_info')) {
        this.left_boundary_info = initObj.left_boundary_info
      }
      else {
        this.left_boundary_info = [];
      }
      if (initObj.hasOwnProperty('right_boundary_info')) {
        this.right_boundary_info = initObj.right_boundary_info
      }
      else {
        this.right_boundary_info = [];
      }
      if (initObj.hasOwnProperty('traffic_light')) {
        this.traffic_light = initObj.traffic_light
      }
      else {
        this.traffic_light = new TrafficLightInfo();
      }
      if (initObj.hasOwnProperty('lanes_info')) {
        this.lanes_info = initObj.lanes_info
      }
      else {
        this.lanes_info = [];
      }
      if (initObj.hasOwnProperty('distance_to_stop_line')) {
        this.distance_to_stop_line = initObj.distance_to_stop_line
      }
      else {
        this.distance_to_stop_line = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_car_park')) {
        this.distance_to_car_park = initObj.distance_to_car_park
      }
      else {
        this.distance_to_car_park = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_destination')) {
        this.distance_to_destination = initObj.distance_to_destination
      }
      else {
        this.distance_to_destination = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_left_waiting_area')) {
        this.distance_to_left_waiting_area = initObj.distance_to_left_waiting_area
      }
      else {
        this.distance_to_left_waiting_area = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_left_waiting_area_stop_line')) {
        this.distance_to_left_waiting_area_stop_line = initObj.distance_to_left_waiting_area_stop_line
      }
      else {
        this.distance_to_left_waiting_area_stop_line = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_barrier_gap')) {
        this.distance_to_barrier_gap = initObj.distance_to_barrier_gap
      }
      else {
        this.distance_to_barrier_gap = 0.0;
      }
      if (initObj.hasOwnProperty('current_lane_speed_limit')) {
        this.current_lane_speed_limit = initObj.current_lane_speed_limit
      }
      else {
        this.current_lane_speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('speed_change_point')) {
        this.speed_change_point = initObj.speed_change_point
      }
      else {
        this.speed_change_point = new SpeedChangePoint();
      }
      if (initObj.hasOwnProperty('is_in_map_area')) {
        this.is_in_map_area = initObj.is_in_map_area
      }
      else {
        this.is_in_map_area = false;
      }
      if (initObj.hasOwnProperty('is_in_intersection')) {
        this.is_in_intersection = initObj.is_in_intersection
      }
      else {
        this.is_in_intersection = false;
      }
      if (initObj.hasOwnProperty('current_lane_index')) {
        this.current_lane_index = initObj.current_lane_index
      }
      else {
        this.current_lane_index = 0;
      }
      if (initObj.hasOwnProperty('mono_time')) {
        this.mono_time = initObj.mono_time
      }
      else {
        this.mono_time = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('enu')) {
        this.enu = initObj.enu
      }
      else {
        this.enu = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('wgs84_position')) {
        this.wgs84_position = initObj.wgs84_position
      }
      else {
        this.wgs84_position = new sensor_msgs.msg.NavSatFix();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapPlanning
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lane_boundaries]
    // Serialize the length for message field [lane_boundaries]
    bufferOffset = _serializer.uint32(obj.lane_boundaries.length, buffer, bufferOffset);
    obj.lane_boundaries.forEach((val) => {
      bufferOffset = LaneBoundary.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_maneuver]
    bufferOffset = IntersectionManeuver.serialize(obj.next_maneuver, buffer, bufferOffset);
    // Serialize message field [last_maneuver]
    bufferOffset = IntersectionManeuver.serialize(obj.last_maneuver, buffer, bufferOffset);
    // Serialize message field [next_merge]
    bufferOffset = MergePoint.serialize(obj.next_merge, buffer, bufferOffset);
    // Serialize message field [tasks]
    bufferOffset = MapTask.serialize(obj.tasks, buffer, bufferOffset);
    // Serialize message field [current_refline]
    bufferOffset = Refline.serialize(obj.current_refline, buffer, bufferOffset);
    // Serialize message field [left_left_refline]
    bufferOffset = Refline.serialize(obj.left_left_refline, buffer, bufferOffset);
    // Serialize message field [left_refline]
    bufferOffset = Refline.serialize(obj.left_refline, buffer, bufferOffset);
    // Serialize message field [right_refline]
    bufferOffset = Refline.serialize(obj.right_refline, buffer, bufferOffset);
    // Serialize message field [right_right_refline]
    bufferOffset = Refline.serialize(obj.right_right_refline, buffer, bufferOffset);
    // Serialize message field [left_boundary_info]
    // Serialize the length for message field [left_boundary_info]
    bufferOffset = _serializer.uint32(obj.left_boundary_info.length, buffer, bufferOffset);
    obj.left_boundary_info.forEach((val) => {
      bufferOffset = BoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_boundary_info]
    // Serialize the length for message field [right_boundary_info]
    bufferOffset = _serializer.uint32(obj.right_boundary_info.length, buffer, bufferOffset);
    obj.right_boundary_info.forEach((val) => {
      bufferOffset = BoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light]
    bufferOffset = TrafficLightInfo.serialize(obj.traffic_light, buffer, bufferOffset);
    // Serialize message field [lanes_info]
    // Serialize the length for message field [lanes_info]
    bufferOffset = _serializer.uint32(obj.lanes_info.length, buffer, bufferOffset);
    obj.lanes_info.forEach((val) => {
      bufferOffset = LaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [distance_to_stop_line]
    bufferOffset = _serializer.float64(obj.distance_to_stop_line, buffer, bufferOffset);
    // Serialize message field [distance_to_car_park]
    bufferOffset = _serializer.float64(obj.distance_to_car_park, buffer, bufferOffset);
    // Serialize message field [distance_to_destination]
    bufferOffset = _serializer.float64(obj.distance_to_destination, buffer, bufferOffset);
    // Serialize message field [distance_to_left_waiting_area]
    bufferOffset = _serializer.float64(obj.distance_to_left_waiting_area, buffer, bufferOffset);
    // Serialize message field [distance_to_left_waiting_area_stop_line]
    bufferOffset = _serializer.float64(obj.distance_to_left_waiting_area_stop_line, buffer, bufferOffset);
    // Serialize message field [distance_to_barrier_gap]
    bufferOffset = _serializer.float64(obj.distance_to_barrier_gap, buffer, bufferOffset);
    // Serialize message field [current_lane_speed_limit]
    bufferOffset = _serializer.float64(obj.current_lane_speed_limit, buffer, bufferOffset);
    // Serialize message field [speed_change_point]
    bufferOffset = SpeedChangePoint.serialize(obj.speed_change_point, buffer, bufferOffset);
    // Serialize message field [is_in_map_area]
    bufferOffset = _serializer.bool(obj.is_in_map_area, buffer, bufferOffset);
    // Serialize message field [is_in_intersection]
    bufferOffset = _serializer.bool(obj.is_in_intersection, buffer, bufferOffset);
    // Serialize message field [current_lane_index]
    bufferOffset = _serializer.uint8(obj.current_lane_index, buffer, bufferOffset);
    // Serialize message field [mono_time]
    bufferOffset = _serializer.int64(obj.mono_time, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [enu]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.enu, buffer, bufferOffset);
    // Serialize message field [wgs84_position]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.wgs84_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapPlanning
    let len;
    let data = new MapPlanning(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_boundaries]
    // Deserialize array length for message field [lane_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_boundaries[i] = LaneBoundary.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_maneuver]
    data.next_maneuver = IntersectionManeuver.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_maneuver]
    data.last_maneuver = IntersectionManeuver.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_merge]
    data.next_merge = MergePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [tasks]
    data.tasks = MapTask.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_refline]
    data.current_refline = Refline.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_left_refline]
    data.left_left_refline = Refline.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_refline]
    data.left_refline = Refline.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_refline]
    data.right_refline = Refline.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_right_refline]
    data.right_right_refline = Refline.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_boundary_info]
    // Deserialize array length for message field [left_boundary_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_boundary_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_boundary_info[i] = BoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_boundary_info]
    // Deserialize array length for message field [right_boundary_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_boundary_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_boundary_info[i] = BoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light]
    data.traffic_light = TrafficLightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes_info]
    // Deserialize array length for message field [lanes_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes_info[i] = LaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [distance_to_stop_line]
    data.distance_to_stop_line = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_car_park]
    data.distance_to_car_park = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_destination]
    data.distance_to_destination = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_left_waiting_area]
    data.distance_to_left_waiting_area = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_left_waiting_area_stop_line]
    data.distance_to_left_waiting_area_stop_line = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_barrier_gap]
    data.distance_to_barrier_gap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_lane_speed_limit]
    data.current_lane_speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_change_point]
    data.speed_change_point = SpeedChangePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_in_map_area]
    data.is_in_map_area = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_in_intersection]
    data.is_in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_lane_index]
    data.current_lane_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mono_time]
    data.mono_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [enu]
    data.enu = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [wgs84_position]
    data.wgs84_position = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lane_boundaries.forEach((val) => {
      length += LaneBoundary.getMessageSize(val);
    });
    length += MapTask.getMessageSize(object.tasks);
    length += Refline.getMessageSize(object.current_refline);
    length += Refline.getMessageSize(object.left_left_refline);
    length += Refline.getMessageSize(object.left_refline);
    length += Refline.getMessageSize(object.right_refline);
    length += Refline.getMessageSize(object.right_right_refline);
    length += 9 * object.left_boundary_info.length;
    length += 9 * object.right_boundary_info.length;
    length += TrafficLightInfo.getMessageSize(object.traffic_light);
    object.lanes_info.forEach((val) => {
      length += LaneInfo.getMessageSize(val);
    });
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.wgs84_position);
    return length + 230;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapPlanning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '508245ebd9190b4916a201f05fa0bcd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/LaneBoundary[] lane_boundaries
    momenta_msgs/IntersectionManeuver next_maneuver
    momenta_msgs/IntersectionManeuver last_maneuver
    momenta_msgs/MergePoint next_merge
    momenta_msgs/MapTask tasks
    momenta_msgs/Refline current_refline
    momenta_msgs/Refline left_left_refline
    momenta_msgs/Refline left_refline
    momenta_msgs/Refline right_refline
    momenta_msgs/Refline right_right_refline
    momenta_msgs/BoundaryInfo[] left_boundary_info
    momenta_msgs/BoundaryInfo[] right_boundary_info
    momenta_msgs/TrafficLightInfo traffic_light
    momenta_msgs/LaneInfo[] lanes_info
    float64 distance_to_stop_line
    float64 distance_to_car_park
    float64 distance_to_destination
    float64 distance_to_left_waiting_area
    float64 distance_to_left_waiting_area_stop_line
    float64 distance_to_barrier_gap
    float64 current_lane_speed_limit
    momenta_msgs/SpeedChangePoint speed_change_point
    bool is_in_map_area
    bool is_in_intersection
    uint8 current_lane_index
    int64 mono_time
    geometry_msgs/Pose2D pose
    geometry_msgs/Pose enu
    sensor_msgs/NavSatFix wgs84_position
    
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
    MSG: momenta_msgs/LaneBoundary
    float64[] polycoeff
    float64 head
    float64 tail
    int8 relative_id
    uint64 track_id
    
    ================================================================================
    MSG: momenta_msgs/IntersectionManeuver
    uint8 direction
    float64 distance
    float64 length
    
    ================================================================================
    MSG: momenta_msgs/MergePoint
    float64 distance
    uint8 merge_type
    
    ================================================================================
    MSG: momenta_msgs/MapTask
    int8[] current_tasks
    int8[] left_lane_tasks
    int8[] right_lane_tasks
    momenta_msgs/MapTaskRange[] first_task_ranges
    
    ================================================================================
    MSG: momenta_msgs/MapTaskRange
    float64 begin_pos
    float64 end_pos
    
    ================================================================================
    MSG: momenta_msgs/Refline
    momenta_msgs/Segment[] segments
    momenta_msgs/RefLinePoint[] points
    
    ================================================================================
    MSG: momenta_msgs/Segment
    uint16 begin_index
    uint16 end_index
    uint8 connection_type
    uint8 direction
    uint8 lane_type
    int64 lane_original_id
    bool is_in_intersection
    bool is_on_route
    
    ================================================================================
    MSG: momenta_msgs/RefLinePoint
    float64 x
    float64 y
    float64 z
    float64 curvature
    float64 yaw
    float64 left_road_border_distance
    float64 right_road_border_distance
    float64 left_lane_border_distance
    float64 right_lane_border_distance
    float64 left_obstacle_distance
    float64 right_obstacle_distance
    float64 lane_width
    float64 speed_limit
    string track_id
    
    ================================================================================
    MSG: momenta_msgs/BoundaryInfo
    float64 length
    uint8 type
    
    ================================================================================
    MSG: momenta_msgs/TrafficLightInfo
    uint8[] patterns
    uint8 direction
    
    ================================================================================
    MSG: momenta_msgs/LaneInfo
    uint8[] lane_marks
    uint8 lane_type
    uint8 lane_boundary_existence
    
    ================================================================================
    MSG: momenta_msgs/SpeedChangePoint
    float64 x
    float64 y
    float64 speed
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapPlanning(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lane_boundaries !== undefined) {
      resolved.lane_boundaries = new Array(msg.lane_boundaries.length);
      for (let i = 0; i < resolved.lane_boundaries.length; ++i) {
        resolved.lane_boundaries[i] = LaneBoundary.Resolve(msg.lane_boundaries[i]);
      }
    }
    else {
      resolved.lane_boundaries = []
    }

    if (msg.next_maneuver !== undefined) {
      resolved.next_maneuver = IntersectionManeuver.Resolve(msg.next_maneuver)
    }
    else {
      resolved.next_maneuver = new IntersectionManeuver()
    }

    if (msg.last_maneuver !== undefined) {
      resolved.last_maneuver = IntersectionManeuver.Resolve(msg.last_maneuver)
    }
    else {
      resolved.last_maneuver = new IntersectionManeuver()
    }

    if (msg.next_merge !== undefined) {
      resolved.next_merge = MergePoint.Resolve(msg.next_merge)
    }
    else {
      resolved.next_merge = new MergePoint()
    }

    if (msg.tasks !== undefined) {
      resolved.tasks = MapTask.Resolve(msg.tasks)
    }
    else {
      resolved.tasks = new MapTask()
    }

    if (msg.current_refline !== undefined) {
      resolved.current_refline = Refline.Resolve(msg.current_refline)
    }
    else {
      resolved.current_refline = new Refline()
    }

    if (msg.left_left_refline !== undefined) {
      resolved.left_left_refline = Refline.Resolve(msg.left_left_refline)
    }
    else {
      resolved.left_left_refline = new Refline()
    }

    if (msg.left_refline !== undefined) {
      resolved.left_refline = Refline.Resolve(msg.left_refline)
    }
    else {
      resolved.left_refline = new Refline()
    }

    if (msg.right_refline !== undefined) {
      resolved.right_refline = Refline.Resolve(msg.right_refline)
    }
    else {
      resolved.right_refline = new Refline()
    }

    if (msg.right_right_refline !== undefined) {
      resolved.right_right_refline = Refline.Resolve(msg.right_right_refline)
    }
    else {
      resolved.right_right_refline = new Refline()
    }

    if (msg.left_boundary_info !== undefined) {
      resolved.left_boundary_info = new Array(msg.left_boundary_info.length);
      for (let i = 0; i < resolved.left_boundary_info.length; ++i) {
        resolved.left_boundary_info[i] = BoundaryInfo.Resolve(msg.left_boundary_info[i]);
      }
    }
    else {
      resolved.left_boundary_info = []
    }

    if (msg.right_boundary_info !== undefined) {
      resolved.right_boundary_info = new Array(msg.right_boundary_info.length);
      for (let i = 0; i < resolved.right_boundary_info.length; ++i) {
        resolved.right_boundary_info[i] = BoundaryInfo.Resolve(msg.right_boundary_info[i]);
      }
    }
    else {
      resolved.right_boundary_info = []
    }

    if (msg.traffic_light !== undefined) {
      resolved.traffic_light = TrafficLightInfo.Resolve(msg.traffic_light)
    }
    else {
      resolved.traffic_light = new TrafficLightInfo()
    }

    if (msg.lanes_info !== undefined) {
      resolved.lanes_info = new Array(msg.lanes_info.length);
      for (let i = 0; i < resolved.lanes_info.length; ++i) {
        resolved.lanes_info[i] = LaneInfo.Resolve(msg.lanes_info[i]);
      }
    }
    else {
      resolved.lanes_info = []
    }

    if (msg.distance_to_stop_line !== undefined) {
      resolved.distance_to_stop_line = msg.distance_to_stop_line;
    }
    else {
      resolved.distance_to_stop_line = 0.0
    }

    if (msg.distance_to_car_park !== undefined) {
      resolved.distance_to_car_park = msg.distance_to_car_park;
    }
    else {
      resolved.distance_to_car_park = 0.0
    }

    if (msg.distance_to_destination !== undefined) {
      resolved.distance_to_destination = msg.distance_to_destination;
    }
    else {
      resolved.distance_to_destination = 0.0
    }

    if (msg.distance_to_left_waiting_area !== undefined) {
      resolved.distance_to_left_waiting_area = msg.distance_to_left_waiting_area;
    }
    else {
      resolved.distance_to_left_waiting_area = 0.0
    }

    if (msg.distance_to_left_waiting_area_stop_line !== undefined) {
      resolved.distance_to_left_waiting_area_stop_line = msg.distance_to_left_waiting_area_stop_line;
    }
    else {
      resolved.distance_to_left_waiting_area_stop_line = 0.0
    }

    if (msg.distance_to_barrier_gap !== undefined) {
      resolved.distance_to_barrier_gap = msg.distance_to_barrier_gap;
    }
    else {
      resolved.distance_to_barrier_gap = 0.0
    }

    if (msg.current_lane_speed_limit !== undefined) {
      resolved.current_lane_speed_limit = msg.current_lane_speed_limit;
    }
    else {
      resolved.current_lane_speed_limit = 0.0
    }

    if (msg.speed_change_point !== undefined) {
      resolved.speed_change_point = SpeedChangePoint.Resolve(msg.speed_change_point)
    }
    else {
      resolved.speed_change_point = new SpeedChangePoint()
    }

    if (msg.is_in_map_area !== undefined) {
      resolved.is_in_map_area = msg.is_in_map_area;
    }
    else {
      resolved.is_in_map_area = false
    }

    if (msg.is_in_intersection !== undefined) {
      resolved.is_in_intersection = msg.is_in_intersection;
    }
    else {
      resolved.is_in_intersection = false
    }

    if (msg.current_lane_index !== undefined) {
      resolved.current_lane_index = msg.current_lane_index;
    }
    else {
      resolved.current_lane_index = 0
    }

    if (msg.mono_time !== undefined) {
      resolved.mono_time = msg.mono_time;
    }
    else {
      resolved.mono_time = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.enu !== undefined) {
      resolved.enu = geometry_msgs.msg.Pose.Resolve(msg.enu)
    }
    else {
      resolved.enu = new geometry_msgs.msg.Pose()
    }

    if (msg.wgs84_position !== undefined) {
      resolved.wgs84_position = sensor_msgs.msg.NavSatFix.Resolve(msg.wgs84_position)
    }
    else {
      resolved.wgs84_position = new sensor_msgs.msg.NavSatFix()
    }

    return resolved;
    }
};

module.exports = MapPlanning;
