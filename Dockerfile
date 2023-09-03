ARG ROS_VERSION=humble
ARG ROS_IMAGE=-ros-base-jammy
FROM ros:$ROS_VERSION$ROS_IMAGE

RUN . /opt/ros/$ROS_DISTRO/setup.sh && \
    apt-get update && \
    apt-get install -y ros-humble-mavros
RUN ros2 run mavros install_geographiclib_datasets.sh

CMD ["ros2","run","mavros","mavros_node"]
