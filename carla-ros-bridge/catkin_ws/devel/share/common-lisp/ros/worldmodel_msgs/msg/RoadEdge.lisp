; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude RoadEdge.msg.html

(cl:defclass <RoadEdge> (roslisp-msg-protocol:ros-message)
  ((existence
    :reader existence
    :initarg :existence
    :type cl:boolean
    :initform cl:nil)
   (points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass RoadEdge (<RoadEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<RoadEdge> is deprecated: use worldmodel_msgs-msg:RoadEdge instead.")))

(cl:ensure-generic-function 'existence-val :lambda-list '(m))
(cl:defmethod existence-val ((m <RoadEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:existence-val is deprecated.  Use worldmodel_msgs-msg:existence instead.")
  (existence m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <RoadEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:points-val is deprecated.  Use worldmodel_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:type-val is deprecated.  Use worldmodel_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <RoadEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reserved-val is deprecated.  Use worldmodel_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadEdge>) ostream)
  "Serializes a message object of type '<RoadEdge>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'existence) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadEdge>) istream)
  "Deserializes a message object of type '<RoadEdge>"
    (cl:setf (cl:slot-value msg 'existence) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadEdge>)))
  "Returns string type for a message object of type '<RoadEdge>"
  "worldmodel_msgs/RoadEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadEdge)))
  "Returns string type for a message object of type 'RoadEdge"
  "worldmodel_msgs/RoadEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadEdge>)))
  "Returns md5sum for a message object of type '<RoadEdge>"
  "68c0d3d7bc71e1b2ce3cf316386f9a7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadEdge)))
  "Returns md5sum for a message object of type 'RoadEdge"
  "68c0d3d7bc71e1b2ce3cf316386f9a7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadEdge>)))
  "Returns full string definition for message of type '<RoadEdge>"
  (cl:format cl:nil "bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadEdge)))
  "Returns full string definition for message of type 'RoadEdge"
  (cl:format cl:nil "bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadEdge>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadEdge
    (cl:cons ':existence (existence msg))
    (cl:cons ':points (points msg))
    (cl:cons ':type (type msg))
    (cl:cons ':reserved (reserved msg))
))
