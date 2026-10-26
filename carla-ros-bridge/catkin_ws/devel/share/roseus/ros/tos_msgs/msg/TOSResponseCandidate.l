;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSResponseCandidate)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSResponseCandidate (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSRESPONSECANDIDATE")
  (make-package "TOS_MSGS::TOSRESPONSECANDIDATE"))

(in-package "ROS")
;;//! \htmlinclude TOSResponseCandidate.msg.html


(defclass tos_msgs::TOSResponseCandidate
  :super ros::object
  :slots (_id ))

(defmethod tos_msgs::TOSResponseCandidate
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TOSResponseCandidate :md5sum-) "309d4b30834b338cced19e5622a97a03")
(setf (get tos_msgs::TOSResponseCandidate :datatype-) "tos_msgs/TOSResponseCandidate")
(setf (get tos_msgs::TOSResponseCandidate :definition-)
      "uint32 id

")



(provide :tos_msgs/TOSResponseCandidate "309d4b30834b338cced19e5622a97a03")


