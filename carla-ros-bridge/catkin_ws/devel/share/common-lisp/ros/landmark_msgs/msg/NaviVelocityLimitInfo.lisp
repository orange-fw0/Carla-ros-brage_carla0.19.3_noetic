; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude NaviVelocityLimitInfo.msg.html

(cl:defclass <NaviVelocityLimitInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (means
    :reader means
    :initarg :means
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sigma
    :reader sigma
    :initarg :sigma
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NaviVelocityLimitInfo (<NaviVelocityLimitInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviVelocityLimitInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviVelocityLimitInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<NaviVelocityLimitInfo> is deprecated: use landmark_msgs-msg:NaviVelocityLimitInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <NaviVelocityLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'means-val :lambda-list '(m))
(cl:defmethod means-val ((m <NaviVelocityLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:means-val is deprecated.  Use landmark_msgs-msg:means instead.")
  (means m))

(cl:ensure-generic-function 'sigma-val :lambda-list '(m))
(cl:defmethod sigma-val ((m <NaviVelocityLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sigma-val is deprecated.  Use landmark_msgs-msg:sigma instead.")
  (sigma m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviVelocityLimitInfo>) ostream)
  "Serializes a message object of type '<NaviVelocityLimitInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'means))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'means))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sigma))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviVelocityLimitInfo>) istream)
  "Deserializes a message object of type '<NaviVelocityLimitInfo>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'means) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'means)))
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
  (cl:setf (cl:slot-value msg 'sigma) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sigma)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviVelocityLimitInfo>)))
  "Returns string type for a message object of type '<NaviVelocityLimitInfo>"
  "landmark_msgs/NaviVelocityLimitInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviVelocityLimitInfo)))
  "Returns string type for a message object of type 'NaviVelocityLimitInfo"
  "landmark_msgs/NaviVelocityLimitInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviVelocityLimitInfo>)))
  "Returns md5sum for a message object of type '<NaviVelocityLimitInfo>"
  "f3da0141f6070c936a51fad43abe456e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviVelocityLimitInfo)))
  "Returns md5sum for a message object of type 'NaviVelocityLimitInfo"
  "f3da0141f6070c936a51fad43abe456e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviVelocityLimitInfo>)))
  "Returns full string definition for message of type '<NaviVelocityLimitInfo>"
  (cl:format cl:nil "bool available~%float32[] means~%float32[] sigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviVelocityLimitInfo)))
  "Returns full string definition for message of type 'NaviVelocityLimitInfo"
  (cl:format cl:nil "bool available~%float32[] means~%float32[] sigma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviVelocityLimitInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'means) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sigma) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviVelocityLimitInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviVelocityLimitInfo
    (cl:cons ':available (available msg))
    (cl:cons ':means (means msg))
    (cl:cons ':sigma (sigma msg))
))
