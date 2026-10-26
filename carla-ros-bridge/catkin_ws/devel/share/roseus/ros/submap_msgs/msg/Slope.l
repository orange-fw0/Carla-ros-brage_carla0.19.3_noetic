;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::Slope)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'Slope (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::SLOPE")
  (make-package "SUBMAP_MSGS::SLOPE"))

(in-package "ROS")
;;//! \htmlinclude Slope.msg.html


(defclass submap_msgs::Slope
  :super ros::object
  :slots (_enter _exit _detected_slope_pose _is_up _finished _score _slide_distance ))

(defmethod submap_msgs::Slope
  (:init
   (&key
    ((:enter __enter) (instance submap_msgs::Position :init))
    ((:exit __exit) (instance submap_msgs::Position :init))
    ((:detected_slope_pose __detected_slope_pose) (instance submap_msgs::Position :init))
    ((:is_up __is_up) nil)
    ((:finished __finished) nil)
    ((:score __score) 0.0)
    ((:slide_distance __slide_distance) 0.0)
    )
   (send-super :init)
   (setq _enter __enter)
   (setq _exit __exit)
   (setq _detected_slope_pose __detected_slope_pose)
   (setq _is_up __is_up)
   (setq _finished __finished)
   (setq _score (float __score))
   (setq _slide_distance (float __slide_distance))
   self)
  (:enter
   (&rest __enter)
   (if (keywordp (car __enter))
       (send* _enter __enter)
     (progn
       (if __enter (setq _enter (car __enter)))
       _enter)))
  (:exit
   (&rest __exit)
   (if (keywordp (car __exit))
       (send* _exit __exit)
     (progn
       (if __exit (setq _exit (car __exit)))
       _exit)))
  (:detected_slope_pose
   (&rest __detected_slope_pose)
   (if (keywordp (car __detected_slope_pose))
       (send* _detected_slope_pose __detected_slope_pose)
     (progn
       (if __detected_slope_pose (setq _detected_slope_pose (car __detected_slope_pose)))
       _detected_slope_pose)))
  (:is_up
   (&optional (__is_up :null))
   (if (not (eq __is_up :null)) (setq _is_up __is_up)) _is_up)
  (:finished
   (&optional (__finished :null))
   (if (not (eq __finished :null)) (setq _finished __finished)) _finished)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:slide_distance
   (&optional __slide_distance)
   (if __slide_distance (setq _slide_distance __slide_distance)) _slide_distance)
  (:serialization-length
   ()
   (+
    ;; submap_msgs/Position _enter
    (send _enter :serialization-length)
    ;; submap_msgs/Position _exit
    (send _exit :serialization-length)
    ;; submap_msgs/Position _detected_slope_pose
    (send _detected_slope_pose :serialization-length)
    ;; bool _is_up
    1
    ;; bool _finished
    1
    ;; float32 _score
    4
    ;; float32 _slide_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/Position _enter
       (send _enter :serialize s)
     ;; submap_msgs/Position _exit
       (send _exit :serialize s)
     ;; submap_msgs/Position _detected_slope_pose
       (send _detected_slope_pose :serialize s)
     ;; bool _is_up
       (if _is_up (write-byte -1 s) (write-byte 0 s))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_distance
       (sys::poke _slide_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/Position _enter
     (send _enter :deserialize buf ptr-) (incf ptr- (send _enter :serialization-length))
   ;; submap_msgs/Position _exit
     (send _exit :deserialize buf ptr-) (incf ptr- (send _exit :serialization-length))
   ;; submap_msgs/Position _detected_slope_pose
     (send _detected_slope_pose :deserialize buf ptr-) (incf ptr- (send _detected_slope_pose :serialization-length))
   ;; bool _is_up
     (setq _is_up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_distance
     (setq _slide_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get submap_msgs::Slope :md5sum-) "fcf6315814e9d509950a72cf49c97c31")
(setf (get submap_msgs::Slope :datatype-) "submap_msgs/Slope")
(setf (get submap_msgs::Slope :definition-)
      "submap_msgs/Position enter
submap_msgs/Position exit
submap_msgs/Position detected_slope_pose
bool is_up
bool finished
float32 score
float32 slide_distance

================================================================================
MSG: submap_msgs/Position
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 translation
float64 timestamp

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :submap_msgs/Slope "fcf6315814e9d509950a72cf49c97c31")


