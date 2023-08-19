FROM ros:humble

RUN apt update && apt install ros-foxy-mavros
RUN ros2 run mavros install_geographiclib_datasets.sh
