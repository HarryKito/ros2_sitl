# Project for run ros2 ardupilot gazebo sitl with docker

## requirements
1. docker
2. VcXsrv Windows X Server

# WINDOWS

### Ready for project
This document was written on the assumption that aleardy you are friendly with docker.
1. Download the X Server(VcXsrv)
2. Execute Xlaunch
3. Set up the Display number as 0, from Display setting screen.
![display setting image](./resources/a.JPG)
4. Noting to do with the Client startup screen.
![Client startup image](./resources/b.png)
5. Check the 'Disable access control' from Extra setting screen.
![Extra setting image](./resources/c.png)
6. Finally, finish the X Server's configuration.

### Create docker image and setups
1. execute `docker-compose -f .\project.yml up`
![execute docker](./resources/d.JPG)
![docker does work](./resources/e.JPG)
2. now, Execute docker ros with `docker exec -it ros2-humble /bin/bash`.
![docker does work](./resources/f.png)
3. update and upgrade the Linux...
![docker does work](./resources/g.png)
3. Add `source /opt/ros/humble/setup.bash` into `~/.bashrc` and source it!
![docker does work](./resources/h.png)
4. Then you can try the turtlesim like this`ros2 run turtlesim turtlesim_node`
![docker does work](./resources/i.png)
<!-- 
https://github.com/HarryKito/ros2_sitl.git
-->
