FROM base/archlinux
MAINTAINER David Benque, dbenque@gmail.com

# add mirror
#RUN rm -f /etc/pacman.d/mirrorlist && echo 'Server = http://archlinux.polymorf.fr/$repo/os/$arch' > /etc/pacman.d/mirrorlist &&
RUN pacman-key --refresh-keys
RUN pacman -Syu --noconfirm --ignore filesystem
RUN pacman-db-upgrade
RUN pacman -S --noconfirm xterm ttf-dejavu
RUN pacman -S --noconfirm eclipse-java

# needed for eclipse to download plugin under https
RUN pacman -S --noconfirm ca-certificates-java

# install mercurial
RUN pacman -S --noconfirm mercurial

RUN eclipse -application org.eclipse.equinox.p2.director -noSplash -repository http://download.eclipse.org/technology/m2e/releases,http://download.eclipse.org/releases/mars -i org.eclipse.m2e.feature.feature.group
RUN eclipse -application org.eclipse.equinox.p2.director -noSplash -repository http://mercurialeclipse.eclipselabs.org.codespot.com/hg.wiki/update_site/stable,http://download.eclipse.org/releases/mars -i mercurialeclipse.feature.group
RUN eclipse -application org.eclipse.equinox.p2.director -noSplash -repository https://dl.google.com/eclipse/plugin/4.4,http://download.eclipse.org/releases/luna -i com.google.gdt.eclipse.suite.e44.feature.feature.group,com.google.appengine.eclipse.sdkbundle.feature.feature.group,com.google.gwt.eclipse.sdkbundle.feature.feature.group,com.google.appengine.eclipse.wtp.maven.feature.feature.group
# SDGB RUN eclipse -application org.eclipse.equinox.p2.director -noSplash -repository http://sdbg.github.io/p2,http://download.eclipse.org/releases/luna -i com.github.sdbg.feature.feature.group

RUN curl -O http://storage.googleapis.com/gwt-releases/gwt-2.7.0.zip
RUN unzip gwt-2.7.0.zip

ADD launch.eclipse /
CMD /launch.eclipse
