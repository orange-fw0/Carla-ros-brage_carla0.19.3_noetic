;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SafetyEvaluator)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SafetyEvaluator (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SAFETYEVALUATOR")
  (make-package "PLANNING_MSGS::SAFETYEVALUATOR"))

(in-package "ROS")
;;//! \htmlinclude SafetyEvaluator.msg.html


(defclass planning_msgs::SafetyEvaluator
  :super ros::object
  :slots (_id _name ))

(defmethod planning_msgs::SafetyEvaluator
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::SafetyEvaluator :md5sum-) "527516197432b3d63ada52e8e4abaa34")
(setf (get planning_msgs::SafetyEvaluator :datatype-) "planning_msgs/SafetyEvaluator")
(setf (get planning_msgs::SafetyEvaluator :definition-)
      "uint8 id
string name

")



(provide :planning_msgs/SafetyEvaluator "527516197432b3d63ada52e8e4abaa34")


