
"use strict";

let VisionAEBPerception = require('./VisionAEBPerception.js');
let Vector2f = require('./Vector2f.js');
let GroundLine = require('./GroundLine.js');
let PhysicalTrafficLightMultiFrame = require('./PhysicalTrafficLightMultiFrame.js');
let PerceptionFusionObjectData = require('./PerceptionFusionObjectData.js');
let VehicleDoorStateInfo = require('./VehicleDoorStateInfo.js');
let HDMapIntersectionStopLine = require('./HDMapIntersectionStopLine.js');
let ObjectConfidenceEnum = require('./ObjectConfidenceEnum.js');
let TrafficSignPoint = require('./TrafficSignPoint.js');
let DataDesensibilisationTypeEnum = require('./DataDesensibilisationTypeEnum.js');
let TrafficLightGroupPropertyEnum = require('./TrafficLightGroupPropertyEnum.js');
let FusionGroundLineResult = require('./FusionGroundLineResult.js');
let TrafficBarrierTypeEnum = require('./TrafficBarrierTypeEnum.js');
let RadarPerceptionResult = require('./RadarPerceptionResult.js');
let VehicleBeamLightEnum = require('./VehicleBeamLightEnum.js');
let LaneSegment = require('./LaneSegment.js');
let PerceptionFusionObjectResult = require('./PerceptionFusionObjectResult.js');
let VehicleCutinStateInfo = require('./VehicleCutinStateInfo.js');
let ObjectTypeEnum = require('./ObjectTypeEnum.js');
let TrafficSign = require('./TrafficSign.js');
let MLocPerception = require('./MLocPerception.js');
let TrafficLightNumberEnum = require('./TrafficLightNumberEnum.js');
let LaneHorizontalTypeEnum = require('./LaneHorizontalTypeEnum.js');
let VehicleEgoLaneRelationInfo = require('./VehicleEgoLaneRelationInfo.js');
let LaneTypeEnum = require('./LaneTypeEnum.js');
let MagicCarpetMeta = require('./MagicCarpetMeta.js');
let FrameMeta = require('./FrameMeta.js');
let HDMapTrafficLight = require('./HDMapTrafficLight.js');
let PerceptionSceneTypeEnum = require('./PerceptionSceneTypeEnum.js');
let FusionGroundLine = require('./FusionGroundLine.js');
let ParkingSlotPointTypeEnum = require('./ParkingSlotPointTypeEnum.js');
let TrafficLightPositionFeature = require('./TrafficLightPositionFeature.js');
let ParkingSlotCenterPoint = require('./ParkingSlotCenterPoint.js');
let VehicleTailLightEnum = require('./VehicleTailLightEnum.js');
let RoadEdgePerception = require('./RoadEdgePerception.js');
let ADBInfo = require('./ADBInfo.js');
let VehicleSubTypeEnum = require('./VehicleSubTypeEnum.js');
let TrafficLightOnOffEnum = require('./TrafficLightOnOffEnum.js');
let TrafficLightMultiFrame = require('./TrafficLightMultiFrame.js');
let ParkingSlotSpecialTypeEnum = require('./ParkingSlotSpecialTypeEnum.js');
let VRUSubTypeEnum = require('./VRUSubTypeEnum.js');
let LidarPerceptionResult = require('./LidarPerceptionResult.js');
let LaneSegmentPointEnum = require('./LaneSegmentPointEnum.js');
let AvoidObjectTypeEnum = require('./AvoidObjectTypeEnum.js');
let ObjectTypePropertyEnum = require('./ObjectTypePropertyEnum.js');
let TrafficLightGroupEnum = require('./TrafficLightGroupEnum.js');
let ContiRadarExistenceProbabilityType = require('./ContiRadarExistenceProbabilityType.js');
let HDMapIntersection = require('./HDMapIntersection.js');
let ContiRadarMeasurementState = require('./ContiRadarMeasurementState.js');
let ImageRetrievalDescriptorPerception = require('./ImageRetrievalDescriptorPerception.js');
let WheelSpeed = require('./WheelSpeed.js');
let LidarPerceptionResultMeta = require('./LidarPerceptionResultMeta.js');
let ParkingSlot = require('./ParkingSlot.js');
let VehicleBlinkLightInfo = require('./VehicleBlinkLightInfo.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let TrafficLightDecision = require('./TrafficLightDecision.js');
let VehicleEgoLaneRelationEnum = require('./VehicleEgoLaneRelationEnum.js');
let CameraSourceEnum = require('./CameraSourceEnum.js');
let GroundLine3dPointTypeEnum = require('./GroundLine3dPointTypeEnum.js');
let SpeedSignSpeedEnum = require('./SpeedSignSpeedEnum.js');
let FeaturePointArray = require('./FeaturePointArray.js');
let PerceptionFusionAEBObjects = require('./PerceptionFusionAEBObjects.js');
let RoadLinePerception = require('./RoadLinePerception.js');
let ContiRadarDynamicProperty = require('./ContiRadarDynamicProperty.js');
let VehicleTailLightInfo = require('./VehicleTailLightInfo.js');
let GeneralFeaturePerception = require('./GeneralFeaturePerception.js');
let TrafficLightDetectTrigger = require('./TrafficLightDetectTrigger.js');
let LidarPerceptionObjectData = require('./LidarPerceptionObjectData.js');
let PoleLine = require('./PoleLine.js');
let ImageRetrievalDescriptorPropertyEnum = require('./ImageRetrievalDescriptorPropertyEnum.js');
let VehicleVPBInfo = require('./VehicleVPBInfo.js');
let BasicRadarPerceptionObjectData = require('./BasicRadarPerceptionObjectData.js');
let FusionParkingSlotResult = require('./FusionParkingSlotResult.js');
let FusionObstacleTypeEnum = require('./FusionObstacleTypeEnum.js');
let TrafficLightAssociatedInfo = require('./TrafficLightAssociatedInfo.js');
let GeneralObjectTypeEnum = require('./GeneralObjectTypeEnum.js');
let HDMapTafficLightInformation = require('./HDMapTafficLightInformation.js');
let LanePerception = require('./LanePerception.js');
let BarrierStateInfo = require('./BarrierStateInfo.js');
let ObjectPerception = require('./ObjectPerception.js');
let Point2f = require('./Point2f.js');
let ADASPerceptionResult = require('./ADASPerceptionResult.js');
let RadarPerceptionResultMeta = require('./RadarPerceptionResultMeta.js');
let TrafficLightInFov = require('./TrafficLightInFov.js');
let LidarBEVGridMapResult = require('./LidarBEVGridMapResult.js');
let VehicleBrakeLightEnum = require('./VehicleBrakeLightEnum.js');
let VehicleCutinStateEnum = require('./VehicleCutinStateEnum.js');
let TrafficSignTypeEnum = require('./TrafficSignTypeEnum.js');
let Shape3f = require('./Shape3f.js');
let RoadEdge = require('./RoadEdge.js');
let PerceptionFusionResultMeta = require('./PerceptionFusionResultMeta.js');
let Rect4f = require('./Rect4f.js');
let ImageRetrievalDescriptor = require('./ImageRetrievalDescriptor.js');
let ParkingSlotPoint = require('./ParkingSlotPoint.js');
let ADBSysStatusEnum = require('./ADBSysStatusEnum.js');
let RoadMarkTypeEnum = require('./RoadMarkTypeEnum.js');
let Polygon3f = require('./Polygon3f.js');
let TrafficLightPerceptionResult = require('./TrafficLightPerceptionResult.js');
let ParkingSlotPoint3d = require('./ParkingSlotPoint3d.js');
let PhysicalTrafficLightSingleFrame = require('./PhysicalTrafficLightSingleFrame.js');
let SpeedSignTypeEnum = require('./SpeedSignTypeEnum.js');
let ADASPerception = require('./ADASPerception.js');
let VRUPedSubTypeEnum = require('./VRUPedSubTypeEnum.js');
let FusionGroundLineData = require('./FusionGroundLineData.js');
let Object = require('./Object.js');
let MagicCarpetResult = require('./MagicCarpetResult.js');
let PerceptionObjectTypeEnum = require('./PerceptionObjectTypeEnum.js');
let HDMapTrafficLightGroup = require('./HDMapTrafficLightGroup.js');
let FusionParkingSlotData = require('./FusionParkingSlotData.js');
let TrafficBarrierEgoLaneRelationInfo = require('./TrafficBarrierEgoLaneRelationInfo.js');
let VRUAniSubTypeEnum = require('./VRUAniSubTypeEnum.js');
let Shape2d = require('./Shape2d.js');
let VisionDataDesensibilisationObject = require('./VisionDataDesensibilisationObject.js');
let PoleLinePoint = require('./PoleLinePoint.js');
let PhysicalTrafficLightBulb = require('./PhysicalTrafficLightBulb.js');
let VehicleBlinkLightEnum = require('./VehicleBlinkLightEnum.js');
let TrafficLightGroupShapeEnum = require('./TrafficLightGroupShapeEnum.js');
let PoleLinePerception = require('./PoleLinePerception.js');
let LidarPerceptionObjects = require('./LidarPerceptionObjects.js');
let ParkingSlotVirtualPoint = require('./ParkingSlotVirtualPoint.js');
let RadarPerceptionObjects = require('./RadarPerceptionObjects.js');
let TrafficLightPerception = require('./TrafficLightPerception.js');
let LocationInfo = require('./LocationInfo.js');
let GroundLinePerception = require('./GroundLinePerception.js');
let FusionSpecialParkingSlotType = require('./FusionSpecialParkingSlotType.js');
let VRUTypeEnum = require('./VRUTypeEnum.js');
let PerceptionFusionAEBResult = require('./PerceptionFusionAEBResult.js');
let PerceptionMeta = require('./PerceptionMeta.js');
let VehicleDoorStateEnum = require('./VehicleDoorStateEnum.js');
let ObjectTrackInfo = require('./ObjectTrackInfo.js');
let ADBObjectData = require('./ADBObjectData.js');
let FusionObstaclePointType = require('./FusionObstaclePointType.js');
let TrafficSignPerception = require('./TrafficSignPerception.js');
let ObjectAEBFeature = require('./ObjectAEBFeature.js');
let TrafficBarrierEgoLaneRelationEnum = require('./TrafficBarrierEgoLaneRelationEnum.js');
let LaneColorEnum = require('./LaneColorEnum.js');
let ObjectReIDFeature = require('./ObjectReIDFeature.js');
let Lane = require('./Lane.js');
let LidarRoadEdgeTypeEnum = require('./LidarRoadEdgeTypeEnum.js');
let Vector3f = require('./Vector3f.js');
let TrafficSignRegionEnum = require('./TrafficSignRegionEnum.js');
let Vector3d = require('./Vector3d.js');
let ParkingSlotChargeTypeEnum = require('./ParkingSlotChargeTypeEnum.js');
let Point2d = require('./Point2d.js');
let EgoParkingSlot = require('./EgoParkingSlot.js');
let TrafficLightIndication = require('./TrafficLightIndication.js');
let TrafficSignShapeEnum = require('./TrafficSignShapeEnum.js');
let Shape3d = require('./Shape3d.js');
let ParkingSlotTypeEnum = require('./ParkingSlotTypeEnum.js');
let RestrictionSignTypeEnum = require('./RestrictionSignTypeEnum.js');
let TrafficSignArrowDirectionEnum = require('./TrafficSignArrowDirectionEnum.js');
let RoadMarkLabelMap = require('./RoadMarkLabelMap.js');
let FeaturePointArrayPropertyEnum = require('./FeaturePointArrayPropertyEnum.js');
let MagicCarpetRawObject = require('./MagicCarpetRawObject.js');
let MagicCarpetObject = require('./MagicCarpetObject.js');
let FusionParkingSlot = require('./FusionParkingSlot.js');
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let SpeedSignCategoryEnum = require('./SpeedSignCategoryEnum.js');
let VisionAEBObject = require('./VisionAEBObject.js');
let ParkingSlotPerception = require('./ParkingSlotPerception.js');
let ContiRadarPerceptionObjectData = require('./ContiRadarPerceptionObjectData.js');
let RoadMark = require('./RoadMark.js');
let RoadMarkPerception = require('./RoadMarkPerception.js');
let VehicleBrakeLightInfo = require('./VehicleBrakeLightInfo.js');
let VehicleStateInfo = require('./VehicleStateInfo.js');
let BoschRadarPerceptionObjectData = require('./BoschRadarPerceptionObjectData.js');
let TrafficBarrierUsefulEnum = require('./TrafficBarrierUsefulEnum.js');
let FeaturePointPerception = require('./FeaturePointPerception.js');
let Vector2d = require('./Vector2d.js');
let TrafficLightROI = require('./TrafficLightROI.js');
let DirectionEnum = require('./DirectionEnum.js');
let Point3f = require('./Point3f.js');
let LaneSegmentPerception = require('./LaneSegmentPerception.js');
let PerceptionFusionAEBStateEnum = require('./PerceptionFusionAEBStateEnum.js');
let FusionParkingSlotType = require('./FusionParkingSlotType.js');
let TrafficLightTypeEnum = require('./TrafficLightTypeEnum.js');
let Point3d = require('./Point3d.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');
let VehicleTypeEnum = require('./VehicleTypeEnum.js');
let VisionDataDesensibilisationPerception = require('./VisionDataDesensibilisationPerception.js');
let PerceptionFusionAEBObjectData = require('./PerceptionFusionAEBObjectData.js');
let BoschRadarSensorStatus = require('./BoschRadarSensorStatus.js');
let TrafficLightSingleFrame = require('./TrafficLightSingleFrame.js');
let TrafficLightStatusEnum = require('./TrafficLightStatusEnum.js');
let ReservedParkingSignSubtypeEnum = require('./ReservedParkingSignSubtypeEnum.js');
let GroundLineTypeEnum = require('./GroundLineTypeEnum.js');
let Shape2f = require('./Shape2f.js');
let VehicleBeamLightInfo = require('./VehicleBeamLightInfo.js');
let PoleLineTypeEnum = require('./PoleLineTypeEnum.js');

module.exports = {
  VisionAEBPerception: VisionAEBPerception,
  Vector2f: Vector2f,
  GroundLine: GroundLine,
  PhysicalTrafficLightMultiFrame: PhysicalTrafficLightMultiFrame,
  PerceptionFusionObjectData: PerceptionFusionObjectData,
  VehicleDoorStateInfo: VehicleDoorStateInfo,
  HDMapIntersectionStopLine: HDMapIntersectionStopLine,
  ObjectConfidenceEnum: ObjectConfidenceEnum,
  TrafficSignPoint: TrafficSignPoint,
  DataDesensibilisationTypeEnum: DataDesensibilisationTypeEnum,
  TrafficLightGroupPropertyEnum: TrafficLightGroupPropertyEnum,
  FusionGroundLineResult: FusionGroundLineResult,
  TrafficBarrierTypeEnum: TrafficBarrierTypeEnum,
  RadarPerceptionResult: RadarPerceptionResult,
  VehicleBeamLightEnum: VehicleBeamLightEnum,
  LaneSegment: LaneSegment,
  PerceptionFusionObjectResult: PerceptionFusionObjectResult,
  VehicleCutinStateInfo: VehicleCutinStateInfo,
  ObjectTypeEnum: ObjectTypeEnum,
  TrafficSign: TrafficSign,
  MLocPerception: MLocPerception,
  TrafficLightNumberEnum: TrafficLightNumberEnum,
  LaneHorizontalTypeEnum: LaneHorizontalTypeEnum,
  VehicleEgoLaneRelationInfo: VehicleEgoLaneRelationInfo,
  LaneTypeEnum: LaneTypeEnum,
  MagicCarpetMeta: MagicCarpetMeta,
  FrameMeta: FrameMeta,
  HDMapTrafficLight: HDMapTrafficLight,
  PerceptionSceneTypeEnum: PerceptionSceneTypeEnum,
  FusionGroundLine: FusionGroundLine,
  ParkingSlotPointTypeEnum: ParkingSlotPointTypeEnum,
  TrafficLightPositionFeature: TrafficLightPositionFeature,
  ParkingSlotCenterPoint: ParkingSlotCenterPoint,
  VehicleTailLightEnum: VehicleTailLightEnum,
  RoadEdgePerception: RoadEdgePerception,
  ADBInfo: ADBInfo,
  VehicleSubTypeEnum: VehicleSubTypeEnum,
  TrafficLightOnOffEnum: TrafficLightOnOffEnum,
  TrafficLightMultiFrame: TrafficLightMultiFrame,
  ParkingSlotSpecialTypeEnum: ParkingSlotSpecialTypeEnum,
  VRUSubTypeEnum: VRUSubTypeEnum,
  LidarPerceptionResult: LidarPerceptionResult,
  LaneSegmentPointEnum: LaneSegmentPointEnum,
  AvoidObjectTypeEnum: AvoidObjectTypeEnum,
  ObjectTypePropertyEnum: ObjectTypePropertyEnum,
  TrafficLightGroupEnum: TrafficLightGroupEnum,
  ContiRadarExistenceProbabilityType: ContiRadarExistenceProbabilityType,
  HDMapIntersection: HDMapIntersection,
  ContiRadarMeasurementState: ContiRadarMeasurementState,
  ImageRetrievalDescriptorPerception: ImageRetrievalDescriptorPerception,
  WheelSpeed: WheelSpeed,
  LidarPerceptionResultMeta: LidarPerceptionResultMeta,
  ParkingSlot: ParkingSlot,
  VehicleBlinkLightInfo: VehicleBlinkLightInfo,
  CameraModelEnum: CameraModelEnum,
  TrafficLightDecision: TrafficLightDecision,
  VehicleEgoLaneRelationEnum: VehicleEgoLaneRelationEnum,
  CameraSourceEnum: CameraSourceEnum,
  GroundLine3dPointTypeEnum: GroundLine3dPointTypeEnum,
  SpeedSignSpeedEnum: SpeedSignSpeedEnum,
  FeaturePointArray: FeaturePointArray,
  PerceptionFusionAEBObjects: PerceptionFusionAEBObjects,
  RoadLinePerception: RoadLinePerception,
  ContiRadarDynamicProperty: ContiRadarDynamicProperty,
  VehicleTailLightInfo: VehicleTailLightInfo,
  GeneralFeaturePerception: GeneralFeaturePerception,
  TrafficLightDetectTrigger: TrafficLightDetectTrigger,
  LidarPerceptionObjectData: LidarPerceptionObjectData,
  PoleLine: PoleLine,
  ImageRetrievalDescriptorPropertyEnum: ImageRetrievalDescriptorPropertyEnum,
  VehicleVPBInfo: VehicleVPBInfo,
  BasicRadarPerceptionObjectData: BasicRadarPerceptionObjectData,
  FusionParkingSlotResult: FusionParkingSlotResult,
  FusionObstacleTypeEnum: FusionObstacleTypeEnum,
  TrafficLightAssociatedInfo: TrafficLightAssociatedInfo,
  GeneralObjectTypeEnum: GeneralObjectTypeEnum,
  HDMapTafficLightInformation: HDMapTafficLightInformation,
  LanePerception: LanePerception,
  BarrierStateInfo: BarrierStateInfo,
  ObjectPerception: ObjectPerception,
  Point2f: Point2f,
  ADASPerceptionResult: ADASPerceptionResult,
  RadarPerceptionResultMeta: RadarPerceptionResultMeta,
  TrafficLightInFov: TrafficLightInFov,
  LidarBEVGridMapResult: LidarBEVGridMapResult,
  VehicleBrakeLightEnum: VehicleBrakeLightEnum,
  VehicleCutinStateEnum: VehicleCutinStateEnum,
  TrafficSignTypeEnum: TrafficSignTypeEnum,
  Shape3f: Shape3f,
  RoadEdge: RoadEdge,
  PerceptionFusionResultMeta: PerceptionFusionResultMeta,
  Rect4f: Rect4f,
  ImageRetrievalDescriptor: ImageRetrievalDescriptor,
  ParkingSlotPoint: ParkingSlotPoint,
  ADBSysStatusEnum: ADBSysStatusEnum,
  RoadMarkTypeEnum: RoadMarkTypeEnum,
  Polygon3f: Polygon3f,
  TrafficLightPerceptionResult: TrafficLightPerceptionResult,
  ParkingSlotPoint3d: ParkingSlotPoint3d,
  PhysicalTrafficLightSingleFrame: PhysicalTrafficLightSingleFrame,
  SpeedSignTypeEnum: SpeedSignTypeEnum,
  ADASPerception: ADASPerception,
  VRUPedSubTypeEnum: VRUPedSubTypeEnum,
  FusionGroundLineData: FusionGroundLineData,
  Object: Object,
  MagicCarpetResult: MagicCarpetResult,
  PerceptionObjectTypeEnum: PerceptionObjectTypeEnum,
  HDMapTrafficLightGroup: HDMapTrafficLightGroup,
  FusionParkingSlotData: FusionParkingSlotData,
  TrafficBarrierEgoLaneRelationInfo: TrafficBarrierEgoLaneRelationInfo,
  VRUAniSubTypeEnum: VRUAniSubTypeEnum,
  Shape2d: Shape2d,
  VisionDataDesensibilisationObject: VisionDataDesensibilisationObject,
  PoleLinePoint: PoleLinePoint,
  PhysicalTrafficLightBulb: PhysicalTrafficLightBulb,
  VehicleBlinkLightEnum: VehicleBlinkLightEnum,
  TrafficLightGroupShapeEnum: TrafficLightGroupShapeEnum,
  PoleLinePerception: PoleLinePerception,
  LidarPerceptionObjects: LidarPerceptionObjects,
  ParkingSlotVirtualPoint: ParkingSlotVirtualPoint,
  RadarPerceptionObjects: RadarPerceptionObjects,
  TrafficLightPerception: TrafficLightPerception,
  LocationInfo: LocationInfo,
  GroundLinePerception: GroundLinePerception,
  FusionSpecialParkingSlotType: FusionSpecialParkingSlotType,
  VRUTypeEnum: VRUTypeEnum,
  PerceptionFusionAEBResult: PerceptionFusionAEBResult,
  PerceptionMeta: PerceptionMeta,
  VehicleDoorStateEnum: VehicleDoorStateEnum,
  ObjectTrackInfo: ObjectTrackInfo,
  ADBObjectData: ADBObjectData,
  FusionObstaclePointType: FusionObstaclePointType,
  TrafficSignPerception: TrafficSignPerception,
  ObjectAEBFeature: ObjectAEBFeature,
  TrafficBarrierEgoLaneRelationEnum: TrafficBarrierEgoLaneRelationEnum,
  LaneColorEnum: LaneColorEnum,
  ObjectReIDFeature: ObjectReIDFeature,
  Lane: Lane,
  LidarRoadEdgeTypeEnum: LidarRoadEdgeTypeEnum,
  Vector3f: Vector3f,
  TrafficSignRegionEnum: TrafficSignRegionEnum,
  Vector3d: Vector3d,
  ParkingSlotChargeTypeEnum: ParkingSlotChargeTypeEnum,
  Point2d: Point2d,
  EgoParkingSlot: EgoParkingSlot,
  TrafficLightIndication: TrafficLightIndication,
  TrafficSignShapeEnum: TrafficSignShapeEnum,
  Shape3d: Shape3d,
  ParkingSlotTypeEnum: ParkingSlotTypeEnum,
  RestrictionSignTypeEnum: RestrictionSignTypeEnum,
  TrafficSignArrowDirectionEnum: TrafficSignArrowDirectionEnum,
  RoadMarkLabelMap: RoadMarkLabelMap,
  FeaturePointArrayPropertyEnum: FeaturePointArrayPropertyEnum,
  MagicCarpetRawObject: MagicCarpetRawObject,
  MagicCarpetObject: MagicCarpetObject,
  FusionParkingSlot: FusionParkingSlot,
  ObjectTypeInfo: ObjectTypeInfo,
  SpeedSignCategoryEnum: SpeedSignCategoryEnum,
  VisionAEBObject: VisionAEBObject,
  ParkingSlotPerception: ParkingSlotPerception,
  ContiRadarPerceptionObjectData: ContiRadarPerceptionObjectData,
  RoadMark: RoadMark,
  RoadMarkPerception: RoadMarkPerception,
  VehicleBrakeLightInfo: VehicleBrakeLightInfo,
  VehicleStateInfo: VehicleStateInfo,
  BoschRadarPerceptionObjectData: BoschRadarPerceptionObjectData,
  TrafficBarrierUsefulEnum: TrafficBarrierUsefulEnum,
  FeaturePointPerception: FeaturePointPerception,
  Vector2d: Vector2d,
  TrafficLightROI: TrafficLightROI,
  DirectionEnum: DirectionEnum,
  Point3f: Point3f,
  LaneSegmentPerception: LaneSegmentPerception,
  PerceptionFusionAEBStateEnum: PerceptionFusionAEBStateEnum,
  FusionParkingSlotType: FusionParkingSlotType,
  TrafficLightTypeEnum: TrafficLightTypeEnum,
  Point3d: Point3d,
  TrafficLightPatternEnum: TrafficLightPatternEnum,
  VehicleTypeEnum: VehicleTypeEnum,
  VisionDataDesensibilisationPerception: VisionDataDesensibilisationPerception,
  PerceptionFusionAEBObjectData: PerceptionFusionAEBObjectData,
  BoschRadarSensorStatus: BoschRadarSensorStatus,
  TrafficLightSingleFrame: TrafficLightSingleFrame,
  TrafficLightStatusEnum: TrafficLightStatusEnum,
  ReservedParkingSignSubtypeEnum: ReservedParkingSignSubtypeEnum,
  GroundLineTypeEnum: GroundLineTypeEnum,
  Shape2f: Shape2f,
  VehicleBeamLightInfo: VehicleBeamLightInfo,
  PoleLineTypeEnum: PoleLineTypeEnum,
};
