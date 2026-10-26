; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude CacheBagDetails.msg.html

(cl:defclass <CacheBagDetails> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (cache_bag_details_data
    :reader cache_bag_details_data
    :initarg :cache_bag_details_data
    :type framework_status_msgs-msg:CacheBagDetailsData
    :initform (cl:make-instance 'framework_status_msgs-msg:CacheBagDetailsData)))
)

(cl:defclass CacheBagDetails (<CacheBagDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CacheBagDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CacheBagDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<CacheBagDetails> is deprecated: use framework_status_msgs-msg:CacheBagDetails instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CacheBagDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'cache_bag_details_data-val :lambda-list '(m))
(cl:defmethod cache_bag_details_data-val ((m <CacheBagDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cache_bag_details_data-val is deprecated.  Use framework_status_msgs-msg:cache_bag_details_data instead.")
  (cache_bag_details_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CacheBagDetails>)))
    "Constants for message type '<CacheBagDetails>"
  '((:CACHE_BAG_DETAILS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CacheBagDetails)))
    "Constants for message type 'CacheBagDetails"
  '((:CACHE_BAG_DETAILS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CacheBagDetails>) ostream)
  "Serializes a message object of type '<CacheBagDetails>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cache_bag_details_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CacheBagDetails>) istream)
  "Deserializes a message object of type '<CacheBagDetails>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cache_bag_details_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CacheBagDetails>)))
  "Returns string type for a message object of type '<CacheBagDetails>"
  "framework_status_msgs/CacheBagDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CacheBagDetails)))
  "Returns string type for a message object of type 'CacheBagDetails"
  "framework_status_msgs/CacheBagDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CacheBagDetails>)))
  "Returns md5sum for a message object of type '<CacheBagDetails>"
  "e9780b9d0a0eb7520548474d4ff86975")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CacheBagDetails)))
  "Returns md5sum for a message object of type 'CacheBagDetails"
  "e9780b9d0a0eb7520548474d4ff86975")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CacheBagDetails>)))
  "Returns full string definition for message of type '<CacheBagDetails>"
  (cl:format cl:nil "uint8 CACHE_BAG_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/CacheBagDetailsData cache_bag_details_data~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CacheBagDetails)))
  "Returns full string definition for message of type 'CacheBagDetails"
  (cl:format cl:nil "uint8 CACHE_BAG_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/CacheBagDetailsData cache_bag_details_data~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CacheBagDetails>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cache_bag_details_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CacheBagDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'CacheBagDetails
    (cl:cons ':available (available msg))
    (cl:cons ':cache_bag_details_data (cache_bag_details_data msg))
))
