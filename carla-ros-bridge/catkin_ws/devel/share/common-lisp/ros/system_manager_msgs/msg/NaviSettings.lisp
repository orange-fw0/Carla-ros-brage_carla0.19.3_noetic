; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude NaviSettings.msg.html

(cl:defclass <NaviSettings> (roslisp-msg-protocol:ros-message)
  ((navi_max_speed
    :reader navi_max_speed
    :initarg :navi_max_speed
    :type cl:float
    :initform 0.0)
   (navi_time_distance
    :reader navi_time_distance
    :initarg :navi_time_distance
    :type system_manager_msgs-msg:NaviTimeDistance
    :initform (cl:make-instance 'system_manager_msgs-msg:NaviTimeDistance)))
)

(cl:defclass NaviSettings (<NaviSettings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviSettings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviSettings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<NaviSettings> is deprecated: use system_manager_msgs-msg:NaviSettings instead.")))

(cl:ensure-generic-function 'navi_max_speed-val :lambda-list '(m))
(cl:defmethod navi_max_speed-val ((m <NaviSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:navi_max_speed-val is deprecated.  Use system_manager_msgs-msg:navi_max_speed instead.")
  (navi_max_speed m))

(cl:ensure-generic-function 'navi_time_distance-val :lambda-list '(m))
(cl:defmethod navi_time_distance-val ((m <NaviSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:navi_time_distance-val is deprecated.  Use system_manager_msgs-msg:navi_time_distance instead.")
  (navi_time_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviSettings>) ostream)
  "Serializes a message object of type '<NaviSettings>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'navi_max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_time_distance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviSettings>) istream)
  "Deserializes a message object of type '<NaviSettings>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'navi_max_speed) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_time_distance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviSettings>)))
  "Returns string type for a message object of type '<NaviSettings>"
  "system_manager_msgs/NaviSettings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviSettings)))
  "Returns string type for a message object of type 'NaviSettings"
  "system_manager_msgs/NaviSettings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviSettings>)))
  "Returns md5sum for a message object of type '<NaviSettings>"
  "d7377832e5606e265ae1240dabf8c394")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviSettings)))
  "Returns md5sum for a message object of type 'NaviSettings"
  "d7377832e5606e265ae1240dabf8c394")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviSettings>)))
  "Returns full string definition for message of type '<NaviSettings>"
  (cl:format cl:nil "float32 navi_max_speed~%system_manager_msgs/NaviTimeDistance navi_time_distance~%~%================================================================================~%MSG: system_manager_msgs/NaviTimeDistance~%uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviSettings)))
  "Returns full string definition for message of type 'NaviSettings"
  (cl:format cl:nil "float32 navi_max_speed~%system_manager_msgs/NaviTimeDistance navi_time_distance~%~%================================================================================~%MSG: system_manager_msgs/NaviTimeDistance~%uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviSettings>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_time_distance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviSettings>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviSettings
    (cl:cons ':navi_max_speed (navi_max_speed msg))
    (cl:cons ':navi_time_distance (navi_time_distance msg))
))
