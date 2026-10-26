;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTLaneInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTLaneInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))

(in-package "ROS")
;;//! \htmlinclude TBTLaneInfo.msg.html


(intern "*OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*OFFSET_VALID* 1)
(intern "*POSITION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*POSITION_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*POSITION_VALID* 2)
(intern "*LANE_GUIDANCE_LIST_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*LANE_GUIDANCE_LIST_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*LANE_GUIDANCE_LIST_VALID* 4)
(intern "*HIGHLIGHT_LANE_GUIDANCE_LIST_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*HIGHLIGHT_LANE_GUIDANCE_LIST_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*HIGHLIGHT_LANE_GUIDANCE_LIST_VALID* 8)
(intern "*HIGHLIGHT_LANE_LIST_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*HIGHLIGHT_LANE_LIST_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*HIGHLIGHT_LANE_LIST_VALID* 16)
(intern "*RECOMMEND_LANE_LIST_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(shadow '*RECOMMEND_LANE_LIST_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEINFO"))
(defconstant lane_navi_info_msgs::TBTLaneInfo::*RECOMMEND_LANE_LIST_VALID* 32)

(defun lane_navi_info_msgs::TBTLaneInfo-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::TBTLaneInfo::*OFFSET_VALID*)
        ((= const 2) 'lane_navi_info_msgs::TBTLaneInfo::*POSITION_VALID*)
        ((= const 4) 'lane_navi_info_msgs::TBTLaneInfo::*LANE_GUIDANCE_LIST_VALID*)
        ((= const 8) 'lane_navi_info_msgs::TBTLaneInfo::*HIGHLIGHT_LANE_GUIDANCE_LIST_VALID*)
        ((= const 16) 'lane_navi_info_msgs::TBTLaneInfo::*HIGHLIGHT_LANE_LIST_VALID*)
        ((= const 32) 'lane_navi_info_msgs::TBTLaneInfo::*RECOMMEND_LANE_LIST_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTLaneInfo
  :super ros::object
  :slots (_available _offset _position _lane_guidance_list _highlight_lane_guidance_list _highlight_lane_list _recommend_lane_list ))

(defmethod lane_navi_info_msgs::TBTLaneInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:offset __offset) (instance lane_navi_info_msgs::Cursor :init))
    ((:position __position) (instance lane_navi_info_msgs::Point :init))
    ((:lane_guidance_list __lane_guidance_list) ())
    ((:highlight_lane_guidance_list __highlight_lane_guidance_list) ())
    ((:highlight_lane_list __highlight_lane_list) (make-array 0 :initial-element 0 :element-type :char))
    ((:recommend_lane_list __recommend_lane_list) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _offset __offset)
   (setq _position __position)
   (setq _lane_guidance_list __lane_guidance_list)
   (setq _highlight_lane_guidance_list __highlight_lane_guidance_list)
   (setq _highlight_lane_list __highlight_lane_list)
   (setq _recommend_lane_list __recommend_lane_list)
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
  (:lane_guidance_list
   (&rest __lane_guidance_list)
   (if (keywordp (car __lane_guidance_list))
       (send* _lane_guidance_list __lane_guidance_list)
     (progn
       (if __lane_guidance_list (setq _lane_guidance_list (car __lane_guidance_list)))
       _lane_guidance_list)))
  (:highlight_lane_guidance_list
   (&rest __highlight_lane_guidance_list)
   (if (keywordp (car __highlight_lane_guidance_list))
       (send* _highlight_lane_guidance_list __highlight_lane_guidance_list)
     (progn
       (if __highlight_lane_guidance_list (setq _highlight_lane_guidance_list (car __highlight_lane_guidance_list)))
       _highlight_lane_guidance_list)))
  (:highlight_lane_list
   (&optional __highlight_lane_list)
   (if __highlight_lane_list (setq _highlight_lane_list __highlight_lane_list)) _highlight_lane_list)
  (:recommend_lane_list
   (&optional __recommend_lane_list)
   (if __recommend_lane_list (setq _recommend_lane_list __recommend_lane_list)) _recommend_lane_list)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; lane_navi_info_msgs/Cursor _offset
    (send _offset :serialization-length)
    ;; lane_navi_info_msgs/Point _position
    (send _position :serialization-length)
    ;; lane_navi_info_msgs/TBTLaneAction[] _lane_guidance_list
    (apply #'+ (send-all _lane_guidance_list :serialization-length)) 4
    ;; lane_navi_info_msgs/TBTLaneAction[] _highlight_lane_guidance_list
    (apply #'+ (send-all _highlight_lane_guidance_list :serialization-length)) 4
    ;; uint8[] _highlight_lane_list
    (* 1    (length _highlight_lane_list)) 4
    ;; uint8[] _recommend_lane_list
    (* 1    (length _recommend_lane_list)) 4
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
     ;; lane_navi_info_msgs/TBTLaneAction[] _lane_guidance_list
     (write-long (length _lane_guidance_list) s)
     (dolist (elem _lane_guidance_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TBTLaneAction[] _highlight_lane_guidance_list
     (write-long (length _highlight_lane_guidance_list) s)
     (dolist (elem _highlight_lane_guidance_list)
       (send elem :serialize s)
       )
     ;; uint8[] _highlight_lane_list
     (write-long (length _highlight_lane_list) s)
     (princ _highlight_lane_list s)
     ;; uint8[] _recommend_lane_list
     (write-long (length _recommend_lane_list) s)
     (princ _recommend_lane_list s)
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
   ;; lane_navi_info_msgs/TBTLaneAction[] _lane_guidance_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_guidance_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTLaneAction :init) r)) r))
     (dolist (elem- _lane_guidance_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TBTLaneAction[] _highlight_lane_guidance_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _highlight_lane_guidance_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTLaneAction :init) r)) r))
     (dolist (elem- _highlight_lane_guidance_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _highlight_lane_list
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _highlight_lane_list (make-array n :element-type :char))
     (replace _highlight_lane_list buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _recommend_lane_list
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _recommend_lane_list (make-array n :element-type :char))
     (replace _recommend_lane_list buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTLaneInfo :md5sum-) "095f9cadac76d260c91721eef6ddc194")
(setf (get lane_navi_info_msgs::TBTLaneInfo :datatype-) "lane_navi_info_msgs/TBTLaneInfo")
(setf (get lane_navi_info_msgs::TBTLaneInfo :definition-)
      "uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 LANE_GUIDANCE_LIST_VALID = 4
uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8
uint8 HIGHLIGHT_LANE_LIST_VALID = 16
uint8 RECOMMEND_LANE_LIST_VALID = 32
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position
lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list
lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list
uint8[] highlight_lane_list
uint8[] recommend_lane_list

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

================================================================================
MSG: lane_navi_info_msgs/TBTLaneAction
uint8 LANE_ACTION_AHEAD = 0
uint8 LANE_ACTION_LEFT = 1
uint8 LANE_ACTION_AHEAD_LEFT = 2
uint8 LANE_ACTION_RIGHT = 3
uint8 LANE_ACTION_AHEAD_RIGHT = 4
uint8 LANE_ACTION_LU_TURN = 5
uint8 LANE_ACTION_LEFT_RIGHT = 6
uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
uint8 LANE_ACTION_RU_TURN = 8
uint8 LANE_ACTION_AHEAD_LU_TURN = 9
uint8 LANE_ACTION_AHEAD_RU_TURN = 10
uint8 LANE_ACTION_LEFT_LU_TURN = 11
uint8 LANE_ACTION_RIGHT_RU_TURN = 12
uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
uint8 LANE_ACTION_RESERVED = 15
uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
uint8 LANE_ACTION_RIGHT_LU_TURN = 17
uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
uint8 LANE_ACTION_LEFT_RU_TURN = 20
uint8 LANE_ACTION_BUS = 21
uint8 LANE_ACTION_EMPTY = 22
uint8 LANE_ACTION_VARIABLE = 23
uint8 LANE_ACTION_DEDICATED = 24
uint8 LANE_ACTION_TIDAL = 25
uint8 LANE_ACTION_NULL = 255
uint8 value

")



(provide :lane_navi_info_msgs/TBTLaneInfo "095f9cadac76d260c91721eef6ddc194")


