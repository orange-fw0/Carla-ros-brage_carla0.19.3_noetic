;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEmotionResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEmotionResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEMOTIONRESULT")
  (make-package "DMS_MSGS::DMSEMOTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSEmotionResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(defconstant dms_msgs::DMSEmotionResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(defconstant dms_msgs::DMSEmotionResult::*AVAILABLE* 1)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSEMOTIONRESULT"))
(defconstant dms_msgs::DMSEmotionResult::*RESERVED* 2)

(defun dms_msgs::DMSEmotionResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEmotionResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSEmotionResult::*AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSEmotionResult::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSEmotionResult
  :super ros::object
  :slots (_available _emotion_type ))

(defmethod dms_msgs::DMSEmotionResult
  (:init
   (&key
    ((:available __available) 0)
    ((:emotion_type __emotion_type) (instance dms_msgs::DMSEmotionTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _emotion_type __emotion_type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:emotion_type
   (&rest __emotion_type)
   (if (keywordp (car __emotion_type))
       (send* _emotion_type __emotion_type)
     (progn
       (if __emotion_type (setq _emotion_type (car __emotion_type)))
       _emotion_type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSEmotionTypeEnum _emotion_type
    (send _emotion_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSEmotionTypeEnum _emotion_type
       (send _emotion_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSEmotionTypeEnum _emotion_type
     (send _emotion_type :deserialize buf ptr-) (incf ptr- (send _emotion_type :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSEmotionResult :md5sum-) "4fbda016f0ca402ea5064aae13dee501")
(setf (get dms_msgs::DMSEmotionResult :datatype-) "dms_msgs/DMSEmotionResult")
(setf (get dms_msgs::DMSEmotionResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 RESERVED = 2
uint8 available
dms_msgs/DMSEmotionTypeEnum emotion_type

================================================================================
MSG: dms_msgs/DMSEmotionTypeEnum
uint8 DMS_EXPRESSION_ANGRY = 0
uint8 DMS_EXPRESSION_FEAR = 1
uint8 DMS_EXPRESSION_HAPPY = 2
uint8 DMS_EXPRESSION_SAD = 3
uint8 DMS_EXPRESSION_SURPRISE = 4
uint8 DMS_EXPRESSION_NEUTRAL = 5
uint8 DMS_EXPRESSION_RESERVED = 6
uint8 DMS_EXPRESSION_RESERVED1 = 7
uint8 DMS_EXPRESSION_RESERVED2 = 8
uint8 value

")



(provide :dms_msgs/DMSEmotionResult "4fbda016f0ca402ea5064aae13dee501")


