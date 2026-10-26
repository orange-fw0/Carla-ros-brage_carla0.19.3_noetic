; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicUpaDistance.msg.html

(cl:defclass <UltrasonicUpaDistance> (roslisp-msg-protocol:ros-message)
  ((sonar
    :reader sonar
    :initarg :sonar
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicUpaData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicUpaData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicUpaData))))
)

(cl:defclass UltrasonicUpaDistance (<UltrasonicUpaDistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicUpaDistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicUpaDistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicUpaDistance> is deprecated: use sensor_interface_msgs-msg:UltrasonicUpaDistance instead.")))

(cl:ensure-generic-function 'sonar-val :lambda-list '(m))
(cl:defmethod sonar-val ((m <UltrasonicUpaDistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:sonar-val is deprecated.  Use sensor_interface_msgs-msg:sonar instead.")
  (sonar m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicUpaDistance>)))
    "Constants for message type '<UltrasonicUpaDistance>"
  '((:FRONT_LEFT_SIDE . 0)
    (:FRONT_LEFT_CORNER . 1)
    (:FRONT_LEFT_CENTER . 2)
    (:FRONT_RIGHT_CENTER . 3)
    (:FRONT_RIGHT_CORNER . 4)
    (:FRONT_RIGHT_SIDE . 5)
    (:REAR_RIGHT_SIDE . 6)
    (:REAR_RIGHT_CORNER . 7)
    (:REAR_RIGHT_CENTER . 8)
    (:REAR_LEFT_CENTER . 9)
    (:REAR_LEFT_CORNER . 10)
    (:REAR_LEFT_SIDE . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicUpaDistance)))
    "Constants for message type 'UltrasonicUpaDistance"
  '((:FRONT_LEFT_SIDE . 0)
    (:FRONT_LEFT_CORNER . 1)
    (:FRONT_LEFT_CENTER . 2)
    (:FRONT_RIGHT_CENTER . 3)
    (:FRONT_RIGHT_CORNER . 4)
    (:FRONT_RIGHT_SIDE . 5)
    (:REAR_RIGHT_SIDE . 6)
    (:REAR_RIGHT_CORNER . 7)
    (:REAR_RIGHT_CENTER . 8)
    (:REAR_LEFT_CENTER . 9)
    (:REAR_LEFT_CORNER . 10)
    (:REAR_LEFT_SIDE . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicUpaDistance>) ostream)
  "Serializes a message object of type '<UltrasonicUpaDistance>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sonar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sonar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicUpaDistance>) istream)
  "Deserializes a message object of type '<UltrasonicUpaDistance>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sonar) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sonar)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicUpaData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicUpaDistance>)))
  "Returns string type for a message object of type '<UltrasonicUpaDistance>"
  "sensor_interface_msgs/UltrasonicUpaDistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicUpaDistance)))
  "Returns string type for a message object of type 'UltrasonicUpaDistance"
  "sensor_interface_msgs/UltrasonicUpaDistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicUpaDistance>)))
  "Returns md5sum for a message object of type '<UltrasonicUpaDistance>"
  "a917f80a8e68fd3fd205ee3a5f7bad35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicUpaDistance)))
  "Returns md5sum for a message object of type 'UltrasonicUpaDistance"
  "a917f80a8e68fd3fd205ee3a5f7bad35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicUpaDistance>)))
  "Returns full string definition for message of type '<UltrasonicUpaDistance>"
  (cl:format cl:nil "uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicUpaData[] sonar~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicUpaDistance)))
  "Returns full string definition for message of type 'UltrasonicUpaDistance"
  (cl:format cl:nil "uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicUpaData[] sonar~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicUpaDistance>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sonar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicUpaDistance>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicUpaDistance
    (cl:cons ':sonar (sonar msg))
))
