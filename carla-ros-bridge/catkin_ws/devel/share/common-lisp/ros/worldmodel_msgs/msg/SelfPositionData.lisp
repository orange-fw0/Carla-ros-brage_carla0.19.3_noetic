; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude SelfPositionData.msg.html

(cl:defclass <SelfPositionData> (roslisp-msg-protocol:ros-message)
  ((in_map_area
    :reader in_map_area
    :initarg :in_map_area
    :type cl:boolean
    :initform cl:nil)
   (in_intersection
    :reader in_intersection
    :initarg :in_intersection
    :type cl:boolean
    :initform cl:nil)
   (on_ramp
    :reader on_ramp
    :initarg :on_ramp
    :type cl:boolean
    :initform cl:nil)
   (current_parking_slot_id
    :reader current_parking_slot_id
    :initarg :current_parking_slot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass SelfPositionData (<SelfPositionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfPositionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfPositionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<SelfPositionData> is deprecated: use worldmodel_msgs-msg:SelfPositionData instead.")))

(cl:ensure-generic-function 'in_map_area-val :lambda-list '(m))
(cl:defmethod in_map_area-val ((m <SelfPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:in_map_area-val is deprecated.  Use worldmodel_msgs-msg:in_map_area instead.")
  (in_map_area m))

(cl:ensure-generic-function 'in_intersection-val :lambda-list '(m))
(cl:defmethod in_intersection-val ((m <SelfPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:in_intersection-val is deprecated.  Use worldmodel_msgs-msg:in_intersection instead.")
  (in_intersection m))

(cl:ensure-generic-function 'on_ramp-val :lambda-list '(m))
(cl:defmethod on_ramp-val ((m <SelfPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:on_ramp-val is deprecated.  Use worldmodel_msgs-msg:on_ramp instead.")
  (on_ramp m))

(cl:ensure-generic-function 'current_parking_slot_id-val :lambda-list '(m))
(cl:defmethod current_parking_slot_id-val ((m <SelfPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:current_parking_slot_id-val is deprecated.  Use worldmodel_msgs-msg:current_parking_slot_id instead.")
  (current_parking_slot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfPositionData>) ostream)
  "Serializes a message object of type '<SelfPositionData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_map_area) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_intersection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on_ramp) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current_parking_slot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfPositionData>) istream)
  "Deserializes a message object of type '<SelfPositionData>"
    (cl:setf (cl:slot-value msg 'in_map_area) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'on_ramp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_parking_slot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfPositionData>)))
  "Returns string type for a message object of type '<SelfPositionData>"
  "worldmodel_msgs/SelfPositionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfPositionData)))
  "Returns string type for a message object of type 'SelfPositionData"
  "worldmodel_msgs/SelfPositionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfPositionData>)))
  "Returns md5sum for a message object of type '<SelfPositionData>"
  "2ec8531ae295755dd5b30c71eca0c224")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfPositionData)))
  "Returns md5sum for a message object of type 'SelfPositionData"
  "2ec8531ae295755dd5b30c71eca0c224")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfPositionData>)))
  "Returns full string definition for message of type '<SelfPositionData>"
  (cl:format cl:nil "bool in_map_area~%bool in_intersection~%bool on_ramp~%int32 current_parking_slot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfPositionData)))
  "Returns full string definition for message of type 'SelfPositionData"
  (cl:format cl:nil "bool in_map_area~%bool in_intersection~%bool on_ramp~%int32 current_parking_slot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfPositionData>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfPositionData>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfPositionData
    (cl:cons ':in_map_area (in_map_area msg))
    (cl:cons ':in_intersection (in_intersection msg))
    (cl:cons ':on_ramp (on_ramp msg))
    (cl:cons ':current_parking_slot_id (current_parking_slot_id msg))
))
