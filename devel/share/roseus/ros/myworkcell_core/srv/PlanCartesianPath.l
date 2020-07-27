;; Auto-generated. Do not edit!


(when (boundp 'myworkcell_core::PlanCartesianPath)
  (if (not (find-package "MYWORKCELL_CORE"))
    (make-package "MYWORKCELL_CORE"))
  (shadow 'PlanCartesianPath (find-package "MYWORKCELL_CORE")))
(unless (find-package "MYWORKCELL_CORE::PLANCARTESIANPATH")
  (make-package "MYWORKCELL_CORE::PLANCARTESIANPATH"))
(unless (find-package "MYWORKCELL_CORE::PLANCARTESIANPATHREQUEST")
  (make-package "MYWORKCELL_CORE::PLANCARTESIANPATHREQUEST"))
(unless (find-package "MYWORKCELL_CORE::PLANCARTESIANPATHRESPONSE")
  (make-package "MYWORKCELL_CORE::PLANCARTESIANPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass myworkcell_core::PlanCartesianPathRequest
  :super ros::object
  :slots (_pose ))

(defmethod myworkcell_core::PlanCartesianPathRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass myworkcell_core::PlanCartesianPathResponse
  :super ros::object
  :slots (_trajectory ))

(defmethod myworkcell_core::PlanCartesianPathResponse
  (:init
   (&key
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass myworkcell_core::PlanCartesianPath
  :super ros::object
  :slots ())

(setf (get myworkcell_core::PlanCartesianPath :md5sum-) "e2c94f25791ccda9422dbc6f0a8d45b3")
(setf (get myworkcell_core::PlanCartesianPath :datatype-) "myworkcell_core/PlanCartesianPath")
(setf (get myworkcell_core::PlanCartesianPath :request) myworkcell_core::PlanCartesianPathRequest)
(setf (get myworkcell_core::PlanCartesianPath :response) myworkcell_core::PlanCartesianPathResponse)

(defmethod myworkcell_core::PlanCartesianPathRequest
  (:response () (instance myworkcell_core::PlanCartesianPathResponse :init)))

(setf (get myworkcell_core::PlanCartesianPathRequest :md5sum-) "e2c94f25791ccda9422dbc6f0a8d45b3")
(setf (get myworkcell_core::PlanCartesianPathRequest :datatype-) "myworkcell_core/PlanCartesianPathRequest")
(setf (get myworkcell_core::PlanCartesianPathRequest :definition-)
      "
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


trajectory_msgs/JointTrajectory trajectory


================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")

(setf (get myworkcell_core::PlanCartesianPathResponse :md5sum-) "e2c94f25791ccda9422dbc6f0a8d45b3")
(setf (get myworkcell_core::PlanCartesianPathResponse :datatype-) "myworkcell_core/PlanCartesianPathResponse")
(setf (get myworkcell_core::PlanCartesianPathResponse :definition-)
      "
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


trajectory_msgs/JointTrajectory trajectory


================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")



(provide :myworkcell_core/PlanCartesianPath "e2c94f25791ccda9422dbc6f0a8d45b3")


