; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ModuleType.msg.html

(cl:defclass <ModuleType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModuleType (<ModuleType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ModuleType> is deprecated: use framework_status_msgs-msg:ModuleType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ModuleType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:value-val is deprecated.  Use framework_status_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModuleType>)))
    "Constants for message type '<ModuleType>"
  '((:PREDICTION . 0)
    (:ROUTING . 1)
    (:PLANNING . 2)
    (:CONTROLLER . 3)
    (:ENDPOINT . 4)
    (:VEHICLE_REPORTER . 5)
    (:WORLDMODEL . 6)
    (:RADAR_PERCEPTION . 7)
    (:VISION_PERCEPTION . 8)
    (:LIDAR_PERCEPTION . 9)
    (:FUSION_PERCEPTION . 10)
    (:LOCATION . 11)
    (:VISION_TFC_PERCEPTION . 12)
    (:SENSOR_SERVICE . 13)
    (:CAMERA_SERVICE . 14)
    (:EGOPOSE_MANAGER . 15)
    (:EGOMOTION . 16)
    (:MAP_MANAGER . 17)
    (:LDP_PLANNING . 18)
    (:PLAC . 19)
    (:ACE . 20)
    (:VISTA . 21)
    (:DYNAMIC_SAFETY_CHECK . 22))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModuleType)))
    "Constants for message type 'ModuleType"
  '((:PREDICTION . 0)
    (:ROUTING . 1)
    (:PLANNING . 2)
    (:CONTROLLER . 3)
    (:ENDPOINT . 4)
    (:VEHICLE_REPORTER . 5)
    (:WORLDMODEL . 6)
    (:RADAR_PERCEPTION . 7)
    (:VISION_PERCEPTION . 8)
    (:LIDAR_PERCEPTION . 9)
    (:FUSION_PERCEPTION . 10)
    (:LOCATION . 11)
    (:VISION_TFC_PERCEPTION . 12)
    (:SENSOR_SERVICE . 13)
    (:CAMERA_SERVICE . 14)
    (:EGOPOSE_MANAGER . 15)
    (:EGOMOTION . 16)
    (:MAP_MANAGER . 17)
    (:LDP_PLANNING . 18)
    (:PLAC . 19)
    (:ACE . 20)
    (:VISTA . 21)
    (:DYNAMIC_SAFETY_CHECK . 22))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleType>) ostream)
  "Serializes a message object of type '<ModuleType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleType>) istream)
  "Deserializes a message object of type '<ModuleType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleType>)))
  "Returns string type for a message object of type '<ModuleType>"
  "framework_status_msgs/ModuleType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleType)))
  "Returns string type for a message object of type 'ModuleType"
  "framework_status_msgs/ModuleType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleType>)))
  "Returns md5sum for a message object of type '<ModuleType>"
  "cfa3aabc499ac91b044bfeb93dc6d206")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleType)))
  "Returns md5sum for a message object of type 'ModuleType"
  "cfa3aabc499ac91b044bfeb93dc6d206")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleType>)))
  "Returns full string definition for message of type '<ModuleType>"
  (cl:format cl:nil "uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleType)))
  "Returns full string definition for message of type 'ModuleType"
  (cl:format cl:nil "uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleType>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleType
    (cl:cons ':value (value msg))
))
