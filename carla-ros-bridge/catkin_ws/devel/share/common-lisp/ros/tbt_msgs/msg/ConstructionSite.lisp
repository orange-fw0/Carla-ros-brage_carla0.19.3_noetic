; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude ConstructionSite.msg.html

(cl:defclass <ConstructionSite> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type tbt_msgs-msg:ConstructionSiteStatusEnum
    :initform (cl:make-instance 'tbt_msgs-msg:ConstructionSiteStatusEnum))
   (latitude_list
    :reader latitude_list
    :initarg :latitude_list
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (longitude_list
    :reader longitude_list
    :initarg :longitude_list
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ConstructionSite (<ConstructionSite>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstructionSite>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstructionSite)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<ConstructionSite> is deprecated: use tbt_msgs-msg:ConstructionSite instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ConstructionSite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:status-val is deprecated.  Use tbt_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'latitude_list-val :lambda-list '(m))
(cl:defmethod latitude_list-val ((m <ConstructionSite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:latitude_list-val is deprecated.  Use tbt_msgs-msg:latitude_list instead.")
  (latitude_list m))

(cl:ensure-generic-function 'longitude_list-val :lambda-list '(m))
(cl:defmethod longitude_list-val ((m <ConstructionSite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:longitude_list-val is deprecated.  Use tbt_msgs-msg:longitude_list instead.")
  (longitude_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstructionSite>) ostream)
  "Serializes a message object of type '<ConstructionSite>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'latitude_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'latitude_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'longitude_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'longitude_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstructionSite>) istream)
  "Deserializes a message object of type '<ConstructionSite>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'latitude_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'latitude_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'longitude_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'longitude_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstructionSite>)))
  "Returns string type for a message object of type '<ConstructionSite>"
  "tbt_msgs/ConstructionSite")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstructionSite)))
  "Returns string type for a message object of type 'ConstructionSite"
  "tbt_msgs/ConstructionSite")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstructionSite>)))
  "Returns md5sum for a message object of type '<ConstructionSite>"
  "88bebe820d888053dd20fec660df08f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstructionSite)))
  "Returns md5sum for a message object of type 'ConstructionSite"
  "88bebe820d888053dd20fec660df08f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstructionSite>)))
  "Returns full string definition for message of type '<ConstructionSite>"
  (cl:format cl:nil "tbt_msgs/ConstructionSiteStatusEnum status~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/ConstructionSiteStatusEnum~%uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstructionSite)))
  "Returns full string definition for message of type 'ConstructionSite"
  (cl:format cl:nil "tbt_msgs/ConstructionSiteStatusEnum status~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/ConstructionSiteStatusEnum~%uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstructionSite>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latitude_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'longitude_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstructionSite>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstructionSite
    (cl:cons ':status (status msg))
    (cl:cons ':latitude_list (latitude_list msg))
    (cl:cons ':longitude_list (longitude_list msg))
))
