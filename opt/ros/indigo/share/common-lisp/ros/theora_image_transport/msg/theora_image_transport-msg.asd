
(cl:in-package :asdf)

(defsystem "theora_image_transport-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Packet" :depends-on ("_package_Packet"))
    (:file "_package_Packet" :depends-on ("_package"))
  ))