;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::LocalMapLayer)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'LocalMapLayer (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::LOCALMAPLAYER")
  (make-package "HDMAP_MSGS::LOCALMAPLAYER"))

(in-package "ROS")
;;//! \htmlinclude LocalMapLayer.msg.html


(defclass hdmap_msgs::LocalMapLayer
  :super ros::object
  :slots (_data ))

(defmethod hdmap_msgs::LocalMapLayer
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hdmap_msgs::LocalMapLayer :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get hdmap_msgs::LocalMapLayer :datatype-) "hdmap_msgs/LocalMapLayer")
(setf (get hdmap_msgs::LocalMapLayer :definition-)
      "string data

")



(provide :hdmap_msgs/LocalMapLayer "992ce8a1687cec8c8bd883ec73ca41d1")


