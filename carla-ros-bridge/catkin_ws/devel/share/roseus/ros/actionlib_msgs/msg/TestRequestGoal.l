;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestRequestGoal)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestRequestGoal (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL")
  (make-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))

(in-package "ROS")
;;//! \htmlinclude TestRequestGoal.msg.html


(intern "*TERMINATE_SUCCESS*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_SUCCESS* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_SUCCESS* 0)
(intern "*TERMINATE_ABORTED*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_ABORTED* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_ABORTED* 1)
(intern "*TERMINATE_REJECTED*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_REJECTED* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_REJECTED* 2)
(intern "*TERMINATE_LOSE*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_LOSE* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_LOSE* 3)
(intern "*TERMINATE_DROP*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_DROP* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_DROP* 4)
(intern "*TERMINATE_EXCEPTION*" (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(shadow '*TERMINATE_EXCEPTION* (find-package "ACTIONLIB_MSGS::TESTREQUESTGOAL"))
(defconstant actionlib_msgs::TestRequestGoal::*TERMINATE_EXCEPTION* 5)

(defun actionlib_msgs::TestRequestGoal-to-symbol (const)
  (cond
        ((= const 0) 'actionlib_msgs::TestRequestGoal::*TERMINATE_SUCCESS*)
        ((= const 1) 'actionlib_msgs::TestRequestGoal::*TERMINATE_ABORTED*)
        ((= const 2) 'actionlib_msgs::TestRequestGoal::*TERMINATE_REJECTED*)
        ((= const 3) 'actionlib_msgs::TestRequestGoal::*TERMINATE_LOSE*)
        ((= const 4) 'actionlib_msgs::TestRequestGoal::*TERMINATE_DROP*)
        ((= const 5) 'actionlib_msgs::TestRequestGoal::*TERMINATE_EXCEPTION*)
        (t nil)))

(defclass actionlib_msgs::TestRequestGoal
  :super ros::object
  :slots (_terminate_status _ignore_cancel _result_text _the_result _is_simple_client _delay_accept _delay_terminate _pause_status ))

(defmethod actionlib_msgs::TestRequestGoal
  (:init
   (&key
    ((:terminate_status __terminate_status) 0)
    ((:ignore_cancel __ignore_cancel) nil)
    ((:result_text __result_text) "")
    ((:the_result __the_result) 0)
    ((:is_simple_client __is_simple_client) nil)
    ((:delay_accept __delay_accept) 0)
    ((:delay_terminate __delay_terminate) 0)
    ((:pause_status __pause_status) 0)
    )
   (send-super :init)
   (setq _terminate_status (round __terminate_status))
   (setq _ignore_cancel __ignore_cancel)
   (setq _result_text (string __result_text))
   (setq _the_result (round __the_result))
   (setq _is_simple_client __is_simple_client)
   (setq _delay_accept (round __delay_accept))
   (setq _delay_terminate (round __delay_terminate))
   (setq _pause_status (round __pause_status))
   self)
  (:terminate_status
   (&optional __terminate_status)
   (if __terminate_status (setq _terminate_status __terminate_status)) _terminate_status)
  (:ignore_cancel
   (&optional (__ignore_cancel :null))
   (if (not (eq __ignore_cancel :null)) (setq _ignore_cancel __ignore_cancel)) _ignore_cancel)
  (:result_text
   (&optional __result_text)
   (if __result_text (setq _result_text __result_text)) _result_text)
  (:the_result
   (&optional __the_result)
   (if __the_result (setq _the_result __the_result)) _the_result)
  (:is_simple_client
   (&optional (__is_simple_client :null))
   (if (not (eq __is_simple_client :null)) (setq _is_simple_client __is_simple_client)) _is_simple_client)
  (:delay_accept
   (&optional __delay_accept)
   (if __delay_accept (setq _delay_accept __delay_accept)) _delay_accept)
  (:delay_terminate
   (&optional __delay_terminate)
   (if __delay_terminate (setq _delay_terminate __delay_terminate)) _delay_terminate)
  (:pause_status
   (&optional __pause_status)
   (if __pause_status (setq _pause_status __pause_status)) _pause_status)
  (:serialization-length
   ()
   (+
    ;; int32 _terminate_status
    4
    ;; bool _ignore_cancel
    1
    ;; string _result_text
    4 (length _result_text)
    ;; int32 _the_result
    4
    ;; bool _is_simple_client
    1
    ;; int64 _delay_accept
    8
    ;; int64 _delay_terminate
    8
    ;; int64 _pause_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _terminate_status
       (write-long _terminate_status s)
     ;; bool _ignore_cancel
       (if _ignore_cancel (write-byte -1 s) (write-byte 0 s))
     ;; string _result_text
       (write-long (length _result_text) s) (princ _result_text s)
     ;; int32 _the_result
       (write-long _the_result s)
     ;; bool _is_simple_client
       (if _is_simple_client (write-byte -1 s) (write-byte 0 s))
     ;; int64 _delay_accept
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _delay_accept (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _delay_accept) (= (length (_delay_accept . bv)) 2)) ;; bignum
              (write-long (ash (elt (_delay_accept . bv) 0) 0) s)
              (write-long (ash (elt (_delay_accept . bv) 1) -1) s))
             ((and (class _delay_accept) (= (length (_delay_accept . bv)) 1)) ;; big1
              (write-long (elt (_delay_accept . bv) 0) s)
              (write-long (if (>= _delay_accept 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _delay_accept s)(write-long (if (>= _delay_accept 0) 0 #xffffffff) s)))
     ;; int64 _delay_terminate
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _delay_terminate (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _delay_terminate) (= (length (_delay_terminate . bv)) 2)) ;; bignum
              (write-long (ash (elt (_delay_terminate . bv) 0) 0) s)
              (write-long (ash (elt (_delay_terminate . bv) 1) -1) s))
             ((and (class _delay_terminate) (= (length (_delay_terminate . bv)) 1)) ;; big1
              (write-long (elt (_delay_terminate . bv) 0) s)
              (write-long (if (>= _delay_terminate 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _delay_terminate s)(write-long (if (>= _delay_terminate 0) 0 #xffffffff) s)))
     ;; int64 _pause_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pause_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pause_status) (= (length (_pause_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pause_status . bv) 0) 0) s)
              (write-long (ash (elt (_pause_status . bv) 1) -1) s))
             ((and (class _pause_status) (= (length (_pause_status . bv)) 1)) ;; big1
              (write-long (elt (_pause_status . bv) 0) s)
              (write-long (if (>= _pause_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pause_status s)(write-long (if (>= _pause_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _terminate_status
     (setq _terminate_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _ignore_cancel
     (setq _ignore_cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _result_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _the_result
     (setq _the_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_simple_client
     (setq _is_simple_client (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _delay_accept
#+(or :alpha :irix6 :x86_64)
      (setf _delay_accept (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _delay_accept (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _delay_terminate
#+(or :alpha :irix6 :x86_64)
      (setf _delay_terminate (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _delay_terminate (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pause_status
#+(or :alpha :irix6 :x86_64)
      (setf _pause_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pause_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get actionlib_msgs::TestRequestGoal :md5sum-) "f4f3026a06c380c127c488a9a2ad28a3")
(setf (get actionlib_msgs::TestRequestGoal :datatype-) "actionlib_msgs/TestRequestGoal")
(setf (get actionlib_msgs::TestRequestGoal :definition-)
      "int32 TERMINATE_SUCCESS = 0
int32 TERMINATE_ABORTED = 1
int32 TERMINATE_REJECTED = 2
int32 TERMINATE_LOSE = 3
int32 TERMINATE_DROP = 4
int32 TERMINATE_EXCEPTION = 5
int32 terminate_status
bool ignore_cancel
string result_text
int32 the_result
bool is_simple_client
int64 delay_accept
int64 delay_terminate
int64 pause_status

")



(provide :actionlib_msgs/TestRequestGoal "f4f3026a06c380c127c488a9a2ad28a3")


