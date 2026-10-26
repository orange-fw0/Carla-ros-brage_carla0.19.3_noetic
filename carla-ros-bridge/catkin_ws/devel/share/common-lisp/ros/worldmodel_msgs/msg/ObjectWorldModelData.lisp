; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ObjectWorldModelData.msg.html

(cl:defclass <ObjectWorldModelData> (roslisp-msg-protocol:ros-message)
  ((filtered
    :reader filtered
    :initarg :filtered
    :type cl:boolean
    :initform cl:nil)
   (occlusion_area
    :reader occlusion_area
    :initarg :occlusion_area
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (extra_json
    :reader extra_json
    :initarg :extra_json
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectWorldModelData (<ObjectWorldModelData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectWorldModelData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectWorldModelData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ObjectWorldModelData> is deprecated: use worldmodel_msgs-msg:ObjectWorldModelData instead.")))

(cl:ensure-generic-function 'filtered-val :lambda-list '(m))
(cl:defmethod filtered-val ((m <ObjectWorldModelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:filtered-val is deprecated.  Use worldmodel_msgs-msg:filtered instead.")
  (filtered m))

(cl:ensure-generic-function 'occlusion_area-val :lambda-list '(m))
(cl:defmethod occlusion_area-val ((m <ObjectWorldModelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:occlusion_area-val is deprecated.  Use worldmodel_msgs-msg:occlusion_area instead.")
  (occlusion_area m))

(cl:ensure-generic-function 'extra_json-val :lambda-list '(m))
(cl:defmethod extra_json-val ((m <ObjectWorldModelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:extra_json-val is deprecated.  Use worldmodel_msgs-msg:extra_json instead.")
  (extra_json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectWorldModelData>) ostream)
  "Serializes a message object of type '<ObjectWorldModelData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'filtered) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'occlusion_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'occlusion_area))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectWorldModelData>) istream)
  "Deserializes a message object of type '<ObjectWorldModelData>"
    (cl:setf (cl:slot-value msg 'filtered) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'occlusion_area) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'occlusion_area)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectWorldModelData>)))
  "Returns string type for a message object of type '<ObjectWorldModelData>"
  "worldmodel_msgs/ObjectWorldModelData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectWorldModelData)))
  "Returns string type for a message object of type 'ObjectWorldModelData"
  "worldmodel_msgs/ObjectWorldModelData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectWorldModelData>)))
  "Returns md5sum for a message object of type '<ObjectWorldModelData>"
  "8ab7304b697b94d7e5e3d7cc991f778e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectWorldModelData)))
  "Returns md5sum for a message object of type 'ObjectWorldModelData"
  "8ab7304b697b94d7e5e3d7cc991f778e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectWorldModelData>)))
  "Returns full string definition for message of type '<ObjectWorldModelData>"
  (cl:format cl:nil "bool filtered~%perception_interface_msgs/Point3f[] occlusion_area~%string extra_json~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectWorldModelData)))
  "Returns full string definition for message of type 'ObjectWorldModelData"
  (cl:format cl:nil "bool filtered~%perception_interface_msgs/Point3f[] occlusion_area~%string extra_json~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectWorldModelData>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'occlusion_area) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'extra_json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectWorldModelData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectWorldModelData
    (cl:cons ':filtered (filtered msg))
    (cl:cons ':occlusion_area (occlusion_area msg))
    (cl:cons ':extra_json (extra_json msg))
))
