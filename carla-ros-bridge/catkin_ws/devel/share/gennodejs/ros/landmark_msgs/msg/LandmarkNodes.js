// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneCenterNode = require('./LaneCenterNode.js');
let LaneBoundaryNode = require('./LaneBoundaryNode.js');
let RoadBoundaryNode = require('./RoadBoundaryNode.js');
let RoadNode = require('./RoadNode.js');
let StopLineNode = require('./StopLineNode.js');
let CrossWalkNode = require('./CrossWalkNode.js');
let ValidRoiNode = require('./ValidRoiNode.js');
let RoadMarkNode = require('./RoadMarkNode.js');
let AoiNode = require('./AoiNode.js');
let SpeedBumpNode = require('./SpeedBumpNode.js');
let TrafficSignNode = require('./TrafficSignNode.js');
let PoleNode = require('./PoleNode.js');
let TrafficLightNode = require('./TrafficLightNode.js');
let DashLineEndNode = require('./DashLineEndNode.js');
let RoadEntryLineNode = require('./RoadEntryLineNode.js');
let TrafficSignGuideArrowNode = require('./TrafficSignGuideArrowNode.js');
let NoParkingZoneNode = require('./NoParkingZoneNode.js');
let ParkingSpaceNode = require('./ParkingSpaceNode.js');
let RoadObstacleNode = require('./RoadObstacleNode.js');
let ParkingFacility = require('./ParkingFacility.js');
let RoadSurfaceNode = require('./RoadSurfaceNode.js');
let IntersectionGuideLineNode = require('./IntersectionGuideLineNode.js');
let TrafficLightSingleFrame2dInfo = require('./TrafficLightSingleFrame2dInfo.js');
let TrafficSignSingleFrame2dInfo = require('./TrafficSignSingleFrame2dInfo.js');
let TrafficLightDecision = require('./TrafficLightDecision.js');

//-----------------------------------------------------------

class LandmarkNodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_centers = null;
      this.lane_boundaries = null;
      this.road_boundaries = null;
      this.road = null;
      this.stop_lines = null;
      this.cross_walks = null;
      this.valid_rois = null;
      this.road_marks = null;
      this.aois = null;
      this.speed_bumps = null;
      this.traffic_signs = null;
      this.poles = null;
      this.traffic_lights = null;
      this.dash_line_ends = null;
      this.road_entry_line_nodes = null;
      this.traffic_sign_guide_arrow_nodes = null;
      this.no_parking_zone_nodes = null;
      this.parking_space_nodes = null;
      this.road_obstacle_nodes = null;
      this.parking_facility_nodes = null;
      this.road_surface_node = null;
      this.intersection_guide_lines = null;
      this.traffic_light_single_frame_2d_info = null;
      this.traffic_sign_single_frame_2d_info = null;
      this.traffic_light_decisions = null;
      this.available = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_centers')) {
        this.lane_centers = initObj.lane_centers
      }
      else {
        this.lane_centers = [];
      }
      if (initObj.hasOwnProperty('lane_boundaries')) {
        this.lane_boundaries = initObj.lane_boundaries
      }
      else {
        this.lane_boundaries = [];
      }
      if (initObj.hasOwnProperty('road_boundaries')) {
        this.road_boundaries = initObj.road_boundaries
      }
      else {
        this.road_boundaries = [];
      }
      if (initObj.hasOwnProperty('road')) {
        this.road = initObj.road
      }
      else {
        this.road = [];
      }
      if (initObj.hasOwnProperty('stop_lines')) {
        this.stop_lines = initObj.stop_lines
      }
      else {
        this.stop_lines = [];
      }
      if (initObj.hasOwnProperty('cross_walks')) {
        this.cross_walks = initObj.cross_walks
      }
      else {
        this.cross_walks = [];
      }
      if (initObj.hasOwnProperty('valid_rois')) {
        this.valid_rois = initObj.valid_rois
      }
      else {
        this.valid_rois = [];
      }
      if (initObj.hasOwnProperty('road_marks')) {
        this.road_marks = initObj.road_marks
      }
      else {
        this.road_marks = [];
      }
      if (initObj.hasOwnProperty('aois')) {
        this.aois = initObj.aois
      }
      else {
        this.aois = [];
      }
      if (initObj.hasOwnProperty('speed_bumps')) {
        this.speed_bumps = initObj.speed_bumps
      }
      else {
        this.speed_bumps = [];
      }
      if (initObj.hasOwnProperty('traffic_signs')) {
        this.traffic_signs = initObj.traffic_signs
      }
      else {
        this.traffic_signs = [];
      }
      if (initObj.hasOwnProperty('poles')) {
        this.poles = initObj.poles
      }
      else {
        this.poles = [];
      }
      if (initObj.hasOwnProperty('traffic_lights')) {
        this.traffic_lights = initObj.traffic_lights
      }
      else {
        this.traffic_lights = [];
      }
      if (initObj.hasOwnProperty('dash_line_ends')) {
        this.dash_line_ends = initObj.dash_line_ends
      }
      else {
        this.dash_line_ends = [];
      }
      if (initObj.hasOwnProperty('road_entry_line_nodes')) {
        this.road_entry_line_nodes = initObj.road_entry_line_nodes
      }
      else {
        this.road_entry_line_nodes = [];
      }
      if (initObj.hasOwnProperty('traffic_sign_guide_arrow_nodes')) {
        this.traffic_sign_guide_arrow_nodes = initObj.traffic_sign_guide_arrow_nodes
      }
      else {
        this.traffic_sign_guide_arrow_nodes = [];
      }
      if (initObj.hasOwnProperty('no_parking_zone_nodes')) {
        this.no_parking_zone_nodes = initObj.no_parking_zone_nodes
      }
      else {
        this.no_parking_zone_nodes = [];
      }
      if (initObj.hasOwnProperty('parking_space_nodes')) {
        this.parking_space_nodes = initObj.parking_space_nodes
      }
      else {
        this.parking_space_nodes = [];
      }
      if (initObj.hasOwnProperty('road_obstacle_nodes')) {
        this.road_obstacle_nodes = initObj.road_obstacle_nodes
      }
      else {
        this.road_obstacle_nodes = [];
      }
      if (initObj.hasOwnProperty('parking_facility_nodes')) {
        this.parking_facility_nodes = initObj.parking_facility_nodes
      }
      else {
        this.parking_facility_nodes = [];
      }
      if (initObj.hasOwnProperty('road_surface_node')) {
        this.road_surface_node = initObj.road_surface_node
      }
      else {
        this.road_surface_node = [];
      }
      if (initObj.hasOwnProperty('intersection_guide_lines')) {
        this.intersection_guide_lines = initObj.intersection_guide_lines
      }
      else {
        this.intersection_guide_lines = [];
      }
      if (initObj.hasOwnProperty('traffic_light_single_frame_2d_info')) {
        this.traffic_light_single_frame_2d_info = initObj.traffic_light_single_frame_2d_info
      }
      else {
        this.traffic_light_single_frame_2d_info = [];
      }
      if (initObj.hasOwnProperty('traffic_sign_single_frame_2d_info')) {
        this.traffic_sign_single_frame_2d_info = initObj.traffic_sign_single_frame_2d_info
      }
      else {
        this.traffic_sign_single_frame_2d_info = [];
      }
      if (initObj.hasOwnProperty('traffic_light_decisions')) {
        this.traffic_light_decisions = initObj.traffic_light_decisions
      }
      else {
        this.traffic_light_decisions = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkNodes
    // Serialize message field [lane_centers]
    // Serialize the length for message field [lane_centers]
    bufferOffset = _serializer.uint32(obj.lane_centers.length, buffer, bufferOffset);
    obj.lane_centers.forEach((val) => {
      bufferOffset = LaneCenterNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_boundaries]
    // Serialize the length for message field [lane_boundaries]
    bufferOffset = _serializer.uint32(obj.lane_boundaries.length, buffer, bufferOffset);
    obj.lane_boundaries.forEach((val) => {
      bufferOffset = LaneBoundaryNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_boundaries]
    // Serialize the length for message field [road_boundaries]
    bufferOffset = _serializer.uint32(obj.road_boundaries.length, buffer, bufferOffset);
    obj.road_boundaries.forEach((val) => {
      bufferOffset = RoadBoundaryNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road]
    // Serialize the length for message field [road]
    bufferOffset = _serializer.uint32(obj.road.length, buffer, bufferOffset);
    obj.road.forEach((val) => {
      bufferOffset = RoadNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stop_lines]
    // Serialize the length for message field [stop_lines]
    bufferOffset = _serializer.uint32(obj.stop_lines.length, buffer, bufferOffset);
    obj.stop_lines.forEach((val) => {
      bufferOffset = StopLineNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cross_walks]
    // Serialize the length for message field [cross_walks]
    bufferOffset = _serializer.uint32(obj.cross_walks.length, buffer, bufferOffset);
    obj.cross_walks.forEach((val) => {
      bufferOffset = CrossWalkNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [valid_rois]
    // Serialize the length for message field [valid_rois]
    bufferOffset = _serializer.uint32(obj.valid_rois.length, buffer, bufferOffset);
    obj.valid_rois.forEach((val) => {
      bufferOffset = ValidRoiNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_marks]
    // Serialize the length for message field [road_marks]
    bufferOffset = _serializer.uint32(obj.road_marks.length, buffer, bufferOffset);
    obj.road_marks.forEach((val) => {
      bufferOffset = RoadMarkNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [aois]
    // Serialize the length for message field [aois]
    bufferOffset = _serializer.uint32(obj.aois.length, buffer, bufferOffset);
    obj.aois.forEach((val) => {
      bufferOffset = AoiNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speed_bumps]
    // Serialize the length for message field [speed_bumps]
    bufferOffset = _serializer.uint32(obj.speed_bumps.length, buffer, bufferOffset);
    obj.speed_bumps.forEach((val) => {
      bufferOffset = SpeedBumpNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_signs]
    // Serialize the length for message field [traffic_signs]
    bufferOffset = _serializer.uint32(obj.traffic_signs.length, buffer, bufferOffset);
    obj.traffic_signs.forEach((val) => {
      bufferOffset = TrafficSignNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [poles]
    // Serialize the length for message field [poles]
    bufferOffset = _serializer.uint32(obj.poles.length, buffer, bufferOffset);
    obj.poles.forEach((val) => {
      bufferOffset = PoleNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_lights]
    // Serialize the length for message field [traffic_lights]
    bufferOffset = _serializer.uint32(obj.traffic_lights.length, buffer, bufferOffset);
    obj.traffic_lights.forEach((val) => {
      bufferOffset = TrafficLightNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dash_line_ends]
    // Serialize the length for message field [dash_line_ends]
    bufferOffset = _serializer.uint32(obj.dash_line_ends.length, buffer, bufferOffset);
    obj.dash_line_ends.forEach((val) => {
      bufferOffset = DashLineEndNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_entry_line_nodes]
    // Serialize the length for message field [road_entry_line_nodes]
    bufferOffset = _serializer.uint32(obj.road_entry_line_nodes.length, buffer, bufferOffset);
    obj.road_entry_line_nodes.forEach((val) => {
      bufferOffset = RoadEntryLineNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_sign_guide_arrow_nodes]
    // Serialize the length for message field [traffic_sign_guide_arrow_nodes]
    bufferOffset = _serializer.uint32(obj.traffic_sign_guide_arrow_nodes.length, buffer, bufferOffset);
    obj.traffic_sign_guide_arrow_nodes.forEach((val) => {
      bufferOffset = TrafficSignGuideArrowNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [no_parking_zone_nodes]
    // Serialize the length for message field [no_parking_zone_nodes]
    bufferOffset = _serializer.uint32(obj.no_parking_zone_nodes.length, buffer, bufferOffset);
    obj.no_parking_zone_nodes.forEach((val) => {
      bufferOffset = NoParkingZoneNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_space_nodes]
    // Serialize the length for message field [parking_space_nodes]
    bufferOffset = _serializer.uint32(obj.parking_space_nodes.length, buffer, bufferOffset);
    obj.parking_space_nodes.forEach((val) => {
      bufferOffset = ParkingSpaceNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_obstacle_nodes]
    // Serialize the length for message field [road_obstacle_nodes]
    bufferOffset = _serializer.uint32(obj.road_obstacle_nodes.length, buffer, bufferOffset);
    obj.road_obstacle_nodes.forEach((val) => {
      bufferOffset = RoadObstacleNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_facility_nodes]
    // Serialize the length for message field [parking_facility_nodes]
    bufferOffset = _serializer.uint32(obj.parking_facility_nodes.length, buffer, bufferOffset);
    obj.parking_facility_nodes.forEach((val) => {
      bufferOffset = ParkingFacility.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_surface_node]
    // Serialize the length for message field [road_surface_node]
    bufferOffset = _serializer.uint32(obj.road_surface_node.length, buffer, bufferOffset);
    obj.road_surface_node.forEach((val) => {
      bufferOffset = RoadSurfaceNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [intersection_guide_lines]
    // Serialize the length for message field [intersection_guide_lines]
    bufferOffset = _serializer.uint32(obj.intersection_guide_lines.length, buffer, bufferOffset);
    obj.intersection_guide_lines.forEach((val) => {
      bufferOffset = IntersectionGuideLineNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_single_frame_2d_info]
    // Serialize the length for message field [traffic_light_single_frame_2d_info]
    bufferOffset = _serializer.uint32(obj.traffic_light_single_frame_2d_info.length, buffer, bufferOffset);
    obj.traffic_light_single_frame_2d_info.forEach((val) => {
      bufferOffset = TrafficLightSingleFrame2dInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_sign_single_frame_2d_info]
    // Serialize the length for message field [traffic_sign_single_frame_2d_info]
    bufferOffset = _serializer.uint32(obj.traffic_sign_single_frame_2d_info.length, buffer, bufferOffset);
    obj.traffic_sign_single_frame_2d_info.forEach((val) => {
      bufferOffset = TrafficSignSingleFrame2dInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_decisions]
    // Serialize the length for message field [traffic_light_decisions]
    bufferOffset = _serializer.uint32(obj.traffic_light_decisions.length, buffer, bufferOffset);
    obj.traffic_light_decisions.forEach((val) => {
      bufferOffset = TrafficLightDecision.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkNodes
    let len;
    let data = new LandmarkNodes(null);
    // Deserialize message field [lane_centers]
    // Deserialize array length for message field [lane_centers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_centers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_centers[i] = LaneCenterNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_boundaries]
    // Deserialize array length for message field [lane_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_boundaries[i] = LaneBoundaryNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_boundaries]
    // Deserialize array length for message field [road_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_boundaries[i] = RoadBoundaryNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road]
    // Deserialize array length for message field [road]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road[i] = RoadNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stop_lines]
    // Deserialize array length for message field [stop_lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stop_lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stop_lines[i] = StopLineNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cross_walks]
    // Deserialize array length for message field [cross_walks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cross_walks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cross_walks[i] = CrossWalkNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [valid_rois]
    // Deserialize array length for message field [valid_rois]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.valid_rois = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.valid_rois[i] = ValidRoiNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_marks]
    // Deserialize array length for message field [road_marks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_marks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_marks[i] = RoadMarkNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [aois]
    // Deserialize array length for message field [aois]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.aois = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.aois[i] = AoiNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speed_bumps]
    // Deserialize array length for message field [speed_bumps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_bumps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_bumps[i] = SpeedBumpNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_signs]
    // Deserialize array length for message field [traffic_signs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_signs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_signs[i] = TrafficSignNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [poles]
    // Deserialize array length for message field [poles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poles[i] = PoleNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_lights]
    // Deserialize array length for message field [traffic_lights]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_lights = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_lights[i] = TrafficLightNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dash_line_ends]
    // Deserialize array length for message field [dash_line_ends]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dash_line_ends = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dash_line_ends[i] = DashLineEndNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_entry_line_nodes]
    // Deserialize array length for message field [road_entry_line_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_entry_line_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_entry_line_nodes[i] = RoadEntryLineNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_sign_guide_arrow_nodes]
    // Deserialize array length for message field [traffic_sign_guide_arrow_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_sign_guide_arrow_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_sign_guide_arrow_nodes[i] = TrafficSignGuideArrowNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [no_parking_zone_nodes]
    // Deserialize array length for message field [no_parking_zone_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.no_parking_zone_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.no_parking_zone_nodes[i] = NoParkingZoneNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_space_nodes]
    // Deserialize array length for message field [parking_space_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_space_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_space_nodes[i] = ParkingSpaceNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_obstacle_nodes]
    // Deserialize array length for message field [road_obstacle_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_obstacle_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_obstacle_nodes[i] = RoadObstacleNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_facility_nodes]
    // Deserialize array length for message field [parking_facility_nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_facility_nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_facility_nodes[i] = ParkingFacility.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_surface_node]
    // Deserialize array length for message field [road_surface_node]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_surface_node = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_surface_node[i] = RoadSurfaceNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intersection_guide_lines]
    // Deserialize array length for message field [intersection_guide_lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intersection_guide_lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intersection_guide_lines[i] = IntersectionGuideLineNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_single_frame_2d_info]
    // Deserialize array length for message field [traffic_light_single_frame_2d_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_single_frame_2d_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_single_frame_2d_info[i] = TrafficLightSingleFrame2dInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_sign_single_frame_2d_info]
    // Deserialize array length for message field [traffic_sign_single_frame_2d_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_sign_single_frame_2d_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_sign_single_frame_2d_info[i] = TrafficSignSingleFrame2dInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_decisions]
    // Deserialize array length for message field [traffic_light_decisions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_decisions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_decisions[i] = TrafficLightDecision.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lane_centers.forEach((val) => {
      length += LaneCenterNode.getMessageSize(val);
    });
    object.lane_boundaries.forEach((val) => {
      length += LaneBoundaryNode.getMessageSize(val);
    });
    object.road_boundaries.forEach((val) => {
      length += RoadBoundaryNode.getMessageSize(val);
    });
    object.road.forEach((val) => {
      length += RoadNode.getMessageSize(val);
    });
    object.stop_lines.forEach((val) => {
      length += StopLineNode.getMessageSize(val);
    });
    object.cross_walks.forEach((val) => {
      length += CrossWalkNode.getMessageSize(val);
    });
    object.valid_rois.forEach((val) => {
      length += ValidRoiNode.getMessageSize(val);
    });
    object.road_marks.forEach((val) => {
      length += RoadMarkNode.getMessageSize(val);
    });
    object.aois.forEach((val) => {
      length += AoiNode.getMessageSize(val);
    });
    object.speed_bumps.forEach((val) => {
      length += SpeedBumpNode.getMessageSize(val);
    });
    object.traffic_signs.forEach((val) => {
      length += TrafficSignNode.getMessageSize(val);
    });
    object.poles.forEach((val) => {
      length += PoleNode.getMessageSize(val);
    });
    object.traffic_lights.forEach((val) => {
      length += TrafficLightNode.getMessageSize(val);
    });
    length += 60 * object.dash_line_ends.length;
    object.road_entry_line_nodes.forEach((val) => {
      length += RoadEntryLineNode.getMessageSize(val);
    });
    object.traffic_sign_guide_arrow_nodes.forEach((val) => {
      length += TrafficSignGuideArrowNode.getMessageSize(val);
    });
    object.no_parking_zone_nodes.forEach((val) => {
      length += NoParkingZoneNode.getMessageSize(val);
    });
    object.parking_space_nodes.forEach((val) => {
      length += ParkingSpaceNode.getMessageSize(val);
    });
    object.road_obstacle_nodes.forEach((val) => {
      length += RoadObstacleNode.getMessageSize(val);
    });
    length += 21 * object.parking_facility_nodes.length;
    object.road_surface_node.forEach((val) => {
      length += RoadSurfaceNode.getMessageSize(val);
    });
    object.intersection_guide_lines.forEach((val) => {
      length += IntersectionGuideLineNode.getMessageSize(val);
    });
    object.traffic_light_single_frame_2d_info.forEach((val) => {
      length += TrafficLightSingleFrame2dInfo.getMessageSize(val);
    });
    object.traffic_sign_single_frame_2d_info.forEach((val) => {
      length += TrafficSignSingleFrame2dInfo.getMessageSize(val);
    });
    object.traffic_light_decisions.forEach((val) => {
      length += TrafficLightDecision.getMessageSize(val);
    });
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkNodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea19a7448abbcb3bd05c74d7a8a441e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 AVAILABLE_LANDMARK_NODE_LANE_CENTER = 1
    uint64 AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY = 2
    uint64 AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY = 4
    uint64 AVAILABLE_LANDMARK_NODE_ROAD = 8
    uint64 AVAILABLE_LANDMARK_NODE_STOP_LINE = 16
    uint64 AVAILABLE_LANDMARK_NODE_CROSS_WALK = 32
    uint64 AVAILABLE_LANDMARK_NODE_VALID_ROI = 64
    uint64 AVAILABLE_LANDMARK_NODE_ROAD_MARK = 128
    uint64 AVAILABLE_LANDMARK_NODE_AOI = 256
    uint64 AVAILABLE_LANDMARK_NODE_SPEED_BUMP = 512
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN = 1024
    uint64 AVAILABLE_LANDMARK_NODE_POLE = 2048
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT = 4096
    uint64 AVAILABLE_LANDMARK_NODE_DASH_LINE_END = 8192
    uint64 AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE = 16384
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW = 32768
    uint64 AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE = 65536
    uint64 AVAILABLE_LANDMARK_NODE_PARKING_SPACE = 131072
    uint64 AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE = 262144
    uint64 AVAILABLE_LANDMARK_NODE_PARKING_FACILITY = 524288
    uint64 AVAILABLE_LANDMARK_NODE_ROAD_SURFACE = 1048576
    uint64 AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE = 2097152
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO = 4194304
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO = 8388608
    uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS = 16777216
    landmark_msgs/LaneCenterNode[] lane_centers
    landmark_msgs/LaneBoundaryNode[] lane_boundaries
    landmark_msgs/RoadBoundaryNode[] road_boundaries
    landmark_msgs/RoadNode[] road
    landmark_msgs/StopLineNode[] stop_lines
    landmark_msgs/CrossWalkNode[] cross_walks
    landmark_msgs/ValidRoiNode[] valid_rois
    landmark_msgs/RoadMarkNode[] road_marks
    landmark_msgs/AoiNode[] aois
    landmark_msgs/SpeedBumpNode[] speed_bumps
    landmark_msgs/TrafficSignNode[] traffic_signs
    landmark_msgs/PoleNode[] poles
    landmark_msgs/TrafficLightNode[] traffic_lights
    landmark_msgs/DashLineEndNode[] dash_line_ends
    landmark_msgs/RoadEntryLineNode[] road_entry_line_nodes
    landmark_msgs/TrafficSignGuideArrowNode[] traffic_sign_guide_arrow_nodes
    landmark_msgs/NoParkingZoneNode[] no_parking_zone_nodes
    landmark_msgs/ParkingSpaceNode[] parking_space_nodes
    landmark_msgs/RoadObstacleNode[] road_obstacle_nodes
    landmark_msgs/ParkingFacility[] parking_facility_nodes
    landmark_msgs/RoadSurfaceNode[] road_surface_node
    landmark_msgs/IntersectionGuideLineNode[] intersection_guide_lines
    landmark_msgs/TrafficLightSingleFrame2dInfo[] traffic_light_single_frame_2d_info
    landmark_msgs/TrafficSignSingleFrame2dInfo[] traffic_sign_single_frame_2d_info
    landmark_msgs/TrafficLightDecision[] traffic_light_decisions
    uint64 available
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNode
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 LANE_TYPE_VALID = 4
    uint16 DIRECTION_TYPE_VALID = 8
    uint16 FLOW_TYPE_VALID = 16
    uint16 LANE_ATTRIBUTE_VALID = 32
    uint16 LINE_POINTS_VALID = 64
    uint16 IS_VIRTUAL_VALID = 128
    uint16 IN_INTERSECTION_VALID = 256
    uint16 available
    float32 score
    int32 index
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
    landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types
    landmark_msgs/LaneCenterFlowTypeEnum flow_type
    landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    bool in_intersection
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
    uint8 LANE_TYPE_UNKNOWN = 0
    uint8 LANE_TYPE_NORMAL = 1
    uint8 LANE_TYPE_EMERGENCY = 5
    uint8 LANE_TYPE_BUS = 6
    uint8 LANE_TYPE_PASSING = 7
    uint8 LANE_TYPE_HOV = 8
    uint8 LANE_TYPE_ACCELERATE = 9
    uint8 LANE_TYPE_UTURN = 10
    uint8 LANE_TYPE_DECELERATE = 11
    uint8 LANE_TYPE_SHOULDER = 12
    uint8 LANE_TYPE_INTERSECTION = 14
    uint8 LANE_TYPE_NON_MOTOR = 15
    uint8 LANE_TYPE_MIXED_MOTOR = 16
    uint8 LANE_TYPE_SIDE_WALK = 17
    uint8 LANE_TYPE_MOTORCYCLE = 18
    uint8 LANE_TYPE_TOLL_ETC = 19
    uint8 LANE_TYPE_TOLL = 20
    uint8 LANE_TYPE_CHECKPOINT = 21
    uint8 LANE_TYPE_RAMP = 22
    uint8 LANE_TYPE_BARRIER = 23
    uint8 LANE_TYPE_CHANNELIZATION = 24
    uint8 LANE_TYPE_EMERGENCE_STOP = 25
    uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
    uint8 LANE_TYPE_STEEP_GRADE = 27
    uint8 LANE_TYPE_DIREC_VARIABLE = 28
    uint8 LANE_TYPE_CUSTOMS_SUP = 29
    uint8 LANE_TYPE_EMERGENCE_RAMP = 30
    uint8 LANE_TYPE_PARKING = 31
    uint8 LANE_TYPE_TIDAL = 32
    uint8 LANE_TYPE_TEMPORARY = 33
    uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
    uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
    uint8 LANE_TYPE_LEFT_ACC = 36
    uint8 LANE_TYPE_RIGHT_ACC = 37
    uint8 LANE_TYPE_LEFT_DEC = 38
    uint8 LANE_TYPE_RIGHT_DEC = 39
    uint8 LANE_TYPE_SERVICE_RAMP = 40
    uint8 LANE_TYPE_CURB = 41
    uint8 LANE_TYPE_RAILWAY = 42
    uint8 LANE_TYPE_BUS_STOP = 43
    uint8 LANE_TYPE_ROUNDABOUT = 44
    uint8 LANE_TYPE_INVALID = 45
    uint8 LANE_TYPE_WIDE = 46
    uint8 LANE_TYPE_VIRTUAL = 47
    uint8 LANE_TYPE_OTHERS = 63
    uint8 LANE_TYPE_ACC_DEC = 70
    uint8 LANE_TYPE_WAITING_AREA = 71
    uint8 LANE_TYPE_TOLL_MANUAL = 72
    uint8 LANE_TYPE_INCOMPLETE = 73
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
    uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
    uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
    uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterFlowTypeEnum
    uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0
    uint8 LANE_CENTER_FLOW_TYPE_SAME = 1
    uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2
    uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeLaneAttribute
    uint8 SPEED_LIMIT_VALID = 1
    uint8 CURVATURE_VALID = 2
    uint8 SLOPE_VALID = 4
    uint8 OFFSET_VALID = 8
    uint8 available
    float32 speed_limit
    float32 curvature
    float32 slope
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryNode
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 COLOR_VALID = 8
    uint16 WIDTH_TYPE_VALID = 16
    uint16 LINE_WIDTH_VALID = 32
    uint16 LINE_POINTS_VALID = 64
    uint16 IS_VIRTUAL_VALID = 128
    uint16 DIRECTION_TYPE_VALID = 256
    uint16 SOURCE_VALID = 512
    uint16 SCENE_TYPE_VALID = 1024
    uint16 SPECIAL_TYPE_VALID = 2048
    uint16 available
    float32 score
    int32 index
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/LaneBoundaryTypeEnum type
    landmark_msgs/LaneBoundaryColorEnum color
    landmark_msgs/LaneBoundaryWidthTypeEnum width_type
    float32 line_width
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type
    landmark_msgs/BoundarySourceEnum source
    landmark_msgs/LaneBoundarySceneTypeEnum scene_type
    landmark_msgs/LaneBoundarySpecialTypeEnum special_type
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryTypeEnum
    uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_TYPE_DASHED = 1
    uint8 LANE_BOUNDARY_TYPE_SOLID = 2
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
    uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
    uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
    uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
    uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
    uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
    uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
    uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
    uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
    uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
    uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
    uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
    uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
    uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryColorEnum
    uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0
    uint8 LANE_BOUNDARY_COLOR_WHITE = 1
    uint8 LANE_BOUNDARY_COLOR_YELLOW = 2
    uint8 LANE_BOUNDARY_COLOR_ORANGE = 3
    uint8 LANE_BOUNDARY_COLOR_BLUE = 4
    uint8 LANE_BOUNDARY_COLOR_GREEN = 5
    uint8 LANE_BOUNDARY_COLOR_GRAY = 6
    uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7
    uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8
    uint8 LANE_BOUNDARY_OTHER = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryWidthTypeEnum
    uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1
    uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/BoundarySourceEnum
    uint8 OTHER = 0
    uint8 AUTO_MAPPING = 1
    uint8 MANUAL_VALID = 2
    uint8 MANUAL_GUESS = 3
    uint8 INTERNAL = 4
    uint8 EXTERNAL = 5
    uint8 INTERNAL_SHARED = 6
    uint8 NONE = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundarySceneTypeEnum
    uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
    uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
    uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
    uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
    uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundarySpecialTypeEnum
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5
    uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryNode
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 POINTS_VALID = 8
    uint16 IS_VIRTUAL_VALID = 16
    uint16 HEIGHT_VALID = 32
    uint16 PASS_DIRECTION_VALID = 64
    uint16 SOURCE_VALID = 128
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/RoadBoundaryTypeEnum type
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    float32 height
    landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction
    landmark_msgs/BoundarySourceEnum source
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryTypeEnum
    uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_TYPE_NONE = 1
    uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
    uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
    uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
    uint8 ROAD_BOUNDARY_TYPE_CONE = 5
    uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
    uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
    uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
    uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
    uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
    uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
    uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
    uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
    uint8 ROAD_BOUNDARY_TYPE_CURB = 15
    uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
    uint8 ROAD_BOUNDARY_TYPE_WALL = 17
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
    uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2
    uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadNode
    uint16 SCORE_VALID = 1
    uint16 DIRECTION_VALID = 2
    uint16 ROAD_CLASS_VALID = 4
    uint16 FORMWAY_VALID = 8
    uint16 CENTER_LINE_VALID = 16
    uint16 START_LATERAL_LINE_VALID = 32
    uint16 END_LATERAL_LINE_VALID = 64
    uint16 IS_VIRETUAL_VALID = 128
    uint16 IN_INTERSECTION_VALID = 256
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    landmark_msgs/RoadDirectionTypeEnum road_direction
    landmark_msgs/RoadNodeRoadClassEnum road_class
    landmark_msgs/RoadNodeFormwayEnum[] formway
    perception_interface_msgs/Point3f[] center_line
    perception_interface_msgs/Point3f[] start_lateral_line
    perception_interface_msgs/Point3f[] end_lateral_line
    bool is_virtual
    bool in_intersection
    
    ================================================================================
    MSG: landmark_msgs/RoadDirectionTypeEnum
    uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_DIRECTION_TYPE_NONE = 1
    uint8 ROAD_DIRECTION_TYPE_A_B = 2
    uint8 ROAD_DIRECTION_TYPE_B_A = 3
    uint8 ROAD_DIRECTION_TYPE_BOTH = 4
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeRoadClassEnum
    uint8 ROAD_CLASS_UNKNOWN = 0
    uint8 HIGHWAY = 1
    uint8 URBAN = 2
    uint8 CITY_EXPRESSWAY = 3
    uint8 STATE_ROAD = 4
    uint8 PROVINCIAL_ROAD = 5
    uint8 MAIN_ROAD = 6
    uint8 SECONDARY_ROAD = 7
    uint8 NORMAL_ROAD = 8
    uint8 COUNTY_ROAD = 9
    uint8 COUNTRY_ROAD = 10
    uint8 INTERNAL_ROAD = 11
    uint8 OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeFormwayEnum
    uint8 FORMWAY_UNKNOWN = 0
    uint8 SINGLE_CARRIAGE_WAY = 1
    uint8 IC = 2
    uint8 JCT = 3
    uint8 SERVICE = 4
    uint8 TUNNEL = 5
    uint8 TOLL = 6
    uint8 SLIP_ROAD = 7
    uint8 SIDEROAD = 8
    uint8 ROUNDABOUT = 9
    uint8 RAMP_ENTRY = 10
    uint8 RAMP_EXIT = 11
    uint8 SAPA = 12
    uint8 PARKING_RAMP = 13
    uint8 PARKING_ROAD = 14
    uint8 U_TURN = 15
    uint8 TURN_RIGHT = 16
    uint8 TURN_LEFT = 17
    uint8 TURN_LEFT_RIGHT = 18
    uint8 CROSS_LINK = 19
    uint8 SERVICE_AND_SLIP_ROAD = 20
    uint8 SERVICE_AND_JCT = 21
    uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
    uint8 MULTIPLE_CARRIAGE_WAY = 23
    uint8 CHECK_POINT = 24
    uint8 WALK_ROAD = 25
    uint8 PARALLED_ROAD = 26
    uint8 OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/StopLineNode
    uint16 SCORE_VALID = 1
    uint16 LINE_POINTS_VALID = 2
    uint16 IS_VIRETUAL_VALID = 4
    uint16 TYPE_VALID = 8
    uint16 PASS_DIRECTION_VALID = 16
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    landmark_msgs/StopLineTypeEnum type
    landmark_msgs/StopLinePassDirectionTypeEnum pass_direction
    
    ================================================================================
    MSG: landmark_msgs/StopLineTypeEnum
    uint8 STOP_LINE_TYPE_UNKNOWN = 0
    uint8 STOP_LINE_TYPE_NORMAL = 1
    uint8 STOP_LINE_LEFT_WAITING_AREA = 2
    uint8 STOP_LINE_BACK_WAITING_AREA = 3
    uint8 STOP_LINE_RIGHT_WAITING_AREA = 4
    uint8 STOP_LINE_GO_STRAIGHT_WAITING_AREA = 5
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/StopLinePassDirectionTypeEnum
    uint8 STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
    uint8 STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
    uint8 STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/CrossWalkNode
    uint16 SCORE_VALID = 1
    uint16 CENTER_LINE_VALID = 2
    uint16 WIDTH_VALID = 4
    uint16 IS_VIRETUAL_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] center_line_points
    float32 width
    bool is_virtual
    
    ================================================================================
    MSG: landmark_msgs/ValidRoiNode
    uint16 SCORE_VALID = 1
    uint16 POLYGON_POINTS_VALID = 2
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    
    ================================================================================
    MSG: landmark_msgs/RoadMarkNode
    uint16 POLYGON_POINTS_VALID = 1
    uint16 TYPES_VALID = 2
    uint16 IS_PROHIBITED_VALID = 4
    uint16 SCORE_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    landmark_msgs/RoadMarkNodeTypeEnum[] types
    bool is_prohibited
    
    ================================================================================
    MSG: landmark_msgs/RoadMarkNodeTypeEnum
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
    uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
    uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
    uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
    uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
    uint8 ROAD_MARK_TYPE_SYMBOL = 14
    uint8 ROAD_MARK_TYPE_TEXT = 15
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
    uint8 ROAD_MARK_TYPE_PROHIBIT = 17
    uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
    uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
    uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
    uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
    uint8 ROAD_MARK_TYPE_STOP = 25
    uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
    uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/AoiNode
    uint16 POLYGON_POINTS_VALID = 1
    uint16 TYPE_VALID = 2
    uint16 IS_VIRTUAL_VALID = 4
    uint16 SCORE_VALID = 8
    uint16 available
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    landmark_msgs/AoiNodeTypeEnum type
    bool is_virtual
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/AoiNodeTypeEnum
    uint8 AOI_TYPE_UNKNOWN = 0
    uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1
    uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2
    uint8 AOI_TYPE_TOLLGATE = 3
    uint8 AOI_TYPE_CHECK_POINT = 4
    uint8 AOI_TYPE_SERVICE_AREA = 5
    uint8 AOI_TYPE_CONSTRUCTION_AREA = 6
    uint8 AOI_TYPE_INTERSECTION = 7
    uint8 AOI_TYPE_BARRIER_GAP = 8
    uint8 AOI_TYPE_STOPPING_AREA = 9
    uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10
    uint8 AOI_TYPE_FACILITY_ENTRANCE = 11
    uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12
    uint8 AOI_TYPE_FLOORS = 13
    uint8 AOI_TYPE_GARAGE_EXIT = 14
    uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15
    uint8 AOI_TYPE_HILL = 16
    uint8 AOI_TYPE_HUMAN_ACCESS = 17
    uint8 AOI_TYPE_PARK_INTERSECTION = 18
    uint8 AOI_TYPE_TOLL_GATE = 19
    uint8 AOI_TYPE_SUB_REGION = 20
    uint8 AOI_TYPE_MARKET_ENTRANCE = 21
    uint8 AOI_TYPE_GARAGE_ENTRANCE = 22
    uint8 AOI_TYPE_FACILITY_EXIT = 23
    uint8 AOI_TYPE_BUS_STOP = 24
    uint8 AOI_TYPE_CHARGIINIG_AREA = 25
    uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26
    uint8 AOI_TYPE_DASH_UTURN_AREA = 27
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/SpeedBumpNode
    uint16 SCORE_VALID = 1
    uint16 LINE_POINTS_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 WIDTH_VALID = 8
    uint16 IS_VIRETUAL_VALID = 16
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] line_points
    landmark_msgs/SpeedBumpTypeEnum type
    float32 width
    bool is_virtual
    
    ================================================================================
    MSG: landmark_msgs/SpeedBumpTypeEnum
    uint8 SPEED_BUMP_TYPE_UNKNOWN = 0
    uint8 SPEED_BUMP_TYPE_NORMAL = 1
    uint8 SPEED_BUMP_TYPE_BLOCK = 2
    uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNode
    uint32 POSITION_VALID = 1
    uint32 SHAPE_POINTS_VALID = 2
    uint32 TYPE_VALID = 4
    uint32 SHAPE_TYPE_VALID = 8
    uint32 SCORE_VALID = 16
    uint32 IGNORED_VALID = 32
    uint32 SPEED_LIMIT_VALID = 64
    uint32 HEIGHT_LIMIT_VALID = 128
    uint32 PARKING_SUBTYPE_VALID = 256
    uint32 PARKING_ARROW_VALID = 512
    uint32 LANE_POSITION_ARROW_VALID = 1024
    uint32 REGION_VALID = 2048
    uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096
    uint32 DIRECTIONS_VALID = 8192
    uint32 IS_ELECTRONIC_VALID = 16384
    uint32 TOLL_STATION_VALID = 32768
    uint32 STAY_ON_VALID = 65536
    uint32 PASS_ON_VALID = 131072
    uint32 DRIVE_TO_VALID = 262144
    uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288
    uint32 IS_DIRECTION_GROUPED_VALID = 1048576
    uint32 WAITING_AREA_ALLOW_VALID = 2097152
    uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304
    uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608
    uint32 available
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f position
    perception_interface_msgs/Point3f[] shape_points
    landmark_msgs/TrafficSignNodeTypeEnum type
    landmark_msgs/TrafficSignShapeTypeEnum shape_type
    float32 score
    bool ignored
    landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit
    landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit
    landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths
    landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype
    landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow
    landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow
    landmark_msgs/TrafficSignNodeRegionEnum region
    landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions
    landmark_msgs/TrafficSignNodeDirectionEnum[] directions
    bool is_electronic
    landmark_msgs/TrafficSignNodeTollStationEnum toll_station
    landmark_msgs/TrafficSignNodeStayOnEnum stay_on
    landmark_msgs/TrafficSignNodePassOnEnum pass_on
    landmark_msgs/TrafficSignNodeDriveToEnum drive_to
    bool is_lane_level_limit
    bool is_direction_grouped
    landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow
    landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions
    landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeTypeEnum
    uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1
    uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2
    uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7
    uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8
    uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10
    uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11
    uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13
    uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14
    uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22
    uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48
    uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50
    uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51
    uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54
    uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55
    uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58
    uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59
    uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60
    uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99
    uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100
    uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101
    uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102
    uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103
    uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104
    uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105
    uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106
    uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107
    uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108
    uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109
    uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110
    uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111
    uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112
    uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113
    uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114
    uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115
    uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116
    uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150
    uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151
    uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154
    uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156
    uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157
    uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158
    uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248
    uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249
    uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250
    uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251
    uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252
    uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253
    uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254
    uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignShapeTypeEnum
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeRegionEnum
    uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
    uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
    uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
    uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeTollStationEnum
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeStayOnEnum
    uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodePassOnEnum
    uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeDriveToEnum
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/PoleNode
    uint16 SCORE_VALID = 1
    uint16 SHAPE_POINTS_VALID = 2
    uint16 TYPE_VALID = 4
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] shape_points
    landmark_msgs/PoleNodeTypeEnum type
    
    ================================================================================
    MSG: landmark_msgs/PoleNodeTypeEnum
    uint8 POLE_NODE_TYPE_UNKNOWN = 0
    uint8 POLE_NODE_TYPE_GENERAL_POLE = 1
    uint8 POLE_NODE_TYPE_LIGHT_POLE = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightNode
    uint32 TYPE_VALID = 1
    uint32 PATTERN_VALID = 2
    uint32 STATUS_VALID = 4
    uint32 PATTERN_SCORE_VALID = 8
    uint32 STATUS_SCORE_VALID = 16
    uint32 DURATION_VALID = 32
    uint32 REMAINING_VALID = 64
    uint32 COUNT_NUMBER_VALID = 128
    uint32 SHAPE_3D_VALID = 256
    uint32 SHAPE_VALID = 512
    uint32 DIRECTIONS_VALID = 1024
    uint32 LOCATION_VALID = 2048
    uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096
    uint32 IN_INTERSECTION_VALID = 8192
    uint32 SCORE_VALID = 16384
    uint32 HEADING_THETA_BV_VALID = 32768
    uint32 DIGITS_VALID = 65536
    uint32 DIGIT_SCORES_VALID = 131072
    uint32 GROUP_SHAPE_TYPE_VALID = 262144
    uint32 GROUP_SHAPE_SCORE_VALID = 524288
    uint32 GROUP_PROPERTY_VALID = 1048576
    uint32 TRACK_ID_2D_VALID = 2097152
    uint32 OBSERVED_BY_EGO_VALID = 4194304
    uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608
    uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216
    uint32 available
    landmark_msgs/TrackId track_id
    landmark_msgs/TrafficLightTypeEnum type
    landmark_msgs/TrafficLightPatternEnum[] pattern
    landmark_msgs/TrafficLightStatusEnum[] status
    float32[] pattern_score
    float32[] status_score
    float32 duration
    float32 remaining
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f[] shape
    landmark_msgs/TrafficLightDirectionEnum[] directions
    perception_interface_msgs/Point3f location
    landmark_msgs/TrafficLightDecision[] traffic_light_decision
    bool in_intersection
    float32 score
    float32 heading_theta_bv
    uint8[] digits
    float32[] digit_scores
    landmark_msgs/TrafficLightGroupShapeEnum group_shape_type
    float32 group_shape_score
    landmark_msgs/TrafficLightGroupPropertyEnum group_property
    int32[] track_id_2d
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightTypeEnum
    uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
    uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
    uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
    uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 TRAFFIC_LIGHT_STATUS_ON = 13
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightDirectionEnum
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightDecision
    uint32 PATTERN_VALID = 1
    uint32 STATUS_VALID = 2
    uint32 DURATION_VALID = 4
    uint32 REMAINING_VALID = 8
    uint32 COUNT_NUMBER_VALID = 16
    uint32 SCORE_VALID = 32
    uint32 RESERVED_INFO_VALID = 64
    uint32 POS_FEATURE_VALID = 128
    uint32 PHYSICAL_NODE_LIST_VALID = 256
    landmark_msgs/TrafficLightPatternEnum pattern
    landmark_msgs/TrafficLightStatusEnum status
    float32 duration
    float32 remaining
    uint8 count_number
    float32 score
    string reserved_info
    landmark_msgs/TrafficLightPositionFeature pos_feature
    landmark_msgs/TrackId[] physical_node_list
    uint32 available
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPositionFeature
    perception_interface_msgs/Point3f position
    float32 yaw
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroupShapeEnum
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroupPropertyEnum
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightObservedByEgoEnum
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/DashLineEndNode
    uint16 SCORE_VALID = 1
    uint16 CENTER_VALID = 2
    uint16 SEGMENT_START_VALID = 4
    uint16 SEGMENT_END_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f center
    perception_interface_msgs/Point3f segment_start
    perception_interface_msgs/Point3f segment_end
    
    ================================================================================
    MSG: landmark_msgs/RoadEntryLineNode
    uint16 SCORE_VALID = 1
    uint16 LINE_POINTS_VALID = 2
    uint16 IS_VIRTUAL_VALID = 4
    uint16 PASS_DIRECTION_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] line_points
    bool is_virtual
    landmark_msgs/RoadEntryLinePassDirectionTypeEnum pass_direction
    
    ================================================================================
    MSG: landmark_msgs/RoadEntryLinePassDirectionTypeEnum
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
    uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignGuideArrowNode
    uint16 POLYGON_POINTS_VALID = 1
    uint16 TYPES_VALID = 2
    uint16 SCORE_VALID = 4
    uint16 available
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] types
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignGuideArrowNodeTypeEnum
    uint8 UNKNOWN = 0
    uint8 DIRECTIONAL_ARROW_POINTING_UP = 1
    uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2
    uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3
    uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4
    uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5
    uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/NoParkingZoneNode
    uint16 POLYGON_POINTS_VALID = 1
    uint16 SCORE_VALID = 2
    uint16 available
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/ParkingSpaceNode
    uint16 ATTRIBUTE_VALID = 1
    uint16 POLYGON_POINTS_VALID = 2
    uint16 SCORE_VALID = 4
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/ParkingSpaceAttributeEnum attribute
    perception_interface_msgs/Point3f[] polygon_points
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/ParkingSpaceAttributeEnum
    uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0
    uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1
    uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadObstacleNode
    uint16 TYPE_VALID = 1
    uint16 PILLAR_CENTER_VALID = 2
    uint16 POINTS_VALID = 4
    uint16 SCORE_VALID = 8
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/RoadObstacleTypeEnum type
    perception_interface_msgs/Point3f pillar_center
    perception_interface_msgs/Point3f[] points
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/RoadObstacleTypeEnum
    uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
    uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/ParkingFacility
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/ParkingFacilityTypeEnum type
    int8 floor
    
    ================================================================================
    MSG: landmark_msgs/ParkingFacilityTypeEnum
    uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0
    uint8 PARKING_FACILITY_TYPE_FLOOR = 1
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadSurfaceNode
    uint16 NODE_TYPE_VALID = 1
    uint16 SCORE_VALID = 2
    uint16 POLYGON_VALID = 4
    landmark_msgs/TrackId track_id
    uint16 available
    landmark_msgs/RoadSurfaceTypeEnum type
    float32 score
    perception_interface_msgs/Point3f[] polygon
    
    ================================================================================
    MSG: landmark_msgs/RoadSurfaceTypeEnum
    uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0
    uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/IntersectionGuideLineNode
    uint16 SCORE_VALID = 1
    uint16 LINE_POINTS_VALID = 2
    uint16 available
    float32 score
    int32 index
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] line_points
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightSingleFrame2dInfo
    uint32 CAMERA_SOURCE_VALID = 1
    uint32 CAMERA_MODEL_VALID = 2
    uint32 SCORE_VALID = 4
    uint32 BOUNDING_BOX_2D_VALID = 8
    uint32 ONOFF_VALID = 16
    uint32 GROUP_TYPE_SCORES_VALID = 32
    uint32 SHAPE_SCORES_VALID = 64
    uint32 ONOFF_SCORES_VALID = 128
    uint32 COUNT_NUMBER_VALID = 256
    uint32 BBOX_TYPE_VALID = 512
    uint32 PATTERN_VALID = 1024
    uint32 STATUS_VALID = 2048
    uint32 PATTERN_SCORES_VALID = 4096
    uint32 STATUS_SCORES_VALID = 8192
    uint32 LOCATION_BV_VALID = 16384
    uint32 HEADING_THETA_BV_VALID = 32768
    int32 track_id
    landmark_msgs/CameraSourceEnum camera_source
    landmark_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/Rect4f bounding_box_2d
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    float32[] group_type_scores
    float32[] shape_scores
    float32[] onoff_scores
    uint8 count_number
    landmark_msgs/TrafficLightBBoxTypeEnum bbox_type
    landmark_msgs/TrafficLightPatternEnum[] pattern
    landmark_msgs/TrafficLightStatusEnum[] status
    float32[] pattern_scores
    float32[] status_scores
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    string reserved_info
    uint32 available
    
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
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightOnOffEnum
    uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
    uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
    uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
    uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightBBoxTypeEnum
    uint8 LIGHT_GROUP = 0
    uint8 LIGHT_BULB = 1
    uint8 LIGHT_TYPE_GLIM_HALO = 2
    uint8 LIGHT_TYPE_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignSingleFrame2dInfo
    uint32 CAMERA_SOURCE_VALID = 1
    uint32 CAMERA_MODEL_VALID = 2
    uint32 SCORE_VALID = 4
    uint32 BOUNDING_BOX_2D_VALID = 8
    uint32 SIGN_TYPE_SCORE_VALID = 16
    uint32 ATTR_NAMES_VALID = 32
    uint32 ATTR_SCORES_VALID = 64
    int32 track_id
    landmark_msgs/CameraSourceEnum camera_source
    landmark_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/Rect4f bounding_box_2d
    float32 sign_type_score
    string[] attr_names
    float32[] attr_scores
    string reserved_info
    uint32 available
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkNodes(null);
    if (msg.lane_centers !== undefined) {
      resolved.lane_centers = new Array(msg.lane_centers.length);
      for (let i = 0; i < resolved.lane_centers.length; ++i) {
        resolved.lane_centers[i] = LaneCenterNode.Resolve(msg.lane_centers[i]);
      }
    }
    else {
      resolved.lane_centers = []
    }

    if (msg.lane_boundaries !== undefined) {
      resolved.lane_boundaries = new Array(msg.lane_boundaries.length);
      for (let i = 0; i < resolved.lane_boundaries.length; ++i) {
        resolved.lane_boundaries[i] = LaneBoundaryNode.Resolve(msg.lane_boundaries[i]);
      }
    }
    else {
      resolved.lane_boundaries = []
    }

    if (msg.road_boundaries !== undefined) {
      resolved.road_boundaries = new Array(msg.road_boundaries.length);
      for (let i = 0; i < resolved.road_boundaries.length; ++i) {
        resolved.road_boundaries[i] = RoadBoundaryNode.Resolve(msg.road_boundaries[i]);
      }
    }
    else {
      resolved.road_boundaries = []
    }

    if (msg.road !== undefined) {
      resolved.road = new Array(msg.road.length);
      for (let i = 0; i < resolved.road.length; ++i) {
        resolved.road[i] = RoadNode.Resolve(msg.road[i]);
      }
    }
    else {
      resolved.road = []
    }

    if (msg.stop_lines !== undefined) {
      resolved.stop_lines = new Array(msg.stop_lines.length);
      for (let i = 0; i < resolved.stop_lines.length; ++i) {
        resolved.stop_lines[i] = StopLineNode.Resolve(msg.stop_lines[i]);
      }
    }
    else {
      resolved.stop_lines = []
    }

    if (msg.cross_walks !== undefined) {
      resolved.cross_walks = new Array(msg.cross_walks.length);
      for (let i = 0; i < resolved.cross_walks.length; ++i) {
        resolved.cross_walks[i] = CrossWalkNode.Resolve(msg.cross_walks[i]);
      }
    }
    else {
      resolved.cross_walks = []
    }

    if (msg.valid_rois !== undefined) {
      resolved.valid_rois = new Array(msg.valid_rois.length);
      for (let i = 0; i < resolved.valid_rois.length; ++i) {
        resolved.valid_rois[i] = ValidRoiNode.Resolve(msg.valid_rois[i]);
      }
    }
    else {
      resolved.valid_rois = []
    }

    if (msg.road_marks !== undefined) {
      resolved.road_marks = new Array(msg.road_marks.length);
      for (let i = 0; i < resolved.road_marks.length; ++i) {
        resolved.road_marks[i] = RoadMarkNode.Resolve(msg.road_marks[i]);
      }
    }
    else {
      resolved.road_marks = []
    }

    if (msg.aois !== undefined) {
      resolved.aois = new Array(msg.aois.length);
      for (let i = 0; i < resolved.aois.length; ++i) {
        resolved.aois[i] = AoiNode.Resolve(msg.aois[i]);
      }
    }
    else {
      resolved.aois = []
    }

    if (msg.speed_bumps !== undefined) {
      resolved.speed_bumps = new Array(msg.speed_bumps.length);
      for (let i = 0; i < resolved.speed_bumps.length; ++i) {
        resolved.speed_bumps[i] = SpeedBumpNode.Resolve(msg.speed_bumps[i]);
      }
    }
    else {
      resolved.speed_bumps = []
    }

    if (msg.traffic_signs !== undefined) {
      resolved.traffic_signs = new Array(msg.traffic_signs.length);
      for (let i = 0; i < resolved.traffic_signs.length; ++i) {
        resolved.traffic_signs[i] = TrafficSignNode.Resolve(msg.traffic_signs[i]);
      }
    }
    else {
      resolved.traffic_signs = []
    }

    if (msg.poles !== undefined) {
      resolved.poles = new Array(msg.poles.length);
      for (let i = 0; i < resolved.poles.length; ++i) {
        resolved.poles[i] = PoleNode.Resolve(msg.poles[i]);
      }
    }
    else {
      resolved.poles = []
    }

    if (msg.traffic_lights !== undefined) {
      resolved.traffic_lights = new Array(msg.traffic_lights.length);
      for (let i = 0; i < resolved.traffic_lights.length; ++i) {
        resolved.traffic_lights[i] = TrafficLightNode.Resolve(msg.traffic_lights[i]);
      }
    }
    else {
      resolved.traffic_lights = []
    }

    if (msg.dash_line_ends !== undefined) {
      resolved.dash_line_ends = new Array(msg.dash_line_ends.length);
      for (let i = 0; i < resolved.dash_line_ends.length; ++i) {
        resolved.dash_line_ends[i] = DashLineEndNode.Resolve(msg.dash_line_ends[i]);
      }
    }
    else {
      resolved.dash_line_ends = []
    }

    if (msg.road_entry_line_nodes !== undefined) {
      resolved.road_entry_line_nodes = new Array(msg.road_entry_line_nodes.length);
      for (let i = 0; i < resolved.road_entry_line_nodes.length; ++i) {
        resolved.road_entry_line_nodes[i] = RoadEntryLineNode.Resolve(msg.road_entry_line_nodes[i]);
      }
    }
    else {
      resolved.road_entry_line_nodes = []
    }

    if (msg.traffic_sign_guide_arrow_nodes !== undefined) {
      resolved.traffic_sign_guide_arrow_nodes = new Array(msg.traffic_sign_guide_arrow_nodes.length);
      for (let i = 0; i < resolved.traffic_sign_guide_arrow_nodes.length; ++i) {
        resolved.traffic_sign_guide_arrow_nodes[i] = TrafficSignGuideArrowNode.Resolve(msg.traffic_sign_guide_arrow_nodes[i]);
      }
    }
    else {
      resolved.traffic_sign_guide_arrow_nodes = []
    }

    if (msg.no_parking_zone_nodes !== undefined) {
      resolved.no_parking_zone_nodes = new Array(msg.no_parking_zone_nodes.length);
      for (let i = 0; i < resolved.no_parking_zone_nodes.length; ++i) {
        resolved.no_parking_zone_nodes[i] = NoParkingZoneNode.Resolve(msg.no_parking_zone_nodes[i]);
      }
    }
    else {
      resolved.no_parking_zone_nodes = []
    }

    if (msg.parking_space_nodes !== undefined) {
      resolved.parking_space_nodes = new Array(msg.parking_space_nodes.length);
      for (let i = 0; i < resolved.parking_space_nodes.length; ++i) {
        resolved.parking_space_nodes[i] = ParkingSpaceNode.Resolve(msg.parking_space_nodes[i]);
      }
    }
    else {
      resolved.parking_space_nodes = []
    }

    if (msg.road_obstacle_nodes !== undefined) {
      resolved.road_obstacle_nodes = new Array(msg.road_obstacle_nodes.length);
      for (let i = 0; i < resolved.road_obstacle_nodes.length; ++i) {
        resolved.road_obstacle_nodes[i] = RoadObstacleNode.Resolve(msg.road_obstacle_nodes[i]);
      }
    }
    else {
      resolved.road_obstacle_nodes = []
    }

    if (msg.parking_facility_nodes !== undefined) {
      resolved.parking_facility_nodes = new Array(msg.parking_facility_nodes.length);
      for (let i = 0; i < resolved.parking_facility_nodes.length; ++i) {
        resolved.parking_facility_nodes[i] = ParkingFacility.Resolve(msg.parking_facility_nodes[i]);
      }
    }
    else {
      resolved.parking_facility_nodes = []
    }

    if (msg.road_surface_node !== undefined) {
      resolved.road_surface_node = new Array(msg.road_surface_node.length);
      for (let i = 0; i < resolved.road_surface_node.length; ++i) {
        resolved.road_surface_node[i] = RoadSurfaceNode.Resolve(msg.road_surface_node[i]);
      }
    }
    else {
      resolved.road_surface_node = []
    }

    if (msg.intersection_guide_lines !== undefined) {
      resolved.intersection_guide_lines = new Array(msg.intersection_guide_lines.length);
      for (let i = 0; i < resolved.intersection_guide_lines.length; ++i) {
        resolved.intersection_guide_lines[i] = IntersectionGuideLineNode.Resolve(msg.intersection_guide_lines[i]);
      }
    }
    else {
      resolved.intersection_guide_lines = []
    }

    if (msg.traffic_light_single_frame_2d_info !== undefined) {
      resolved.traffic_light_single_frame_2d_info = new Array(msg.traffic_light_single_frame_2d_info.length);
      for (let i = 0; i < resolved.traffic_light_single_frame_2d_info.length; ++i) {
        resolved.traffic_light_single_frame_2d_info[i] = TrafficLightSingleFrame2dInfo.Resolve(msg.traffic_light_single_frame_2d_info[i]);
      }
    }
    else {
      resolved.traffic_light_single_frame_2d_info = []
    }

    if (msg.traffic_sign_single_frame_2d_info !== undefined) {
      resolved.traffic_sign_single_frame_2d_info = new Array(msg.traffic_sign_single_frame_2d_info.length);
      for (let i = 0; i < resolved.traffic_sign_single_frame_2d_info.length; ++i) {
        resolved.traffic_sign_single_frame_2d_info[i] = TrafficSignSingleFrame2dInfo.Resolve(msg.traffic_sign_single_frame_2d_info[i]);
      }
    }
    else {
      resolved.traffic_sign_single_frame_2d_info = []
    }

    if (msg.traffic_light_decisions !== undefined) {
      resolved.traffic_light_decisions = new Array(msg.traffic_light_decisions.length);
      for (let i = 0; i < resolved.traffic_light_decisions.length; ++i) {
        resolved.traffic_light_decisions[i] = TrafficLightDecision.Resolve(msg.traffic_light_decisions[i]);
      }
    }
    else {
      resolved.traffic_light_decisions = []
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    return resolved;
    }
};

// Constants for message
LandmarkNodes.Constants = {
  AVAILABLE_LANDMARK_NODE_LANE_CENTER: 1,
  AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY: 2,
  AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY: 4,
  AVAILABLE_LANDMARK_NODE_ROAD: 8,
  AVAILABLE_LANDMARK_NODE_STOP_LINE: 16,
  AVAILABLE_LANDMARK_NODE_CROSS_WALK: 32,
  AVAILABLE_LANDMARK_NODE_VALID_ROI: 64,
  AVAILABLE_LANDMARK_NODE_ROAD_MARK: 128,
  AVAILABLE_LANDMARK_NODE_AOI: 256,
  AVAILABLE_LANDMARK_NODE_SPEED_BUMP: 512,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN: 1024,
  AVAILABLE_LANDMARK_NODE_POLE: 2048,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT: 4096,
  AVAILABLE_LANDMARK_NODE_DASH_LINE_END: 8192,
  AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE: 16384,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW: 32768,
  AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE: 65536,
  AVAILABLE_LANDMARK_NODE_PARKING_SPACE: 131072,
  AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE: 262144,
  AVAILABLE_LANDMARK_NODE_PARKING_FACILITY: 524288,
  AVAILABLE_LANDMARK_NODE_ROAD_SURFACE: 1048576,
  AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE: 2097152,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO: 4194304,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO: 8388608,
  AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS: 16777216,
}

module.exports = LandmarkNodes;
