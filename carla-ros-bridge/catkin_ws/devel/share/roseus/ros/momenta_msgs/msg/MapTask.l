;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapTask)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapTask (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPTASK")
  (make-package "MOMENTA_MSGS::MAPTASK"))

(in-package "ROS")
;;//! \htmlinclude MapTask.msg.html


(defclass momenta_msgs::MapTask
  :super ros::object
  :slots (_current_tasks _left_lane_tasks _right_lane_tasks _first_task_ranges ))

(defmethod momenta_msgs::MapTask
  (:init
   (&key
    ((:current_tasks __current_tasks) (make-array 0 :initial-element 0 :element-type :integer))
    ((:left_lane_tasks __left_lane_tasks) (make-array 0 :initial-element 0 :element-type :integer))
    ((:right_lane_tasks __right_lane_tasks) (make-array 0 :initial-element 0 :element-type :integer))
    ((:first_task_ranges __first_task_ranges) ())
    )
   (send-super :init)
   (setq _current_tasks __current_tasks)
   (setq _left_lane_tasks __left_lane_tasks)
   (setq _right_lane_tasks __right_lane_tasks)
   (setq _first_task_ranges __first_task_ranges)
   self)
  (:current_tasks
   (&optional __current_tasks)
   (if __current_tasks (setq _current_tasks __current_tasks)) _current_tasks)
  (:left_lane_tasks
   (&optional __left_lane_tasks)
   (if __left_lane_tasks (setq _left_lane_tasks __left_lane_tasks)) _left_lane_tasks)
  (:right_lane_tasks
   (&optional __right_lane_tasks)
   (if __right_lane_tasks (setq _right_lane_tasks __right_lane_tasks)) _right_lane_tasks)
  (:first_task_ranges
   (&rest __first_task_ranges)
   (if (keywordp (car __first_task_ranges))
       (send* _first_task_ranges __first_task_ranges)
     (progn
       (if __first_task_ranges (setq _first_task_ranges (car __first_task_ranges)))
       _first_task_ranges)))
  (:serialization-length
   ()
   (+
    ;; int8[] _current_tasks
    (* 1    (length _current_tasks)) 4
    ;; int8[] _left_lane_tasks
    (* 1    (length _left_lane_tasks)) 4
    ;; int8[] _right_lane_tasks
    (* 1    (length _right_lane_tasks)) 4
    ;; momenta_msgs/MapTaskRange[] _first_task_ranges
    (apply #'+ (send-all _first_task_ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _current_tasks
     (write-long (length _current_tasks) s)
     (dotimes (i (length _current_tasks))
       (write-byte (elt _current_tasks i) s)
       )
     ;; int8[] _left_lane_tasks
     (write-long (length _left_lane_tasks) s)
     (dotimes (i (length _left_lane_tasks))
       (write-byte (elt _left_lane_tasks i) s)
       )
     ;; int8[] _right_lane_tasks
     (write-long (length _right_lane_tasks) s)
     (dotimes (i (length _right_lane_tasks))
       (write-byte (elt _right_lane_tasks i) s)
       )
     ;; momenta_msgs/MapTaskRange[] _first_task_ranges
     (write-long (length _first_task_ranges) s)
     (dolist (elem _first_task_ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _current_tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_tasks (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current_tasks i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _current_tasks i) 127) (setf (elt _current_tasks i) (- (elt _current_tasks i) 256)))
     ))
   ;; int8[] _left_lane_tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_lane_tasks (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _left_lane_tasks i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _left_lane_tasks i) 127) (setf (elt _left_lane_tasks i) (- (elt _left_lane_tasks i) 256)))
     ))
   ;; int8[] _right_lane_tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_lane_tasks (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _right_lane_tasks i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _right_lane_tasks i) 127) (setf (elt _right_lane_tasks i) (- (elt _right_lane_tasks i) 256)))
     ))
   ;; momenta_msgs/MapTaskRange[] _first_task_ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _first_task_ranges (let (r) (dotimes (i n) (push (instance momenta_msgs::MapTaskRange :init) r)) r))
     (dolist (elem- _first_task_ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::MapTask :md5sum-) "a58556ba5dbcd3438ca23c11204497f1")
(setf (get momenta_msgs::MapTask :datatype-) "momenta_msgs/MapTask")
(setf (get momenta_msgs::MapTask :definition-)
      "int8[] current_tasks
int8[] left_lane_tasks
int8[] right_lane_tasks
momenta_msgs/MapTaskRange[] first_task_ranges

================================================================================
MSG: momenta_msgs/MapTaskRange
float64 begin_pos
float64 end_pos

")



(provide :momenta_msgs/MapTask "a58556ba5dbcd3438ca23c11204497f1")


