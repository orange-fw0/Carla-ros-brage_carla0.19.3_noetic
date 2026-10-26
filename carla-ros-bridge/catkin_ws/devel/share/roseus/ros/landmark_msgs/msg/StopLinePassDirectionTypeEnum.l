;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::StopLinePassDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'StopLinePassDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude StopLinePassDirectionTypeEnum.msg.html


(intern "*STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(shadow '*STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN* 0)
(intern "*STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT*" (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(shadow '*STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT* (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT* 1)
(intern "*STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT*" (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(shadow '*STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT* (find-package "LANDMARK_MSGS::STOPLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT* 2)

(defun landmark_msgs::StopLinePassDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT*)
        ((= const 2) 'landmark_msgs::StopLinePassDirectionTypeEnum::*STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT*)
        (t nil)))

(defclass landmark_msgs::StopLinePassDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::StopLinePassDirectionTypeEnum
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

(setf (get landmark_msgs::StopLinePassDirectionTypeEnum :md5sum-) "efae407afb7f37e3b1204da036cda988")
(setf (get landmark_msgs::StopLinePassDirectionTypeEnum :datatype-) "landmark_msgs/StopLinePassDirectionTypeEnum")
(setf (get landmark_msgs::StopLinePassDirectionTypeEnum :definition-)
      "uint8 STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
uint8 STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
uint8 value

")



(provide :landmark_msgs/StopLinePassDirectionTypeEnum "efae407afb7f37e3b1204da036cda988")


