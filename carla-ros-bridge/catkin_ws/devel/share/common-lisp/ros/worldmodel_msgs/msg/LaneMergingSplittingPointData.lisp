; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneMergingSplittingPointData.msg.html

(cl:defclass <LaneMergingSplittingPointData> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (is_split
    :reader is_split
    :initarg :is_split
    :type cl:boolean
    :initform cl:nil)
   (is_continue
    :reader is_continue
    :initarg :is_continue
    :type cl:boolean
    :initform cl:nil)
   (orientation
    :reader orientation
    :initarg :orientation
    :type worldmodel_msgs-msg:Orientation
    :initform (cl:make-instance 'worldmodel_msgs-msg:Orientation))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneMergingSplittingPointData (<LaneMergingSplittingPointData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneMergingSplittingPointData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneMergingSplittingPointData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneMergingSplittingPointData> is deprecated: use worldmodel_msgs-msg:LaneMergingSplittingPointData instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <LaneMergingSplittingPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'is_split-val :lambda-list '(m))
(cl:defmethod is_split-val ((m <LaneMergingSplittingPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:is_split-val is deprecated.  Use worldmodel_msgs-msg:is_split instead.")
  (is_split m))

(cl:ensure-generic-function 'is_continue-val :lambda-list '(m))
(cl:defmethod is_continue-val ((m <LaneMergingSplittingPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:is_continue-val is deprecated.  Use worldmodel_msgs-msg:is_continue instead.")
  (is_continue m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <LaneMergingSplittingPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:orientation-val is deprecated.  Use worldmodel_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LaneMergingSplittingPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneMergingSplittingPointData>) ostream)
  "Serializes a message object of type '<LaneMergingSplittingPointData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_split) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_continue) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneMergingSplittingPointData>) istream)
  "Deserializes a message object of type '<LaneMergingSplittingPointData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_split) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_continue) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneMergingSplittingPointData>)))
  "Returns string type for a message object of type '<LaneMergingSplittingPointData>"
  "worldmodel_msgs/LaneMergingSplittingPointData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneMergingSplittingPointData)))
  "Returns string type for a message object of type 'LaneMergingSplittingPointData"
  "worldmodel_msgs/LaneMergingSplittingPointData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneMergingSplittingPointData>)))
  "Returns md5sum for a message object of type '<LaneMergingSplittingPointData>"
  "c6ab8f133a0f27d68d0ff3515eec7e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneMergingSplittingPointData)))
  "Returns md5sum for a message object of type 'LaneMergingSplittingPointData"
  "c6ab8f133a0f27d68d0ff3515eec7e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneMergingSplittingPointData>)))
  "Returns full string definition for message of type '<LaneMergingSplittingPointData>"
  (cl:format cl:nil "float64 distance~%bool is_split~%bool is_continue~%worldmodel_msgs/Orientation orientation~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneMergingSplittingPointData)))
  "Returns full string definition for message of type 'LaneMergingSplittingPointData"
  (cl:format cl:nil "float64 distance~%bool is_split~%bool is_continue~%worldmodel_msgs/Orientation orientation~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneMergingSplittingPointData>))
  (cl:+ 0
     8
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneMergingSplittingPointData>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneMergingSplittingPointData
    (cl:cons ':distance (distance msg))
    (cl:cons ':is_split (is_split msg))
    (cl:cons ':is_continue (is_continue msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':length (length msg))
))
