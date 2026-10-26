;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::AttributeOnPath)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'AttributeOnPath (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH")
  (make-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))

(in-package "ROS")
;;//! \htmlinclude AttributeOnPath.msg.html


(intern "*SPEED_LIMIT_VALID*" (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(shadow '*SPEED_LIMIT_VALID* (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(defconstant landmark_msgs::AttributeOnPath::*SPEED_LIMIT_VALID* 1)
(intern "*CURVATURE_VALID*" (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(shadow '*CURVATURE_VALID* (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(defconstant landmark_msgs::AttributeOnPath::*CURVATURE_VALID* 2)
(intern "*SLOPE_VALID*" (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(shadow '*SLOPE_VALID* (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(defconstant landmark_msgs::AttributeOnPath::*SLOPE_VALID* 4)
(intern "*OFFSET_VALID*" (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(shadow '*OFFSET_VALID* (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(defconstant landmark_msgs::AttributeOnPath::*OFFSET_VALID* 8)
(intern "*SPECIAL_SITUATION_VALID*" (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(shadow '*SPECIAL_SITUATION_VALID* (find-package "LANDMARK_MSGS::ATTRIBUTEONPATH"))
(defconstant landmark_msgs::AttributeOnPath::*SPECIAL_SITUATION_VALID* 16)

(defun landmark_msgs::AttributeOnPath-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::AttributeOnPath::*SPEED_LIMIT_VALID*)
        ((= const 2) 'landmark_msgs::AttributeOnPath::*CURVATURE_VALID*)
        ((= const 4) 'landmark_msgs::AttributeOnPath::*SLOPE_VALID*)
        ((= const 8) 'landmark_msgs::AttributeOnPath::*OFFSET_VALID*)
        ((= const 16) 'landmark_msgs::AttributeOnPath::*SPECIAL_SITUATION_VALID*)
        (t nil)))

(defclass landmark_msgs::AttributeOnPath
  :super ros::object
  :slots (_available _start_offset _speed_limit _curvature _slope _special_situation _reserved ))

(defmethod landmark_msgs::AttributeOnPath
  (:init
   (&key
    ((:available __available) 0)
    ((:start_offset __start_offset) 0.0)
    ((:speed_limit __speed_limit) 0.0)
    ((:curvature __curvature) 0.0)
    ((:slope __slope) 0.0)
    ((:special_situation __special_situation) (instance landmark_msgs::SpecialSituation :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _start_offset (float __start_offset))
   (setq _speed_limit (float __speed_limit))
   (setq _curvature (float __curvature))
   (setq _slope (float __slope))
   (setq _special_situation __special_situation)
   (setq _reserved (string __reserved))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:slope
   (&optional __slope)
   (if __slope (setq _slope __slope)) _slope)
  (:special_situation
   (&rest __special_situation)
   (if (keywordp (car __special_situation))
       (send* _special_situation __special_situation)
     (progn
       (if __special_situation (setq _special_situation (car __special_situation)))
       _special_situation)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint32 _available
    4
    ;; float32 _start_offset
    4
    ;; float32 _speed_limit
    4
    ;; float32 _curvature
    4
    ;; float32 _slope
    4
    ;; landmark_msgs/SpecialSituation _special_situation
    (send _special_situation :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available
       (write-long _available s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slope
       (sys::poke _slope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/SpecialSituation _special_situation
       (send _special_situation :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slope
     (setq _slope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/SpecialSituation _special_situation
     (send _special_situation :deserialize buf ptr-) (incf ptr- (send _special_situation :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::AttributeOnPath :md5sum-) "8a9ec600f93f0276615467b41ea9ba7c")
(setf (get landmark_msgs::AttributeOnPath :datatype-) "landmark_msgs/AttributeOnPath")
(setf (get landmark_msgs::AttributeOnPath :definition-)
      "uint32 SPEED_LIMIT_VALID = 1
uint32 CURVATURE_VALID = 2
uint32 SLOPE_VALID = 4
uint32 OFFSET_VALID = 8
uint32 SPECIAL_SITUATION_VALID = 16
uint32 available
float32 start_offset
float32 speed_limit
float32 curvature
float32 slope
landmark_msgs/SpecialSituation special_situation
string reserved

================================================================================
MSG: landmark_msgs/SpecialSituation
uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

")



(provide :landmark_msgs/AttributeOnPath "8a9ec600f93f0276615467b41ea9ba7c")


