; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSRequestRenderInfo.msg.html

(cl:defclass <TOSRequestRenderInfo> (roslisp-msg-protocol:ros-message)
  ((od_info
    :reader od_info
    :initarg :od_info
    :type (cl:vector tos_msgs-msg:TOSRequestRenderODInfo)
   :initform (cl:make-array 0 :element-type 'tos_msgs-msg:TOSRequestRenderODInfo :initial-element (cl:make-instance 'tos_msgs-msg:TOSRequestRenderODInfo)))
   (ld_info
    :reader ld_info
    :initarg :ld_info
    :type (cl:vector tos_msgs-msg:TOSRequestRenderLDInfo)
   :initform (cl:make-array 0 :element-type 'tos_msgs-msg:TOSRequestRenderLDInfo :initial-element (cl:make-instance 'tos_msgs-msg:TOSRequestRenderLDInfo)))
   (candidates
    :reader candidates
    :initarg :candidates
    :type (cl:vector tos_msgs-msg:TOSRequestCandidate)
   :initform (cl:make-array 0 :element-type 'tos_msgs-msg:TOSRequestCandidate :initial-element (cl:make-instance 'tos_msgs-msg:TOSRequestCandidate))))
)

(cl:defclass TOSRequestRenderInfo (<TOSRequestRenderInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSRequestRenderInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSRequestRenderInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSRequestRenderInfo> is deprecated: use tos_msgs-msg:TOSRequestRenderInfo instead.")))

(cl:ensure-generic-function 'od_info-val :lambda-list '(m))
(cl:defmethod od_info-val ((m <TOSRequestRenderInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:od_info-val is deprecated.  Use tos_msgs-msg:od_info instead.")
  (od_info m))

(cl:ensure-generic-function 'ld_info-val :lambda-list '(m))
(cl:defmethod ld_info-val ((m <TOSRequestRenderInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:ld_info-val is deprecated.  Use tos_msgs-msg:ld_info instead.")
  (ld_info m))

(cl:ensure-generic-function 'candidates-val :lambda-list '(m))
(cl:defmethod candidates-val ((m <TOSRequestRenderInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:candidates-val is deprecated.  Use tos_msgs-msg:candidates instead.")
  (candidates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSRequestRenderInfo>) ostream)
  "Serializes a message object of type '<TOSRequestRenderInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'od_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'od_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ld_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ld_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'candidates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'candidates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSRequestRenderInfo>) istream)
  "Deserializes a message object of type '<TOSRequestRenderInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'od_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'od_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tos_msgs-msg:TOSRequestRenderODInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ld_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ld_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tos_msgs-msg:TOSRequestRenderLDInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'candidates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'candidates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tos_msgs-msg:TOSRequestCandidate))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSRequestRenderInfo>)))
  "Returns string type for a message object of type '<TOSRequestRenderInfo>"
  "tos_msgs/TOSRequestRenderInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSRequestRenderInfo)))
  "Returns string type for a message object of type 'TOSRequestRenderInfo"
  "tos_msgs/TOSRequestRenderInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSRequestRenderInfo>)))
  "Returns md5sum for a message object of type '<TOSRequestRenderInfo>"
  "3602094068c5eafb47bd4bcea349b97b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSRequestRenderInfo)))
  "Returns md5sum for a message object of type 'TOSRequestRenderInfo"
  "3602094068c5eafb47bd4bcea349b97b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSRequestRenderInfo>)))
  "Returns full string definition for message of type '<TOSRequestRenderInfo>"
  (cl:format cl:nil "tos_msgs/TOSRequestRenderODInfo[] od_info~%tos_msgs/TOSRequestRenderLDInfo[] ld_info~%tos_msgs/TOSRequestCandidate[] candidates~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderODInfo~%uint32 id~%float64 target_s~%float64 target_l~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderLDInfo~%uint32 lane_id~%~%================================================================================~%MSG: tos_msgs/TOSRequestCandidate~%uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSRequestRenderInfo)))
  "Returns full string definition for message of type 'TOSRequestRenderInfo"
  (cl:format cl:nil "tos_msgs/TOSRequestRenderODInfo[] od_info~%tos_msgs/TOSRequestRenderLDInfo[] ld_info~%tos_msgs/TOSRequestCandidate[] candidates~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderODInfo~%uint32 id~%float64 target_s~%float64 target_l~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderLDInfo~%uint32 lane_id~%~%================================================================================~%MSG: tos_msgs/TOSRequestCandidate~%uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSRequestRenderInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'od_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ld_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'candidates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSRequestRenderInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSRequestRenderInfo
    (cl:cons ':od_info (od_info msg))
    (cl:cons ':ld_info (ld_info msg))
    (cl:cons ':candidates (candidates msg))
))
