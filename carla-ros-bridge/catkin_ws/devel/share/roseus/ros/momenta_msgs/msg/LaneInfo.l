;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::LaneInfo)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'LaneInfo (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANEINFO")
  (make-package "MOMENTA_MSGS::LANEINFO"))

(in-package "ROS")
;;//! \htmlinclude LaneInfo.msg.html


(defclass momenta_msgs::LaneInfo
  :super ros::object
  :slots (_lane_marks _lane_type _lane_boundary_existence ))

(defmethod momenta_msgs::LaneInfo
  (:init
   (&key
    ((:lane_marks __lane_marks) (make-array 0 :initial-element 0 :element-type :char))
    ((:lane_type __lane_type) 0)
    ((:lane_boundary_existence __lane_boundary_existence) 0)
    )
   (send-super :init)
   (setq _lane_marks __lane_marks)
   (setq _lane_type (round __lane_type))
   (setq _lane_boundary_existence (round __lane_boundary_existence))
   self)
  (:lane_marks
   (&optional __lane_marks)
   (if __lane_marks (setq _lane_marks __lane_marks)) _lane_marks)
  (:lane_type
   (&optional __lane_type)
   (if __lane_type (setq _lane_type __lane_type)) _lane_type)
  (:lane_boundary_existence
   (&optional __lane_boundary_existence)
   (if __lane_boundary_existence (setq _lane_boundary_existence __lane_boundary_existence)) _lane_boundary_existence)
  (:serialization-length
   ()
   (+
    ;; uint8[] _lane_marks
    (* 1    (length _lane_marks)) 4
    ;; uint8 _lane_type
    1
    ;; uint8 _lane_boundary_existence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _lane_marks
     (write-long (length _lane_marks) s)
     (princ _lane_marks s)
     ;; uint8 _lane_type
       (write-byte _lane_type s)
     ;; uint8 _lane_boundary_existence
       (write-byte _lane_boundary_existence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _lane_marks
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lane_marks (make-array n :element-type :char))
     (replace _lane_marks buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _lane_type
     (setq _lane_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lane_boundary_existence
     (setq _lane_boundary_existence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::LaneInfo :md5sum-) "5c59f8ac75f1757f3c6b3e220548ca78")
(setf (get momenta_msgs::LaneInfo :datatype-) "momenta_msgs/LaneInfo")
(setf (get momenta_msgs::LaneInfo :definition-)
      "uint8[] lane_marks
uint8 lane_type
uint8 lane_boundary_existence

")



(provide :momenta_msgs/LaneInfo "5c59f8ac75f1757f3c6b3e220548ca78")


