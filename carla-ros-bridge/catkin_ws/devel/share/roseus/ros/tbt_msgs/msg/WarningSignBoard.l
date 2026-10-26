;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::WarningSignBoard)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'WarningSignBoard (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::WARNINGSIGNBOARD")
  (make-package "TBT_MSGS::WARNINGSIGNBOARD"))

(in-package "ROS")
;;//! \htmlinclude WarningSignBoard.msg.html


(defclass tbt_msgs::WarningSignBoard
  :super ros::object
  :slots (_sign_type_list _distance_to_sign_list _speed_limit_list ))

(defmethod tbt_msgs::WarningSignBoard
  (:init
   (&key
    ((:sign_type_list __sign_type_list) ())
    ((:distance_to_sign_list __distance_to_sign_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:speed_limit_list __speed_limit_list) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _sign_type_list __sign_type_list)
   (setq _distance_to_sign_list __distance_to_sign_list)
   (setq _speed_limit_list __speed_limit_list)
   self)
  (:sign_type_list
   (&rest __sign_type_list)
   (if (keywordp (car __sign_type_list))
       (send* _sign_type_list __sign_type_list)
     (progn
       (if __sign_type_list (setq _sign_type_list (car __sign_type_list)))
       _sign_type_list)))
  (:distance_to_sign_list
   (&optional __distance_to_sign_list)
   (if __distance_to_sign_list (setq _distance_to_sign_list __distance_to_sign_list)) _distance_to_sign_list)
  (:speed_limit_list
   (&optional __speed_limit_list)
   (if __speed_limit_list (setq _speed_limit_list __speed_limit_list)) _speed_limit_list)
  (:serialization-length
   ()
   (+
    ;; tbt_msgs/SignTypeEnum[] _sign_type_list
    (apply #'+ (send-all _sign_type_list :serialization-length)) 4
    ;; uint16[] _distance_to_sign_list
    (* 2    (length _distance_to_sign_list)) 4
    ;; uint8[] _speed_limit_list
    (* 1    (length _speed_limit_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tbt_msgs/SignTypeEnum[] _sign_type_list
     (write-long (length _sign_type_list) s)
     (dolist (elem _sign_type_list)
       (send elem :serialize s)
       )
     ;; uint16[] _distance_to_sign_list
     (write-long (length _distance_to_sign_list) s)
     (dotimes (i (length _distance_to_sign_list))
       (write-word (elt _distance_to_sign_list i) s)
       )
     ;; uint8[] _speed_limit_list
     (write-long (length _speed_limit_list) s)
     (princ _speed_limit_list s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tbt_msgs/SignTypeEnum[] _sign_type_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sign_type_list (let (r) (dotimes (i n) (push (instance tbt_msgs::SignTypeEnum :init) r)) r))
     (dolist (elem- _sign_type_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16[] _distance_to_sign_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance_to_sign_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _distance_to_sign_list i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint8[] _speed_limit_list
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _speed_limit_list (make-array n :element-type :char))
     (replace _speed_limit_list buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get tbt_msgs::WarningSignBoard :md5sum-) "8da5e5656ae20c7c4bc7bd2dbf8039f1")
(setf (get tbt_msgs::WarningSignBoard :datatype-) "tbt_msgs/WarningSignBoard")
(setf (get tbt_msgs::WarningSignBoard :definition-)
      "tbt_msgs/SignTypeEnum[] sign_type_list
uint16[] distance_to_sign_list
uint8[] speed_limit_list

================================================================================
MSG: tbt_msgs/SignTypeEnum
uint8 FacilityTypeNULL = 0
uint8 FacilityTypeLeftInterflow = 1
uint8 FacilityTypeRightInterflow = 2
uint8 FacilityTypeSharpTurn = 3
uint8 FacilityTypeReverseTurn = 4
uint8 FacilityTypeLinkingTurn = 5
uint8 FacilityTypeAccidentArea = 6
uint8 FacilityTypeFallingRocks = 7
uint8 FacilityTypeFailwayCross = 8
uint8 FacilityTypeSlippery = 9
uint8 FacilityTypeMaxSpeedLimit = 10
uint8 FacilityTypeMinSpeedLimit = 11
uint8 FacilityTypeVillage = 12
uint8 FacilityTypeLeftNarrow = 13
uint8 FacilityTypeRightNarrow = 14
uint8 FacilityTypeDoubleNarrow = 15
uint8 FacilityTypeCrosswindArea = 16
uint8 FacilityTypeSchoolZone = 17
uint8 FacilityTypeOvertakeForbid = 18
uint8 FacilityTypeNarrowBridge = 19
uint8 FacilityTypeDoubleDetour = 20
uint8 FacilityTypeLeftDetour = 21
uint8 FacilityTypeRightDetour = 22
uint8 FacilityTypeLeftDangerous = 23
uint8 FacilityTypeRightDangerous = 24
uint8 FacilityTypeUpperSteep = 25
uint8 FacilityTypeDownSteep = 26
uint8 FacilityTypeWaterPavement = 27
uint8 FacilityTypeIrregularityPavement = 28
uint8 value

")



(provide :tbt_msgs/WarningSignBoard "8da5e5656ae20c7c4bc7bd2dbf8039f1")


