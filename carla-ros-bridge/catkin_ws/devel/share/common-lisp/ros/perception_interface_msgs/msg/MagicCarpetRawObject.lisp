; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude MagicCarpetRawObject.msg.html

(cl:defclass <MagicCarpetRawObject> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (polygon_2d
    :reader polygon_2d
    :initarg :polygon_2d
    :type (cl:vector perception_interface_msgs-msg:Point2f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point2f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point2f)))
   (polygon_3d
    :reader polygon_3d
    :initarg :polygon_3d
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagicCarpetRawObject (<MagicCarpetRawObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagicCarpetRawObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagicCarpetRawObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<MagicCarpetRawObject> is deprecated: use perception_interface_msgs-msg:MagicCarpetRawObject instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MagicCarpetRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'polygon_2d-val :lambda-list '(m))
(cl:defmethod polygon_2d-val ((m <MagicCarpetRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_2d-val is deprecated.  Use perception_interface_msgs-msg:polygon_2d instead.")
  (polygon_2d m))

(cl:ensure-generic-function 'polygon_3d-val :lambda-list '(m))
(cl:defmethod polygon_3d-val ((m <MagicCarpetRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_3d-val is deprecated.  Use perception_interface_msgs-msg:polygon_3d instead.")
  (polygon_3d m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <MagicCarpetRawObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagicCarpetRawObject>) ostream)
  "Serializes a message object of type '<MagicCarpetRawObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_2d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_3d))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagicCarpetRawObject>) istream)
  "Deserializes a message object of type '<MagicCarpetRawObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagicCarpetRawObject>)))
  "Returns string type for a message object of type '<MagicCarpetRawObject>"
  "perception_interface_msgs/MagicCarpetRawObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagicCarpetRawObject)))
  "Returns string type for a message object of type 'MagicCarpetRawObject"
  "perception_interface_msgs/MagicCarpetRawObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagicCarpetRawObject>)))
  "Returns md5sum for a message object of type '<MagicCarpetRawObject>"
  "23df4b60585bce242a7e1ae41e4abce1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagicCarpetRawObject)))
  "Returns md5sum for a message object of type 'MagicCarpetRawObject"
  "23df4b60585bce242a7e1ae41e4abce1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagicCarpetRawObject>)))
  "Returns full string definition for message of type '<MagicCarpetRawObject>"
  (cl:format cl:nil "uint8 type~%perception_interface_msgs/Point2f[] polygon_2d~%perception_interface_msgs/Point3f[] polygon_3d~%float32 score~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagicCarpetRawObject)))
  "Returns full string definition for message of type 'MagicCarpetRawObject"
  (cl:format cl:nil "uint8 type~%perception_interface_msgs/Point2f[] polygon_2d~%perception_interface_msgs/Point3f[] polygon_3d~%float32 score~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagicCarpetRawObject>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagicCarpetRawObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MagicCarpetRawObject
    (cl:cons ':type (type msg))
    (cl:cons ':polygon_2d (polygon_2d msg))
    (cl:cons ':polygon_3d (polygon_3d msg))
    (cl:cons ':score (score msg))
))
