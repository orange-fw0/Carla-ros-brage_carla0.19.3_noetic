; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundaryPolyline.msg.html

(cl:defclass <LaneBoundaryPolyline> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (poly_coefficient
    :reader poly_coefficient
    :initarg :poly_coefficient
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (available_interval
    :reader available_interval
    :initarg :available_interval
    :type worldmodel_msgs-msg:Interval
    :initform (cl:make-instance 'worldmodel_msgs-msg:Interval)))
)

(cl:defclass LaneBoundaryPolyline (<LaneBoundaryPolyline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryPolyline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryPolyline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundaryPolyline> is deprecated: use worldmodel_msgs-msg:LaneBoundaryPolyline instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneBoundaryPolyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:track_id-val is deprecated.  Use worldmodel_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'poly_coefficient-val :lambda-list '(m))
(cl:defmethod poly_coefficient-val ((m <LaneBoundaryPolyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:poly_coefficient-val is deprecated.  Use worldmodel_msgs-msg:poly_coefficient instead.")
  (poly_coefficient m))

(cl:ensure-generic-function 'available_interval-val :lambda-list '(m))
(cl:defmethod available_interval-val ((m <LaneBoundaryPolyline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available_interval-val is deprecated.  Use worldmodel_msgs-msg:available_interval instead.")
  (available_interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryPolyline>) ostream)
  "Serializes a message object of type '<LaneBoundaryPolyline>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poly_coefficient))))
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
   (cl:slot-value msg 'poly_coefficient))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'available_interval) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryPolyline>) istream)
  "Deserializes a message object of type '<LaneBoundaryPolyline>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poly_coefficient) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poly_coefficient)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'available_interval) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryPolyline>)))
  "Returns string type for a message object of type '<LaneBoundaryPolyline>"
  "worldmodel_msgs/LaneBoundaryPolyline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryPolyline)))
  "Returns string type for a message object of type 'LaneBoundaryPolyline"
  "worldmodel_msgs/LaneBoundaryPolyline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryPolyline>)))
  "Returns md5sum for a message object of type '<LaneBoundaryPolyline>"
  "73d1ce9f545be02950ccc75118f40d8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryPolyline)))
  "Returns md5sum for a message object of type 'LaneBoundaryPolyline"
  "73d1ce9f545be02950ccc75118f40d8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryPolyline>)))
  "Returns full string definition for message of type '<LaneBoundaryPolyline>"
  (cl:format cl:nil "uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryPolyline)))
  "Returns full string definition for message of type 'LaneBoundaryPolyline"
  (cl:format cl:nil "uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryPolyline>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poly_coefficient) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'available_interval))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryPolyline>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryPolyline
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':poly_coefficient (poly_coefficient msg))
    (cl:cons ':available_interval (available_interval msg))
))
