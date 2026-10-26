;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Lanemark)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Lanemark (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANEMARK")
  (make-package "MOMENTA_MSGS::LANEMARK"))

(in-package "ROS")
;;//! \htmlinclude Lanemark.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::Lanemark
  :super ros::object
  :slots (_id _prob _is_solid _is_boundary _color _is_Yline _is_biline _pts_on_img _pts_on_bv ))

(defmethod momenta_msgs::Lanemark
  (:init
   (&key
    ((:id __id) 0)
    ((:prob __prob) 0.0)
    ((:is_solid __is_solid) nil)
    ((:is_boundary __is_boundary) nil)
    ((:color __color) 0)
    ((:is_Yline __is_Yline) nil)
    ((:is_biline __is_biline) nil)
    ((:pts_on_img __pts_on_img) ())
    ((:pts_on_bv __pts_on_bv) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _prob (float __prob))
   (setq _is_solid __is_solid)
   (setq _is_boundary __is_boundary)
   (setq _color (round __color))
   (setq _is_Yline __is_Yline)
   (setq _is_biline __is_biline)
   (setq _pts_on_img __pts_on_img)
   (setq _pts_on_bv __pts_on_bv)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:is_solid
   (&optional (__is_solid :null))
   (if (not (eq __is_solid :null)) (setq _is_solid __is_solid)) _is_solid)
  (:is_boundary
   (&optional (__is_boundary :null))
   (if (not (eq __is_boundary :null)) (setq _is_boundary __is_boundary)) _is_boundary)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:is_Yline
   (&optional (__is_Yline :null))
   (if (not (eq __is_Yline :null)) (setq _is_Yline __is_Yline)) _is_Yline)
  (:is_biline
   (&optional (__is_biline :null))
   (if (not (eq __is_biline :null)) (setq _is_biline __is_biline)) _is_biline)
  (:pts_on_img
   (&rest __pts_on_img)
   (if (keywordp (car __pts_on_img))
       (send* _pts_on_img __pts_on_img)
     (progn
       (if __pts_on_img (setq _pts_on_img (car __pts_on_img)))
       _pts_on_img)))
  (:pts_on_bv
   (&rest __pts_on_bv)
   (if (keywordp (car __pts_on_bv))
       (send* _pts_on_bv __pts_on_bv)
     (progn
       (if __pts_on_bv (setq _pts_on_bv (car __pts_on_bv)))
       _pts_on_bv)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32 _prob
    4
    ;; bool _is_solid
    1
    ;; bool _is_boundary
    1
    ;; uint8 _color
    1
    ;; bool _is_Yline
    1
    ;; bool _is_biline
    1
    ;; geometry_msgs/Pose2D[] _pts_on_img
    (apply #'+ (send-all _pts_on_img :serialization-length)) 4
    ;; geometry_msgs/Pose2D[] _pts_on_bv
    (apply #'+ (send-all _pts_on_bv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_solid
       (if _is_solid (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_boundary
       (if _is_boundary (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _color
       (write-byte _color s)
     ;; bool _is_Yline
       (if _is_Yline (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_biline
       (if _is_biline (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D[] _pts_on_img
     (write-long (length _pts_on_img) s)
     (dolist (elem _pts_on_img)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose2D[] _pts_on_bv
     (write-long (length _pts_on_bv) s)
     (dolist (elem _pts_on_bv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_solid
     (setq _is_solid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_boundary
     (setq _is_boundary (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_Yline
     (setq _is_Yline (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_biline
     (setq _is_biline (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D[] _pts_on_img
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_on_img (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pts_on_img)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose2D[] _pts_on_bv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_on_bv (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pts_on_bv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::Lanemark :md5sum-) "91f7d0e27c50ffe0b860a789237c5ad2")
(setf (get momenta_msgs::Lanemark :datatype-) "momenta_msgs/Lanemark")
(setf (get momenta_msgs::Lanemark :definition-)
      "uint32 id
float32 prob
bool is_solid
bool is_boundary
uint8 color
bool is_Yline
bool is_biline
geometry_msgs/Pose2D[] pts_on_img
geometry_msgs/Pose2D[] pts_on_bv

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :momenta_msgs/Lanemark "91f7d0e27c50ffe0b860a789237c5ad2")


