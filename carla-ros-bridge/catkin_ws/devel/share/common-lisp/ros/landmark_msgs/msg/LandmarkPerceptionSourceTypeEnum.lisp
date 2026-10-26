; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkPerceptionSourceTypeEnum.msg.html

(cl:defclass <LandmarkPerceptionSourceTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandmarkPerceptionSourceTypeEnum (<LandmarkPerceptionSourceTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPerceptionSourceTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPerceptionSourceTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkPerceptionSourceTypeEnum> is deprecated: use landmark_msgs-msg:LandmarkPerceptionSourceTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LandmarkPerceptionSourceTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandmarkPerceptionSourceTypeEnum>)))
    "Constants for message type '<LandmarkPerceptionSourceTypeEnum>"
  '((:LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN . 0)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_VISION . 1)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP . 2)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandmarkPerceptionSourceTypeEnum)))
    "Constants for message type 'LandmarkPerceptionSourceTypeEnum"
  '((:LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN . 0)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_VISION . 1)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP . 2)
    (:LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPerceptionSourceTypeEnum>) ostream)
  "Serializes a message object of type '<LandmarkPerceptionSourceTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPerceptionSourceTypeEnum>) istream)
  "Deserializes a message object of type '<LandmarkPerceptionSourceTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPerceptionSourceTypeEnum>)))
  "Returns string type for a message object of type '<LandmarkPerceptionSourceTypeEnum>"
  "landmark_msgs/LandmarkPerceptionSourceTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPerceptionSourceTypeEnum)))
  "Returns string type for a message object of type 'LandmarkPerceptionSourceTypeEnum"
  "landmark_msgs/LandmarkPerceptionSourceTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPerceptionSourceTypeEnum>)))
  "Returns md5sum for a message object of type '<LandmarkPerceptionSourceTypeEnum>"
  "fc85817f8c12a47b8385fd1de7432858")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPerceptionSourceTypeEnum)))
  "Returns md5sum for a message object of type 'LandmarkPerceptionSourceTypeEnum"
  "fc85817f8c12a47b8385fd1de7432858")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPerceptionSourceTypeEnum>)))
  "Returns full string definition for message of type '<LandmarkPerceptionSourceTypeEnum>"
  (cl:format cl:nil "uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN = 0~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_VISION = 1~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP = 2~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPerceptionSourceTypeEnum)))
  "Returns full string definition for message of type 'LandmarkPerceptionSourceTypeEnum"
  (cl:format cl:nil "uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN = 0~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_VISION = 1~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP = 2~%uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPerceptionSourceTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPerceptionSourceTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPerceptionSourceTypeEnum
    (cl:cons ':value (value msg))
))
