;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::ExportJobInfo)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'ExportJobInfo (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::EXPORTJOBINFO")
  (make-package "RECORDER_MSGS::EXPORTJOBINFO"))

(in-package "ROS")
;;//! \htmlinclude ExportJobInfo.msg.html


(defclass recorder_msgs::ExportJobInfo
  :super ros::object
  :slots (_stamp _type _status _name _bag_info ))

(defmethod recorder_msgs::ExportJobInfo
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:type __type) "")
    ((:status __status) "")
    ((:name __name) "")
    ((:bag_info __bag_info) ())
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _type (string __type))
   (setq _status (string __status))
   (setq _name (string __name))
   (setq _bag_info __bag_info)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:bag_info
   (&rest __bag_info)
   (if (keywordp (car __bag_info))
       (send* _bag_info __bag_info)
     (progn
       (if __bag_info (setq _bag_info (car __bag_info)))
       _bag_info)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _type
    4 (length _type)
    ;; string _status
    4 (length _status)
    ;; string _name
    4 (length _name)
    ;; recorder_msgs/BagInfo[] _bag_info
    (apply #'+ (send-all _bag_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; recorder_msgs/BagInfo[] _bag_info
     (write-long (length _bag_info) s)
     (dolist (elem _bag_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; recorder_msgs/BagInfo[] _bag_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bag_info (let (r) (dotimes (i n) (push (instance recorder_msgs::BagInfo :init) r)) r))
     (dolist (elem- _bag_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get recorder_msgs::ExportJobInfo :md5sum-) "326e53405a4a51fbf22218e373082fa5")
(setf (get recorder_msgs::ExportJobInfo :datatype-) "recorder_msgs/ExportJobInfo")
(setf (get recorder_msgs::ExportJobInfo :definition-)
      "time stamp
string type
string status
string name
BagInfo[] bag_info

================================================================================
MSG: recorder_msgs/BagInfo
uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt


")



(provide :recorder_msgs/ExportJobInfo "326e53405a4a51fbf22218e373082fa5")


