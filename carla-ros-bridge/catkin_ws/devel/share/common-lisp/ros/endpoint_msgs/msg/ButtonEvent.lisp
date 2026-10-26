; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ButtonEvent.msg.html

(cl:defclass <ButtonEvent> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ButtonEvent (<ButtonEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ButtonEvent> is deprecated: use endpoint_msgs-msg:ButtonEvent instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ButtonEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ButtonEvent>)))
    "Constants for message type '<ButtonEvent>"
  '((:BUTTON1 . 0)
    (:BUTTON2 . 1)
    (:BUTTON3 . 2)
    (:BUTTON4 . 3)
    (:BUTTON5 . 4)
    (:BUTTON6 . 5)
    (:BUTTON7 . 6)
    (:BUTTON8 . 7)
    (:BUTTON9 . 8)
    (:BUTTON10 . 9)
    (:BUTTON11 . 10)
    (:BUTTON12 . 11)
    (:BUTTON13 . 12)
    (:BUTTON14 . 13)
    (:BUTTON15 . 14)
    (:BUTTON16 . 15)
    (:BUTTON17 . 16)
    (:BUTTON18 . 17)
    (:BUTTON19 . 18)
    (:BUTTON20 . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ButtonEvent)))
    "Constants for message type 'ButtonEvent"
  '((:BUTTON1 . 0)
    (:BUTTON2 . 1)
    (:BUTTON3 . 2)
    (:BUTTON4 . 3)
    (:BUTTON5 . 4)
    (:BUTTON6 . 5)
    (:BUTTON7 . 6)
    (:BUTTON8 . 7)
    (:BUTTON9 . 8)
    (:BUTTON10 . 9)
    (:BUTTON11 . 10)
    (:BUTTON12 . 11)
    (:BUTTON13 . 12)
    (:BUTTON14 . 13)
    (:BUTTON15 . 14)
    (:BUTTON16 . 15)
    (:BUTTON17 . 16)
    (:BUTTON18 . 17)
    (:BUTTON19 . 18)
    (:BUTTON20 . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonEvent>) ostream)
  "Serializes a message object of type '<ButtonEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonEvent>) istream)
  "Deserializes a message object of type '<ButtonEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonEvent>)))
  "Returns string type for a message object of type '<ButtonEvent>"
  "endpoint_msgs/ButtonEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonEvent)))
  "Returns string type for a message object of type 'ButtonEvent"
  "endpoint_msgs/ButtonEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonEvent>)))
  "Returns md5sum for a message object of type '<ButtonEvent>"
  "01c4b9d758885b8ed39729214ca2ab7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonEvent)))
  "Returns md5sum for a message object of type 'ButtonEvent"
  "01c4b9d758885b8ed39729214ca2ab7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonEvent>)))
  "Returns full string definition for message of type '<ButtonEvent>"
  (cl:format cl:nil "uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonEvent)))
  "Returns full string definition for message of type 'ButtonEvent"
  (cl:format cl:nil "uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonEvent>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonEvent
    (cl:cons ':value (value msg))
))
