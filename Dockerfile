FROM frankjoshua/ros2 

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y install --no-install-recommends ros-$ROS_DISTRO-navigation2 ros-$ROS_DISTRO-nav2-bringup \
   #
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

CMD ["/bin/bash", "-i", "-c", "ros2 launch slam_toolbox online_async_launch.py"]