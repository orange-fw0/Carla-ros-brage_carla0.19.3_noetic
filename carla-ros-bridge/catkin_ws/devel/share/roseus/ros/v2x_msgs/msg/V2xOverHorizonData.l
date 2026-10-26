;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xOverHorizonData)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xOverHorizonData (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XOVERHORIZONDATA")
  (make-package "V2X_MSGS::V2XOVERHORIZONDATA"))

(in-package "ROS")
;;//! \htmlinclude V2xOverHorizonData.msg.html


(defclass v2x_msgs::V2xOverHorizonData
  :super ros::object
  :slots (_intersection_id _video_url ))

(defmethod v2x_msgs::V2xOverHorizonData
  (:init
   (&key
    ((:intersection_id __intersection_id) 0)
    ((:video_url __video_url) "")
    )
   (send-super :init)
   (setq _intersection_id (round __intersection_id))
   (setq _video_url (string __video_url))
   self)
  (:intersection_id
   (&optional __intersection_id)
   (if __intersection_id (setq _intersection_id __intersection_id)) _intersection_id)
  (:video_url
   (&optional __video_url)
   (if __video_url (setq _video_url __video_url)) _video_url)
  (:serialization-length
   ()
   (+
    ;; int32 _intersection_id
    4
    ;; string _video_url
    4 (length _video_url)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _intersection_id
       (write-long _intersection_id s)
     ;; string _video_url
       (write-long (length _video_url) s) (princ _video_url s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _intersection_id
     (setq _intersection_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _video_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _video_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xOverHorizonData :md5sum-) "f0568ea9f09ca526eab90db6b4cab22a")
(setf (get v2x_msgs::V2xOverHorizonData :datatype-) "v2x_msgs/V2xOverHorizonData")
(setf (get v2x_msgs::V2xOverHorizonData :definition-)
      "int32 intersection_id
string video_url

")



(provide :v2x_msgs/V2xOverHorizonData "f0568ea9f09ca526eab90db6b4cab22a")


