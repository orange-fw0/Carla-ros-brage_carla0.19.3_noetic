;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xCollisionWarningData)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xCollisionWarningData (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XCOLLISIONWARNINGDATA")
  (make-package "V2X_MSGS::V2XCOLLISIONWARNINGDATA"))

(in-package "ROS")
;;//! \htmlinclude V2xCollisionWarningData.msg.html


(defclass v2x_msgs::V2xCollisionWarningData
  :super ros::object
  :slots (_id _warning ))

(defmethod v2x_msgs::V2xCollisionWarningData
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:warning __warning) "")
    )
   (send-super :init)
   (setq _id __id)
   (setq _warning (string __warning))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:warning
   (&optional __warning)
   (if __warning (setq _warning __warning)) _warning)
  (:serialization-length
   ()
   (+
    ;; int32[] _id
    (* 4    (length _id)) 4
    ;; string _warning
    4 (length _warning)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-long (elt _id i) s)
       )
     ;; string _warning
       (write-long (length _warning) s) (princ _warning s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string _warning
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _warning (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xCollisionWarningData :md5sum-) "30e6106a92d1ed9b1327b13f2afa0f13")
(setf (get v2x_msgs::V2xCollisionWarningData :datatype-) "v2x_msgs/V2xCollisionWarningData")
(setf (get v2x_msgs::V2xCollisionWarningData :definition-)
      "int32[] id
string warning

")



(provide :v2x_msgs/V2xCollisionWarningData "30e6106a92d1ed9b1327b13f2afa0f13")


