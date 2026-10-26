;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTTrafficLight)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTTrafficLight (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT")
  (make-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude TBTTrafficLight.msg.html


(intern "*OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT"))
(shadow '*OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT"))
(defconstant lane_navi_info_msgs::TBTTrafficLight::*OFFSET_VALID* 1)
(intern "*POSITION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT"))
(shadow '*POSITION_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTTRAFFICLIGHT"))
(defconstant lane_navi_info_msgs::TBTTrafficLight::*POSITION_VALID* 2)

(defun lane_navi_info_msgs::TBTTrafficLight-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::TBTTrafficLight::*OFFSET_VALID*)
        ((= const 2) 'lane_navi_info_msgs::TBTTrafficLight::*POSITION_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTTrafficLight
  :super ros::object
  :slots (_available _offset _position ))

(defmethod lane_navi_info_msgs::TBTTrafficLight
  (:init
   (&key
    ((:available __available) 0)
    ((:offset __offset) (instance lane_navi_info_msgs::Cursor :init))
    ((:position __position) (instance lane_navi_info_msgs::Point :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _offset __offset)
   (setq _position __position)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; lane_navi_info_msgs/Cursor _offset
    (send _offset :serialization-length)
    ;; lane_navi_info_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; lane_navi_info_msgs/Cursor _offset
       (send _offset :serialize s)
     ;; lane_navi_info_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/Cursor _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;; lane_navi_info_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTTrafficLight :md5sum-) "7838d6665117d6bb919f9737f3758bda")
(setf (get lane_navi_info_msgs::TBTTrafficLight :datatype-) "lane_navi_info_msgs/TBTTrafficLight")
(setf (get lane_navi_info_msgs::TBTTrafficLight :definition-)
      "uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position

================================================================================
MSG: lane_navi_info_msgs/Cursor
landmark_msgs/TrackId road_id
float32 offset

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

")



(provide :lane_navi_info_msgs/TBTTrafficLight "7838d6665117d6bb919f9737f3758bda")


