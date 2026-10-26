;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::NextIntersection)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'NextIntersection (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::NEXTINTERSECTION")
  (make-package "TBT_MSGS::NEXTINTERSECTION"))

(in-package "ROS")
;;//! \htmlinclude NextIntersection.msg.html


(defclass tbt_msgs::NextIntersection
  :super ros::object
  :slots (_number_of_lanes _lane_guidance_list _highlight_lane_list _origin_highlight_lane_list ))

(defmethod tbt_msgs::NextIntersection
  (:init
   (&key
    ((:number_of_lanes __number_of_lanes) 0)
    ((:lane_guidance_list __lane_guidance_list) ())
    ((:highlight_lane_list __highlight_lane_list) ())
    ((:origin_highlight_lane_list __origin_highlight_lane_list) ())
    )
   (send-super :init)
   (setq _number_of_lanes (round __number_of_lanes))
   (setq _lane_guidance_list __lane_guidance_list)
   (setq _highlight_lane_list __highlight_lane_list)
   (setq _origin_highlight_lane_list __origin_highlight_lane_list)
   self)
  (:number_of_lanes
   (&optional __number_of_lanes)
   (if __number_of_lanes (setq _number_of_lanes __number_of_lanes)) _number_of_lanes)
  (:lane_guidance_list
   (&rest __lane_guidance_list)
   (if (keywordp (car __lane_guidance_list))
       (send* _lane_guidance_list __lane_guidance_list)
     (progn
       (if __lane_guidance_list (setq _lane_guidance_list (car __lane_guidance_list)))
       _lane_guidance_list)))
  (:highlight_lane_list
   (&rest __highlight_lane_list)
   (if (keywordp (car __highlight_lane_list))
       (send* _highlight_lane_list __highlight_lane_list)
     (progn
       (if __highlight_lane_list (setq _highlight_lane_list (car __highlight_lane_list)))
       _highlight_lane_list)))
  (:origin_highlight_lane_list
   (&rest __origin_highlight_lane_list)
   (if (keywordp (car __origin_highlight_lane_list))
       (send* _origin_highlight_lane_list __origin_highlight_lane_list)
     (progn
       (if __origin_highlight_lane_list (setq _origin_highlight_lane_list (car __origin_highlight_lane_list)))
       _origin_highlight_lane_list)))
  (:serialization-length
   ()
   (+
    ;; uint8 _number_of_lanes
    1
    ;; tbt_msgs/LaneActionEnum[] _lane_guidance_list
    (apply #'+ (send-all _lane_guidance_list :serialization-length)) 4
    ;; tbt_msgs/HighLightLaneEnum[] _highlight_lane_list
    (apply #'+ (send-all _highlight_lane_list :serialization-length)) 4
    ;; tbt_msgs/LaneActionEnum[] _origin_highlight_lane_list
    (apply #'+ (send-all _origin_highlight_lane_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _number_of_lanes
       (write-byte _number_of_lanes s)
     ;; tbt_msgs/LaneActionEnum[] _lane_guidance_list
     (write-long (length _lane_guidance_list) s)
     (dolist (elem _lane_guidance_list)
       (send elem :serialize s)
       )
     ;; tbt_msgs/HighLightLaneEnum[] _highlight_lane_list
     (write-long (length _highlight_lane_list) s)
     (dolist (elem _highlight_lane_list)
       (send elem :serialize s)
       )
     ;; tbt_msgs/LaneActionEnum[] _origin_highlight_lane_list
     (write-long (length _origin_highlight_lane_list) s)
     (dolist (elem _origin_highlight_lane_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _number_of_lanes
     (setq _number_of_lanes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; tbt_msgs/LaneActionEnum[] _lane_guidance_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_guidance_list (let (r) (dotimes (i n) (push (instance tbt_msgs::LaneActionEnum :init) r)) r))
     (dolist (elem- _lane_guidance_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tbt_msgs/HighLightLaneEnum[] _highlight_lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _highlight_lane_list (let (r) (dotimes (i n) (push (instance tbt_msgs::HighLightLaneEnum :init) r)) r))
     (dolist (elem- _highlight_lane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tbt_msgs/LaneActionEnum[] _origin_highlight_lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origin_highlight_lane_list (let (r) (dotimes (i n) (push (instance tbt_msgs::LaneActionEnum :init) r)) r))
     (dolist (elem- _origin_highlight_lane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tbt_msgs::NextIntersection :md5sum-) "c95d39f1ec7f9b601f421cba98365cc5")
(setf (get tbt_msgs::NextIntersection :datatype-) "tbt_msgs/NextIntersection")
(setf (get tbt_msgs::NextIntersection :definition-)
      "uint8 number_of_lanes
tbt_msgs/LaneActionEnum[] lane_guidance_list
tbt_msgs/HighLightLaneEnum[] highlight_lane_list
tbt_msgs/LaneActionEnum[] origin_highlight_lane_list

================================================================================
MSG: tbt_msgs/LaneActionEnum
uint8 LaneActionAhead = 0
uint8 LaneActionLeft = 1
uint8 LaneActionAheadLeft = 2
uint8 LaneActionRight = 3
uint8 LaneActionAheadRight = 4
uint8 LaneActionLUTurn = 5
uint8 LaneActionLeftRigh = 6
uint8 LaneActionAheadLeftRight = 7
uint8 LaneActionRUTurn = 8
uint8 LaneActionAheadLUTurn = 9
uint8 LaneActionAheadRUTurn = 10
uint8 LaneActionLeftLUTurn = 11
uint8 LaneActionRightRUTurn = 12
uint8 LaneActionLeftInAhead = 13
uint8 LaneActionLeftLUTurnLEx = 14
uint8 LaneActionReserved = 15
uint8 LaneActionAheadLeftLUTurn = 16
uint8 LaneActionRightLUTurn = 17
uint8 LaneActionLeftRightLUTurn = 18
uint8 LaneActionAheadRightLUTurn = 19
uint8 LaneActionLeftRUTurn = 20
uint8 LaneActionBus = 21
uint8 LaneActionEmpty = 22
uint8 LaneActionVariable = 23
uint8 LaneActionNULL = 255
uint8 value

================================================================================
MSG: tbt_msgs/HighLightLaneEnum
uint8 Default = 0
uint8 HighLight = 1
uint8 value

")



(provide :tbt_msgs/NextIntersection "c95d39f1ec7f9b601f421cba98365cc5")


