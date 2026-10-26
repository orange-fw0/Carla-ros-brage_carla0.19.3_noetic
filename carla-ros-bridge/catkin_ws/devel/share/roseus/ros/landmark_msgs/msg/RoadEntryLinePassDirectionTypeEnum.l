;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadEntryLinePassDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadEntryLinePassDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadEntryLinePassDirectionTypeEnum.msg.html


(intern "*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN* 0)
(intern "*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT*" (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT* (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT* 1)
(intern "*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT*" (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT* (find-package "LANDMARK_MSGS::ROADENTRYLINEPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT* 2)

(defun landmark_msgs::RoadEntryLinePassDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT*)
        ((= const 2) 'landmark_msgs::RoadEntryLinePassDirectionTypeEnum::*ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT*)
        (t nil)))

(defclass landmark_msgs::RoadEntryLinePassDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadEntryLinePassDirectionTypeEnum
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

(setf (get landmark_msgs::RoadEntryLinePassDirectionTypeEnum :md5sum-) "c27148b3cc75c960d03ff4519bc5d666")
(setf (get landmark_msgs::RoadEntryLinePassDirectionTypeEnum :datatype-) "landmark_msgs/RoadEntryLinePassDirectionTypeEnum")
(setf (get landmark_msgs::RoadEntryLinePassDirectionTypeEnum :definition-)
      "uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
uint8 value

")



(provide :landmark_msgs/RoadEntryLinePassDirectionTypeEnum "c27148b3cc75c960d03ff4519bc5d666")


