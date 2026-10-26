; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude LocalMapData.msg.html

(cl:defclass <LocalMapData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (mdm
    :reader mdm
    :initarg :mdm
    :type hdmap_msgs-msg:LocalMapLayer
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapLayer))
   (andm
    :reader andm
    :initarg :andm
    :type hdmap_msgs-msg:LocalMapLayer
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapLayer))
   (map_match_info
    :reader map_match_info
    :initarg :map_match_info
    :type hdmap_msgs-msg:LocalMapLayer
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapLayer))
   (other
    :reader other
    :initarg :other
    :type hdmap_msgs-msg:LocalMapLayer
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapLayer))
   (esr
    :reader esr
    :initarg :esr
    :type hdmap_msgs-msg:LocalMapLayer
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapLayer)))
)

(cl:defclass LocalMapData (<LocalMapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<LocalMapData> is deprecated: use hdmap_msgs-msg:LocalMapData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:available-val is deprecated.  Use hdmap_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'mdm-val :lambda-list '(m))
(cl:defmethod mdm-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:mdm-val is deprecated.  Use hdmap_msgs-msg:mdm instead.")
  (mdm m))

(cl:ensure-generic-function 'andm-val :lambda-list '(m))
(cl:defmethod andm-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:andm-val is deprecated.  Use hdmap_msgs-msg:andm instead.")
  (andm m))

(cl:ensure-generic-function 'map_match_info-val :lambda-list '(m))
(cl:defmethod map_match_info-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:map_match_info-val is deprecated.  Use hdmap_msgs-msg:map_match_info instead.")
  (map_match_info m))

(cl:ensure-generic-function 'other-val :lambda-list '(m))
(cl:defmethod other-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:other-val is deprecated.  Use hdmap_msgs-msg:other instead.")
  (other m))

(cl:ensure-generic-function 'esr-val :lambda-list '(m))
(cl:defmethod esr-val ((m <LocalMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:esr-val is deprecated.  Use hdmap_msgs-msg:esr instead.")
  (esr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocalMapData>)))
    "Constants for message type '<LocalMapData>"
  '((:MDM . 1)
    (:ANDM . 2)
    (:MAP_MATCH_INFO . 4)
    (:OTHER . 8)
    (:ESR . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocalMapData)))
    "Constants for message type 'LocalMapData"
  '((:MDM . 1)
    (:ANDM . 2)
    (:MAP_MATCH_INFO . 4)
    (:OTHER . 8)
    (:ESR . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapData>) ostream)
  "Serializes a message object of type '<LocalMapData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mdm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'andm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_match_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'other) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'esr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapData>) istream)
  "Deserializes a message object of type '<LocalMapData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mdm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'andm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_match_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'other) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'esr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapData>)))
  "Returns string type for a message object of type '<LocalMapData>"
  "hdmap_msgs/LocalMapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapData)))
  "Returns string type for a message object of type 'LocalMapData"
  "hdmap_msgs/LocalMapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapData>)))
  "Returns md5sum for a message object of type '<LocalMapData>"
  "97fd3dea48828e3803823e6aa81c15b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapData)))
  "Returns md5sum for a message object of type 'LocalMapData"
  "97fd3dea48828e3803823e6aa81c15b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapData>)))
  "Returns full string definition for message of type '<LocalMapData>"
  (cl:format cl:nil "uint8 MDM = 1~%uint8 ANDM = 2~%uint8 MAP_MATCH_INFO = 4~%uint8 OTHER = 8~%uint8 ESR = 16~%uint8 available~%hdmap_msgs/LocalMapLayer mdm~%hdmap_msgs/LocalMapLayer andm~%hdmap_msgs/LocalMapLayer map_match_info~%hdmap_msgs/LocalMapLayer other~%hdmap_msgs/LocalMapLayer esr~%~%================================================================================~%MSG: hdmap_msgs/LocalMapLayer~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapData)))
  "Returns full string definition for message of type 'LocalMapData"
  (cl:format cl:nil "uint8 MDM = 1~%uint8 ANDM = 2~%uint8 MAP_MATCH_INFO = 4~%uint8 OTHER = 8~%uint8 ESR = 16~%uint8 available~%hdmap_msgs/LocalMapLayer mdm~%hdmap_msgs/LocalMapLayer andm~%hdmap_msgs/LocalMapLayer map_match_info~%hdmap_msgs/LocalMapLayer other~%hdmap_msgs/LocalMapLayer esr~%~%================================================================================~%MSG: hdmap_msgs/LocalMapLayer~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mdm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'andm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_match_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'other))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'esr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapData>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapData
    (cl:cons ':available (available msg))
    (cl:cons ':mdm (mdm msg))
    (cl:cons ':andm (andm msg))
    (cl:cons ':map_match_info (map_match_info msg))
    (cl:cons ':other (other msg))
    (cl:cons ':esr (esr msg))
))
