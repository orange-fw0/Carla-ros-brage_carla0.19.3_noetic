; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude HDMapTafficLightInformation.msg.html

(cl:defclass <HDMapTafficLightInformation> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (in_intersection
    :reader in_intersection
    :initarg :in_intersection
    :type cl:boolean
    :initform cl:nil)
   (hdmap_intersecions
    :reader hdmap_intersecions
    :initarg :hdmap_intersecions
    :type (cl:vector perception_interface_msgs-msg:HDMapIntersection)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:HDMapIntersection :initial-element (cl:make-instance 'perception_interface_msgs-msg:HDMapIntersection))))
)

(cl:defclass HDMapTafficLightInformation (<HDMapTafficLightInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapTafficLightInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapTafficLightInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<HDMapTafficLightInformation> is deprecated: use perception_interface_msgs-msg:HDMapTafficLightInformation instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <HDMapTafficLightInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:valid-val is deprecated.  Use perception_interface_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'in_intersection-val :lambda-list '(m))
(cl:defmethod in_intersection-val ((m <HDMapTafficLightInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:in_intersection-val is deprecated.  Use perception_interface_msgs-msg:in_intersection instead.")
  (in_intersection m))

(cl:ensure-generic-function 'hdmap_intersecions-val :lambda-list '(m))
(cl:defmethod hdmap_intersecions-val ((m <HDMapTafficLightInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:hdmap_intersecions-val is deprecated.  Use perception_interface_msgs-msg:hdmap_intersecions instead.")
  (hdmap_intersecions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapTafficLightInformation>) ostream)
  "Serializes a message object of type '<HDMapTafficLightInformation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_intersection) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hdmap_intersecions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hdmap_intersecions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapTafficLightInformation>) istream)
  "Deserializes a message object of type '<HDMapTafficLightInformation>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hdmap_intersecions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hdmap_intersecions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:HDMapIntersection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapTafficLightInformation>)))
  "Returns string type for a message object of type '<HDMapTafficLightInformation>"
  "perception_interface_msgs/HDMapTafficLightInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapTafficLightInformation)))
  "Returns string type for a message object of type 'HDMapTafficLightInformation"
  "perception_interface_msgs/HDMapTafficLightInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapTafficLightInformation>)))
  "Returns md5sum for a message object of type '<HDMapTafficLightInformation>"
  "341f1dad7a2d7bb84b1c89cd015f6f35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapTafficLightInformation)))
  "Returns md5sum for a message object of type 'HDMapTafficLightInformation"
  "341f1dad7a2d7bb84b1c89cd015f6f35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapTafficLightInformation>)))
  "Returns full string definition for message of type '<HDMapTafficLightInformation>"
  (cl:format cl:nil "bool valid~%bool in_intersection~%perception_interface_msgs/HDMapIntersection[] hdmap_intersecions~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersection~%perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapTafficLightInformation)))
  "Returns full string definition for message of type 'HDMapTafficLightInformation"
  (cl:format cl:nil "bool valid~%bool in_intersection~%perception_interface_msgs/HDMapIntersection[] hdmap_intersecions~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersection~%perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapTafficLightInformation>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hdmap_intersecions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapTafficLightInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapTafficLightInformation
    (cl:cons ':valid (valid msg))
    (cl:cons ':in_intersection (in_intersection msg))
    (cl:cons ':hdmap_intersecions (hdmap_intersecions msg))
))
