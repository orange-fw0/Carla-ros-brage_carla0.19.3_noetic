; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DmapInfo.msg.html

(cl:defclass <DmapInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (input_datas
    :reader input_datas
    :initarg :input_datas
    :type (cl:vector landmark_msgs-msg:DmapInputData)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:DmapInputData :initial-element (cl:make-instance 'landmark_msgs-msg:DmapInputData)))
   (dmap_data
    :reader dmap_data
    :initarg :dmap_data
    :type landmark_msgs-msg:FeatMapData
    :initform (cl:make-instance 'landmark_msgs-msg:FeatMapData))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass DmapInfo (<DmapInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DmapInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DmapInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DmapInfo> is deprecated: use landmark_msgs-msg:DmapInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DmapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'input_datas-val :lambda-list '(m))
(cl:defmethod input_datas-val ((m <DmapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:input_datas-val is deprecated.  Use landmark_msgs-msg:input_datas instead.")
  (input_datas m))

(cl:ensure-generic-function 'dmap_data-val :lambda-list '(m))
(cl:defmethod dmap_data-val ((m <DmapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:dmap_data-val is deprecated.  Use landmark_msgs-msg:dmap_data instead.")
  (dmap_data m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DmapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DmapInfo>) ostream)
  "Serializes a message object of type '<DmapInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'input_datas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'input_datas))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dmap_data) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DmapInfo>) istream)
  "Deserializes a message object of type '<DmapInfo>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'input_datas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'input_datas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:DmapInputData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dmap_data) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DmapInfo>)))
  "Returns string type for a message object of type '<DmapInfo>"
  "landmark_msgs/DmapInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DmapInfo)))
  "Returns string type for a message object of type 'DmapInfo"
  "landmark_msgs/DmapInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DmapInfo>)))
  "Returns md5sum for a message object of type '<DmapInfo>"
  "ddceedac66cb602cb8184958f8c12fa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DmapInfo)))
  "Returns md5sum for a message object of type 'DmapInfo"
  "ddceedac66cb602cb8184958f8c12fa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DmapInfo>)))
  "Returns full string definition for message of type '<DmapInfo>"
  (cl:format cl:nil "bool available~%landmark_msgs/DmapInputData[] input_datas~%landmark_msgs/FeatMapData dmap_data~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/DmapInputData~%string input_name~%int32[] shape~%float32[] data~%~%================================================================================~%MSG: landmark_msgs/FeatMapData~%int32[] shape~%float32 map_scalar~%landmark_msgs/FloatRange x_range~%landmark_msgs/FloatRange y_range~%int16 cls_num~%uint8[] cls_map~%float32[] feat_map~%landmark_msgs/FloatRange[] cls_range~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/FloatRange~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DmapInfo)))
  "Returns full string definition for message of type 'DmapInfo"
  (cl:format cl:nil "bool available~%landmark_msgs/DmapInputData[] input_datas~%landmark_msgs/FeatMapData dmap_data~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/DmapInputData~%string input_name~%int32[] shape~%float32[] data~%~%================================================================================~%MSG: landmark_msgs/FeatMapData~%int32[] shape~%float32 map_scalar~%landmark_msgs/FloatRange x_range~%landmark_msgs/FloatRange y_range~%int16 cls_num~%uint8[] cls_map~%float32[] feat_map~%landmark_msgs/FloatRange[] cls_range~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/FloatRange~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DmapInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'input_datas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dmap_data))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DmapInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DmapInfo
    (cl:cons ':available (available msg))
    (cl:cons ':input_datas (input_datas msg))
    (cl:cons ':dmap_data (dmap_data msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
