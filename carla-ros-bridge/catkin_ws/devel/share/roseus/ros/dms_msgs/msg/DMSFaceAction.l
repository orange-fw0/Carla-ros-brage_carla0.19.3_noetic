;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFaceAction)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFaceAction (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFACEACTION")
  (make-package "DMS_MSGS::DMSFACEACTION"))

(in-package "ROS")
;;//! \htmlinclude DMSFaceAction.msg.html


(defclass dms_msgs::DMSFaceAction
  :super ros::object
  :slots (_name _score ))

(defmethod dms_msgs::DMSFaceAction
  (:init
   (&key
    ((:name __name) "")
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _score (float __score))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSFaceAction :md5sum-) "6cee5585e1cb25a4b0c395da3a73f8bb")
(setf (get dms_msgs::DMSFaceAction :datatype-) "dms_msgs/DMSFaceAction")
(setf (get dms_msgs::DMSFaceAction :definition-)
      "string name
float32 score

")



(provide :dms_msgs/DMSFaceAction "6cee5585e1cb25a4b0c395da3a73f8bb")


