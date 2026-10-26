
(cl:in-package :asdf)

(defsystem "shadow_mode_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActionType" :depends-on ("_package_ActionType"))
    (:file "_package_ActionType" :depends-on ("_package"))
    (:file "DetailConfig" :depends-on ("_package_DetailConfig"))
    (:file "_package_DetailConfig" :depends-on ("_package"))
    (:file "ShadowModeTrigger" :depends-on ("_package_ShadowModeTrigger"))
    (:file "_package_ShadowModeTrigger" :depends-on ("_package"))
    (:file "ShadowModeTriggerEvent" :depends-on ("_package_ShadowModeTriggerEvent"))
    (:file "_package_ShadowModeTriggerEvent" :depends-on ("_package"))
    (:file "ShadowTriggerMessage" :depends-on ("_package_ShadowTriggerMessage"))
    (:file "_package_ShadowTriggerMessage" :depends-on ("_package"))
    (:file "TriggerParam" :depends-on ("_package_TriggerParam"))
    (:file "_package_TriggerParam" :depends-on ("_package"))
    (:file "TrustParam" :depends-on ("_package_TrustParam"))
    (:file "_package_TrustParam" :depends-on ("_package"))
  ))