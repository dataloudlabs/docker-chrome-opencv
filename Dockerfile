FROM pjsousa/docker-chrome-python

# Add a user for running applications.
RUN useradd apps
RUN mkdir -p /home/apps && chown apps:apps /home/apps

USER root

# Install Chrome.
RUN apt-get update && apt-get -y install python-opencv

## instal pip packages
RUN pip install \
  imageio\
  opencv-python==3.3.0.10

CMD "python -m imageio"

