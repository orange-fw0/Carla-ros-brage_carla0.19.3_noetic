;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionDisplayConfig)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionDisplayConfig (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONDISPLAYCONFIG")
  (make-package "MOMENTA_MSGS::PREDICTIONDISPLAYCONFIG"))

(in-package "ROS")
;;//! \htmlinclude PredictionDisplayConfig.msg.html


(defclass momenta_msgs::PredictionDisplayConfig
  :super ros::object
  :slots (_prediction_topic _judge_topic _track_ids ))

(defmethod momenta_msgs::PredictionDisplayConfig
  (:init
   (&key
    ((:prediction_topic __prediction_topic) "")
    ((:judge_topic __judge_topic) "")
    ((:track_ids __track_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _prediction_topic (string __prediction_topic))
   (setq _judge_topic (string __judge_topic))
   (setq _track_ids __track_ids)
   self)
  (:prediction_topic
   (&optional __prediction_topic)
   (if __prediction_topic (setq _prediction_topic __prediction_topic)) _prediction_topic)
  (:judge_topic
   (&optional __judge_topic)
   (if __judge_topic (setq _judge_topic __judge_topic)) _judge_topic)
  (:track_ids
   (&optional __track_ids)
   (if __track_ids (setq _track_ids __track_ids)) _track_ids)
  (:serialization-length
   ()
   (+
    ;; string _prediction_topic
    4 (length _prediction_topic)
    ;; string _judge_topic
    4 (length _judge_topic)
    ;; uint64[] _track_ids
    (* 8    (length _track_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prediction_topic
       (write-long (length _prediction_topic) s) (princ _prediction_topic s)
     ;; string _judge_topic
       (write-long (length _judge_topic) s) (princ _judge_topic s)
     ;; uint64[] _track_ids
     (write-long (length _track_ids) s)
     (dotimes (i (length _track_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _track_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _track_ids i)) (= (length ((elt _track_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _track_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _track_ids i) . bv) 1) -1) s))
             ((and (class (elt _track_ids i)) (= (length ((elt _track_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _track_ids i) . bv) 0) s)
              (write-long (if (>= (elt _track_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _track_ids i) s)(write-long (if (>= (elt _track_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prediction_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prediction_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _judge_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _judge_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64[] _track_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_ids (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _track_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _track_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionDisplayConfig :md5sum-) "032ecc8c884a3b0f29ba4bf908dd506a")
(setf (get momenta_msgs::PredictionDisplayConfig :datatype-) "momenta_msgs/PredictionDisplayConfig")
(setf (get momenta_msgs::PredictionDisplayConfig :definition-)
      "string prediction_topic
string judge_topic
uint64[] track_ids

")



(provide :momenta_msgs/PredictionDisplayConfig "032ecc8c884a3b0f29ba4bf908dd506a")


