;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::MapContentToUpdate)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'MapContentToUpdate (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::MAPCONTENTTOUPDATE")
  (make-package "SYSTEM_MANAGER_MSGS::MAPCONTENTTOUPDATE"))

(in-package "ROS")
;;//! \htmlinclude MapContentToUpdate.msg.html


(defclass system_manager_msgs::MapContentToUpdate
  :super ros::object
  :slots (_name _address _label _parking_space_id _parking_type _reversed ))

(defmethod system_manager_msgs::MapContentToUpdate
  (:init
   (&key
    ((:name __name) "")
    ((:address __address) "")
    ((:label __label) "")
    ((:parking_space_id __parking_space_id) "")
    ((:parking_type __parking_type) "")
    ((:reversed __reversed) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _address (string __address))
   (setq _label (string __label))
   (setq _parking_space_id (string __parking_space_id))
   (setq _parking_type (string __parking_type))
   (setq _reversed (string __reversed))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:parking_space_id
   (&optional __parking_space_id)
   (if __parking_space_id (setq _parking_space_id __parking_space_id)) _parking_space_id)
  (:parking_type
   (&optional __parking_type)
   (if __parking_type (setq _parking_type __parking_type)) _parking_type)
  (:reversed
   (&optional __reversed)
   (if __reversed (setq _reversed __reversed)) _reversed)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _address
    4 (length _address)
    ;; string _label
    4 (length _label)
    ;; string _parking_space_id
    4 (length _parking_space_id)
    ;; string _parking_type
    4 (length _parking_type)
    ;; string _reversed
    4 (length _reversed)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _parking_space_id
       (write-long (length _parking_space_id) s) (princ _parking_space_id s)
     ;; string _parking_type
       (write-long (length _parking_type) s) (princ _parking_type s)
     ;; string _reversed
       (write-long (length _reversed) s) (princ _reversed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parking_space_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parking_space_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parking_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parking_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reversed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reversed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::MapContentToUpdate :md5sum-) "26c458f5254c5a7fd41d59d98ab7c53d")
(setf (get system_manager_msgs::MapContentToUpdate :datatype-) "system_manager_msgs/MapContentToUpdate")
(setf (get system_manager_msgs::MapContentToUpdate :definition-)
      "string name
string address
string label
string parking_space_id
string parking_type
string reversed

")



(provide :system_manager_msgs/MapContentToUpdate "26c458f5254c5a7fd41d59d98ab7c53d")


