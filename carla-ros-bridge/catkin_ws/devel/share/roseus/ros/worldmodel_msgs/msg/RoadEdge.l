;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::RoadEdge)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'RoadEdge (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::ROADEDGE")
  (make-package "WORLDMODEL_MSGS::ROADEDGE"))

(in-package "ROS")
;;//! \htmlinclude RoadEdge.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::RoadEdge
  :super ros::object
  :slots (_existence _points _type _reserved ))

(defmethod worldmodel_msgs::RoadEdge
  (:init
   (&key
    ((:existence __existence) nil)
    ((:points __points) ())
    ((:type __type) 0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _existence __existence)
   (setq _points __points)
   (setq _type (round __type))
   (setq _reserved (string __reserved))
   self)
  (:existence
   (&optional (__existence :null))
   (if (not (eq __existence :null)) (setq _existence __existence)) _existence)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; bool _existence
    1
    ;; perception_interface_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; uint8 _type
    1
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _existence
       (if _existence (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _existence
     (setq _existence (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get worldmodel_msgs::RoadEdge :md5sum-) "68c0d3d7bc71e1b2ce3cf316386f9a7c")
(setf (get worldmodel_msgs::RoadEdge :datatype-) "worldmodel_msgs/RoadEdge")
(setf (get worldmodel_msgs::RoadEdge :definition-)
      "bool existence
perception_interface_msgs/Point3f[] points
uint8 type
string reserved

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/RoadEdge "68c0d3d7bc71e1b2ce3cf316386f9a7c")


