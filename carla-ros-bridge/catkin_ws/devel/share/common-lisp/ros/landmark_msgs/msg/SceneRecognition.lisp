; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude SceneRecognition.msg.html

(cl:defclass <SceneRecognition> (roslisp-msg-protocol:ros-message)
  ((scene_types
    :reader scene_types
    :initarg :scene_types
    :type (cl:vector landmark_msgs-msg:SceneRecognitionType)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:SceneRecognitionType :initial-element (cl:make-instance 'landmark_msgs-msg:SceneRecognitionType)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass SceneRecognition (<SceneRecognition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneRecognition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneRecognition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<SceneRecognition> is deprecated: use landmark_msgs-msg:SceneRecognition instead.")))

(cl:ensure-generic-function 'scene_types-val :lambda-list '(m))
(cl:defmethod scene_types-val ((m <SceneRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:scene_types-val is deprecated.  Use landmark_msgs-msg:scene_types instead.")
  (scene_types m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <SceneRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneRecognition>) ostream)
  "Serializes a message object of type '<SceneRecognition>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scene_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scene_types))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneRecognition>) istream)
  "Deserializes a message object of type '<SceneRecognition>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scene_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scene_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:SceneRecognitionType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneRecognition>)))
  "Returns string type for a message object of type '<SceneRecognition>"
  "landmark_msgs/SceneRecognition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneRecognition)))
  "Returns string type for a message object of type 'SceneRecognition"
  "landmark_msgs/SceneRecognition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneRecognition>)))
  "Returns md5sum for a message object of type '<SceneRecognition>"
  "5fce90c362d21b9e64e5e0e241351d65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneRecognition)))
  "Returns md5sum for a message object of type 'SceneRecognition"
  "5fce90c362d21b9e64e5e0e241351d65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneRecognition>)))
  "Returns full string definition for message of type '<SceneRecognition>"
  (cl:format cl:nil "landmark_msgs/SceneRecognitionType[] scene_types~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/SceneRecognitionType~%uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3~%uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4~%uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5~%uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6~%uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13~%uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17~%uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneRecognition)))
  "Returns full string definition for message of type 'SceneRecognition"
  (cl:format cl:nil "landmark_msgs/SceneRecognitionType[] scene_types~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/SceneRecognitionType~%uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3~%uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4~%uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5~%uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6~%uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13~%uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14~%uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16~%uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17~%uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneRecognition>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scene_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneRecognition>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneRecognition
    (cl:cons ':scene_types (scene_types msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
