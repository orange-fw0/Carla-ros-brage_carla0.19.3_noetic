; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude LaneInfo.msg.html

(cl:defclass <LaneInfo> (roslisp-msg-protocol:ros-message)
  ((lane_marks
    :reader lane_marks
    :initarg :lane_marks
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type cl:fixnum
    :initform 0)
   (lane_boundary_existence
    :reader lane_boundary_existence
    :initarg :lane_boundary_existence
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneInfo (<LaneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<LaneInfo> is deprecated: use momenta_msgs-msg:LaneInfo instead.")))

(cl:ensure-generic-function 'lane_marks-val :lambda-list '(m))
(cl:defmethod lane_marks-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_marks-val is deprecated.  Use momenta_msgs-msg:lane_marks instead.")
  (lane_marks m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_type-val is deprecated.  Use momenta_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'lane_boundary_existence-val :lambda-list '(m))
(cl:defmethod lane_boundary_existence-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_boundary_existence-val is deprecated.  Use momenta_msgs-msg:lane_boundary_existence instead.")
  (lane_boundary_existence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneInfo>) ostream)
  "Serializes a message object of type '<LaneInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_marks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lane_marks))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_boundary_existence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneInfo>) istream)
  "Deserializes a message object of type '<LaneInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_marks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_marks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_boundary_existence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneInfo>)))
  "Returns string type for a message object of type '<LaneInfo>"
  "momenta_msgs/LaneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneInfo)))
  "Returns string type for a message object of type 'LaneInfo"
  "momenta_msgs/LaneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneInfo>)))
  "Returns md5sum for a message object of type '<LaneInfo>"
  "5c59f8ac75f1757f3c6b3e220548ca78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneInfo)))
  "Returns md5sum for a message object of type 'LaneInfo"
  "5c59f8ac75f1757f3c6b3e220548ca78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneInfo>)))
  "Returns full string definition for message of type '<LaneInfo>"
  (cl:format cl:nil "uint8[] lane_marks~%uint8 lane_type~%uint8 lane_boundary_existence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneInfo)))
  "Returns full string definition for message of type 'LaneInfo"
  (cl:format cl:nil "uint8[] lane_marks~%uint8 lane_type~%uint8 lane_boundary_existence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_marks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneInfo
    (cl:cons ':lane_marks (lane_marks msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':lane_boundary_existence (lane_boundary_existence msg))
))
