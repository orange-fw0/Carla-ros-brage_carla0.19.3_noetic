;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTLongSolidLine)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTLongSolidLine (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE")
  (make-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))

(in-package "ROS")
;;//! \htmlinclude TBTLongSolidLine.msg.html


(intern "*START_OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(shadow '*START_OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(defconstant lane_navi_info_msgs::TBTLongSolidLine::*START_OFFSET_VALID* 1)
(intern "*END_OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(shadow '*END_OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(defconstant lane_navi_info_msgs::TBTLongSolidLine::*END_OFFSET_VALID* 2)
(intern "*LENGTH_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(shadow '*LENGTH_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(defconstant lane_navi_info_msgs::TBTLongSolidLine::*LENGTH_VALID* 4)
(intern "*LANE_INDEX_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(shadow '*LANE_INDEX_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLONGSOLIDLINE"))
(defconstant lane_navi_info_msgs::TBTLongSolidLine::*LANE_INDEX_VALID* 8)

(defun lane_navi_info_msgs::TBTLongSolidLine-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::TBTLongSolidLine::*START_OFFSET_VALID*)
        ((= const 2) 'lane_navi_info_msgs::TBTLongSolidLine::*END_OFFSET_VALID*)
        ((= const 4) 'lane_navi_info_msgs::TBTLongSolidLine::*LENGTH_VALID*)
        ((= const 8) 'lane_navi_info_msgs::TBTLongSolidLine::*LANE_INDEX_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTLongSolidLine
  :super ros::object
  :slots (_available _start_offset _end_offset _length _lane_index ))

(defmethod lane_navi_info_msgs::TBTLongSolidLine
  (:init
   (&key
    ((:available __available) 0)
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    ((:length __length) 0.0)
    ((:lane_index __lane_index) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   (setq _length (float __length))
   (setq _lane_index (round __lane_index))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:lane_index
   (&optional __lane_index)
   (if __lane_index (setq _lane_index __lane_index)) _lane_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ;; float32 _length
    4
    ;; uint8 _lane_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _lane_index
       (write-byte _lane_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _lane_index
     (setq _lane_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTLongSolidLine :md5sum-) "60d23b4c1cc4eb455f494217d8b1f953")
(setf (get lane_navi_info_msgs::TBTLongSolidLine :datatype-) "lane_navi_info_msgs/TBTLongSolidLine")
(setf (get lane_navi_info_msgs::TBTLongSolidLine :definition-)
      "uint8 START_OFFSET_VALID = 1
uint8 END_OFFSET_VALID = 2
uint8 LENGTH_VALID = 4
uint8 LANE_INDEX_VALID = 8
uint8 available
float32 start_offset
float32 end_offset
float32 length
uint8 lane_index

")



(provide :lane_navi_info_msgs/TBTLongSolidLine "60d23b4c1cc4eb455f494217d8b1f953")


