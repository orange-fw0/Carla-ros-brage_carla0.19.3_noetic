; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude MagicCarpetObject.msg.html

(cl:defclass <MagicCarpetObject> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (elevation_cm
    :reader elevation_cm
    :initarg :elevation_cm
    :type cl:float
    :initform 0.0)
   (longitude_distance_m
    :reader longitude_distance_m
    :initarg :longitude_distance_m
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagicCarpetObject (<MagicCarpetObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagicCarpetObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagicCarpetObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<MagicCarpetObject> is deprecated: use perception_interface_msgs-msg:MagicCarpetObject instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MagicCarpetObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'elevation_cm-val :lambda-list '(m))
(cl:defmethod elevation_cm-val ((m <MagicCarpetObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:elevation_cm-val is deprecated.  Use perception_interface_msgs-msg:elevation_cm instead.")
  (elevation_cm m))

(cl:ensure-generic-function 'longitude_distance_m-val :lambda-list '(m))
(cl:defmethod longitude_distance_m-val ((m <MagicCarpetObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:longitude_distance_m-val is deprecated.  Use perception_interface_msgs-msg:longitude_distance_m instead.")
  (longitude_distance_m m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MagicCarpetObject>)))
    "Constants for message type '<MagicCarpetObject>"
  '((:UNKNOWN . 0)
    (:MANHOLE . 1)
    (:SPEED_BUMP . 2)
    (:ROAD_CRACK . 3)
    (:BROKEN_ROAD . 4)
    (:ROAD_CURB . 5)
    (:RESERVED_6 . 6)
    (:RESERVED_7 . 7)
    (:RESERVED_8 . 8)
    (:RESERVED_9 . 9)
    (:RESERVED_10 . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MagicCarpetObject)))
    "Constants for message type 'MagicCarpetObject"
  '((:UNKNOWN . 0)
    (:MANHOLE . 1)
    (:SPEED_BUMP . 2)
    (:ROAD_CRACK . 3)
    (:BROKEN_ROAD . 4)
    (:ROAD_CURB . 5)
    (:RESERVED_6 . 6)
    (:RESERVED_7 . 7)
    (:RESERVED_8 . 8)
    (:RESERVED_9 . 9)
    (:RESERVED_10 . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagicCarpetObject>) ostream)
  "Serializes a message object of type '<MagicCarpetObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation_cm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_distance_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagicCarpetObject>) istream)
  "Deserializes a message object of type '<MagicCarpetObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation_cm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_distance_m) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagicCarpetObject>)))
  "Returns string type for a message object of type '<MagicCarpetObject>"
  "perception_interface_msgs/MagicCarpetObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagicCarpetObject)))
  "Returns string type for a message object of type 'MagicCarpetObject"
  "perception_interface_msgs/MagicCarpetObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagicCarpetObject>)))
  "Returns md5sum for a message object of type '<MagicCarpetObject>"
  "03e17ae2dcc8c18245253ec598d35969")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagicCarpetObject)))
  "Returns md5sum for a message object of type 'MagicCarpetObject"
  "03e17ae2dcc8c18245253ec598d35969")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagicCarpetObject>)))
  "Returns full string definition for message of type '<MagicCarpetObject>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 MANHOLE = 1~%uint8 SPEED_BUMP = 2~%uint8 ROAD_CRACK = 3~%uint8 BROKEN_ROAD = 4~%uint8 ROAD_CURB = 5~%uint8 RESERVED_6 = 6~%uint8 RESERVED_7 = 7~%uint8 RESERVED_8 = 8~%uint8 RESERVED_9 = 9~%uint8 RESERVED_10 = 10~%uint8 type~%float32 elevation_cm~%float32 longitude_distance_m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagicCarpetObject)))
  "Returns full string definition for message of type 'MagicCarpetObject"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 MANHOLE = 1~%uint8 SPEED_BUMP = 2~%uint8 ROAD_CRACK = 3~%uint8 BROKEN_ROAD = 4~%uint8 ROAD_CURB = 5~%uint8 RESERVED_6 = 6~%uint8 RESERVED_7 = 7~%uint8 RESERVED_8 = 8~%uint8 RESERVED_9 = 9~%uint8 RESERVED_10 = 10~%uint8 type~%float32 elevation_cm~%float32 longitude_distance_m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagicCarpetObject>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagicCarpetObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MagicCarpetObject
    (cl:cons ':type (type msg))
    (cl:cons ':elevation_cm (elevation_cm msg))
    (cl:cons ':longitude_distance_m (longitude_distance_m msg))
))
