;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::SpeedBumpTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'SpeedBumpTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM")
  (make-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude SpeedBumpTypeEnum.msg.html


(intern "*SPEED_BUMP_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(shadow '*SPEED_BUMP_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(defconstant landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_UNKNOWN* 0)
(intern "*SPEED_BUMP_TYPE_NORMAL*" (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(shadow '*SPEED_BUMP_TYPE_NORMAL* (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(defconstant landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_NORMAL* 1)
(intern "*SPEED_BUMP_TYPE_BLOCK*" (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(shadow '*SPEED_BUMP_TYPE_BLOCK* (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(defconstant landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_BLOCK* 2)
(intern "*SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING*" (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(shadow '*SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING* (find-package "LANDMARK_MSGS::SPEEDBUMPTYPEENUM"))
(defconstant landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING* 3)

(defun landmark_msgs::SpeedBumpTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_NORMAL*)
        ((= const 2) 'landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_BLOCK*)
        ((= const 3) 'landmark_msgs::SpeedBumpTypeEnum::*SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING*)
        (t nil)))

(defclass landmark_msgs::SpeedBumpTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::SpeedBumpTypeEnum
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

(setf (get landmark_msgs::SpeedBumpTypeEnum :md5sum-) "f22b8c263763f223e58e1d2424b844ae")
(setf (get landmark_msgs::SpeedBumpTypeEnum :datatype-) "landmark_msgs/SpeedBumpTypeEnum")
(setf (get landmark_msgs::SpeedBumpTypeEnum :definition-)
      "uint8 SPEED_BUMP_TYPE_UNKNOWN = 0
uint8 SPEED_BUMP_TYPE_NORMAL = 1
uint8 SPEED_BUMP_TYPE_BLOCK = 2
uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3
uint8 value

")



(provide :landmark_msgs/SpeedBumpTypeEnum "f22b8c263763f223e58e1d2424b844ae")


