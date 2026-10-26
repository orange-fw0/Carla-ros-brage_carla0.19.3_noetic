; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude ParkingFacility.msg.html

(cl:defclass <ParkingFacility> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:ParkingFacilityTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:ParkingFacilityTypeEnum))
   (floor
    :reader floor
    :initarg :floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingFacility (<ParkingFacility>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingFacility>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingFacility)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<ParkingFacility> is deprecated: use landmark_msgs-msg:ParkingFacility instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ParkingFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <ParkingFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:floor-val is deprecated.  Use landmark_msgs-msg:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingFacility>) ostream)
  "Serializes a message object of type '<ParkingFacility>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingFacility>) istream)
  "Deserializes a message object of type '<ParkingFacility>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingFacility>)))
  "Returns string type for a message object of type '<ParkingFacility>"
  "landmark_msgs/ParkingFacility")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingFacility)))
  "Returns string type for a message object of type 'ParkingFacility"
  "landmark_msgs/ParkingFacility")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingFacility>)))
  "Returns md5sum for a message object of type '<ParkingFacility>"
  "1a1c710636be80b653290a0c57e326d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingFacility)))
  "Returns md5sum for a message object of type 'ParkingFacility"
  "1a1c710636be80b653290a0c57e326d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingFacility>)))
  "Returns full string definition for message of type '<ParkingFacility>"
  (cl:format cl:nil "uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/ParkingFacilityTypeEnum type~%int8 floor~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/ParkingFacilityTypeEnum~%uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0~%uint8 PARKING_FACILITY_TYPE_FLOOR = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingFacility)))
  "Returns full string definition for message of type 'ParkingFacility"
  (cl:format cl:nil "uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/ParkingFacilityTypeEnum type~%int8 floor~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/ParkingFacilityTypeEnum~%uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0~%uint8 PARKING_FACILITY_TYPE_FLOOR = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingFacility>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingFacility>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingFacility
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':floor (floor msg))
))
