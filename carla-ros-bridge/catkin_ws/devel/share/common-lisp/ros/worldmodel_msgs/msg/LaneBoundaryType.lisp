; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundaryType.msg.html

(cl:defclass <LaneBoundaryType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type worldmodel_msgs-msg:LaneBoundaryForm
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryForm))
   (color
    :reader color
    :initarg :color
    :type worldmodel_msgs-msg:LaneBoundaryColor
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryColor))
   (width
    :reader width
    :initarg :width
    :type worldmodel_msgs-msg:LaneBoundaryWidth
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryWidth)))
)

(cl:defclass LaneBoundaryType (<LaneBoundaryType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundaryType> is deprecated: use worldmodel_msgs-msg:LaneBoundaryType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LaneBoundaryType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:color-val is deprecated.  Use worldmodel_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <LaneBoundaryType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:width-val is deprecated.  Use worldmodel_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryType>) ostream)
  "Serializes a message object of type '<LaneBoundaryType>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryType>) istream)
  "Deserializes a message object of type '<LaneBoundaryType>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryType>)))
  "Returns string type for a message object of type '<LaneBoundaryType>"
  "worldmodel_msgs/LaneBoundaryType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryType)))
  "Returns string type for a message object of type 'LaneBoundaryType"
  "worldmodel_msgs/LaneBoundaryType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryType>)))
  "Returns md5sum for a message object of type '<LaneBoundaryType>"
  "95147bd5b7fa0fdf3fcf8e37648214d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryType)))
  "Returns md5sum for a message object of type 'LaneBoundaryType"
  "95147bd5b7fa0fdf3fcf8e37648214d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryType>)))
  "Returns full string definition for message of type '<LaneBoundaryType>"
  (cl:format cl:nil "worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryType)))
  "Returns full string definition for message of type 'LaneBoundaryType"
  (cl:format cl:nil "worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryType>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryType>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryType
    (cl:cons ':value (value msg))
    (cl:cons ':color (color msg))
    (cl:cons ':width (width msg))
))
