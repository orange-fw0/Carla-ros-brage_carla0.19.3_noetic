;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SolverStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SolverStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SOLVERSTATUS")
  (make-package "PLANNING_MSGS::SOLVERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SolverStatus.msg.html


(defclass planning_msgs::SolverStatus
  :super ros::object
  :slots (_lat_motion_status _lat_solver_status _lon_motion_status _lon_solver_status ))

(defmethod planning_msgs::SolverStatus
  (:init
   (&key
    ((:lat_motion_status __lat_motion_status) (make-array 0 :initial-element 0 :element-type :char))
    ((:lat_solver_status __lat_solver_status) (make-array 0 :initial-element 0 :element-type :char))
    ((:lon_motion_status __lon_motion_status) (make-array 0 :initial-element 0 :element-type :char))
    ((:lon_solver_status __lon_solver_status) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _lat_motion_status __lat_motion_status)
   (setq _lat_solver_status __lat_solver_status)
   (setq _lon_motion_status __lon_motion_status)
   (setq _lon_solver_status __lon_solver_status)
   self)
  (:lat_motion_status
   (&optional __lat_motion_status)
   (if __lat_motion_status (setq _lat_motion_status __lat_motion_status)) _lat_motion_status)
  (:lat_solver_status
   (&optional __lat_solver_status)
   (if __lat_solver_status (setq _lat_solver_status __lat_solver_status)) _lat_solver_status)
  (:lon_motion_status
   (&optional __lon_motion_status)
   (if __lon_motion_status (setq _lon_motion_status __lon_motion_status)) _lon_motion_status)
  (:lon_solver_status
   (&optional __lon_solver_status)
   (if __lon_solver_status (setq _lon_solver_status __lon_solver_status)) _lon_solver_status)
  (:serialization-length
   ()
   (+
    ;; uint8[] _lat_motion_status
    (* 1    (length _lat_motion_status)) 4
    ;; uint8[] _lat_solver_status
    (* 1    (length _lat_solver_status)) 4
    ;; uint8[] _lon_motion_status
    (* 1    (length _lon_motion_status)) 4
    ;; uint8[] _lon_solver_status
    (* 1    (length _lon_solver_status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _lat_motion_status
     (write-long (length _lat_motion_status) s)
     (princ _lat_motion_status s)
     ;; uint8[] _lat_solver_status
     (write-long (length _lat_solver_status) s)
     (princ _lat_solver_status s)
     ;; uint8[] _lon_motion_status
     (write-long (length _lon_motion_status) s)
     (princ _lon_motion_status s)
     ;; uint8[] _lon_solver_status
     (write-long (length _lon_solver_status) s)
     (princ _lon_solver_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _lat_motion_status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lat_motion_status (make-array n :element-type :char))
     (replace _lat_motion_status buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _lat_solver_status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lat_solver_status (make-array n :element-type :char))
     (replace _lat_solver_status buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _lon_motion_status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lon_motion_status (make-array n :element-type :char))
     (replace _lon_motion_status buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _lon_solver_status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lon_solver_status (make-array n :element-type :char))
     (replace _lon_solver_status buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::SolverStatus :md5sum-) "402b203189b794d7f6e7355152cdcb2f")
(setf (get planning_msgs::SolverStatus :datatype-) "planning_msgs/SolverStatus")
(setf (get planning_msgs::SolverStatus :definition-)
      "uint8[] lat_motion_status
uint8[] lat_solver_status
uint8[] lon_motion_status
uint8[] lon_solver_status

")



(provide :planning_msgs/SolverStatus "402b203189b794d7f6e7355152cdcb2f")


