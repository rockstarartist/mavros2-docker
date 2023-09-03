ARG ROS_VERSION=humble
ARG ROS_IMAGE=-ros-base-jammy
FROM ros:$ROS_VERSION$ROS_IMAGE

RUN apt update && apt install ros-humble-mavros
RUN ros2 run mavros install_geographiclib_datasets.sh

CMD ["ros2","run","mavros","mavros_node"]
