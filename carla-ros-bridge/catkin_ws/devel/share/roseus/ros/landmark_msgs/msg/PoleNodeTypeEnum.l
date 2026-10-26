;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::PoleNodeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'PoleNodeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::POLENODETYPEENUM")
  (make-package "LANDMARK_MSGS::POLENODETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude PoleNodeTypeEnum.msg.html


(intern "*POLE_NODE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(shadow '*POLE_NODE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(defconstant landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_UNKNOWN* 0)
(intern "*POLE_NODE_TYPE_GENERAL_POLE*" (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(shadow '*POLE_NODE_TYPE_GENERAL_POLE* (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(defconstant landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_GENERAL_POLE* 1)
(intern "*POLE_NODE_TYPE_LIGHT_POLE*" (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(shadow '*POLE_NODE_TYPE_LIGHT_POLE* (find-package "LANDMARK_MSGS::POLENODETYPEENUM"))
(defconstant landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_LIGHT_POLE* 2)

(defun landmark_msgs::PoleNodeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_GENERAL_POLE*)
        ((= const 2) 'landmark_msgs::PoleNodeTypeEnum::*POLE_NODE_TYPE_LIGHT_POLE*)
        (t nil)))

(defclass landmark_msgs::PoleNodeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::PoleNodeTypeEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::PoleNodeTypeEnum :md5sum-) "6cd6b093a080c03f105f35613de119f8")
(setf (get landmark_msgs::PoleNodeTypeEnum :datatype-) "landmark_msgs/PoleNodeTypeEnum")
(setf (get landmark_msgs::PoleNodeTypeEnum :definition-)
      "uint8 POLE_NODE_TYPE_UNKNOWN = 0
uint8 POLE_NODE_TYPE_GENERAL_POLE = 1
uint8 POLE_NODE_TYPE_LIGHT_POLE = 2
uint8 value

")



(provide :landmark_msgs/PoleNodeTypeEnum "6cd6b093a080c03f105f35613de119f8")


