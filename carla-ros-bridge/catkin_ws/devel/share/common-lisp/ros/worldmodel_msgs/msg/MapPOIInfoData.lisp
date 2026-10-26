; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude MapPOIInfoData.msg.html

(cl:defclass <MapPOIInfoData> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type worldmodel_msgs-msg:MapPOIType
    :initform (cl:make-instance 'worldmodel_msgs-msg:MapPOIType))
   (key_points_enu
    :reader key_points_enu
    :initarg :key_points_enu
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f))))
)

(cl:defclass MapPOIInfoData (<MapPOIInfoData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPOIInfoData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPOIInfoData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<MapPOIInfoData> is deprecated: use worldmodel_msgs-msg:MapPOIInfoData instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MapPOIInfoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <MapPOIInfoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MapPOIInfoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:type-val is deprecated.  Use worldmodel_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'key_points_enu-val :lambda-list '(m))
(cl:defmethod key_points_enu-val ((m <MapPOIInfoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:key_points_enu-val is deprecated.  Use worldmodel_msgs-msg:key_points_enu instead.")
  (key_points_enu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPOIInfoData>) ostream)
  "Serializes a message object of type '<MapPOIInfoData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'key_points_enu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'key_points_enu))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPOIInfoData>) istream)
  "Deserializes a message object of type '<MapPOIInfoData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'key_points_enu) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'key_points_enu)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPOIInfoData>)))
  "Returns string type for a message object of type '<MapPOIInfoData>"
  "worldmodel_msgs/MapPOIInfoData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPOIInfoData)))
  "Returns string type for a message object of type 'MapPOIInfoData"
  "worldmodel_msgs/MapPOIInfoData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPOIInfoData>)))
  "Returns md5sum for a message object of type '<MapPOIInfoData>"
  "2a272a26a543b9830a26c84ebf4afbde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPOIInfoData)))
  "Returns md5sum for a message object of type 'MapPOIInfoData"
  "2a272a26a543b9830a26c84ebf4afbde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPOIInfoData>)))
  "Returns full string definition for message of type '<MapPOIInfoData>"
  (cl:format cl:nil "float64 distance~%float64 length~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Point3f[] key_points_enu~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPOIInfoData)))
  "Returns full string definition for message of type 'MapPOIInfoData"
  (cl:format cl:nil "float64 distance~%float64 length~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Point3f[] key_points_enu~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPOIInfoData>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'key_points_enu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPOIInfoData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPOIInfoData
    (cl:cons ':distance (distance msg))
    (cl:cons ':length (length msg))
    (cl:cons ':type (type msg))
    (cl:cons ':key_points_enu (key_points_enu msg))
))
