;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncCheckRecordingOutput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncCheckRecordingOutput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCCHECKRECORDINGOUTPUT")
  (make-package "MOMENTA_MSGS::ASYNCCHECKRECORDINGOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncCheckRecordingOutput.msg.html


(defclass momenta_msgs::AsyncCheckRecordingOutput
  :super ros::object
  :slots (_key_num _service_response _collection_disk_recording _export_disk_recording _any_disk_recording ))

(defmethod momenta_msgs::AsyncCheckRecordingOutput
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:service_response __service_response) nil)
    ((:collection_disk_recording __collection_disk_recording) nil)
    ((:export_disk_recording __export_disk_recording) nil)
    ((:any_disk_recording __any_disk_recording) nil)
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _service_response __service_response)
   (setq _collection_disk_recording __collection_disk_recording)
   (setq _export_disk_recording __export_disk_recording)
   (setq _any_disk_recording __any_disk_recording)
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:service_response
   (&optional (__service_response :null))
   (if (not (eq __service_response :null)) (setq _service_response __service_response)) _service_response)
  (:collection_disk_recording
   (&optional (__collection_disk_recording :null))
   (if (not (eq __collection_disk_recording :null)) (setq _collection_disk_recording __collection_disk_recording)) _collection_disk_recording)
  (:export_disk_recording
   (&optional (__export_disk_recording :null))
   (if (not (eq __export_disk_recording :null)) (setq _export_disk_recording __export_disk_recording)) _export_disk_recording)
  (:any_disk_recording
   (&optional (__any_disk_recording :null))
   (if (not (eq __any_disk_recording :null)) (setq _any_disk_recording __any_disk_recording)) _any_disk_recording)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
    ;; bool _service_response
    1
    ;; bool _collection_disk_recording
    1
    ;; bool _export_disk_recording
    1
    ;; bool _any_disk_recording
    1
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
     ;; bool _collection_disk_recording
       (if _collection_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _export_disk_recording
       (if _export_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _any_disk_recording
       (if _any_disk_recording (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _collection_disk_recording
     (setq _collection_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _export_disk_recording
     (setq _export_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _any_disk_recording
     (setq _any_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncCheckRecordingOutput :md5sum-) "139a52bcb58adb276452c2e48ad73665")
(setf (get momenta_msgs::AsyncCheckRecordingOutput :datatype-) "momenta_msgs/AsyncCheckRecordingOutput")
(setf (get momenta_msgs::AsyncCheckRecordingOutput :definition-)
      "int64 key_num
bool service_response
bool collection_disk_recording
bool export_disk_recording
bool any_disk_recording

")



(provide :momenta_msgs/AsyncCheckRecordingOutput "139a52bcb58adb276452c2e48ad73665")


