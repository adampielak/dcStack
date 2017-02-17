FROM baseimageversion

# Since ubuntu 16.04 has dropped sudo, need to
# install sudo for compatibility with scripts that also run in instances
RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get install -y language-pack-en && \
    rm -rf /var/lib/apt/lists/*

# basic stuff for the base container
ADD buildtools/utils/base-utils.sh /installs/base-utils.sh


# Add the files needed to pip-install supervisor, later.
ADD buildtools/utils/install-supervisor.sh /installs/utils/install-supervisor.sh
ADD buildtools/utils/supervisord.conf /installs/utils/supervisord.conf
ADD buildtools/utils/initd-supervisor-custom /installs/utils/initd-supervisor-custom
ADD buildtools/utils/initd-supervisor /installs/utils/initd-supervisor


WORKDIR /installs
RUN ./base-utils.sh
