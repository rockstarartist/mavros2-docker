ARG ROS_VERSION=humble
FROM ros:$ROS_VERSION

RUN apt update && apt install ros-humble-mavros
RUN ros2 run mavros install_geographiclib_datasets.sh
