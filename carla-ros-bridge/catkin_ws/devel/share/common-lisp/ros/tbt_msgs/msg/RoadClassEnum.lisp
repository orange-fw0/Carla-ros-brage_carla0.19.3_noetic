; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude RoadClassEnum.msg.html

(cl:defclass <RoadClassEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadClassEnum (<RoadClassEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadClassEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadClassEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<RoadClassEnum> is deprecated: use tbt_msgs-msg:RoadClassEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadClassEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadClassEnum>)))
    "Constants for message type '<RoadClassEnum>"
  '((:ROADCLASSFREEWAY . 0)
    (:ROADCLASSNATIONALROAD . 1)
    (:ROADCLASSPROVINCEROAD . 2)
    (:ROADCLASSCOUNTYROAD . 3)
    (:ROADCLASSRURALROAD . 4)
    (:ROADCLASSINCOUNTYROAD . 5)
    (:ROADCLASSCITYSPEEDWAY . 6)
    (:ROADCLASSMAINROAD . 7)
    (:ROADCLASSSECONDARYROAD . 8)
    (:ROADCLASSCOMMONROAD . 9)
    (:ROADCLASSNONNAVIROAD . 10)
    (:ROADCLASSNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadClassEnum)))
    "Constants for message type 'RoadClassEnum"
  '((:ROADCLASSFREEWAY . 0)
    (:ROADCLASSNATIONALROAD . 1)
    (:ROADCLASSPROVINCEROAD . 2)
    (:ROADCLASSCOUNTYROAD . 3)
    (:ROADCLASSRURALROAD . 4)
    (:ROADCLASSINCOUNTYROAD . 5)
    (:ROADCLASSCITYSPEEDWAY . 6)
    (:ROADCLASSMAINROAD . 7)
    (:ROADCLASSSECONDARYROAD . 8)
    (:ROADCLASSCOMMONROAD . 9)
    (:ROADCLASSNONNAVIROAD . 10)
    (:ROADCLASSNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadClassEnum>) ostream)
  "Serializes a message object of type '<RoadClassEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadClassEnum>) istream)
  "Deserializes a message object of type '<RoadClassEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadClassEnum>)))
  "Returns string type for a message object of type '<RoadClassEnum>"
  "tbt_msgs/RoadClassEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadClassEnum)))
  "Returns string type for a message object of type 'RoadClassEnum"
  "tbt_msgs/RoadClassEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadClassEnum>)))
  "Returns md5sum for a message object of type '<RoadClassEnum>"
  "7b9ef10b9bc99068fa6af9f589ee5ca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadClassEnum)))
  "Returns md5sum for a message object of type 'RoadClassEnum"
  "7b9ef10b9bc99068fa6af9f589ee5ca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadClassEnum>)))
  "Returns full string definition for message of type '<RoadClassEnum>"
  (cl:format cl:nil "uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadClassEnum)))
  "Returns full string definition for message of type 'RoadClassEnum"
  (cl:format cl:nil "uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadClassEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadClassEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadClassEnum
    (cl:cons ':value (value msg))
))
