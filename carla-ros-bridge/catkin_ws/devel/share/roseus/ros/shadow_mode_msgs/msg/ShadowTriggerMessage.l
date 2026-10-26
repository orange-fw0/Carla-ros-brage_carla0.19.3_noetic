;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::ShadowTriggerMessage)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'ShadowTriggerMessage (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::SHADOWTRIGGERMESSAGE")
  (make-package "SHADOW_MODE_MSGS::SHADOWTRIGGERMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ShadowTriggerMessage.msg.html


(defclass shadow_mode_msgs::ShadowTriggerMessage
  :super ros::object
  :slots (_collect_type _name _cool_down_limit _detail_config _sticky _uuid _response_status _response_reason _stamp _trigger_type _before _after _trust_param _topics _stamps _tags _start _disable_dis _action_type ))

(defmethod shadow_mode_msgs::ShadowTriggerMessage
  (:init
   (&key
    ((:collect_type __collect_type) "")
    ((:name __name) "")
    ((:cool_down_limit __cool_down_limit) 0.0)
    ((:detail_config __detail_config) (instance shadow_mode_msgs::DetailConfig :init))
    ((:sticky __sticky) nil)
    ((:uuid __uuid) "")
    ((:response_status __response_status) "")
    ((:response_reason __response_reason) "")
    ((:stamp __stamp) 0)
    ((:trigger_type __trigger_type) (instance shadow_mode_msgs::TriggerParam :init))
    ((:before __before) 0)
    ((:after __after) 0)
    ((:trust_param __trust_param) (instance shadow_mode_msgs::TrustParam :init))
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stamps __stamps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:start __start) nil)
    ((:disable_dis __disable_dis) nil)
    ((:action_type __action_type) (instance shadow_mode_msgs::ActionType :init))
    )
   (send-super :init)
   (setq _collect_type (string __collect_type))
   (setq _name (string __name))
   (setq _cool_down_limit (float __cool_down_limit))
   (setq _detail_config __detail_config)
   (setq _sticky __sticky)
   (setq _uuid (string __uuid))
   (setq _response_status (string __response_status))
   (setq _response_reason (string __response_reason))
   (setq _stamp (round __stamp))
   (setq _trigger_type __trigger_type)
   (setq _before (round __before))
   (setq _after (round __after))
   (setq _trust_param __trust_param)
   (setq _topics __topics)
   (setq _stamps __stamps)
   (setq _tags __tags)
   (setq _start __start)
   (setq _disable_dis __disable_dis)
   (setq _action_type __action_type)
   self)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:cool_down_limit
   (&optional __cool_down_limit)
   (if __cool_down_limit (setq _cool_down_limit __cool_down_limit)) _cool_down_limit)
  (:detail_config
   (&rest __detail_config)
   (if (keywordp (car __detail_config))
       (send* _detail_config __detail_config)
     (progn
       (if __detail_config (setq _detail_config (car __detail_config)))
       _detail_config)))
  (:sticky
   (&optional (__sticky :null))
   (if (not (eq __sticky :null)) (setq _sticky __sticky)) _sticky)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:response_status
   (&optional __response_status)
   (if __response_status (setq _response_status __response_status)) _response_status)
  (:response_reason
   (&optional __response_reason)
   (if __response_reason (setq _response_reason __response_reason)) _response_reason)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:trigger_type
   (&rest __trigger_type)
   (if (keywordp (car __trigger_type))
       (send* _trigger_type __trigger_type)
     (progn
       (if __trigger_type (setq _trigger_type (car __trigger_type)))
       _trigger_type)))
  (:before
   (&optional __before)
   (if __before (setq _before __before)) _before)
  (:after
   (&optional __after)
   (if __after (setq _after __after)) _after)
  (:trust_param
   (&rest __trust_param)
   (if (keywordp (car __trust_param))
       (send* _trust_param __trust_param)
     (progn
       (if __trust_param (setq _trust_param (car __trust_param)))
       _trust_param)))
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:start
   (&optional (__start :null))
   (if (not (eq __start :null)) (setq _start __start)) _start)
  (:disable_dis
   (&optional (__disable_dis :null))
   (if (not (eq __disable_dis :null)) (setq _disable_dis __disable_dis)) _disable_dis)
  (:action_type
   (&rest __action_type)
   (if (keywordp (car __action_type))
       (send* _action_type __action_type)
     (progn
       (if __action_type (setq _action_type (car __action_type)))
       _action_type)))
  (:serialization-length
   ()
   (+
    ;; string _collect_type
    4 (length _collect_type)
    ;; string _name
    4 (length _name)
    ;; float32 _cool_down_limit
    4
    ;; shadow_mode_msgs/DetailConfig _detail_config
    (send _detail_config :serialization-length)
    ;; bool _sticky
    1
    ;; string _uuid
    4 (length _uuid)
    ;; string _response_status
    4 (length _response_status)
    ;; string _response_reason
    4 (length _response_reason)
    ;; uint64 _stamp
    8
    ;; shadow_mode_msgs/TriggerParam _trigger_type
    (send _trigger_type :serialization-length)
    ;; uint8 _before
    1
    ;; uint8 _after
    1
    ;; shadow_mode_msgs/TrustParam _trust_param
    (send _trust_param :serialization-length)
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; uint64[] _stamps
    (* 8    (length _stamps)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; bool _start
    1
    ;; bool _disable_dis
    1
    ;; shadow_mode_msgs/ActionType _action_type
    (send _action_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _collect_type
       (write-long (length _collect_type) s) (princ _collect_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _cool_down_limit
       (sys::poke _cool_down_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; shadow_mode_msgs/DetailConfig _detail_config
       (send _detail_config :serialize s)
     ;; bool _sticky
       (if _sticky (write-byte -1 s) (write-byte 0 s))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _response_status
       (write-long (length _response_status) s) (princ _response_status s)
     ;; string _response_reason
       (write-long (length _response_reason) s) (princ _response_reason s)
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
     ;; shadow_mode_msgs/TriggerParam _trigger_type
       (send _trigger_type :serialize s)
     ;; uint8 _before
       (write-byte _before s)
     ;; uint8 _after
       (write-byte _after s)
     ;; shadow_mode_msgs/TrustParam _trust_param
       (send _trust_param :serialize s)
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint64[] _stamps
     (write-long (length _stamps) s)
     (dotimes (i (length _stamps))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _stamps i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _stamps i)) (= (length ((elt _stamps i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _stamps i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _stamps i) . bv) 1) -1) s))
             ((and (class (elt _stamps i)) (= (length ((elt _stamps i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _stamps i) . bv) 0) s)
              (write-long (if (>= (elt _stamps i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _stamps i) s)(write-long (if (>= (elt _stamps i) 0) 0 #xffffffff) s)))
       )
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_dis
       (if _disable_dis (write-byte -1 s) (write-byte 0 s))
     ;; shadow_mode_msgs/ActionType _action_type
       (send _action_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _collect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cool_down_limit
     (setq _cool_down_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; shadow_mode_msgs/DetailConfig _detail_config
     (send _detail_config :deserialize buf ptr-) (incf ptr- (send _detail_config :serialization-length))
   ;; bool _sticky
     (setq _sticky (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _response_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _response_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; shadow_mode_msgs/TriggerParam _trigger_type
     (send _trigger_type :deserialize buf ptr-) (incf ptr- (send _trigger_type :serialization-length))
   ;; uint8 _before
     (setq _before (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _after
     (setq _after (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; shadow_mode_msgs/TrustParam _trust_param
     (send _trust_param :deserialize buf ptr-) (incf ptr- (send _trust_param :serialization-length))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint64[] _stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stamps (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _stamps i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _stamps i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_dis
     (setq _disable_dis (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; shadow_mode_msgs/ActionType _action_type
     (send _action_type :deserialize buf ptr-) (incf ptr- (send _action_type :serialization-length))
   ;;
   self)
  )

(setf (get shadow_mode_msgs::ShadowTriggerMessage :md5sum-) "30a5a3c8b246fad4e67dfeacf9aabd01")
(setf (get shadow_mode_msgs::ShadowTriggerMessage :datatype-) "shadow_mode_msgs/ShadowTriggerMessage")
(setf (get shadow_mode_msgs::ShadowTriggerMessage :definition-)
      "string collect_type
string name
float32 cool_down_limit
shadow_mode_msgs/DetailConfig detail_config
bool sticky
string uuid
string response_status
string response_reason
uint64 stamp
shadow_mode_msgs/TriggerParam trigger_type
uint8 before
uint8 after
shadow_mode_msgs/TrustParam trust_param
string[] topics
uint64[] stamps
string[] tags
bool start
bool disable_dis
shadow_mode_msgs/ActionType action_type

================================================================================
MSG: shadow_mode_msgs/DetailConfig
string[] mlog_list
string[] need_maf_groups

================================================================================
MSG: shadow_mode_msgs/TriggerParam
uint8 EVENT = 0
uint8 SINGLE_FRAME = 1
uint8 RECORDING = 2
uint8 trigger_value

================================================================================
MSG: shadow_mode_msgs/TrustParam
uint8 NONE = 0
uint8 BEFORE = 1
uint8 AFTER = 2
uint8 trust_value

================================================================================
MSG: shadow_mode_msgs/ActionType
uint8 DEFAULT = 0
uint8 CFDI_ONLY_FOREVER_LOG = 1
uint8 DFDI_ONLY_REPORT_EAP = 128
uint8 action_value

")



(provide :shadow_mode_msgs/ShadowTriggerMessage "30a5a3c8b246fad4e67dfeacf9aabd01")


