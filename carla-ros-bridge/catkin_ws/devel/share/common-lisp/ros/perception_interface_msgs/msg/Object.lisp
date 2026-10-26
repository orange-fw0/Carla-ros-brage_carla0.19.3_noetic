; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((camera_source
    :reader camera_source
    :initarg :camera_source
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type perception_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraModelEnum))
   (type_info
    :reader type_info
    :initarg :type_info
    :type perception_interface_msgs-msg:ObjectTypeInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeInfo))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (visibility_2d
    :reader visibility_2d
    :initarg :visibility_2d
    :type cl:float
    :initform 0.0)
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f))
   (track_info
    :reader track_info
    :initarg :track_info
    :type perception_interface_msgs-msg:ObjectTrackInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectTrackInfo))
   (reid_feature
    :reader reid_feature
    :initarg :reid_feature
    :type perception_interface_msgs-msg:ObjectReIDFeature
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectReIDFeature))
   (vehicle_state_info
    :reader vehicle_state_info
    :initarg :vehicle_state_info
    :type perception_interface_msgs-msg:VehicleStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleStateInfo))
   (barrier_state_info
    :reader barrier_state_info
    :initarg :barrier_state_info
    :type perception_interface_msgs-msg:BarrierStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:BarrierStateInfo))
   (shape_3d
    :reader shape_3d
    :initarg :shape_3d
    :type perception_interface_msgs-msg:Shape3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3f))
   (heading_theta_bv
    :reader heading_theta_bv
    :initarg :heading_theta_bv
    :type cl:float
    :initform 0.0)
   (velocity_bv
    :reader velocity_bv
    :initarg :velocity_bv
    :type perception_interface_msgs-msg:Vector3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3f))
   (location_bv
    :reader location_bv
    :initarg :location_bv
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (aeb_feature
    :reader aeb_feature
    :initarg :aeb_feature
    :type perception_interface_msgs-msg:ObjectAEBFeature
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectAEBFeature))
   (ttc
    :reader ttc
    :initarg :ttc
    :type cl:float
    :initform 0.0)
   (is_cipv
    :reader is_cipv
    :initarg :is_cipv
    :type cl:boolean
    :initform cl:nil)
   (vehicle_vpb_info
    :reader vehicle_vpb_info
    :initarg :vehicle_vpb_info
    :type perception_interface_msgs-msg:VehicleVPBInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleVPBInfo))
   (available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (subtype_score
    :reader subtype_score
    :initarg :subtype_score
    :type cl:float
    :initform 0.0))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<Object> is deprecated: use perception_interface_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'visibility_2d-val :lambda-list '(m))
(cl:defmethod visibility_2d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:visibility_2d-val is deprecated.  Use perception_interface_msgs-msg:visibility_2d instead.")
  (visibility_2d m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_2d-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'track_info-val :lambda-list '(m))
(cl:defmethod track_info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_info-val is deprecated.  Use perception_interface_msgs-msg:track_info instead.")
  (track_info m))

(cl:ensure-generic-function 'reid_feature-val :lambda-list '(m))
(cl:defmethod reid_feature-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reid_feature-val is deprecated.  Use perception_interface_msgs-msg:reid_feature instead.")
  (reid_feature m))

(cl:ensure-generic-function 'vehicle_state_info-val :lambda-list '(m))
(cl:defmethod vehicle_state_info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vehicle_state_info-val is deprecated.  Use perception_interface_msgs-msg:vehicle_state_info instead.")
  (vehicle_state_info m))

(cl:ensure-generic-function 'barrier_state_info-val :lambda-list '(m))
(cl:defmethod barrier_state_info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:barrier_state_info-val is deprecated.  Use perception_interface_msgs-msg:barrier_state_info instead.")
  (barrier_state_info m))

(cl:ensure-generic-function 'shape_3d-val :lambda-list '(m))
(cl:defmethod shape_3d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape_3d-val is deprecated.  Use perception_interface_msgs-msg:shape_3d instead.")
  (shape_3d m))

(cl:ensure-generic-function 'heading_theta_bv-val :lambda-list '(m))
(cl:defmethod heading_theta_bv-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:heading_theta_bv-val is deprecated.  Use perception_interface_msgs-msg:heading_theta_bv instead.")
  (heading_theta_bv m))

(cl:ensure-generic-function 'velocity_bv-val :lambda-list '(m))
(cl:defmethod velocity_bv-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_bv-val is deprecated.  Use perception_interface_msgs-msg:velocity_bv instead.")
  (velocity_bv m))

(cl:ensure-generic-function 'location_bv-val :lambda-list '(m))
(cl:defmethod location_bv-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:location_bv-val is deprecated.  Use perception_interface_msgs-msg:location_bv instead.")
  (location_bv m))

(cl:ensure-generic-function 'aeb_feature-val :lambda-list '(m))
(cl:defmethod aeb_feature-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:aeb_feature-val is deprecated.  Use perception_interface_msgs-msg:aeb_feature instead.")
  (aeb_feature m))

(cl:ensure-generic-function 'ttc-val :lambda-list '(m))
(cl:defmethod ttc-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ttc-val is deprecated.  Use perception_interface_msgs-msg:ttc instead.")
  (ttc m))

(cl:ensure-generic-function 'is_cipv-val :lambda-list '(m))
(cl:defmethod is_cipv-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_cipv-val is deprecated.  Use perception_interface_msgs-msg:is_cipv instead.")
  (is_cipv m))

(cl:ensure-generic-function 'vehicle_vpb_info-val :lambda-list '(m))
(cl:defmethod vehicle_vpb_info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vehicle_vpb_info-val is deprecated.  Use perception_interface_msgs-msg:vehicle_vpb_info instead.")
  (vehicle_vpb_info m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'subtype_score-val :lambda-list '(m))
(cl:defmethod subtype_score-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:subtype_score-val is deprecated.  Use perception_interface_msgs-msg:subtype_score instead.")
  (subtype_score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visibility_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reid_feature) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_state_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'barrier_state_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_3d) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_theta_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_bv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location_bv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_feature) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ttc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_cipv) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_vpb_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'subtype_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visibility_2d) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reid_feature) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_state_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'barrier_state_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_3d) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_theta_bv) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_bv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location_bv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_feature) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_cipv) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_vpb_info) istream)
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'subtype_score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "perception_interface_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "perception_interface_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "c17608303369a0d2549284c16303a11b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "c17608303369a0d2549284c16303a11b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/ObjectTypeInfo type_info~%float32 score~%float32 visibility_2d~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/ObjectTrackInfo track_info~%perception_interface_msgs/ObjectReIDFeature reid_feature~%perception_interface_msgs/VehicleStateInfo vehicle_state_info~%perception_interface_msgs/BarrierStateInfo barrier_state_info~%perception_interface_msgs/Shape3f shape_3d~%float32 heading_theta_bv~%perception_interface_msgs/Vector3f velocity_bv~%perception_interface_msgs/Point3f location_bv~%perception_interface_msgs/ObjectAEBFeature aeb_feature~%float32 ttc~%bool is_cipv~%perception_interface_msgs/VehicleVPBInfo vehicle_vpb_info~%bool available~%float32 subtype_score~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTrackInfo~%uint64 track_id~%uint64 track_times~%float32 age_in_seconds~%~%================================================================================~%MSG: perception_interface_msgs/ObjectReIDFeature~%float32[] data~%~%================================================================================~%MSG: perception_interface_msgs/VehicleStateInfo~%perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/BarrierStateInfo~%perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Vector3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ObjectAEBFeature~%float32[] data~%~%================================================================================~%MSG: perception_interface_msgs/VehicleVPBInfo~%uint8 vpb_point_num~%float32[] vpb_bv_x~%float32[] vpb_bv_y~%float32[] vpb_bv_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/ObjectTypeInfo type_info~%float32 score~%float32 visibility_2d~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/ObjectTrackInfo track_info~%perception_interface_msgs/ObjectReIDFeature reid_feature~%perception_interface_msgs/VehicleStateInfo vehicle_state_info~%perception_interface_msgs/BarrierStateInfo barrier_state_info~%perception_interface_msgs/Shape3f shape_3d~%float32 heading_theta_bv~%perception_interface_msgs/Vector3f velocity_bv~%perception_interface_msgs/Point3f location_bv~%perception_interface_msgs/ObjectAEBFeature aeb_feature~%float32 ttc~%bool is_cipv~%perception_interface_msgs/VehicleVPBInfo vehicle_vpb_info~%bool available~%float32 subtype_score~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTrackInfo~%uint64 track_id~%uint64 track_times~%float32 age_in_seconds~%~%================================================================================~%MSG: perception_interface_msgs/ObjectReIDFeature~%float32[] data~%~%================================================================================~%MSG: perception_interface_msgs/VehicleStateInfo~%perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/BarrierStateInfo~%perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Vector3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ObjectAEBFeature~%float32[] data~%~%================================================================================~%MSG: perception_interface_msgs/VehicleVPBInfo~%uint8 vpb_point_num~%float32[] vpb_bv_x~%float32[] vpb_bv_y~%float32[] vpb_bv_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reid_feature))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_state_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'barrier_state_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_3d))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_bv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location_bv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_feature))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_vpb_info))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':score (score msg))
    (cl:cons ':visibility_2d (visibility_2d msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':track_info (track_info msg))
    (cl:cons ':reid_feature (reid_feature msg))
    (cl:cons ':vehicle_state_info (vehicle_state_info msg))
    (cl:cons ':barrier_state_info (barrier_state_info msg))
    (cl:cons ':shape_3d (shape_3d msg))
    (cl:cons ':heading_theta_bv (heading_theta_bv msg))
    (cl:cons ':velocity_bv (velocity_bv msg))
    (cl:cons ':location_bv (location_bv msg))
    (cl:cons ':aeb_feature (aeb_feature msg))
    (cl:cons ':ttc (ttc msg))
    (cl:cons ':is_cipv (is_cipv msg))
    (cl:cons ':vehicle_vpb_info (vehicle_vpb_info msg))
    (cl:cons ':available (available msg))
    (cl:cons ':subtype_score (subtype_score msg))
))
