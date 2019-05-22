; Auto-generated. Do not edit!


(cl:in-package nodelet-srv)


;//! \htmlinclude NodeletLoad-request.msg.html

(cl:defclass <NodeletLoad-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (remap_source_args
    :reader remap_source_args
    :initarg :remap_source_args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (remap_target_args
    :reader remap_target_args
    :initarg :remap_target_args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (my_argv
    :reader my_argv
    :initarg :my_argv
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (bond_id
    :reader bond_id
    :initarg :bond_id
    :type cl:string
    :initform ""))
)

(cl:defclass NodeletLoad-request (<NodeletLoad-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletLoad-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletLoad-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletLoad-request> is deprecated: use nodelet-srv:NodeletLoad-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:name-val is deprecated.  Use nodelet-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:type-val is deprecated.  Use nodelet-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'remap_source_args-val :lambda-list '(m))
(cl:defmethod remap_source_args-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:remap_source_args-val is deprecated.  Use nodelet-srv:remap_source_args instead.")
  (remap_source_args m))

(cl:ensure-generic-function 'remap_target_args-val :lambda-list '(m))
(cl:defmethod remap_target_args-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:remap_target_args-val is deprecated.  Use nodelet-srv:remap_target_args instead.")
  (remap_target_args m))

(cl:ensure-generic-function 'my_argv-val :lambda-list '(m))
(cl:defmethod my_argv-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:my_argv-val is deprecated.  Use nodelet-srv:my_argv instead.")
  (my_argv m))

(cl:ensure-generic-function 'bond_id-val :lambda-list '(m))
(cl:defmethod bond_id-val ((m <NodeletLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:bond_id-val is deprecated.  Use nodelet-srv:bond_id instead.")
  (bond_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletLoad-request>) ostream)
  "Serializes a message object of type '<NodeletLoad-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remap_source_args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'remap_source_args))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remap_target_args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'remap_target_args))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'my_argv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'my_argv))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bond_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bond_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletLoad-request>) istream)
  "Deserializes a message object of type '<NodeletLoad-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remap_source_args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remap_source_args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remap_target_args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remap_target_args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'my_argv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'my_argv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bond_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bond_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletLoad-request>)))
  "Returns string type for a service object of type '<NodeletLoad-request>"
  "nodelet/NodeletLoadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletLoad-request)))
  "Returns string type for a service object of type 'NodeletLoad-request"
  "nodelet/NodeletLoadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletLoad-request>)))
  "Returns md5sum for a message object of type '<NodeletLoad-request>"
  "8cfbf33bf3fbd4c54a833f6e2b105331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletLoad-request)))
  "Returns md5sum for a message object of type 'NodeletLoad-request"
  "8cfbf33bf3fbd4c54a833f6e2b105331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletLoad-request>)))
  "Returns full string definition for message of type '<NodeletLoad-request>"
  (cl:format cl:nil "string name~%string type~%string[] remap_source_args~%string[] remap_target_args~%string[] my_argv~%~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletLoad-request)))
  "Returns full string definition for message of type 'NodeletLoad-request"
  (cl:format cl:nil "string name~%string type~%string[] remap_source_args~%string[] remap_target_args~%string[] my_argv~%~%string bond_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletLoad-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remap_source_args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remap_target_args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'my_argv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'bond_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletLoad-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletLoad-request
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':remap_source_args (remap_source_args msg))
    (cl:cons ':remap_target_args (remap_target_args msg))
    (cl:cons ':my_argv (my_argv msg))
    (cl:cons ':bond_id (bond_id msg))
))
;//! \htmlinclude NodeletLoad-response.msg.html

(cl:defclass <NodeletLoad-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NodeletLoad-response (<NodeletLoad-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletLoad-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletLoad-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletLoad-response> is deprecated: use nodelet-srv:NodeletLoad-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NodeletLoad-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:success-val is deprecated.  Use nodelet-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletLoad-response>) ostream)
  "Serializes a message object of type '<NodeletLoad-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletLoad-response>) istream)
  "Deserializes a message object of type '<NodeletLoad-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletLoad-response>)))
  "Returns string type for a service object of type '<NodeletLoad-response>"
  "nodelet/NodeletLoadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletLoad-response)))
  "Returns string type for a service object of type 'NodeletLoad-response"
  "nodelet/NodeletLoadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletLoad-response>)))
  "Returns md5sum for a message object of type '<NodeletLoad-response>"
  "8cfbf33bf3fbd4c54a833f6e2b105331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletLoad-response)))
  "Returns md5sum for a message object of type 'NodeletLoad-response"
  "8cfbf33bf3fbd4c54a833f6e2b105331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletLoad-response>)))
  "Returns full string definition for message of type '<NodeletLoad-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletLoad-response)))
  "Returns full string definition for message of type 'NodeletLoad-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletLoad-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletLoad-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletLoad-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NodeletLoad)))
  'NodeletLoad-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NodeletLoad)))
  'NodeletLoad-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletLoad)))
  "Returns string type for a service object of type '<NodeletLoad>"
  "nodelet/NodeletLoad")