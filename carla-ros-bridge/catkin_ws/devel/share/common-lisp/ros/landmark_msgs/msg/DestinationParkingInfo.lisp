; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DestinationParkingInfo.msg.html

(cl:defclass <DestinationParkingInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (parking_type
    :reader parking_type
    :initarg :parking_type
    :type landmark_msgs-msg:DestinationParkingType
    :initform (cl:make-instance 'landmark_msgs-msg:DestinationParkingType))
   (id
    :reader id
    :initarg :id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId)))
)

(cl:defclass DestinationParkingInfo (<DestinationParkingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DestinationParkingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DestinationParkingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DestinationParkingInfo> is deprecated: use landmark_msgs-msg:DestinationParkingInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DestinationParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_type-val :lambda-list '(m))
(cl:defmethod parking_type-val ((m <DestinationParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:parking_type-val is deprecated.  Use landmark_msgs-msg:parking_type instead.")
  (parking_type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DestinationParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:id-val is deprecated.  Use landmark_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DestinationParkingInfo>)))
    "Constants for message type '<DestinationParkingInfo>"
  '((:PARKING_TYPE_VALID . 1)
    (:ID_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DestinationParkingInfo)))
    "Constants for message type 'DestinationParkingInfo"
  '((:PARKING_TYPE_VALID . 1)
    (:ID_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DestinationParkingInfo>) ostream)
  "Serializes a message object of type '<DestinationParkingInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DestinationParkingInfo>) istream)
  "Deserializes a message object of type '<DestinationParkingInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DestinationParkingInfo>)))
  "Returns string type for a message object of type '<DestinationParkingInfo>"
  "landmark_msgs/DestinationParkingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DestinationParkingInfo)))
  "Returns string type for a message object of type 'DestinationParkingInfo"
  "landmark_msgs/DestinationParkingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DestinationParkingInfo>)))
  "Returns md5sum for a message object of type '<DestinationParkingInfo>"
  "9a1b9d331c13ba8270660a4d56a17c0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DestinationParkingInfo)))
  "Returns md5sum for a message object of type 'DestinationParkingInfo"
  "9a1b9d331c13ba8270660a4d56a17c0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DestinationParkingInfo>)))
  "Returns full string definition for message of type '<DestinationParkingInfo>"
  (cl:format cl:nil "uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DestinationParkingInfo)))
  "Returns full string definition for message of type 'DestinationParkingInfo"
  (cl:format cl:nil "uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DestinationParkingInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DestinationParkingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DestinationParkingInfo
    (cl:cons ':available (available msg))
    (cl:cons ':parking_type (parking_type msg))
    (cl:cons ':id (id msg))
))
