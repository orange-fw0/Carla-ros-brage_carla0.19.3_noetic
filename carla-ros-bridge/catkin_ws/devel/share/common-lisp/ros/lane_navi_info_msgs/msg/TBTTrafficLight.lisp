; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTTrafficLight.msg.html

(cl:defclass <TBTTrafficLight> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type lane_navi_info_msgs-msg:Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Cursor))
   (position
    :reader position
    :initarg :position
    :type lane_navi_info_msgs-msg:Point
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Point)))
)

(cl:defclass TBTTrafficLight (<TBTTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTTrafficLight> is deprecated: use lane_navi_info_msgs-msg:TBTTrafficLight instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TBTTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <TBTTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TBTTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:position-val is deprecated.  Use lane_navi_info_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTTrafficLight>)))
    "Constants for message type '<TBTTrafficLight>"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTTrafficLight)))
    "Constants for message type 'TBTTrafficLight"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTTrafficLight>) ostream)
  "Serializes a message object of type '<TBTTrafficLight>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTTrafficLight>) istream)
  "Deserializes a message object of type '<TBTTrafficLight>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTTrafficLight>)))
  "Returns string type for a message object of type '<TBTTrafficLight>"
  "lane_navi_info_msgs/TBTTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTTrafficLight)))
  "Returns string type for a message object of type 'TBTTrafficLight"
  "lane_navi_info_msgs/TBTTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTTrafficLight>)))
  "Returns md5sum for a message object of type '<TBTTrafficLight>"
  "7838d6665117d6bb919f9737f3758bda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTTrafficLight)))
  "Returns md5sum for a message object of type 'TBTTrafficLight"
  "7838d6665117d6bb919f9737f3758bda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTTrafficLight>)))
  "Returns full string definition for message of type '<TBTTrafficLight>"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTTrafficLight)))
  "Returns full string definition for message of type 'TBTTrafficLight"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTTrafficLight>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTTrafficLight
    (cl:cons ':available (available msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':position (position msg))
))
