;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneIdWithOnRouteInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneIdWithOnRouteInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO")
  (make-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))

(in-package "ROS")
;;//! \htmlinclude LaneIdWithOnRouteInfo.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(defconstant landmark_msgs::LaneIdWithOnRouteInfo::*UNKNOWN* 0)
(intern "*ON_ROUTE*" (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(shadow '*ON_ROUTE* (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(defconstant landmark_msgs::LaneIdWithOnRouteInfo::*ON_ROUTE* 1)
(intern "*OFF_ROUTE*" (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(shadow '*OFF_ROUTE* (find-package "LANDMARK_MSGS::LANEIDWITHONROUTEINFO"))
(defconstant landmark_msgs::LaneIdWithOnRouteInfo::*OFF_ROUTE* 2)

(defun landmark_msgs::LaneIdWithOnRouteInfo-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneIdWithOnRouteInfo::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneIdWithOnRouteInfo::*ON_ROUTE*)
        ((= const 2) 'landmark_msgs::LaneIdWithOnRouteInfo::*OFF_ROUTE*)
        (t nil)))

(defclass landmark_msgs::LaneIdWithOnRouteInfo
  :super ros::object
  :slots (_lane_id _on_route_info ))

(defmethod landmark_msgs::LaneIdWithOnRouteInfo
  (:init
   (&key
    ((:lane_id __lane_id) (instance landmark_msgs::TrackId :init))
    ((:on_route_info __on_route_info) 0)
    )
   (send-super :init)
   (setq _lane_id __lane_id)
   (setq _on_route_info (round __on_route_info))
   self)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:on_route_info
   (&optional __on_route_info)
   (if __on_route_info (setq _on_route_info __on_route_info)) _on_route_info)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _lane_id
    (send _lane_id :serialization-length)
    ;; uint8 _on_route_info
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _lane_id
       (send _lane_id :serialize s)
     ;; uint8 _on_route_info
       (write-byte _on_route_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; uint8 _on_route_info
     (setq _on_route_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneIdWithOnRouteInfo :md5sum-) "abb747e6f87d7fd6d3abcadf1ba5cd36")
(setf (get landmark_msgs::LaneIdWithOnRouteInfo :datatype-) "landmark_msgs/LaneIdWithOnRouteInfo")
(setf (get landmark_msgs::LaneIdWithOnRouteInfo :definition-)
      "uint8 UNKNOWN = 0
uint8 ON_ROUTE = 1
uint8 OFF_ROUTE = 2
landmark_msgs/TrackId lane_id
uint8 on_route_info

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :landmark_msgs/LaneIdWithOnRouteInfo "abb747e6f87d7fd6d3abcadf1ba5cd36")


