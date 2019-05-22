
(cl:in-package :asdf)

(defsystem "nodelet-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NodeletList" :depends-on ("_package_NodeletList"))
    (:file "_package_NodeletList" :depends-on ("_package"))
    (:file "NodeletLoad" :depends-on ("_package_NodeletLoad"))
    (:file "_package_NodeletLoad" :depends-on ("_package"))
    (:file "NodeletUnload" :depends-on ("_package_NodeletUnload"))
    (:file "_package_NodeletUnload" :depends-on ("_package"))
  ))