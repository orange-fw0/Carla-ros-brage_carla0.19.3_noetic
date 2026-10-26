; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude MultiCircleFootprintModel.msg.html

(cl:defclass <MultiCircleFootprintModel> (roslisp-msg-protocol:ros-message)
  ((circles
    :reader circles
    :initarg :circles
    :type (cl:vector planning_msgs-msg:Circle)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Circle :initial-element (cl:make-instance 'planning_msgs-msg:Circle))))
)

(cl:defclass MultiCircleFootprintModel (<MultiCircleFootprintModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiCircleFootprintModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiCircleFootprintModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<MultiCircleFootprintModel> is deprecated: use planning_msgs-msg:MultiCircleFootprintModel instead.")))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <MultiCircleFootprintModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:circles-val is deprecated.  Use planning_msgs-msg:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiCircleFootprintModel>) ostream)
  "Serializes a message object of type '<MultiCircleFootprintModel>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiCircleFootprintModel>) istream)
  "Deserializes a message object of type '<MultiCircleFootprintModel>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'circles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'circles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Circle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiCircleFootprintModel>)))
  "Returns string type for a message object of type '<MultiCircleFootprintModel>"
  "planning_msgs/MultiCircleFootprintModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiCircleFootprintModel)))
  "Returns string type for a message object of type 'MultiCircleFootprintModel"
  "planning_msgs/MultiCircleFootprintModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiCircleFootprintModel>)))
  "Returns md5sum for a message object of type '<MultiCircleFootprintModel>"
  "a385c264c95c8149636a068648ab7b73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiCircleFootprintModel)))
  "Returns md5sum for a message object of type 'MultiCircleFootprintModel"
  "a385c264c95c8149636a068648ab7b73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiCircleFootprintModel>)))
  "Returns full string definition for message of type '<MultiCircleFootprintModel>"
  (cl:format cl:nil "planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiCircleFootprintModel)))
  "Returns full string definition for message of type 'MultiCircleFootprintModel"
  (cl:format cl:nil "planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiCircleFootprintModel>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiCircleFootprintModel>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiCircleFootprintModel
    (cl:cons ':circles (circles msg))
))
