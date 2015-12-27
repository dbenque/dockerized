xhost +
mkdir -p ~/code/eclipse/workspace/
mkdir -p ~/code/eclipse/.home
docker run --net=host -v ~/code/eclipse/workspace/:/home/eclipseuser/workspace \
  -v ~/code/eclipse/.home:/home/eclipseuser \
  -e DISPLAY  -e "UID=`id -u $USER`" -e "GUID=`id -g $USER`" -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -d eclipse
