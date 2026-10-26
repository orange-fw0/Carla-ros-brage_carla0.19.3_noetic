; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude SceneRecognitionType.msg.html

(cl:defclass <SceneRecognitionType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SceneRecognitionType (<SceneRecognitionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneRecognitionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneRecognitionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<SceneRecognitionType> is deprecated: use landmark_msgs-msg:SceneRecognitionType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SceneRecognitionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SceneRecognitionType>)))
    "Constants for message type '<SceneRecognitionType>"
  '((:SCENE_RECOGNITION_TYPE_UKNOWN . 0)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD . 1)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP . 2)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN . 3)
    (:SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE . 4)
    (:SCENE_RECOGNITION_TYPE_URBAN_TUNNEL . 5)
    (:SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD . 6)
    (:SCENE_RECOGNITION_TYPE_URBAN_OTHER . 7)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE . 8)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT . 9)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION . 10)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER . 11)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND . 12)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND . 13)
    (:SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE . 14)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE . 15)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD . 16)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD . 17)
    (:SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE . 18))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SceneRecognitionType)))
    "Constants for message type 'SceneRecognitionType"
  '((:SCENE_RECOGNITION_TYPE_UKNOWN . 0)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD . 1)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP . 2)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN . 3)
    (:SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE . 4)
    (:SCENE_RECOGNITION_TYPE_URBAN_TUNNEL . 5)
    (:SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD . 6)
    (:SCENE_RECOGNITION_TYPE_URBAN_OTHER . 7)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE . 8)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT . 9)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION . 10)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER . 11)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND . 12)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND . 13)
    (:SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE . 14)
    (:SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE . 15)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD . 16)
    (:SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD . 17)
    (:SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE . 18))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneRecognitionType>) ostream)
  "Serializes a message object of type '<SceneRecognitionType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneRecognitionType>) istream)
  "Deserializes a message object of type '<SceneRecognitionType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneRecognitionType>)))
  "Returns string type for a message object of type '<SceneRecognitionType>"
  "landmark_msgs/SceneRecognitionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneRecognitionType)))
  "Returns string type for a message object of type 'SceneRecognitionType"
  "landmark_msgs/SceneRecognitionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneRecognitionType>)))
  "Returns md5sum for a message object of type '<SceneRecognitionType>"
  "1294aa3ce27fa345bd746c320d4d55e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneRecognitionType)))
  "Returns md5sum for a message object of type 'SceneRecognitionType"
  "1294aa3ce27fa345bd746c320d4d55e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneRecognitionType>)))
  "Returns full string definition for message of type '<SceneRecognitionType>"
  (cl:format cl:nil "uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3~%uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4~%uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5~%uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6~%uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13~%uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17~%uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneRecognitionType)))
  "Returns full string definition for message of type 'SceneRecognitionType"
  (cl:format cl:nil "uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3~%uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4~%uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5~%uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6~%uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13~%uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17~%uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneRecognitionType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneRecognitionType>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneRecognitionType
    (cl:cons ':value (value msg))
))
