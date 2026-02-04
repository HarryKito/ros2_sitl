FROM osrf/ros:humble-desktop-full

# Create user
RUN useradd -ms /bin/bash sitl \
 && usermod -aG sudo sitl \
 && echo "sitl ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# ROS
RUN echo "source /opt/ros/humble/setup.bash" >> /home/sitl/.bashrc
RUN echo "source ~/.bashrc" >> /home/sitl/.profile

# FIXME: after test on other devices... 2026-02-04
RUN rm -f /etc/apt/sources.list.d/ros2*.list \
 && rm -f /usr/share/keyrings/ros*-archive-keyring.gpg \
 && apt clean \
 && apt update

USER sitl
WORKDIR /ardupilot