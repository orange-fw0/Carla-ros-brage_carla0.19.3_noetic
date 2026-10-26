; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionGroundLineData.msg.html

(cl:defclass <FusionGroundLineData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type perception_interface_msgs-msg:GroundLineTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:GroundLineTypeEnum))
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
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
   (obstacle_type
    :reader obstacle_type
    :initarg :obstacle_type
    :type perception_interface_msgs-msg:FusionObstacleTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionObstacleTypeEnum))
   (obstacle_point_type
    :reader obstacle_point_type
    :initarg :obstacle_point_type
    :type perception_interface_msgs-msg:FusionObstaclePointType
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionObstaclePointType))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform "")
   (points_height
    :reader points_height
    :initarg :points_height
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FusionGroundLineData (<FusionGroundLineData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionGroundLineData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionGroundLineData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionGroundLineData> is deprecated: use perception_interface_msgs-msg:FusionGroundLineData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'points_fusion-val :lambda-list '(m))
(cl:defmethod points_fusion-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion-val is deprecated.  Use perception_interface_msgs-msg:points_fusion instead.")
  (points_fusion m))

(cl:ensure-generic-function 'points_fusion_confidence-val :lambda-list '(m))
(cl:defmethod points_fusion_confidence-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_fusion_confidence-val is deprecated.  Use perception_interface_msgs-msg:points_fusion_confidence instead.")
  (points_fusion_confidence m))

(cl:ensure-generic-function 'local_points_fusion-val :lambda-list '(m))
(cl:defmethod local_points_fusion-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_points_fusion-val is deprecated.  Use perception_interface_msgs-msg:local_points_fusion instead.")
  (local_points_fusion m))

(cl:ensure-generic-function 'local_points_fusion_confidence-val :lambda-list '(m))
(cl:defmethod local_points_fusion_confidence-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_points_fusion_confidence-val is deprecated.  Use perception_interface_msgs-msg:local_points_fusion_confidence instead.")
  (local_points_fusion_confidence m))

(cl:ensure-generic-function 'obstacle_type-val :lambda-list '(m))
(cl:defmethod obstacle_type-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:obstacle_type-val is deprecated.  Use perception_interface_msgs-msg:obstacle_type instead.")
  (obstacle_type m))

(cl:ensure-generic-function 'obstacle_point_type-val :lambda-list '(m))
(cl:defmethod obstacle_point_type-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:obstacle_point_type-val is deprecated.  Use perception_interface_msgs-msg:obstacle_point_type instead.")
  (obstacle_point_type m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'points_height-val :lambda-list '(m))
(cl:defmethod points_height-val ((m <FusionGroundLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_height-val is deprecated.  Use perception_interface_msgs-msg:points_height instead.")
  (points_height m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionGroundLineData>)))
    "Constants for message type '<FusionGroundLineData>"
  '((:FUSION_GROUND_LINE_SOURCE_VISON . 1)
    (:FUSION_GROUND_LINE_SOURCE_ULTRASONIC . 2)
    (:FUSION_GROUND_LINE_SOURCE_DDUSS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionGroundLineData)))
    "Constants for message type 'FusionGroundLineData"
  '((:FUSION_GROUND_LINE_SOURCE_VISON . 1)
    (:FUSION_GROUND_LINE_SOURCE_ULTRASONIC . 2)
    (:FUSION_GROUND_LINE_SOURCE_DDUSS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionGroundLineData>) ostream)
  "Serializes a message object of type '<FusionGroundLineData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_point_type) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_height))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionGroundLineData>) istream)
  "Deserializes a message object of type '<FusionGroundLineData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_point_type) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_height) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_height)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionGroundLineData>)))
  "Returns string type for a message object of type '<FusionGroundLineData>"
  "perception_interface_msgs/FusionGroundLineData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionGroundLineData)))
  "Returns string type for a message object of type 'FusionGroundLineData"
  "perception_interface_msgs/FusionGroundLineData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionGroundLineData>)))
  "Returns md5sum for a message object of type '<FusionGroundLineData>"
  "15785f455fc11a921e1ce0f90a7c7a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionGroundLineData)))
  "Returns md5sum for a message object of type 'FusionGroundLineData"
  "15785f455fc11a921e1ce0f90a7c7a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionGroundLineData>)))
  "Returns full string definition for message of type '<FusionGroundLineData>"
  (cl:format cl:nil "uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionGroundLineData)))
  "Returns full string definition for message of type 'FusionGroundLineData"
  (cl:format cl:nil "uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionGroundLineData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_fusion_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_points_fusion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_points_fusion_confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_point_type))
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_height) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionGroundLineData>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionGroundLineData
    (cl:cons ':available (available msg))
    (cl:cons ':type (type msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':score (score msg))
    (cl:cons ':points_fusion (points_fusion msg))
    (cl:cons ':points_fusion_confidence (points_fusion_confidence msg))
    (cl:cons ':local_points_fusion (local_points_fusion msg))
    (cl:cons ':local_points_fusion_confidence (local_points_fusion_confidence msg))
    (cl:cons ':obstacle_type (obstacle_type msg))
    (cl:cons ':obstacle_point_type (obstacle_point_type msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':points_height (points_height msg))
))
