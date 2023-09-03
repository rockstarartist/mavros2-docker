ARG ROS_VERSION=humble
ARG ROS_IMAGE=-ros-base-jammy
FROM ros:$ROS_VERSION$ROS_IMAGE

RUN . /opt/ros/$ROS_DISTRO/setup.sh && \
    apt-get update && \
    apt-get install -y ros-humble-mavros
RUN wget https://raw.githubusercontent.com/mavlink/mavros/ros2/mavros/scripts/install_geographiclib_datasets.sh && \
    ./install_geographiclib_datasets.sh

CMD ["ros2","run","mavros","mavros_node"]
