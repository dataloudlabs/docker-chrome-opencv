FROM pjsousa/docker-chrome-python

USER root

# Install Chrome.
RUN apt-get update && apt-get -y install python-opencv

## instal pip packages
RUN pip install \
  imageio\
  opencv-python==3.3.0.10

COPY startup.sh /
RUN chmod 777 /startup.sh
RUN python -c "exec(\"import imageio\\nimageio.plugins.ffmpeg.download()\")"


CMD '/startup.sh'