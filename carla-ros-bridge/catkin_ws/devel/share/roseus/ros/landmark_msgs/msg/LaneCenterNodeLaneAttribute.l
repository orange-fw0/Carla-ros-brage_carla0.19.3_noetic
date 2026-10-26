;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterNodeLaneAttribute)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterNodeLaneAttribute (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE")
  (make-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterNodeLaneAttribute.msg.html


(intern "*SPEED_LIMIT_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(shadow '*SPEED_LIMIT_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(defconstant landmark_msgs::LaneCenterNodeLaneAttribute::*SPEED_LIMIT_VALID* 1)
(intern "*CURVATURE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(shadow '*CURVATURE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(defconstant landmark_msgs::LaneCenterNodeLaneAttribute::*CURVATURE_VALID* 2)
(intern "*SLOPE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(shadow '*SLOPE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(defconstant landmark_msgs::LaneCenterNodeLaneAttribute::*SLOPE_VALID* 4)
(intern "*OFFSET_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(shadow '*OFFSET_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODELANEATTRIBUTE"))
(defconstant landmark_msgs::LaneCenterNodeLaneAttribute::*OFFSET_VALID* 8)

(defun landmark_msgs::LaneCenterNodeLaneAttribute-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::LaneCenterNodeLaneAttribute::*SPEED_LIMIT_VALID*)
        ((= const 2) 'landmark_msgs::LaneCenterNodeLaneAttribute::*CURVATURE_VALID*)
        ((= const 4) 'landmark_msgs::LaneCenterNodeLaneAttribute::*SLOPE_VALID*)
        ((= const 8) 'landmark_msgs::LaneCenterNodeLaneAttribute::*OFFSET_VALID*)
        (t nil)))

(defclass landmark_msgs::LaneCenterNodeLaneAttribute
  :super ros::object
  :slots (_available _speed_limit _curvature _slope _start_offset _end_offset ))

(defmethod landmark_msgs::LaneCenterNodeLaneAttribute
  (:init
   (&key
    ((:available __available) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:curvature __curvature) 0.0)
    ((:slope __slope) 0.0)
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _speed_limit (float __speed_limit))
   (setq _curvature (float __curvature))
   (setq _slope (float __slope))
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:slope
   (&optional __slope)
   (if __slope (setq _slope __slope)) _slope)
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
    ;; float32 _speed_limit
    4
    ;; float32 _curvature
    4
    ;; float32 _slope
    4
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
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slope
       (sys::poke _slope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slope
     (setq _slope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterNodeLaneAttribute :md5sum-) "f929ebc900ff5902be17ad5ea1e55637")
(setf (get landmark_msgs::LaneCenterNodeLaneAttribute :datatype-) "landmark_msgs/LaneCenterNodeLaneAttribute")
(setf (get landmark_msgs::LaneCenterNodeLaneAttribute :definition-)
      "uint8 SPEED_LIMIT_VALID = 1
uint8 CURVATURE_VALID = 2
uint8 SLOPE_VALID = 4
uint8 OFFSET_VALID = 8
uint8 available
float32 speed_limit
float32 curvature
float32 slope
float32 start_offset
float32 end_offset

")



(provide :landmark_msgs/LaneCenterNodeLaneAttribute "f929ebc900ff5902be17ad5ea1e55637")


