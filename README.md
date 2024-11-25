# Project for run ros2 ardupilot gazebo sitl with docker

## requirements
1. docker
2. VcXsrv Windows X Server

# Development Environments
### Notice
This document was written on the assumption that aleardy you are friendly with docker.  
[Windows](#WINDOWS)  
[MacOS](#Mac)  

# WINDOWS
### Ready for project
1. Download the X Server(VcXsrv)
2. Execute Xlaunch
3. Set up the Display number as 0, from Display setting screen.
![display setting image](resources/win/a.JPG)
4. Noting to do with the Client startup screen.
![Client startup image](resources/win/b.png)
5. Check the 'Disable access control' from Extra setting screen.
![Extra setting image](resources/win/c.png)
6. Finally, finish the X Server's configuration.

### Create docker image and setups
1. execute `docker-compose -f .\project.yml up`
![execute docker](resources/win/d.JPG)
![docker does work](resources/win/e.JPG)
2. now, Execute docker ros with `docker exec -it ros2-humble /bin/bash`.
![docker does work](resources/win/f.png)
3. update and upgrade the Linux...
![docker does work](resources/win/g.png)
3. Add `source /opt/ros/humble/setup.bash` into `~/.bashrc` and source it!
![docker does work](resources/win/h.png)
4. Then you can try the turtlesim like this`ros2 run turtlesim turtlesim_node`
![docker does work](resources/win/i.png)

# Mac
### Ready for project
1. Download the xquartz from [xquartz.org](xquartz.org)  
![display setting image](resources/mac/a.png)
2. Now, execute the XQuartz
3. Now, Launch the XQuartz, and under the menu, select Preferences, on the security tab and check the "Allow connections from network clients".
![display setting image](resources/mac/b.png)
![display setting image](resources/mac/c.png)
![display setting image](resources/mac/d.png)

4. Finally, run `xhost + ${hostname}` on terminal.  
>![display setting image](resources/mac/an_issue_wtf.png)
> [*** Issue... ***](#issue)

5. execute `docker-compose -f .\project.yml up`
![display setting image](resources/mac/f.png)
6. And then you can execute docker ros with `docker exec -it ros2-humble /bin/bash`.
![display setting image](resources/mac/g.png)
7. So... update & upgrade & add ros environment on bashrc!
![display setting image](resources/mac/h.png)
8. Then you can try the turtlesim like this`ros2 run turtlesim turtlesim_node`
![docker does work](resources/mac/i.png)

### issue
> In my case, it doesn't work well.
> So I just tried to launch the XQuartz terminal,
> ![display setting image](resources/mac/e.png)
> and run `xhost + ${hostname}` again, and the result like this.
> ![display setting image](resources/mac/an_issue.png)
> But after
<!-- 
https://github.com/HarryKito/ros2_sitl.git
-->