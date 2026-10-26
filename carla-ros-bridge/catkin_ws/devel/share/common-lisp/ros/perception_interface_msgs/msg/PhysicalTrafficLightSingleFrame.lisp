; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PhysicalTrafficLightSingleFrame.msg.html

(cl:defclass <PhysicalTrafficLightSingleFrame> (roslisp-msg-protocol:ros-message)
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
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (group_type
    :reader group_type
    :initarg :group_type
    :type perception_interface_msgs-msg:TrafficLightGroupEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightGroupEnum))
   (group_shape_type
    :reader group_shape_type
    :initarg :group_shape_type
    :type perception_interface_msgs-msg:TrafficLightGroupShapeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightGroupShapeEnum))
   (group_property
    :reader group_property
    :initarg :group_property
    :type perception_interface_msgs-msg:TrafficLightGroupPropertyEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightGroupPropertyEnum))
   (bulb_num
    :reader bulb_num
    :initarg :bulb_num
    :type cl:fixnum
    :initform 0)
   (bulb
    :reader bulb
    :initarg :bulb
    :type (cl:vector perception_interface_msgs-msg:PhysicalTrafficLightBulb)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:PhysicalTrafficLightBulb :initial-element (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightBulb)))
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f))
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (onoff
    :reader onoff
    :initarg :onoff
    :type (cl:vector perception_interface_msgs-msg:TrafficLightOnOffEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightOnOffEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightOnOffEnum)))
   (group_type_scores
    :reader group_type_scores
    :initarg :group_type_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (shape_scores
    :reader shape_scores
    :initarg :shape_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (onoff_scores
    :reader onoff_scores
    :initarg :onoff_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (count_number
    :reader count_number
    :initarg :count_number
    :type cl:fixnum
    :initform 0)
   (shape_3d
    :reader shape_3d
    :initarg :shape_3d
    :type perception_interface_msgs-msg:Shape3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3f))
   (location_bv
    :reader location_bv
    :initarg :location_bv
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (heading_theta_bv
    :reader heading_theta_bv
    :initarg :heading_theta_bv
    :type cl:float
    :initform 0.0)
   (velocity_bv
    :reader velocity_bv
    :initarg :velocity_bv
    :type perception_interface_msgs-msg:Vector2f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector2f))
   (associated_infos
    :reader associated_infos
    :initarg :associated_infos
    :type (cl:vector perception_interface_msgs-msg:TrafficLightAssociatedInfo)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightAssociatedInfo :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightAssociatedInfo)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass PhysicalTrafficLightSingleFrame (<PhysicalTrafficLightSingleFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PhysicalTrafficLightSingleFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PhysicalTrafficLightSingleFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PhysicalTrafficLightSingleFrame> is deprecated: use perception_interface_msgs-msg:PhysicalTrafficLightSingleFrame instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'group_type-val :lambda-list '(m))
(cl:defmethod group_type-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:group_type-val is deprecated.  Use perception_interface_msgs-msg:group_type instead.")
  (group_type m))

(cl:ensure-generic-function 'group_shape_type-val :lambda-list '(m))
(cl:defmethod group_shape_type-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:group_shape_type-val is deprecated.  Use perception_interface_msgs-msg:group_shape_type instead.")
  (group_shape_type m))

(cl:ensure-generic-function 'group_property-val :lambda-list '(m))
(cl:defmethod group_property-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:group_property-val is deprecated.  Use perception_interface_msgs-msg:group_property instead.")
  (group_property m))

(cl:ensure-generic-function 'bulb_num-val :lambda-list '(m))
(cl:defmethod bulb_num-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bulb_num-val is deprecated.  Use perception_interface_msgs-msg:bulb_num instead.")
  (bulb_num m))

(cl:ensure-generic-function 'bulb-val :lambda-list '(m))
(cl:defmethod bulb-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bulb-val is deprecated.  Use perception_interface_msgs-msg:bulb instead.")
  (bulb m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_2d-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'onoff-val :lambda-list '(m))
(cl:defmethod onoff-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:onoff-val is deprecated.  Use perception_interface_msgs-msg:onoff instead.")
  (onoff m))

(cl:ensure-generic-function 'group_type_scores-val :lambda-list '(m))
(cl:defmethod group_type_scores-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:group_type_scores-val is deprecated.  Use perception_interface_msgs-msg:group_type_scores instead.")
  (group_type_scores m))

(cl:ensure-generic-function 'shape_scores-val :lambda-list '(m))
(cl:defmethod shape_scores-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape_scores-val is deprecated.  Use perception_interface_msgs-msg:shape_scores instead.")
  (shape_scores m))

(cl:ensure-generic-function 'onoff_scores-val :lambda-list '(m))
(cl:defmethod onoff_scores-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:onoff_scores-val is deprecated.  Use perception_interface_msgs-msg:onoff_scores instead.")
  (onoff_scores m))

(cl:ensure-generic-function 'count_number-val :lambda-list '(m))
(cl:defmethod count_number-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:count_number-val is deprecated.  Use perception_interface_msgs-msg:count_number instead.")
  (count_number m))

(cl:ensure-generic-function 'shape_3d-val :lambda-list '(m))
(cl:defmethod shape_3d-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape_3d-val is deprecated.  Use perception_interface_msgs-msg:shape_3d instead.")
  (shape_3d m))

(cl:ensure-generic-function 'location_bv-val :lambda-list '(m))
(cl:defmethod location_bv-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:location_bv-val is deprecated.  Use perception_interface_msgs-msg:location_bv instead.")
  (location_bv m))

(cl:ensure-generic-function 'heading_theta_bv-val :lambda-list '(m))
(cl:defmethod heading_theta_bv-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:heading_theta_bv-val is deprecated.  Use perception_interface_msgs-msg:heading_theta_bv instead.")
  (heading_theta_bv m))

(cl:ensure-generic-function 'velocity_bv-val :lambda-list '(m))
(cl:defmethod velocity_bv-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_bv-val is deprecated.  Use perception_interface_msgs-msg:velocity_bv instead.")
  (velocity_bv m))

(cl:ensure-generic-function 'associated_infos-val :lambda-list '(m))
(cl:defmethod associated_infos-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:associated_infos-val is deprecated.  Use perception_interface_msgs-msg:associated_infos instead.")
  (associated_infos m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <PhysicalTrafficLightSingleFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PhysicalTrafficLightSingleFrame>) ostream)
  "Serializes a message object of type '<PhysicalTrafficLightSingleFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_shape_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_property) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bulb_num)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bulb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bulb))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'onoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'onoff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'group_type_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'group_type_scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'onoff_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'onoff_scores))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_3d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location_bv) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_theta_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_bv) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'associated_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'associated_infos))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PhysicalTrafficLightSingleFrame>) istream)
  "Deserializes a message object of type '<PhysicalTrafficLightSingleFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_shape_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_property) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bulb_num)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bulb) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bulb)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightBulb))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'onoff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'onoff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightOnOffEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'group_type_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'group_type_scores)))
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
  (cl:setf (cl:slot-value msg 'shape_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_scores)))
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
  (cl:setf (cl:slot-value msg 'onoff_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'onoff_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_3d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location_bv) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_theta_bv) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_bv) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'associated_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'associated_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightAssociatedInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PhysicalTrafficLightSingleFrame>)))
  "Returns string type for a message object of type '<PhysicalTrafficLightSingleFrame>"
  "perception_interface_msgs/PhysicalTrafficLightSingleFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PhysicalTrafficLightSingleFrame)))
  "Returns string type for a message object of type 'PhysicalTrafficLightSingleFrame"
  "perception_interface_msgs/PhysicalTrafficLightSingleFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PhysicalTrafficLightSingleFrame>)))
  "Returns md5sum for a message object of type '<PhysicalTrafficLightSingleFrame>"
  "493fc9d1b4e30252959cfd08068815b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PhysicalTrafficLightSingleFrame)))
  "Returns md5sum for a message object of type 'PhysicalTrafficLightSingleFrame"
  "493fc9d1b4e30252959cfd08068815b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PhysicalTrafficLightSingleFrame>)))
  "Returns full string definition for message of type '<PhysicalTrafficLightSingleFrame>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupEnum~%uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightBulb~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 bulb_id~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightNumberEnum~%uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightAssociatedInfo~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PhysicalTrafficLightSingleFrame)))
  "Returns full string definition for message of type 'PhysicalTrafficLightSingleFrame"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupEnum~%uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightBulb~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 bulb_id~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightNumberEnum~%uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightAssociatedInfo~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PhysicalTrafficLightSingleFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_shape_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_property))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bulb) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'onoff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'group_type_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'onoff_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_3d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location_bv))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_bv))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'associated_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PhysicalTrafficLightSingleFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'PhysicalTrafficLightSingleFrame
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':score (score msg))
    (cl:cons ':group_type (group_type msg))
    (cl:cons ':group_shape_type (group_shape_type msg))
    (cl:cons ':group_property (group_property msg))
    (cl:cons ':bulb_num (bulb_num msg))
    (cl:cons ':bulb (bulb msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':onoff (onoff msg))
    (cl:cons ':group_type_scores (group_type_scores msg))
    (cl:cons ':shape_scores (shape_scores msg))
    (cl:cons ':onoff_scores (onoff_scores msg))
    (cl:cons ':count_number (count_number msg))
    (cl:cons ':shape_3d (shape_3d msg))
    (cl:cons ':location_bv (location_bv msg))
    (cl:cons ':heading_theta_bv (heading_theta_bv msg))
    (cl:cons ':velocity_bv (velocity_bv msg))
    (cl:cons ':associated_infos (associated_infos msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
