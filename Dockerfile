FROM baseimageversion

ADD buildtools/utils/base-utils.sh /installs/base-utils.sh


# Add the files needed to pip-install supervisor, later.
ADD buildtools/utils/install-supervisor.sh /installs/utils/install-supervisor.sh
ADD buildtools/utils/supervisord.conf /installs/utils/supervisord.conf
ADD buildtools/utils/initd-supervisor-custom /installs/utils/initd-supervisor-custom
ADD buildtools/utils/initd-supervisor /installs/utils/initd-supervisor


WORKDIR /installs
RUN ./base-utils.sh