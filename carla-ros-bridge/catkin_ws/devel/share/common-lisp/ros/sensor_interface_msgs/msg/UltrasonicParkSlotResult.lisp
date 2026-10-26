; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicParkSlotResult.msg.html

(cl:defclass <UltrasonicParkSlotResult> (roslisp-msg-protocol:ros-message)
  ((uss_park_slot_data
    :reader uss_park_slot_data
    :initarg :uss_park_slot_data
    :type (cl:vector sensor_interface_msgs-msg:UssParkSlotData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UssParkSlotData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UssParkSlotData))))
)

(cl:defclass UltrasonicParkSlotResult (<UltrasonicParkSlotResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicParkSlotResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicParkSlotResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicParkSlotResult> is deprecated: use sensor_interface_msgs-msg:UltrasonicParkSlotResult instead.")))

(cl:ensure-generic-function 'uss_park_slot_data-val :lambda-list '(m))
(cl:defmethod uss_park_slot_data-val ((m <UltrasonicParkSlotResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_park_slot_data-val is deprecated.  Use sensor_interface_msgs-msg:uss_park_slot_data instead.")
  (uss_park_slot_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicParkSlotResult>) ostream)
  "Serializes a message object of type '<UltrasonicParkSlotResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_park_slot_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_park_slot_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicParkSlotResult>) istream)
  "Deserializes a message object of type '<UltrasonicParkSlotResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_park_slot_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_park_slot_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UssParkSlotData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicParkSlotResult>)))
  "Returns string type for a message object of type '<UltrasonicParkSlotResult>"
  "sensor_interface_msgs/UltrasonicParkSlotResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicParkSlotResult)))
  "Returns string type for a message object of type 'UltrasonicParkSlotResult"
  "sensor_interface_msgs/UltrasonicParkSlotResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicParkSlotResult>)))
  "Returns md5sum for a message object of type '<UltrasonicParkSlotResult>"
  "e179d9ef03c41198026705c8f0db6bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicParkSlotResult)))
  "Returns md5sum for a message object of type 'UltrasonicParkSlotResult"
  "e179d9ef03c41198026705c8f0db6bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicParkSlotResult>)))
  "Returns full string definition for message of type '<UltrasonicParkSlotResult>"
  (cl:format cl:nil "sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssParkSlotData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicParkSlotResult)))
  "Returns full string definition for message of type 'UltrasonicParkSlotResult"
  (cl:format cl:nil "sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssParkSlotData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicParkSlotResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_park_slot_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicParkSlotResult>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicParkSlotResult
    (cl:cons ':uss_park_slot_data (uss_park_slot_data msg))
))
