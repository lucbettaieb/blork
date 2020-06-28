FROM ros:melodic-ros-base

# Copy all the container scripts inside
ADD scripts/container/* /
RUN chmod +x /*.bash

RUN bash -c /setup_workspace.bash
RUN bash -c /install_dependencies.bash

COPY packages/ /root/catkin_ws/src

RUN bash -c "source /opt/ros/melodic/setup.bash; (cd /root/catkin_ws && rosdep install --from-paths src --ignore-src --rosdistro=melodic -y)"

RUN bash -c "source /opt/ros/melodic/setup.bash; (cd /root/catkin_ws && catkin_make)"
