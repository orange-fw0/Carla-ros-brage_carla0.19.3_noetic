; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ParkingSlotInfo.msg.html

(cl:defclass <ParkingSlotInfo> (roslisp-msg-protocol:ros-message)
  ((optimized_corners
    :reader optimized_corners
    :initarg :optimized_corners
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (slot_type
    :reader slot_type
    :initarg :slot_type
    :type planning_msgs-msg:ParkingSlotType
    :initform (cl:make-instance 'planning_msgs-msg:ParkingSlotType))
   (has_wheel_stopper
    :reader has_wheel_stopper
    :initarg :has_wheel_stopper
    :type cl:boolean
    :initform cl:nil)
   (ego_slot_iou
    :reader ego_slot_iou
    :initarg :ego_slot_iou
    :type cl:float
    :initform 0.0)
   (front_wheel_to_stopper
    :reader front_wheel_to_stopper
    :initarg :front_wheel_to_stopper
    :type cl:float
    :initform 0.0)
   (front_wheel_to_opening
    :reader front_wheel_to_opening
    :initarg :front_wheel_to_opening
    :type cl:float
    :initform 0.0)
   (front_wheel_to_bottom
    :reader front_wheel_to_bottom
    :initarg :front_wheel_to_bottom
    :type cl:float
    :initform 0.0)
   (rear_wheel_to_stopper
    :reader rear_wheel_to_stopper
    :initarg :rear_wheel_to_stopper
    :type cl:float
    :initform 0.0)
   (rear_wheel_to_opening
    :reader rear_wheel_to_opening
    :initarg :rear_wheel_to_opening
    :type cl:float
    :initform 0.0)
   (rear_wheel_to_bottom
    :reader rear_wheel_to_bottom
    :initarg :rear_wheel_to_bottom
    :type cl:float
    :initform 0.0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass ParkingSlotInfo (<ParkingSlotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ParkingSlotInfo> is deprecated: use planning_msgs-msg:ParkingSlotInfo instead.")))

(cl:ensure-generic-function 'optimized_corners-val :lambda-list '(m))
(cl:defmethod optimized_corners-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:optimized_corners-val is deprecated.  Use planning_msgs-msg:optimized_corners instead.")
  (optimized_corners m))

(cl:ensure-generic-function 'slot_type-val :lambda-list '(m))
(cl:defmethod slot_type-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:slot_type-val is deprecated.  Use planning_msgs-msg:slot_type instead.")
  (slot_type m))

(cl:ensure-generic-function 'has_wheel_stopper-val :lambda-list '(m))
(cl:defmethod has_wheel_stopper-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:has_wheel_stopper-val is deprecated.  Use planning_msgs-msg:has_wheel_stopper instead.")
  (has_wheel_stopper m))

(cl:ensure-generic-function 'ego_slot_iou-val :lambda-list '(m))
(cl:defmethod ego_slot_iou-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_slot_iou-val is deprecated.  Use planning_msgs-msg:ego_slot_iou instead.")
  (ego_slot_iou m))

(cl:ensure-generic-function 'front_wheel_to_stopper-val :lambda-list '(m))
(cl:defmethod front_wheel_to_stopper-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:front_wheel_to_stopper-val is deprecated.  Use planning_msgs-msg:front_wheel_to_stopper instead.")
  (front_wheel_to_stopper m))

(cl:ensure-generic-function 'front_wheel_to_opening-val :lambda-list '(m))
(cl:defmethod front_wheel_to_opening-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:front_wheel_to_opening-val is deprecated.  Use planning_msgs-msg:front_wheel_to_opening instead.")
  (front_wheel_to_opening m))

(cl:ensure-generic-function 'front_wheel_to_bottom-val :lambda-list '(m))
(cl:defmethod front_wheel_to_bottom-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:front_wheel_to_bottom-val is deprecated.  Use planning_msgs-msg:front_wheel_to_bottom instead.")
  (front_wheel_to_bottom m))

(cl:ensure-generic-function 'rear_wheel_to_stopper-val :lambda-list '(m))
(cl:defmethod rear_wheel_to_stopper-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:rear_wheel_to_stopper-val is deprecated.  Use planning_msgs-msg:rear_wheel_to_stopper instead.")
  (rear_wheel_to_stopper m))

(cl:ensure-generic-function 'rear_wheel_to_opening-val :lambda-list '(m))
(cl:defmethod rear_wheel_to_opening-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:rear_wheel_to_opening-val is deprecated.  Use planning_msgs-msg:rear_wheel_to_opening instead.")
  (rear_wheel_to_opening m))

(cl:ensure-generic-function 'rear_wheel_to_bottom-val :lambda-list '(m))
(cl:defmethod rear_wheel_to_bottom-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:rear_wheel_to_bottom-val is deprecated.  Use planning_msgs-msg:rear_wheel_to_bottom instead.")
  (rear_wheel_to_bottom m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <ParkingSlotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotInfo>) ostream)
  "Serializes a message object of type '<ParkingSlotInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'optimized_corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'optimized_corners))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slot_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_wheel_stopper) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ego_slot_iou))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_wheel_to_stopper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_wheel_to_opening))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_wheel_to_bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_wheel_to_stopper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_wheel_to_opening))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_wheel_to_bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotInfo>) istream)
  "Deserializes a message object of type '<ParkingSlotInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'optimized_corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'optimized_corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slot_type) istream)
    (cl:setf (cl:slot-value msg 'has_wheel_stopper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_slot_iou) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_wheel_to_stopper) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_wheel_to_opening) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_wheel_to_bottom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_wheel_to_stopper) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_wheel_to_opening) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_wheel_to_bottom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotInfo>)))
  "Returns string type for a message object of type '<ParkingSlotInfo>"
  "planning_msgs/ParkingSlotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotInfo)))
  "Returns string type for a message object of type 'ParkingSlotInfo"
  "planning_msgs/ParkingSlotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotInfo>)))
  "Returns md5sum for a message object of type '<ParkingSlotInfo>"
  "4c9d0efe24f139c6c2a32a8bbab872f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotInfo)))
  "Returns md5sum for a message object of type 'ParkingSlotInfo"
  "4c9d0efe24f139c6c2a32a8bbab872f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotInfo>)))
  "Returns full string definition for message of type '<ParkingSlotInfo>"
  (cl:format cl:nil "geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotInfo)))
  "Returns full string definition for message of type 'ParkingSlotInfo"
  (cl:format cl:nil "geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'optimized_corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slot_type))
     1
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotInfo
    (cl:cons ':optimized_corners (optimized_corners msg))
    (cl:cons ':slot_type (slot_type msg))
    (cl:cons ':has_wheel_stopper (has_wheel_stopper msg))
    (cl:cons ':ego_slot_iou (ego_slot_iou msg))
    (cl:cons ':front_wheel_to_stopper (front_wheel_to_stopper msg))
    (cl:cons ':front_wheel_to_opening (front_wheel_to_opening msg))
    (cl:cons ':front_wheel_to_bottom (front_wheel_to_bottom msg))
    (cl:cons ':rear_wheel_to_stopper (rear_wheel_to_stopper msg))
    (cl:cons ':rear_wheel_to_opening (rear_wheel_to_opening msg))
    (cl:cons ':rear_wheel_to_bottom (rear_wheel_to_bottom msg))
    (cl:cons ':reserved (reserved msg))
))
