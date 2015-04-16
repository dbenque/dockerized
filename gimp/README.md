The Dockerfile install gimp inside ubuntu plus a bootstrap script called **launch.gimp** in the image.


The bootstrap script is here to inject a user(+group) inside the container to avoid acting as root in the shared volume containing files.


A fodler called .gimp is created in the shared volume to host account preferences and history.


The host X server must be listening and accepting conection ( xhost + ).


Once the image build, from the host run the gimp.in.docker script to launch the container.
