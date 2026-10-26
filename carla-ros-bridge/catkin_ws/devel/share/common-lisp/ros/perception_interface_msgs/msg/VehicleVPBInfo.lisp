; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleVPBInfo.msg.html

(cl:defclass <VehicleVPBInfo> (roslisp-msg-protocol:ros-message)
  ((vpb_point_num
    :reader vpb_point_num
    :initarg :vpb_point_num
    :type cl:fixnum
    :initform 0)
   (vpb_bv_x
    :reader vpb_bv_x
    :initarg :vpb_bv_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (vpb_bv_y
    :reader vpb_bv_y
    :initarg :vpb_bv_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (vpb_bv_z
    :reader vpb_bv_z
    :initarg :vpb_bv_z
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass VehicleVPBInfo (<VehicleVPBInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleVPBInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleVPBInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleVPBInfo> is deprecated: use perception_interface_msgs-msg:VehicleVPBInfo instead.")))

(cl:ensure-generic-function 'vpb_point_num-val :lambda-list '(m))
(cl:defmethod vpb_point_num-val ((m <VehicleVPBInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vpb_point_num-val is deprecated.  Use perception_interface_msgs-msg:vpb_point_num instead.")
  (vpb_point_num m))

(cl:ensure-generic-function 'vpb_bv_x-val :lambda-list '(m))
(cl:defmethod vpb_bv_x-val ((m <VehicleVPBInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vpb_bv_x-val is deprecated.  Use perception_interface_msgs-msg:vpb_bv_x instead.")
  (vpb_bv_x m))

(cl:ensure-generic-function 'vpb_bv_y-val :lambda-list '(m))
(cl:defmethod vpb_bv_y-val ((m <VehicleVPBInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vpb_bv_y-val is deprecated.  Use perception_interface_msgs-msg:vpb_bv_y instead.")
  (vpb_bv_y m))

(cl:ensure-generic-function 'vpb_bv_z-val :lambda-list '(m))
(cl:defmethod vpb_bv_z-val ((m <VehicleVPBInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vpb_bv_z-val is deprecated.  Use perception_interface_msgs-msg:vpb_bv_z instead.")
  (vpb_bv_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleVPBInfo>) ostream)
  "Serializes a message object of type '<VehicleVPBInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vpb_point_num)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vpb_bv_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vpb_bv_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vpb_bv_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vpb_bv_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vpb_bv_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vpb_bv_z))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleVPBInfo>) istream)
  "Deserializes a message object of type '<VehicleVPBInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vpb_point_num)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vpb_bv_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vpb_bv_x)))
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
  (cl:setf (cl:slot-value msg 'vpb_bv_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vpb_bv_y)))
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
  (cl:setf (cl:slot-value msg 'vpb_bv_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vpb_bv_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleVPBInfo>)))
  "Returns string type for a message object of type '<VehicleVPBInfo>"
  "perception_interface_msgs/VehicleVPBInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleVPBInfo)))
  "Returns string type for a message object of type 'VehicleVPBInfo"
  "perception_interface_msgs/VehicleVPBInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleVPBInfo>)))
  "Returns md5sum for a message object of type '<VehicleVPBInfo>"
  "89a7e56a1af901c508a46725ee5a3d0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleVPBInfo)))
  "Returns md5sum for a message object of type 'VehicleVPBInfo"
  "89a7e56a1af901c508a46725ee5a3d0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleVPBInfo>)))
  "Returns full string definition for message of type '<VehicleVPBInfo>"
  (cl:format cl:nil "uint8 vpb_point_num~%float32[] vpb_bv_x~%float32[] vpb_bv_y~%float32[] vpb_bv_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleVPBInfo)))
  "Returns full string definition for message of type 'VehicleVPBInfo"
  (cl:format cl:nil "uint8 vpb_point_num~%float32[] vpb_bv_x~%float32[] vpb_bv_y~%float32[] vpb_bv_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleVPBInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vpb_bv_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vpb_bv_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vpb_bv_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleVPBInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleVPBInfo
    (cl:cons ':vpb_point_num (vpb_point_num msg))
    (cl:cons ':vpb_bv_x (vpb_bv_x msg))
    (cl:cons ':vpb_bv_y (vpb_bv_y msg))
    (cl:cons ':vpb_bv_z (vpb_bv_z msg))
))
