;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalID)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalID (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALID")
  (make-package "ACTIONLIB_MSGS::GOALID"))

(in-package "ROS")
;;//! \htmlinclude GoalID.msg.html


(defclass actionlib_msgs::GoalID
  :super ros::object
  :slots (_stamp _id ))

(defmethod actionlib_msgs::GoalID
  (:init
   (&key
    ((:stamp __stamp) 0)
    ((:id __id) "")
    )
   (send-super :init)
   (setq _stamp (round __stamp))
   (setq _id (string __id))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint64 _stamp
    8
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _stamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stamp) (= (length (_stamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stamp . bv) 0) 0) s)
              (write-long (ash (elt (_stamp . bv) 1) -1) s))
             ((and (class _stamp) (= (length (_stamp . bv)) 1)) ;; big1
              (write-long (elt (_stamp . bv) 0) s)
              (write-long (if (>= _stamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stamp s)(write-long (if (>= _stamp 0) 0 #xffffffff) s)))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _stamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _stamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalID :md5sum-) "526c4c5d244807edb583556d1614e7f3")
(setf (get actionlib_msgs::GoalID :datatype-) "actionlib_msgs/GoalID")
(setf (get actionlib_msgs::GoalID :definition-)
      "uint64 stamp
string id

")



(provide :actionlib_msgs/GoalID "526c4c5d244807edb583556d1614e7f3")


