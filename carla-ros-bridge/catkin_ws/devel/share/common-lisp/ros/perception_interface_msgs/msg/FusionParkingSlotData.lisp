; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionParkingSlotData.msg.html

(cl:defclass <FusionParkingSlotData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (charge_property
    :reader charge_property
    :initarg :charge_property
    :type cl:fixnum
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (empty_votes
    :reader empty_votes
    :initarg :empty_votes
    :type cl:integer
    :initform 0)
   (points_fusion
    :reader points_fusion
    :initarg :points_fusion
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (points_fusion_confidence
    :reader points_fusion_confidence
    :initarg :points_fusion_confidence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_fusion_type
    :reader points_fusion_type
    :initarg :points_fusion_type
    :type (cl:vector perception_interface_msgs-msg:ParkingSlotPointTypeEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum)))
   (local_points_fusion
    :reader local_points_fusion
    :initarg :local_points_fusion
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (local_points_fusion_confidence
    :reader local_points_fusion_confidence
    :initarg :local_points_fusion_confidence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (local_points_fusion_type
    :reader local_points_fusion_type
    :initarg :local_points_fusion_type
    :type (cl:vector perception_interface_msgs-msg:ParkingSlotPointTypeEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum)))
   (points_fusion_in_image
    :reader points_fusion_in_image
    :initarg :points_fusion_in_image
    :type (cl:vector perception_interface_msgs-msg:Point2f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point2f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point2f)))
   (points_fusion_in_image_confidence
    :reader points_fusion_in_image_confidence
    :initarg :points_fusion_in_image_confidence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_fusion_in_image_type
    :reader points_fusion_in_image_type
    :initarg :points_fusion_in_image_type
    :type (cl:vector perception_interface_msgs-msg:ParkingSlotPointTypeEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum)))
   (local_wheel_stop_points
    :reader local_wheel_stop_points
    :initarg :local_wheel_stop_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (slot_type
    :reader slot_type
    :initarg :slot_type
    :type perception_interface_msgs-msg:FusionParkingSlotType
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionParkingSlotType))
   (special_slot_type
    :reader special_slot_type
    :initarg :special_slot_type
    :type perception_interface_msgs-msg:FusionSpecialParkingSlotType
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionSpecialParkingSlotType))
   (virtual_point
    :reader virtual_point
    :initarg :virtual_point
    :type perception_interface_msgs-msg:ParkingSlotVirtualPoint
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotVirtualPoint))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass FusionParkingSlotData (<FusionParkingSlotData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionParkingSlotData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionParkingSlotData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionParkingSlotData> is deprecated: use perception_interface_msgs-msg:FusionParkingSlotData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'charge_property-val :lambda-list '(m))
(cl:defmethod charge_property-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:charge_property-val is deprecated.  Use perception_interface_msgs-msg:charge_property instead.")
  (charge_property m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'empty_votes-val :lambda-list '(m))
(cl:defmethod empty_votes-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:empty_votes-val is deprecated.  Use perception_interface_msgs-msg:empty_votes instead.")
  (empty_votes m))

(cl:ensure-generic-function 'points_fusion-val :lambda-list '(m))
(cl:defmethod points_fusion-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion-val is deprecated.  Use perception_interface_msgs-msg:points_fusion instead.")
  (points_fusion m))

(cl:ensure-generic-function 'points_fusion_confidence-val :lambda-list '(m))
(cl:defmethod points_fusion_confidence-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_confidence-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_confidence instead.")
  (points_fusion_confidence m))

(cl:ensure-generic-function 'points_fusion_type-val :lambda-list '(m))
(cl:defmethod points_fusion_type-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_type-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_type instead.")
  (points_fusion_type m))

(cl:ensure-generic-function 'local_points_fusion-val :lambda-list '(m))
(cl:defmethod local_points_fusion-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_points_fusion-val is deprecated.  Use perception_interface_msgs-msg:local_points_fusion instead.")
  (local_points_fusion m))

(cl:ensure-generic-function 'local_points_fusion_confidence-val :lambda-list '(m))
(cl:defmethod local_points_fusion_confidence-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_points_fusion_confidence-val is deprecated.  Use perception_interface_msgs-msg:local_points_fusion_confidence instead.")
  (local_points_fusion_confidence m))

(cl:ensure-generic-function 'local_points_fusion_type-val :lambda-list '(m))
(cl:defmethod local_points_fusion_type-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_points_fusion_type-val is deprecated.  Use perception_interface_msgs-msg:local_points_fusion_type instead.")
  (local_points_fusion_type m))

(cl:ensure-generic-function 'points_fusion_in_image-val :lambda-list '(m))
(cl:defmethod points_fusion_in_image-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_in_image-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_in_image instead.")
  (points_fusion_in_image m))

(cl:ensure-generic-function 'points_fusion_in_image_confidence-val :lambda-list '(m))
(cl:defmethod points_fusion_in_image_confidence-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_in_image_confidence-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_in_image_confidence instead.")
  (points_fusion_in_image_confidence m))

(cl:ensure-generic-function 'points_fusion_in_image_type-val :lambda-list '(m))
(cl:defmethod points_fusion_in_image_type-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_in_image_type-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_in_image_type instead.")
  (points_fusion_in_image_type m))

(cl:ensure-generic-function 'local_wheel_stop_points-val :lambda-list '(m))
(cl:defmethod local_wheel_stop_points-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_wheel_stop_points-val is deprecated.  Use perception_interface_msgs-msg:local_wheel_stop_points instead.")
  (local_wheel_stop_points m))

(cl:ensure-generic-function 'slot_type-val :lambda-list '(m))
(cl:defmethod slot_type-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:slot_type-val is deprecated.  Use perception_interface_msgs-msg:slot_type instead.")
  (slot_type m))

(cl:ensure-generic-function 'special_slot_type-val :lambda-list '(m))
(cl:defmethod special_slot_type-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:special_slot_type-val is deprecated.  Use perception_interface_msgs-msg:special_slot_type instead.")
  (special_slot_type m))

(cl:ensure-generic-function 'virtual_point-val :lambda-list '(m))
(cl:defmethod virtual_point-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:virtual_point-val is deprecated.  Use perception_interface_msgs-msg:virtual_point instead.")
  (virtual_point m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FusionParkingSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionParkingSlotData>)))
    "Constants for message type '<FusionParkingSlotData>"
  '((:FUSION_PARKING_SLOT_SOURCE_VISON . 1)
    (:FUSION_PARKING_SLOT_SOURCE_ULTRASONIC . 2)
    (:FUSION_PARKING_SLOT_SOURCE_MAP . 4)
    (:FUSION_PARKING_SLOT_SOURCE_USER_SELECT . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionParkingSlotData)))
    "Constants for message type 'FusionParkingSlotData"
  '((:FUSION_PARKING_SLOT_SOURCE_VISON . 1)
    (:FUSION_PARKING_SLOT_SOURCE_ULTRASONIC . 2)
    (:FUSION_PARKING_SLOT_SOURCE_MAP . 4)
    (:FUSION_PARKING_SLOT_SOURCE_USER_SELECT . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionParkingSlotData>) ostream)
  "Serializes a message object of type '<FusionParkingSlotData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_property)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'empty_votes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_fusion))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_fusion_confidence))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_fusion_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_points_fusion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_points_fusion))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_points_fusion_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'local_points_fusion_confidence))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_points_fusion_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_points_fusion_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion_in_image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_fusion_in_image))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion_in_image_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_fusion_in_image_confidence))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_fusion_in_image_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_fusion_in_image_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_wheel_stop_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_wheel_stop_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slot_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'special_slot_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'virtual_point) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionParkingSlotData>) istream)
  "Deserializes a message object of type '<FusionParkingSlotData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_property)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'empty_votes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion_confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion_confidence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_points_fusion) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_points_fusion)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_points_fusion_confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_points_fusion_confidence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_points_fusion_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_points_fusion_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion_in_image) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion_in_image)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion_in_image_confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion_in_image_confidence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_fusion_in_image_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_fusion_in_image_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_wheel_stop_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_wheel_stop_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slot_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'special_slot_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'virtual_point) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionParkingSlotData>)))
  "Returns string type for a message object of type '<FusionParkingSlotData>"
  "perception_interface_msgs/FusionParkingSlotData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionParkingSlotData)))
  "Returns string type for a message object of type 'FusionParkingSlotData"
  "perception_interface_msgs/FusionParkingSlotData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionParkingSlotData>)))
  "Returns md5sum for a message object of type '<FusionParkingSlotData>"
  "618da66150395d2014c8628a0fab5524")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionParkingSlotData)))
  "Returns md5sum for a message object of type 'FusionParkingSlotData"
  "618da66150395d2014c8628a0fab5524")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionParkingSlotData>)))
  "Returns full string definition for message of type '<FusionParkingSlotData>"
  (cl:format cl:nil "uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionParkingSlotData)))
  "Returns full string definition for message of type 'FusionParkingSlotData"
  (cl:format cl:nil "uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionParkingSlotData>))
  (cl:+ 0
     1
     1
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_points_fusion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_points_fusion_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_points_fusion_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_in_image) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_in_image_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_in_image_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_wheel_stop_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slot_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'special_slot_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'virtual_point))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionParkingSlotData>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionParkingSlotData
    (cl:cons ':available (available msg))
    (cl:cons ':charge_property (charge_property msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':empty_votes (empty_votes msg))
    (cl:cons ':points_fusion (points_fusion msg))
    (cl:cons ':points_fusion_confidence (points_fusion_confidence msg))
    (cl:cons ':points_fusion_type (points_fusion_type msg))
    (cl:cons ':local_points_fusion (local_points_fusion msg))
    (cl:cons ':local_points_fusion_confidence (local_points_fusion_confidence msg))
    (cl:cons ':local_points_fusion_type (local_points_fusion_type msg))
    (cl:cons ':points_fusion_in_image (points_fusion_in_image msg))
    (cl:cons ':points_fusion_in_image_confidence (points_fusion_in_image_confidence msg))
    (cl:cons ':points_fusion_in_image_type (points_fusion_in_image_type msg))
    (cl:cons ':local_wheel_stop_points (local_wheel_stop_points msg))
    (cl:cons ':slot_type (slot_type msg))
    (cl:cons ':special_slot_type (special_slot_type msg))
    (cl:cons ':virtual_point (virtual_point msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
