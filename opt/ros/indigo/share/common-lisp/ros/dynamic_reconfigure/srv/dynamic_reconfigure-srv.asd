
(cl:in-package :asdf)

(defsystem "dynamic_reconfigure-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dynamic_reconfigure-msg
)
  :components ((:file "_package")
    (:file "Reconfigure" :depends-on ("_package_Reconfigure"))
    (:file "_package_Reconfigure" :depends-on ("_package"))
  ))