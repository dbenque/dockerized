#FROM base/archlinux
#
#RUN sed -i 's/^SigLevel.*$/SigLevel = TrustAll/g' /etc/pacman.conf
#RUN pacman -Suy --noconfirm gimp


FROM ubuntu:14.04
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:otto-kesselgulasch/gimp
RUN apt-get update
RUN apt-get install -y gimp
ADD launch.gimp /
CMD /launch.gimp
