;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::LaneAttribute)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'LaneAttribute (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE")
  (make-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude LaneAttribute.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*LANE_DIRECTION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(shadow '*LANE_DIRECTION_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(defconstant lane_navi_info_msgs::LaneAttribute::*LANE_DIRECTION_VALID* 1)
(intern "*START_OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(shadow '*START_OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(defconstant lane_navi_info_msgs::LaneAttribute::*START_OFFSET_VALID* 2)
(intern "*END_OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(shadow '*END_OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANEATTRIBUTE"))
(defconstant lane_navi_info_msgs::LaneAttribute::*END_OFFSET_VALID* 4)

(defun lane_navi_info_msgs::LaneAttribute-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::LaneAttribute::*LANE_DIRECTION_VALID*)
        ((= const 2) 'lane_navi_info_msgs::LaneAttribute::*START_OFFSET_VALID*)
        ((= const 4) 'lane_navi_info_msgs::LaneAttribute::*END_OFFSET_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::LaneAttribute
  :super ros::object
  :slots (_available _lane_direction _start_offset _end_offset ))

(defmethod lane_navi_info_msgs::LaneAttribute
  (:init
   (&key
    ((:available __available) 0)
    ((:lane_direction __lane_direction) (instance landmark_msgs::LaneCenterNodeDirectionTypeEnum :init))
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lane_direction __lane_direction)
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lane_direction
   (&rest __lane_direction)
   (if (keywordp (car __lane_direction))
       (send* _lane_direction __lane_direction)
     (progn
       (if __lane_direction (setq _lane_direction (car __lane_direction)))
       _lane_direction)))
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum _lane_direction
    (send _lane_direction :serialization-length)
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum _lane_direction
       (send _lane_direction :serialize s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum _lane_direction
     (send _lane_direction :deserialize buf ptr-) (incf ptr- (send _lane_direction :serialization-length))
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::LaneAttribute :md5sum-) "e14f5da531b46624c1b6a5969a7c5c72")
(setf (get lane_navi_info_msgs::LaneAttribute :datatype-) "lane_navi_info_msgs/LaneAttribute")
(setf (get lane_navi_info_msgs::LaneAttribute :definition-)
      "uint8 LANE_DIRECTION_VALID = 1
uint8 START_OFFSET_VALID = 2
uint8 END_OFFSET_VALID = 4
uint8 available
landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

")



(provide :lane_navi_info_msgs/LaneAttribute "e14f5da531b46624c1b6a5969a7c5c72")


