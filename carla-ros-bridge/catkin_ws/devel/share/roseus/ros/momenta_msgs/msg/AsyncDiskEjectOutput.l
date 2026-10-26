;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncDiskEjectOutput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncDiskEjectOutput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCDISKEJECTOUTPUT")
  (make-package "MOMENTA_MSGS::ASYNCDISKEJECTOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncDiskEjectOutput.msg.html


(defclass momenta_msgs::AsyncDiskEjectOutput
  :super ros::object
  :slots (_key_num _service_response _success _message ))

(defmethod momenta_msgs::AsyncDiskEjectOutput
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:service_response __service_response) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _service_response __service_response)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:service_response
   (&optional (__service_response :null))
   (if (not (eq __service_response :null)) (setq _service_response __service_response)) _service_response)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
    ;; bool _service_response
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_num) (= (length (_key_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_num . bv) 0) 0) s)
              (write-long (ash (elt (_key_num . bv) 1) -1) s))
             ((and (class _key_num) (= (length (_key_num . bv)) 1)) ;; big1
              (write-long (elt (_key_num . bv) 0) s)
              (write-long (if (>= _key_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_num s)(write-long (if (>= _key_num 0) 0 #xffffffff) s)))
     ;; bool _service_response
       (if _service_response (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
      (setf _key_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _service_response
     (setq _service_response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncDiskEjectOutput :md5sum-) "7e7d6b05ee603bf60d525d2d3a2d6be8")
(setf (get momenta_msgs::AsyncDiskEjectOutput :datatype-) "momenta_msgs/AsyncDiskEjectOutput")
(setf (get momenta_msgs::AsyncDiskEjectOutput :definition-)
      "int64 key_num
bool service_response
bool success
string message

")



(provide :momenta_msgs/AsyncDiskEjectOutput "7e7d6b05ee603bf60d525d2d3a2d6be8")


