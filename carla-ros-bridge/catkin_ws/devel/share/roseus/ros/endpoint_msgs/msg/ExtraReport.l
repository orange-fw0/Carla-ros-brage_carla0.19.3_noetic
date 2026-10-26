;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ExtraReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ExtraReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::EXTRAREPORT")
  (make-package "ENDPOINT_MSGS::EXTRAREPORT"))

(in-package "ROS")
;;//! \htmlinclude ExtraReport.msg.html


(defclass endpoint_msgs::ExtraReport
  :super ros::object
  :slots (_available _json ))

(defmethod endpoint_msgs::ExtraReport
  (:init
   (&key
    ((:available __available) 0)
    ((:json __json) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _json (string __json))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:json
   (&optional __json)
   (if __json (setq _json __json)) _json)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _json
    4 (length _json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _json
       (write-long (length _json) s) (princ _json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get endpoint_msgs::ExtraReport :md5sum-) "0fbca00b41d0df080a552ac92648d629")
(setf (get endpoint_msgs::ExtraReport :datatype-) "endpoint_msgs/ExtraReport")
(setf (get endpoint_msgs::ExtraReport :definition-)
      "uint8 available
string json

")



(provide :endpoint_msgs/ExtraReport "0fbca00b41d0df080a552ac92648d629")


