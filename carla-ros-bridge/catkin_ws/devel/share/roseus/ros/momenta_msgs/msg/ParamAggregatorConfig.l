;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ParamAggregatorConfig)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ParamAggregatorConfig (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PARAMAGGREGATORCONFIG")
  (make-package "MOMENTA_MSGS::PARAMAGGREGATORCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ParamAggregatorConfig.msg.html


(defclass momenta_msgs::ParamAggregatorConfig
  :super ros::object
  :slots (_name _data _type ))

(defmethod momenta_msgs::ParamAggregatorConfig
  (:init
   (&key
    ((:name __name) "")
    ((:data __data) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _data (string __data))
   (setq _type (string __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _data
    4 (length _data)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::ParamAggregatorConfig :md5sum-) "f03bc70d8bb0a3cc69e8b9c7061f854c")
(setf (get momenta_msgs::ParamAggregatorConfig :datatype-) "momenta_msgs/ParamAggregatorConfig")
(setf (get momenta_msgs::ParamAggregatorConfig :definition-)
      "string name
string data
string type

")



(provide :momenta_msgs/ParamAggregatorConfig "f03bc70d8bb0a3cc69e8b9c7061f854c")


