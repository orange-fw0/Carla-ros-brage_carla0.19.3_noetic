; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude MapChangeDetectionResult.msg.html

(cl:defclass <MapChangeDetectionResult> (roslisp-msg-protocol:ros-message)
  ((change_type
    :reader change_type
    :initarg :change_type
    :type landmark_msgs-msg:MapChangeTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:MapChangeTypeEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapChangeDetectionResult (<MapChangeDetectionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapChangeDetectionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapChangeDetectionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<MapChangeDetectionResult> is deprecated: use landmark_msgs-msg:MapChangeDetectionResult instead.")))

(cl:ensure-generic-function 'change_type-val :lambda-list '(m))
(cl:defmethod change_type-val ((m <MapChangeDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:change_type-val is deprecated.  Use landmark_msgs-msg:change_type instead.")
  (change_type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <MapChangeDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapChangeDetectionResult>) ostream)
  "Serializes a message object of type '<MapChangeDetectionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'change_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapChangeDetectionResult>) istream)
  "Deserializes a message object of type '<MapChangeDetectionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'change_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapChangeDetectionResult>)))
  "Returns string type for a message object of type '<MapChangeDetectionResult>"
  "landmark_msgs/MapChangeDetectionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapChangeDetectionResult)))
  "Returns string type for a message object of type 'MapChangeDetectionResult"
  "landmark_msgs/MapChangeDetectionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapChangeDetectionResult>)))
  "Returns md5sum for a message object of type '<MapChangeDetectionResult>"
  "81789e0b25e985bfd68b0eca02929b17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapChangeDetectionResult)))
  "Returns md5sum for a message object of type 'MapChangeDetectionResult"
  "81789e0b25e985bfd68b0eca02929b17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapChangeDetectionResult>)))
  "Returns full string definition for message of type '<MapChangeDetectionResult>"
  (cl:format cl:nil "landmark_msgs/MapChangeTypeEnum change_type~%float32 score~%~%================================================================================~%MSG: landmark_msgs/MapChangeTypeEnum~%uint8 MAP_CHANGE_TYPE_UNKNOWN = 0~%uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1~%uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2~%uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3~%uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapChangeDetectionResult)))
  "Returns full string definition for message of type 'MapChangeDetectionResult"
  (cl:format cl:nil "landmark_msgs/MapChangeTypeEnum change_type~%float32 score~%~%================================================================================~%MSG: landmark_msgs/MapChangeTypeEnum~%uint8 MAP_CHANGE_TYPE_UNKNOWN = 0~%uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1~%uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2~%uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3~%uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapChangeDetectionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'change_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapChangeDetectionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MapChangeDetectionResult
    (cl:cons ':change_type (change_type msg))
    (cl:cons ':score (score msg))
))
