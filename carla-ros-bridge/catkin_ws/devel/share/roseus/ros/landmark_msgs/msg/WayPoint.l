;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::WayPoint)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'WayPoint (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::WAYPOINT")
  (make-package "LANDMARK_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude WayPoint.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*SCORE_VALID* 1)
(intern "*POSITION_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*POSITION_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*POSITION_VALID* 2)
(intern "*HEADING_ANGLE_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*HEADING_ANGLE_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*HEADING_ANGLE_VALID* 4)
(intern "*OFFSET_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*OFFSET_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*OFFSET_VALID* 8)
(intern "*SPEED_MEAN_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*SPEED_MEAN_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*SPEED_MEAN_VALID* 16)
(intern "*SPEED_STD_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*SPEED_STD_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*SPEED_STD_VALID* 32)
(intern "*TURN_DIRECTION_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*TURN_DIRECTION_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*TURN_DIRECTION_VALID* 64)
(intern "*ON_ROUTE_VALID*" (find-package "LANDMARK_MSGS::WAYPOINT"))
(shadow '*ON_ROUTE_VALID* (find-package "LANDMARK_MSGS::WAYPOINT"))
(defconstant landmark_msgs::WayPoint::*ON_ROUTE_VALID* 128)

(defun landmark_msgs::WayPoint-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::WayPoint::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::WayPoint::*POSITION_VALID*)
        ((= const 4) 'landmark_msgs::WayPoint::*HEADING_ANGLE_VALID*)
        ((= const 8) 'landmark_msgs::WayPoint::*OFFSET_VALID*)
        ((= const 16) 'landmark_msgs::WayPoint::*SPEED_MEAN_VALID*)
        ((= const 32) 'landmark_msgs::WayPoint::*SPEED_STD_VALID*)
        ((= const 64) 'landmark_msgs::WayPoint::*TURN_DIRECTION_VALID*)
        ((= const 128) 'landmark_msgs::WayPoint::*ON_ROUTE_VALID*)
        (t nil)))

(defclass landmark_msgs::WayPoint
  :super ros::object
  :slots (_available _score _position _heading_angle _offset _speed_mean _speed_std _turn_direction _on_route _reserved_info ))

(defmethod landmark_msgs::WayPoint
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:position __position) (instance perception_interface_msgs::Point3f :init))
    ((:heading_angle __heading_angle) 0.0)
    ((:offset __offset) 0.0)
    ((:speed_mean __speed_mean) 0.0)
    ((:speed_std __speed_std) 0.0)
    ((:turn_direction __turn_direction) (instance landmark_msgs::Direction :init))
    ((:on_route __on_route) nil)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _position __position)
   (setq _heading_angle (float __heading_angle))
   (setq _offset (float __offset))
   (setq _speed_mean (float __speed_mean))
   (setq _speed_std (float __speed_std))
   (setq _turn_direction __turn_direction)
   (setq _on_route __on_route)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:heading_angle
   (&optional __heading_angle)
   (if __heading_angle (setq _heading_angle __heading_angle)) _heading_angle)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:speed_mean
   (&optional __speed_mean)
   (if __speed_mean (setq _speed_mean __speed_mean)) _speed_mean)
  (:speed_std
   (&optional __speed_std)
   (if __speed_std (setq _speed_std __speed_std)) _speed_std)
  (:turn_direction
   (&rest __turn_direction)
   (if (keywordp (car __turn_direction))
       (send* _turn_direction __turn_direction)
     (progn
       (if __turn_direction (setq _turn_direction (car __turn_direction)))
       _turn_direction)))
  (:on_route
   (&optional (__on_route :null))
   (if (not (eq __on_route :null)) (setq _on_route __on_route)) _on_route)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; perception_interface_msgs/Point3f _position
    (send _position :serialization-length)
    ;; float32 _heading_angle
    4
    ;; float32 _offset
    4
    ;; float32 _speed_mean
    4
    ;; float32 _speed_std
    4
    ;; landmark_msgs/Direction _turn_direction
    (send _turn_direction :serialization-length)
    ;; bool _on_route
    1
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Point3f _position
       (send _position :serialize s)
     ;; float32 _heading_angle
       (sys::poke _heading_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_mean
       (sys::poke _speed_mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_std
       (sys::poke _speed_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/Direction _turn_direction
       (send _turn_direction :serialize s)
     ;; bool _on_route
       (if _on_route (write-byte -1 s) (write-byte 0 s))
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _heading_angle
     (setq _heading_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_mean
     (setq _speed_mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_std
     (setq _speed_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/Direction _turn_direction
     (send _turn_direction :deserialize buf ptr-) (incf ptr- (send _turn_direction :serialization-length))
   ;; bool _on_route
     (setq _on_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::WayPoint :md5sum-) "cabc2718605473323b68cec3729c6753")
(setf (get landmark_msgs::WayPoint :datatype-) "landmark_msgs/WayPoint")
(setf (get landmark_msgs::WayPoint :definition-)
      "uint16 SCORE_VALID = 1
uint16 POSITION_VALID = 2
uint16 HEADING_ANGLE_VALID = 4
uint16 OFFSET_VALID = 8
uint16 SPEED_MEAN_VALID = 16
uint16 SPEED_STD_VALID = 32
uint16 TURN_DIRECTION_VALID = 64
uint16 ON_ROUTE_VALID = 128
uint16 available
float32 score
perception_interface_msgs/Point3f position
float32 heading_angle
float32 offset
float32 speed_mean
float32 speed_std
landmark_msgs/Direction turn_direction
bool on_route
string reserved_info

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

")



(provide :landmark_msgs/WayPoint "cabc2718605473323b68cec3729c6753")


