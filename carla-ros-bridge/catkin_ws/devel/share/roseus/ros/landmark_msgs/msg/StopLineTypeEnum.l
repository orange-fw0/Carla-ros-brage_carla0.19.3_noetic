;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::StopLineTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'StopLineTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::STOPLINETYPEENUM")
  (make-package "LANDMARK_MSGS::STOPLINETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude StopLineTypeEnum.msg.html


(intern "*STOP_LINE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_TYPE_UNKNOWN* 0)
(intern "*STOP_LINE_TYPE_NORMAL*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_TYPE_NORMAL* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_TYPE_NORMAL* 1)
(intern "*STOP_LINE_LEFT_WAITING_AREA*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_LEFT_WAITING_AREA* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_LEFT_WAITING_AREA* 2)
(intern "*STOP_LINE_BACK_WAITING_AREA*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_BACK_WAITING_AREA* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_BACK_WAITING_AREA* 3)
(intern "*STOP_LINE_RIGHT_WAITING_AREA*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_RIGHT_WAITING_AREA* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_RIGHT_WAITING_AREA* 4)
(intern "*STOP_LINE_GO_STRAIGHT_WAITING_AREA*" (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(shadow '*STOP_LINE_GO_STRAIGHT_WAITING_AREA* (find-package "LANDMARK_MSGS::STOPLINETYPEENUM"))
(defconstant landmark_msgs::StopLineTypeEnum::*STOP_LINE_GO_STRAIGHT_WAITING_AREA* 5)

(defun landmark_msgs::StopLineTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_TYPE_NORMAL*)
        ((= const 2) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_LEFT_WAITING_AREA*)
        ((= const 3) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_BACK_WAITING_AREA*)
        ((= const 4) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_RIGHT_WAITING_AREA*)
        ((= const 5) 'landmark_msgs::StopLineTypeEnum::*STOP_LINE_GO_STRAIGHT_WAITING_AREA*)
        (t nil)))

(defclass landmark_msgs::StopLineTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::StopLineTypeEnum
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

(setf (get landmark_msgs::StopLineTypeEnum :md5sum-) "d6c5905838f990647598b284d00ecfd2")
(setf (get landmark_msgs::StopLineTypeEnum :datatype-) "landmark_msgs/StopLineTypeEnum")
(setf (get landmark_msgs::StopLineTypeEnum :definition-)
      "uint8 STOP_LINE_TYPE_UNKNOWN = 0
uint8 STOP_LINE_TYPE_NORMAL = 1
uint8 STOP_LINE_LEFT_WAITING_AREA = 2
uint8 STOP_LINE_BACK_WAITING_AREA = 3
uint8 STOP_LINE_RIGHT_WAITING_AREA = 4
uint8 STOP_LINE_GO_STRAIGHT_WAITING_AREA = 5
uint8 value

")



(provide :landmark_msgs/StopLineTypeEnum "d6c5905838f990647598b284d00ecfd2")


